# ---------------------------------------------------------------------------
# serverless/api-gateway — Student Certification Platform REST API
#
# Creates:
#   • REST API with Cognito User Pools authorizer
#   • Resources: /students, /students/{id}, /certifications/{id}/start,
#                /certifications/{id}/status
#   • Lambda proxy integrations for all methods
#   • CORS OPTIONS mock integrations on each resource
#   • Deployment + Stage with throttling and access logging
#   • Lambda permissions granting API Gateway invoke rights
# ---------------------------------------------------------------------------

data "aws_caller_identity" "current" {}
data "aws_partition" "current" {}

# ── REST API ──────────────────────────────────────────────────────────────────

resource "aws_api_gateway_rest_api" "main" {
  name        = "${local.prefix}-api"
  description = "Student Certification Platform REST API (${var.environment})"

  endpoint_configuration {
    types = ["REGIONAL"]
  }

  tags = local.common_tags
}

# ── Cognito Authorizer ────────────────────────────────────────────────────────

resource "aws_api_gateway_authorizer" "cognito" {
  name                   = "${local.prefix}-cognito-auth"
  rest_api_id            = aws_api_gateway_rest_api.main.id
  type                   = "COGNITO_USER_POOLS"
  identity_source        = "method.request.header.Authorization"
  provider_arns          = [var.cognito_user_pool_arn]
  authorizer_result_ttl_in_seconds = 300
}

# ── Path Resources ────────────────────────────────────────────────────────────

resource "aws_api_gateway_resource" "students" {
  rest_api_id = aws_api_gateway_rest_api.main.id
  parent_id   = aws_api_gateway_rest_api.main.root_resource_id
  path_part   = "students"
}

resource "aws_api_gateway_resource" "student_id" {
  rest_api_id = aws_api_gateway_rest_api.main.id
  parent_id   = aws_api_gateway_resource.students.id
  path_part   = "{id}"
}

resource "aws_api_gateway_resource" "certifications" {
  rest_api_id = aws_api_gateway_rest_api.main.id
  parent_id   = aws_api_gateway_rest_api.main.root_resource_id
  path_part   = "certifications"
}

resource "aws_api_gateway_resource" "certification_id" {
  rest_api_id = aws_api_gateway_rest_api.main.id
  parent_id   = aws_api_gateway_resource.certifications.id
  path_part   = "{id}"
}

resource "aws_api_gateway_resource" "certification_start" {
  rest_api_id = aws_api_gateway_rest_api.main.id
  parent_id   = aws_api_gateway_resource.certification_id.id
  path_part   = "start"
}

resource "aws_api_gateway_resource" "certification_status" {
  rest_api_id = aws_api_gateway_rest_api.main.id
  parent_id   = aws_api_gateway_resource.certification_id.id
  path_part   = "status"
}

# ── Helper: reusable CORS method response + integration response ──────────────
# Defined inline per resource because Terraform doesn't support dynamic blocks
# inside for_each for method/integration pairs cleanly.

# ══════════════════════════════════════════════════════════════════════════════
# GET /students
# ══════════════════════════════════════════════════════════════════════════════

resource "aws_api_gateway_method" "get_students" {
  rest_api_id   = aws_api_gateway_rest_api.main.id
  resource_id   = aws_api_gateway_resource.students.id
  http_method   = "GET"
  authorization = "COGNITO_USER_POOLS"
  authorizer_id = aws_api_gateway_authorizer.cognito.id
}

resource "aws_api_gateway_integration" "get_students" {
  rest_api_id             = aws_api_gateway_rest_api.main.id
  resource_id             = aws_api_gateway_resource.students.id
  http_method             = aws_api_gateway_method.get_students.http_method
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = "arn:${data.aws_partition.current.partition}:apigateway:${var.region}:lambda:path/2015-03-31/functions/${var.list_students_arn}/invocations"
}

# ── POST /students ────────────────────────────────────────────────────────────

