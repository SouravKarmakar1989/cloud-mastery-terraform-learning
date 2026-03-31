variable "region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment (dev, staging, prod)"
  type        = string
}

variable "project" {
  description = "Project name used as a resource name prefix"
  type        = string
  default     = "stu-cert"
}

# ── Cross-module references ───────────────────────────────────────────────────

variable "cognito_user_pool_id" {
  description = "ID of the Cognito User Pool (output from security/cognito)"
  type        = string
}

variable "students_table_name" {
  description = "Name of the students DynamoDB table (output from serverless/dynamodb)"
  type        = string
}

variable "students_table_arn" {
  description = "ARN of the students DynamoDB table (output from serverless/dynamodb)"
  type        = string
}

variable "certifications_table_name" {
  description = "Name of the certifications DynamoDB table (output from serverless/dynamodb)"
  type        = string
}

variable "certifications_table_arn" {
  description = "ARN of the certifications DynamoDB table (output from serverless/dynamodb)"
  type        = string
}

variable "appsync_resolver_arn" {
  description = "ARN of the AppSync Lambda resolver function (output from serverless/lambda)"
  type        = string
}

# ── API settings ──────────────────────────────────────────────────────────────

variable "log_retention_days" {
  description = "CloudWatch log retention in days for AppSync execution logs"
  type        = number
  default     = 14
}
