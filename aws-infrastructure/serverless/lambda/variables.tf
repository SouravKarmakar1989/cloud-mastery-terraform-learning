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

variable "state_machine_arn" {
  description = "ARN of the Step Functions state machine (output from serverless/step-functions). Leave empty on first apply; re-apply after step-functions module is deployed."
  type        = string
  default     = ""
}

# ── Deployment package location ───────────────────────────────────────────────

variable "deployment_bucket" {
  description = "S3 bucket that holds Lambda deployment zips (uploaded by data-plane CI/CD)"
  type        = string
}

variable "deployment_prefix" {
  description = "Key prefix inside deployment_bucket (e.g. 'stu-cert/dev/latest')"
  type        = string
  default     = "deployments/latest"
}

# ── Per-function retention ────────────────────────────────────────────────────

variable "log_retention_days" {
  description = "CloudWatch log retention in days"
  type        = number
  default     = 14
}