resource "aws_api_gateway_method" "post_students" {
  rest_api_id   = aws_api_gateway_rest_api.main.id
  resource_id   = aws_api_gateway_resource.students.id
  http_method   = "POST"
  authorization = "COGNITO_USER_POOLS"
  authorizer_id = aws_api_gateway_authorizer.cognito.id
}

resource "aws_api_gateway_integration" "post_students" {
  rest_api_id             = aws_api_gateway_rest_api.main.id
  resource_id             = aws_api_gateway_resource.students.id
  http_method             = aws_api_gateway_method.post_students.http_method
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = "arn:${data.aws_partition.current.partition}:apigateway:${var.region}:lambda:path/2015-03-31/functions/${var.create_student_arn}/invocations"
}

# ── OPTIONS /students (CORS preflight) ───────────────────────────────────────

resource "aws_api_gateway_method" "options_students" {
  rest_api_id   = aws_api_gateway_rest_api.main.id
  resource_id   = aws_api_gateway_resource.students.id
  http_method   = "OPTIONS"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "options_students" {
  rest_api_id = aws_api_gateway_rest_api.main.id
  resource_id = aws_api_gateway_resource.students.id
  http_method = aws_api_gateway_method.options_students.http_method
  type        = "MOCK"

  request_templates = {
    "application/json" = jsonencode({ statusCode = 200 })
  }
}

resource "aws_api_gateway_method_response" "options_students_200" {
  rest_api_id = aws_api_gateway_rest_api.main.id
  resource_id = aws_api_gateway_resource.students.id
  http_method = aws_api_gateway_method.options_students.http_method
  status_code = "200"

  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true
    "method.response.header.Access-Control-Allow-Methods" = true
    "method.response.header.Access-Control-Allow-Origin"  = true
  }
}

resource "aws_api_gateway_integration_response" "options_students_200" {
  rest_api_id = aws_api_gateway_rest_api.main.id
  resource_id = aws_api_gateway_resource.students.id
  http_method = aws_api_gateway_method.options_students.http_method
  status_code = aws_api_gateway_method_response.options_students_200.status_code

  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,Authorization,X-Amz-Date,X-Api-Key'"
    "method.response.header.Access-Control-Allow-Methods" = "'GET,POST,OPTIONS'"
    "method.response.header.Access-Control-Allow-Origin"  = "'${local.cors_origin}'"
  }

  depends_on = [aws_api_gateway_integration.options_students]
}

# ══════════════════════════════════════════════════════════════════════════════
# GET /students/{id}
# ══════════════════════════════════════════════════════════════════════════════

resource "aws_api_gateway_method" "get_student_id" {
  rest_api_id   = aws_api_gateway_rest_api.main.id
  resource_id   = aws_api_gateway_resource.student_id.id
  http_method   = "GET"
  authorization = "COGNITO_USER_POOLS"
  authorizer_id = aws_api_gateway_authorizer.cognito.id
}

resource "aws_api_gateway_integration" "get_student_id" {
  rest_api_id             = aws_api_gateway_rest_api.main.id
  resource_id             = aws_api_gateway_resource.student_id.id
  http_method             = aws_api_gateway_method.get_student_id.http_method
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = "arn:${data.aws_partition.current.partition}:apigateway:${var.region}:lambda:path/2015-03-31/functions/${var.get_student_arn}/invocations"
}

# ── PUT /students/{id} ────────────────────────────────────────────────────────

resource "aws_api_gateway_method" "put_student_id" {
  rest_api_id   = aws_api_gateway_rest_api.main.id
  resource_id   = aws_api_gateway_resource.student_id.id
  http_method   = "PUT"
  authorization = "COGNITO_USER_POOLS"
  authorizer_id = aws_api_gateway_authorizer.cognito.id
}

resource "aws_api_gateway_integration" "put_student_id" {
  rest_api_id             = aws_api_gateway_rest_api.main.id
  resource_id             = aws_api_gateway_resource.student_id.id
  http_method             = aws_api_gateway_method.put_student_id.http_method
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = "arn:${data.aws_partition.current.partition}:apigateway:${var.region}:lambda:path/2015-03-31/functions/${var.update_student_arn}/invocations"
}

