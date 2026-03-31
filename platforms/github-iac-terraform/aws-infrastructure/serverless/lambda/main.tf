# ---------------------------------------------------------------------------
# serverless/lambda — Student Certification Platform Lambda functions
#
# Manages:
#   • IAM execution role shared by all 13 functions
#   • Lambda Layer (common utilities — code uploaded by data-plane CI/CD)
#   • 13 Lambda functions (for_each over locals.functions catalogue)
#   • CloudWatch Log Groups with configurable retention
#
# Deployment package separation:
#   Code zips live in S3, uploaded by the data-plane CI/CD pipeline.
#   Terraform manages function configuration (memory, timeout, env vars, IAM)
#   but ignores code changes after initial creation so that code and infra
#   deployments remain independent.
# ---------------------------------------------------------------------------

data "aws_caller_identity" "current" {}
data "aws_partition" "current" {}

# ── IAM Execution Role ────────────────────────────────────────────────────────

resource "aws_iam_role" "execution" {
  name = "${local.prefix}-lambda-exec"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect    = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action    = "sts:AssumeRole"
    }]
  })

  tags = local.common_tags
}

resource "aws_iam_role_policy" "execution" {
  name = "${local.prefix}-lambda-exec-policy"
  role = aws_iam_role.execution.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "DynamoDBAccess"
        Effect = "Allow"
        Action = [
          "dynamodb:GetItem",
          "dynamodb:PutItem",
          "dynamodb:UpdateItem",
          "dynamodb:DeleteItem",
          "dynamodb:Query",
          "dynamodb:Scan",
          "dynamodb:BatchGetItem",
          "dynamodb:BatchWriteItem"
        ]
        Resource = [
          var.students_table_arn,
          "${var.students_table_arn}/index/*",
          var.certifications_table_arn,
          "${var.certifications_table_arn}/index/*"
        ]
      },
      {
        Sid    = "StepFunctionsStart"
        Effect = "Allow"
        Action = ["states:StartExecution"]
        # state_machine_arn may be empty on first apply; wildcard scoped to project prefix
        Resource = var.state_machine_arn != "" ? [var.state_machine_arn] : [
          "arn:${data.aws_partition.current.partition}:states:${var.region}:${data.aws_caller_identity.current.account_id}:stateMachine:${local.prefix}-*"
        ]
      },
      {
        Sid    = "CloudWatchLogs"
        Effect = "Allow"
        Action = [
          "logs:CreateLogGroup",
          "logs:CreateLogStream",
          "logs:PutLogEvents"
        ]
        Resource = "arn:${data.aws_partition.current.partition}:logs:${var.region}:${data.aws_caller_identity.current.account_id}:log-group:/aws/lambda/${local.prefix}-*:*"
      },
      {
        Sid    = "XRayTracing"
        Effect = "Allow"
        Action = [
          "xray:PutTraceSegments",
          "xray:PutTelemetryRecords"
        ]
        Resource = "*"
      }
    ]
  })
}

# ── Lambda Layer (common utilities) ──────────────────────────────────────────

resource "aws_lambda_layer_version" "common" {
  layer_name          = "${local.prefix}-common-layer"
  s3_bucket           = var.deployment_bucket
  s3_key              = "${var.deployment_prefix}/layers/common.zip"
  compatible_runtimes = ["python3.11"]
  description         = "aws-lambda-powertools, boto3, pydantic — shared utilities"

  lifecycle {
    # Code content managed by data-plane CI/CD; Terraform owns the layer config only
    ignore_changes = [s3_key, s3_object_version, source_code_hash]
  }
}

# ── CloudWatch Log Groups ─────────────────────────────────────────────────────

resource "aws_cloudwatch_log_group" "functions" {
  for_each = local.functions

  name              = "/aws/lambda/${local.prefix}-${each.key}"
  retention_in_days = var.log_retention_days

  tags = local.common_tags
}

# ── Lambda Functions ──────────────────────────────────────────────────────────

resource "aws_lambda_function" "functions" {
  for_each = local.functions

  function_name = "${local.prefix}-${each.key}"
  description   = each.value.description
  role          = aws_iam_role.execution.arn
  runtime       = "python3.11"
  handler       = each.value.handler
  timeout       = each.value.timeout
  memory_size   = each.value.memory_size

  s3_bucket = var.deployment_bucket
  s3_key    = each.value.s3_key

  layers = [aws_lambda_layer_version.common.arn]

  environment {
    variables = merge(each.value.env_vars, {
      ENVIRONMENT                    = var.environment
      POWERTOOLS_LOG_LEVEL           = var.environment == "prod" ? "WARNING" : "DEBUG"
      AWS_LAMBDA_EXEC_WRAPPER        = "/opt/bootstrap"
    })
  }

  tracing_config {
    mode = "Active"
  }

  depends_on = [
    aws_cloudwatch_log_group.functions,
    aws_iam_role_policy.execution
  ]

  tags = merge(local.common_tags, { function = each.key })

  lifecycle {
    # Code (s3_key, s3_object_version) managed by data-plane CI/CD.
    # Only infra changes (memory, timeout, env vars) trigger Terraform updates.
    ignore_changes = [s3_key, s3_object_version, source_code_hash, last_modified]
  }
}
