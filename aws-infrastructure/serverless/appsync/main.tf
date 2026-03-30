# ---------------------------------------------------------------------------
# serverless/appsync — Student Certification Platform GraphQL API
#
# Creates:
#   • AppSync GraphQL API with Cognito User Pools + AWS_IAM auth
#   • IAM service roles for DynamoDB and Lambda data sources
#   • Data sources: students table, certifications table, Lambda resolver
#   • Resolvers for all Query, Mutation fields (VTL inline from locals.tf)
#   • CloudWatch log group for AppSync execution logs
# ---------------------------------------------------------------------------

data "aws_caller_identity" "current" {}
data "aws_partition" "current" {}

# ── IAM role for AppSync → DynamoDB ──────────────────────────────────────────

resource "aws_iam_role" "appsync_dynamodb" {
  name = "${local.prefix}-appsync-dynamodb"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect    = "Allow"
      Principal = { Service = "appsync.amazonaws.com" }
      Action    = "sts:AssumeRole"
    }]
  })

  tags = local.common_tags
}

resource "aws_iam_role_policy" "appsync_dynamodb" {
  name = "${local.prefix}-appsync-dynamodb-policy"
  role = aws_iam_role.appsync_dynamodb.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
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
    }]
  })
}

# ── IAM role for AppSync → Lambda ─────────────────────────────────────────────

resource "aws_iam_role" "appsync_lambda" {
  name = "${local.prefix}-appsync-lambda"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect    = "Allow"
      Principal = { Service = "appsync.amazonaws.com" }
      Action    = "sts:AssumeRole"
    }]
  })

  tags = local.common_tags
}

resource "aws_iam_role_policy" "appsync_lambda" {
  name = "${local.prefix}-appsync-lambda-policy"
  role = aws_iam_role.appsync_lambda.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Sid      = "InvokeLambda"
      Effect   = "Allow"
      Action   = ["lambda:InvokeFunction"]
      Resource = [var.appsync_resolver_arn, "${var.appsync_resolver_arn}:*"]
    }]
  })
}

# ── CloudWatch log group ──────────────────────────────────────────────────────

resource "aws_cloudwatch_log_group" "appsync" {
  name              = "/aws/appsync/apis/${local.prefix}"
  retention_in_days = var.log_retention_days
  tags              = local.common_tags
}

# ── GraphQL API ───────────────────────────────────────────────────────────────

resource "aws_appsync_graphql_api" "main" {
  name                = "${local.prefix}-api"
  authentication_type = "AMAZON_COGNITO_USER_POOLS"
  schema              = local.schema

  user_pool_config {
    user_pool_id   = var.cognito_user_pool_id
    aws_region     = var.region
    default_action = "ALLOW"
  }

  additional_authentication_provider {
    authentication_type = "AWS_IAM"
  }

  xray_enabled = true

  log_config {
    cloudwatch_logs_role_arn = aws_iam_role.appsync_cloudwatch.arn
    field_log_level          = var.environment == "prod" ? "ERROR" : "ALL"
    exclude_verbose_content  = var.environment == "prod"
  }

  tags = local.common_tags
}

# ── IAM role for AppSync → CloudWatch Logs ────────────────────────────────────

resource "aws_iam_role" "appsync_cloudwatch" {
  name = "${local.prefix}-appsync-cw"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect    = "Allow"
      Principal = { Service = "appsync.amazonaws.com" }
      Action    = "sts:AssumeRole"
    }]
  })

  tags = local.common_tags
}

resource "aws_iam_role_policy_attachment" "appsync_cloudwatch" {
  role       = aws_iam_role.appsync_cloudwatch.name
  policy_arn = "arn:${data.aws_partition.current.partition}:iam::aws:policy/service-role/AWSAppSyncPushToCloudWatchLogs"
}

# ── Data Sources ──────────────────────────────────────────────────────────────

resource "aws_appsync_datasource" "students" {
  api_id           = aws_appsync_graphql_api.main.id
  name             = "StudentsTable"
  type             = "AMAZON_DYNAMODB"
  service_role_arn = aws_iam_role.appsync_dynamodb.arn

  dynamodb_config {
    table_name = var.students_table_name
    region     = var.region
  }
}

resource "aws_appsync_datasource" "certifications" {
  api_id           = aws_appsync_graphql_api.main.id
  name             = "CertificationsTable"
  type             = "AMAZON_DYNAMODB"
  service_role_arn = aws_iam_role.appsync_dynamodb.arn

  dynamodb_config {
    table_name = var.certifications_table_name
    region     = var.region
  }
}

resource "aws_appsync_datasource" "lambda_resolver" {
  api_id           = aws_appsync_graphql_api.main.id
  name             = "CertificationLambdaResolver"
  type             = "AWS_LAMBDA"
  service_role_arn = aws_iam_role.appsync_lambda.arn

  lambda_config {
    function_arn = var.appsync_resolver_arn
  }
}

# ── Resolvers ─────────────────────────────────────────────────────────────────

resource "aws_appsync_resolver" "get_student" {
  api_id      = aws_appsync_graphql_api.main.id
  type        = "Query"
  field       = "getStudent"
  data_source = aws_appsync_datasource.students.name

  request_template  = local.vtl["Query.getStudent.req"]
  response_template = local.vtl["Query.getStudent.res"]
}

resource "aws_appsync_resolver" "list_students" {
  api_id      = aws_appsync_graphql_api.main.id
  type        = "Query"
  field       = "listStudents"
  data_source = aws_appsync_datasource.students.name

  request_template  = local.vtl["Query.listStudents.req"]
  response_template = local.vtl["Query.listStudents.res"]
}

resource "aws_appsync_resolver" "get_certifications" {
  api_id      = aws_appsync_graphql_api.main.id
  type        = "Query"
  field       = "getCertifications"
  data_source = aws_appsync_datasource.certifications.name

  request_template  = local.vtl["Query.getCertifications.req"]
  response_template = local.vtl["Query.getCertifications.res"]
}

resource "aws_appsync_resolver" "create_student" {
  api_id      = aws_appsync_graphql_api.main.id
  type        = "Mutation"
  field       = "createStudent"
  data_source = aws_appsync_datasource.students.name

  request_template  = local.vtl["Mutation.createStudent.req"]
  response_template = local.vtl["Mutation.createStudent.res"]
}

resource "aws_appsync_resolver" "update_student" {
  api_id      = aws_appsync_graphql_api.main.id
  type        = "Mutation"
  field       = "updateStudent"
  data_source = aws_appsync_datasource.students.name

  request_template  = local.vtl["Mutation.updateStudent.req"]
  response_template = local.vtl["Mutation.updateStudent.res"]
}

resource "aws_appsync_resolver" "delete_student" {
  api_id      = aws_appsync_graphql_api.main.id
  type        = "Mutation"
  field       = "deleteStudent"
  data_source = aws_appsync_datasource.students.name

  request_template  = local.vtl["Mutation.deleteStudent.req"]
  response_template = local.vtl["Mutation.deleteStudent.res"]
}

resource "aws_appsync_resolver" "start_certification" {
  api_id      = aws_appsync_graphql_api.main.id
  type        = "Mutation"
  field       = "startCertification"
  data_source = aws_appsync_datasource.lambda_resolver.name

  request_template  = local.vtl["Mutation.startCertification.req"]
  response_template = local.vtl["Mutation.startCertification.res"]
}