# ── DELETE /students/{id} ─────────────────────────────────────────────────────

resource "aws_api_gateway_method" "delete_student_id" {
  rest_api_id   = aws_api_gateway_rest_api.main.id
  resource_id   = aws_api_gateway_resource.student_id.id
  http_method   = "DELETE"
  authorization = "COGNITO_USER_POOLS"
  authorizer_id = aws_api_gateway_authorizer.cognito.id
}

resource "aws_api_gateway_integration" "delete_student_id" {
  rest_api_id             = aws_api_gateway_rest_api.main.id
  resource_id             = aws_api_gateway_resource.student_id.id
  http_method             = aws_api_gateway_method.delete_student_id.http_method
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = "arn:${data.aws_partition.current.partition}:apigateway:${var.region}:lambda:path/2015-03-31/functions/${var.delete_student_arn}/invocations"
}

# ── OPTIONS /students/{id} (CORS preflight) ───────────────────────────────────

resource "aws_api_gateway_method" "options_student_id" {
  rest_api_id   = aws_api_gateway_rest_api.main.id
  resource_id   = aws_api_gateway_resource.student_id.id
  http_method   = "OPTIONS"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "options_student_id" {
  rest_api_id = aws_api_gateway_rest_api.main.id
  resource_id = aws_api_gateway_resource.student_id.id
  http_method = aws_api_gateway_method.options_student_id.http_method
  type        = "MOCK"

  request_templates = {
    "application/json" = jsonencode({ statusCode = 200 })
  }
}

resource "aws_api_gateway_method_response" "options_student_id_200" {
  rest_api_id = aws_api_gateway_rest_api.main.id
  resource_id = aws_api_gateway_resource.student_id.id
  http_method = aws_api_gateway_method.options_student_id.http_method
  status_code = "200"

  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true
    "method.response.header.Access-Control-Allow-Methods" = true
    "method.response.header.Access-Control-Allow-Origin"  = true
  }
}

resource "aws_api_gateway_integration_response" "options_student_id_200" {
  rest_api_id = aws_api_gateway_rest_api.main.id
  resource_id = aws_api_gateway_resource.student_id.id
  http_method = aws_api_gateway_method.options_student_id.http_method
  status_code = aws_api_gateway_method_response.options_student_id_200.status_code

  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,Authorization,X-Amz-Date,X-Api-Key'"
    "method.response.header.Access-Control-Allow-Methods" = "'GET,PUT,DELETE,OPTIONS'"
    "method.response.header.Access-Control-Allow-Origin"  = "'${local.cors_origin}'"
  }

  depends_on = [aws_api_gateway_integration.options_student_id]
}

# ══════════════════════════════════════════════════════════════════════════════
# POST /certifications/{id}/start
# ══════════════════════════════════════════════════════════════════════════════

resource "aws_api_gateway_method" "post_cert_start" {
  rest_api_id   = aws_api_gateway_rest_api.main.id
  resource_id   = aws_api_gateway_resource.certification_start.id
  http_method   = "POST"
  authorization = "COGNITO_USER_POOLS"
  authorizer_id = aws_api_gateway_authorizer.cognito.id
}

resource "aws_api_gateway_integration" "post_cert_start" {
  rest_api_id             = aws_api_gateway_rest_api.main.id
  resource_id             = aws_api_gateway_resource.certification_start.id
  http_method             = aws_api_gateway_method.post_cert_start.http_method
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = "arn:${data.aws_partition.current.partition}:apigateway:${var.region}:lambda:path/2015-03-31/functions/${var.start_certification_arn}/invocations"
}

# ── OPTIONS /certifications/{id}/start (CORS preflight) ──────────────────────

