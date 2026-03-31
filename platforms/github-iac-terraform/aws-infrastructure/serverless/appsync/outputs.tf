output "api_id" {
  description = "ID of the AppSync GraphQL API"
  value       = aws_appsync_graphql_api.main.id
}

output "api_arn" {
  description = "ARN of the AppSync GraphQL API"
  value       = aws_appsync_graphql_api.main.arn
}

output "graphql_url" {
  description = "GraphQL endpoint URL"
  value       = aws_appsync_graphql_api.main.uris["GRAPHQL"]
}

output "realtime_url" {
  description = "Real-time (WebSocket) endpoint URL for subscriptions"
  value       = aws_appsync_graphql_api.main.uris["REALTIME"]
}

output "account_id" {
  description = "AWS account ID where resources were created"
  value       = data.aws_caller_identity.current.account_id
}

output "region" {
  description = "AWS region where resources were created"
  value       = var.region
}
