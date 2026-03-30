output "user_pool_id" {
  description = "Cognito User Pool ID"
  value       = aws_cognito_user_pool.main.id
}

output "user_pool_arn" {
  description = "Cognito User Pool ARN"
  value       = aws_cognito_user_pool.main.arn
}

output "user_pool_endpoint" {
  description = "Cognito User Pool OIDC endpoint (without https://)"
  value       = aws_cognito_user_pool.main.endpoint
}

output "user_pool_domain" {
  description = "Cognito hosted UI domain"
  value       = "https://${aws_cognito_user_pool_domain.main.domain}.auth.${var.region}.amazoncognito.com"
}

output "app_client_id" {
  description = "Cognito App Client ID"
  value       = aws_cognito_user_pool_client.main.id
}

output "identity_pool_id" {
  description = "Cognito Identity Pool ID (if enabled)"
  value       = var.enable_identity_pool ? aws_cognito_identity_pool.main[0].id : null
}

output "authenticated_role_arn" {
  description = "IAM Role ARN for authenticated Cognito identities"
  value       = var.enable_identity_pool ? aws_iam_role.cognito_authenticated[0].arn : null
}