resource "aws_api_gateway_method" "options_cert_start" {
  rest_api_id   = aws_api_gateway_rest_api.main.id
  resource_id   = aws_api_gateway_resource.certification_start.id
  http_method   = "OPTIONS"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "options_cert_start" {
  rest_api_id = aws_api_gateway_rest_api.main.id
  resource_id = aws_api_gateway_resource.certification_start.id
  http_method = aws_api_gateway_method.options_cert_start.http_method
  type        = "MOCK"

  request_templates = {
    "application/json" = jsonencode({ statusCode = 200 })
  }
}

resource "aws_api_gateway_method_response" "options_cert_start_200" {
  rest_api_id = aws_api_gateway_rest_api.main.id
  resource_id = aws_api_gateway_resource.certification_start.id
  http_method = aws_api_gateway_method.options_cert_start.http_method
  status_code = "200"

  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true
    "method.response.header.Access-Control-Allow-Methods" = true
    "method.response.header.Access-Control-Allow-Origin"  = true
  }
}

resource "aws_api_gateway_integration_response" "options_cert_start_200" {
  rest_api_id = aws_api_gateway_rest_api.main.id
  resource_id = aws_api_gateway_resource.certification_start.id
  http_method = aws_api_gateway_method.options_cert_start.http_method
  status_code = aws_api_gateway_method_response.options_cert_start_200.status_code

  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,Authorization,X-Amz-Date,X-Api-Key'"
    "method.response.header.Access-Control-Allow-Methods" = "'POST,OPTIONS'"
    "method.response.header.Access-Control-Allow-Origin"  = "'${local.cors_origin}'"
  }

  depends_on = [aws_api_gateway_integration.options_cert_start]
}

# ══════════════════════════════════════════════════════════════════════════════
# GET /certifications/{id}/status
# ══════════════════════════════════════════════════════════════════════════════

resource "aws_api_gateway_method" "get_cert_status" {
  rest_api_id   = aws_api_gateway_rest_api.main.id
  resource_id   = aws_api_gateway_resource.certification_status.id
  http_method   = "GET"
  authorization = "COGNITO_USER_POOLS"
  authorizer_id = aws_api_gateway_authorizer.cognito.id
}

resource "aws_api_gateway_integration" "get_cert_status" {
  rest_api_id             = aws_api_gateway_rest_api.main.id
  resource_id             = aws_api_gateway_resource.certification_status.id
  http_method             = aws_api_gateway_method.get_cert_status.http_method
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = "arn:${data.aws_partition.current.partition}:apigateway:${var.region}:lambda:path/2015-03-31/functions/${var.get_certification_status_arn}/invocations"
}

# ── OPTIONS /certifications/{id}/status (CORS preflight) ─────────────────────

resource "aws_api_gateway_method" "options_cert_status" {
  rest_api_id   = aws_api_gateway_rest_api.main.id
  resource_id   = aws_api_gateway_resource.certification_status.id
  http_method   = "OPTIONS"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "options_cert_status" {
  rest_api_id = aws_api_gateway_rest_api.main.id
  resource_id = aws_api_gateway_resource.certification_status.id
  http_method = aws_api_gateway_method.options_cert_status.http_method
  type        = "MOCK"

  request_templates = {
    "application/json" = jsonencode({ statusCode = 200 })
  }
}

resource "aws_api_gateway_method_response" "options_cert_status_200" {
  rest_api_id = aws_api_gateway_rest_api.main.id
  resource_id = aws_api_gateway_resource.certification_status.id
  http_method = aws_api_gateway_method.options_cert_status.http_method
  status_code = "200"

  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true
    "method.response.header.Access-Control-Allow-Methods" = true
    "method.response.header.Access-Control-Allow-Origin"  = true
  }
}

resource "aws_api_gateway_integration_response" "options_cert_status_200" {
  rest_api_id = aws_api_gateway_rest_api.main.id
  resource_id = aws_api_gateway_resource.certification_status.id
  http_method = aws_api_gateway_method.options_cert_status.http_method
  status_code = aws_api_gateway_method_response.options_cert_status_200.status_code

  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,Authorization,X-Amz-Date,X-Api-Key'"
    "method.response.header.Access-Control-Allow-Methods" = "'GET,OPTIONS'"
    "method.response.header.Access-Control-Allow-Origin"  = "'${local.cors_origin}'"
  }

  depends_on = [aws_api_gateway_integration.options_cert_status]
}

