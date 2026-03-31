# ---------------------------------------------------------------------------
# serverless/sam — SAM Deployment Infrastructure
#
# Provisions the AWS-side infrastructure required to run `sam build` and
# `sam deploy` against this account/environment:
#
#   • S3 artifact bucket  — SAM uploads packaged Lambda zips and layers here
#                           before CloudFormation consumes them.  Also used by
#                           the serverless/lambda Terraform module as the
#                           deployment_bucket for function code.
#   • CloudFormation role — IAM role that CloudFormation assumes when SAM
#                           deploys stacks.  Scoped to only the resources SAM
#                           actually needs to create (Lambda, API GW, IAM roles,
#                           CloudWatch Logs, Step Functions, AppSync).
#
# Usage after `terraform apply`:
#   sam build
#   sam deploy \
#     --s3-bucket   <artifact_bucket_name output> \
#     --role-arn    <cfn_execution_role_arn output> \
#     --stack-name  <local.prefix>-app \
#     --region      <var.region> \
#     --capabilities CAPABILITY_IAM CAPABILITY_AUTO_EXPAND \
#     --no-confirm-changeset
# ---------------------------------------------------------------------------

data "aws_caller_identity" "current" {}
data "aws_partition" "current" {}

# ── S3 Artifact Bucket ────────────────────────────────────────────────────────

resource "aws_s3_bucket" "artifacts" {
  bucket        = "${local.prefix}-sam-artifacts-${data.aws_caller_identity.current.account_id}"
  force_destroy = var.environment != "prod"

  tags = local.common_tags
}

resource "aws_s3_bucket_versioning" "artifacts" {
  bucket = aws_s3_bucket.artifacts.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "artifacts" {
  bucket = aws_s3_bucket.artifacts.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "artifacts" {
  bucket = aws_s3_bucket.artifacts.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_lifecycle_configuration" "artifacts" {
  bucket = aws_s3_bucket.artifacts.id

  rule {
    id     = "expire-noncurrent"
    status = "Enabled"

    noncurrent_version_expiration {
      noncurrent_days = var.artifact_expiry_days
    }

    abort_incomplete_multipart_upload {
      days_after_initiation = 7
    }
  }
}

# ── CloudFormation Execution Role ─────────────────────────────────────────────
# This role is passed to `sam deploy --role-arn`.
# CloudFormation assumes it to create/update/delete the SAM stack resources.

resource "aws_iam_role" "cfn_execution" {
  name = "${local.prefix}-sam-cfn-exec"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect    = "Allow"
      Principal = { Service = "cloudformation.amazonaws.com" }
      Action    = "sts:AssumeRole"
    }]
  })

  tags = local.common_tags
}

