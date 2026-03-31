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

# ── Lambda ARNs (from serverless/lambda module) ───────────────────────────────

variable "validate_student_arn" {
  description = "ARN of the ValidateStudent Lambda function"
  type        = string
}

variable "check_eligibility_arn" {
  description = "ARN of the CheckEligibility Lambda function"
  type        = string
}

variable "mark_certification_arn" {
  description = "ARN of the MarkCertification Lambda function"
  type        = string
}

variable "persist_workflow_result_arn" {
  description = "ARN of the PersistWorkflowResult Lambda function"
  type        = string
}

variable "publish_status_arn" {
  description = "ARN of the PublishStatus Lambda function"
  type        = string
}

# ── Logging ───────────────────────────────────────────────────────────────────

variable "log_retention_days" {
  description = "CloudWatch log retention in days for execution logs"
  type        = number
  default     = 14
}