# ══════════════════════════════════════════════════════════════════════════════
# Lambda permissions — grants API Gateway the right to invoke each function
# ══════════════════════════════════════════════════════════════════════════════

locals {
  lambda_permissions = {
    list_students            = var.list_students_arn
    create_student           = var.create_student_arn
    get_student              = var.get_student_arn
    update_student           = var.update_student_arn
    delete_student           = var.delete_student_arn
    start_certification      = var.start_certification_arn
    get_certification_status = var.get_certification_status_arn
  }
}

resource "aws_lambda_permission" "apigw" {
  for_each = local.lambda_permissions

  statement_id  = "AllowAPIGatewayInvoke-${each.key}"
  action        = "lambda:InvokeFunction"
  function_name = each.value
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.main.execution_arn}/*/*"
}

# ══════════════════════════════════════════════════════════════════════════════
# Deployment & Stage
# ══════════════════════════════════════════════════════════════════════════════

# Access log group for the stage
resource "aws_cloudwatch_log_group" "api_access" {
  name              = "/aws/apigateway/${local.prefix}-access"
  retention_in_days = 14
  tags              = local.common_tags
}

resource "aws_api_gateway_deployment" "main" {
  rest_api_id = aws_api_gateway_rest_api.main.id

  # Force a new deployment whenever any method or integration changes
  triggers = {
    redeployment = sha1(jsonencode([
      aws_api_gateway_integration.get_students,
      aws_api_gateway_integration.post_students,
      aws_api_gateway_integration.get_student_id,
      aws_api_gateway_integration.put_student_id,
      aws_api_gateway_integration.delete_student_id,
      aws_api_gateway_integration.post_cert_start,
      aws_api_gateway_integration.get_cert_status,
    ]))
  }

  lifecycle {
    create_before_destroy = true
  }

  depends_on = [
    aws_api_gateway_integration.get_students,
    aws_api_gateway_integration.post_students,
    aws_api_gateway_integration.get_student_id,
    aws_api_gateway_integration.put_student_id,
    aws_api_gateway_integration.delete_student_id,
    aws_api_gateway_integration.post_cert_start,
    aws_api_gateway_integration.get_cert_status,
  ]
}

resource "aws_api_gateway_stage" "main" {
  deployment_id = aws_api_gateway_deployment.main.id
  rest_api_id   = aws_api_gateway_rest_api.main.id
  stage_name    = var.stage_name

  xray_tracing_enabled = true

  access_log_settings {
    destination_arn = aws_cloudwatch_log_group.api_access.arn
    format = jsonencode({
      requestId      = "$context.requestId"
      sourceIp       = "$context.identity.sourceIp"
      requestTime    = "$context.requestTime"
      protocol       = "$context.protocol"
      httpMethod     = "$context.httpMethod"
      resourcePath   = "$context.resourcePath"
      routeKey       = "$context.routeKey"
      status         = "$context.status"
      responseLength = "$context.responseLength"
      integrationError = "$context.integrationErrorMessage"
    })
  }

  default_route_settings {
    # Not applicable to REST APIs — kept for documentation only
  }

  tags = local.common_tags
}

resource "aws_api_gateway_method_settings" "main" {
  rest_api_id = aws_api_gateway_rest_api.main.id
  stage_name  = aws_api_gateway_stage.main.stage_name
  method_path = "*/*"

  settings {
    throttling_burst_limit = var.throttling_burst_limit
    throttling_rate_limit  = var.throttling_rate_limit
    metrics_enabled        = true
    logging_level          = var.environment == "prod" ? "ERROR" : "INFO"
    data_trace_enabled     = var.environment != "prod"
  }
}