resource "aws_iam_role_policy" "cfn_execution" {
  name = "${local.prefix}-sam-cfn-exec-policy"
  role = aws_iam_role.cfn_execution.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      # ── S3 (read packaged artifacts) ────────────────────────────────────────
      {
        Sid    = "S3ArtifactRead"
        Effect = "Allow"
        Action = ["s3:GetObject", "s3:GetObjectVersion"]
        Resource = "${aws_s3_bucket.artifacts.arn}/*"
      },
      # ── Lambda ──────────────────────────────────────────────────────────────
      {
        Sid    = "LambdaManage"
        Effect = "Allow"
        Action = [
          "lambda:CreateFunction",
          "lambda:UpdateFunctionCode",
          "lambda:UpdateFunctionConfiguration",
          "lambda:DeleteFunction",
          "lambda:GetFunction",
          "lambda:GetFunctionConfiguration",
          "lambda:ListVersionsByFunction",
          "lambda:PublishVersion",
          "lambda:CreateAlias",
          "lambda:UpdateAlias",
          "lambda:DeleteAlias",
          "lambda:GetAlias",
          "lambda:AddPermission",
          "lambda:RemovePermission",
          "lambda:TagResource",
          "lambda:PublishLayerVersion",
          "lambda:GetLayerVersion",
          "lambda:DeleteLayerVersion"
        ]
        Resource = "arn:${data.aws_partition.current.partition}:lambda:${var.region}:${data.aws_caller_identity.current.account_id}:*"
      },
      # ── API Gateway ──────────────────────────────────────────────────────────
      {
        Sid    = "ApiGatewayManage"
        Effect = "Allow"
        Action = ["apigateway:*"]
        Resource = "arn:${data.aws_partition.current.partition}:apigateway:${var.region}::*"
      },
      # ── Step Functions ───────────────────────────────────────────────────────
      {
        Sid    = "StepFunctionsManage"
        Effect = "Allow"
        Action = [
          "states:CreateStateMachine",
          "states:UpdateStateMachine",
          "states:DeleteStateMachine",
          "states:DescribeStateMachine",
          "states:TagResource"
        ]
        Resource = "arn:${data.aws_partition.current.partition}:states:${var.region}:${data.aws_caller_identity.current.account_id}:*"
      },
      # ── AppSync ───────────────────────────────────────────────────────────────
      {
        Sid    = "AppSyncManage"
        Effect = "Allow"
        Action = [
          "appsync:CreateGraphqlApi",
          "appsync:UpdateGraphqlApi",
          "appsync:DeleteGraphqlApi",
          "appsync:GetGraphqlApi",
          "appsync:CreateDataSource",
          "appsync:UpdateDataSource",
          "appsync:DeleteDataSource",
          "appsync:CreateResolver",
          "appsync:UpdateResolver",
          "appsync:DeleteResolver",
          "appsync:StartSchemaCreation",
          "appsync:GetSchemaCreationStatus",
          "appsync:TagResource"
        ]
        Resource = "*"
      },
      # ── DynamoDB ─────────────────────────────────────────────────────────────
      {
        Sid    = "DynamoDBManage"
        Effect = "Allow"
        Action = [
          "dynamodb:CreateTable",
          "dynamodb:UpdateTable",
          "dynamodb:DeleteTable",
          "dynamodb:DescribeTable",
          "dynamodb:DescribeContinuousBackups",
          "dynamodb:DescribeTimeToLive",
          "dynamodb:TagResource",
          "dynamodb:UpdateContinuousBackups",
          "dynamodb:UpdateTimeToLive"
        ]
        Resource = "arn:${data.aws_partition.current.partition}:dynamodb:${var.region}:${data.aws_caller_identity.current.account_id}:*"
      },
      # ── IAM (scoped to project prefix) ───────────────────────────────────────
      {
        Sid    = "IAMScopedManage"
        Effect = "Allow"
        Action = [
          "iam:CreateRole",
          "iam:UpdateRole",
          "iam:DeleteRole",
          "iam:GetRole",
          "iam:PassRole",
          "iam:AttachRolePolicy",
          "iam:DetachRolePolicy",
          "iam:PutRolePolicy",
          "iam:DeleteRolePolicy",
          "iam:GetRolePolicy",
          "iam:TagRole"
        ]
        Resource = "arn:${data.aws_partition.current.partition}:iam::${data.aws_caller_identity.current.account_id}:role/${local.prefix}-*"
      },
      # ── CloudWatch Logs ───────────────────────────────────────────────────────
      {
        Sid    = "CloudWatchLogsManage"
        Effect = "Allow"
        Action = [
          "logs:CreateLogGroup",
          "logs:DeleteLogGroup",
          "logs:DescribeLogGroups",
          "logs:PutRetentionPolicy",
          "logs:DeleteRetentionPolicy",
          "logs:TagLogGroup"
        ]
        Resource = "arn:${data.aws_partition.current.partition}:logs:${var.region}:${data.aws_caller_identity.current.account_id}:*"
      },
      # ── CloudFormation (needed for SAM nested stacks) ─────────────────────────
      {
        Sid    = "CloudFormationSelf"
        Effect = "Allow"
        Action = [
          "cloudformation:CreateStack",
          "cloudformation:UpdateStack",
          "cloudformation:DeleteStack",
          "cloudformation:DescribeStacks",
          "cloudformation:DescribeStackEvents",
          "cloudformation:GetTemplate",
          "cloudformation:ValidateTemplate",
          "cloudformation:CreateChangeSet",
          "cloudformation:ExecuteChangeSet",
          "cloudformation:DeleteChangeSet",
          "cloudformation:DescribeChangeSet",
          "cloudformation:ListStackResources"
        ]
        Resource = "arn:${data.aws_partition.current.partition}:cloudformation:${var.region}:${data.aws_caller_identity.current.account_id}:stack/${local.prefix}-*"
      }
    ]
  })
}

# ── SAM CLI local config helper (stored as SSM Parameter for reference) ───────
# Developers can run: aws ssm get-parameter --name /sam-config/dev/bucket
# to retrieve the bucket name without needing Terraform outputs locally.

resource "aws_ssm_parameter" "artifact_bucket" {
  name  = "/${var.project}/sam-config/${var.environment}/artifact-bucket"
  type  = "String"
  value = aws_s3_bucket.artifacts.bucket

  tags = local.common_tags
}

resource "aws_ssm_parameter" "cfn_role_arn" {
  name  = "/${var.project}/sam-config/${var.environment}/cfn-role-arn"
  type  = "String"
  value = aws_iam_role.cfn_execution.arn

  tags = local.common_tags
}
