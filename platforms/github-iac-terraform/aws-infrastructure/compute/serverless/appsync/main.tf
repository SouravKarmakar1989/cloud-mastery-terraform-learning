resource "aws_appsync_graphql_api" "this" {
  name                = "${local.prefix}-graphql"
  authentication_type = "API_KEY"

  tags = local.common_tags
}

resource "aws_appsync_api_key" "this" {
  api_id  = aws_appsync_graphql_api.this.id
  expires = 2524608000
}
