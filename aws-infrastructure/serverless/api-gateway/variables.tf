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

# ── Cognito (from security/cognito module) ────────────────────────────────────

variable "cognito_user_pool_arn" {
  description = "ARN of the Cognito User Pool used for API authorization (output from security/cognito)"
  type        = string
}

# ── Lambda ARNs (from serverless/lambda module) ───────────────────────────────

variable "list_students_arn" {
  description = "ARN of the ListStudents Lambda function"
  type        = string
}

variable "get_student_arn" {
  description = "ARN of the GetStudent Lambda function"
  type        = string
}

variable "create_student_arn" {
  description = "ARN of the CreateStudent Lambda function"
  type        = string
}

variable "update_student_arn" {
  description = "ARN of the UpdateStudent Lambda function"
  type        = string
}

variable "delete_student_arn" {
  description = "ARN of the DeleteStudent Lambda function"
  type        = string
}

variable "start_certification_arn" {
  description = "ARN of the StartCertification Lambda function"
  type        = string
}

variable "get_certification_status_arn" {
  description = "ARN of the GetCertificationStatus Lambda function"
  type        = string
}

# ── API settings ──────────────────────────────────────────────────────────────

variable "stage_name" {
  description = "API Gateway stage name"
  type        = string
  default     = "v1"
}

variable "frontend_origin" {
  description = "Allowed CORS origin for the React frontend (used in prod; dev uses '*')"
  type        = string
  default     = "https://your-frontend-domain.com"
}

variable "throttling_burst_limit" {
  description = "API Gateway stage-level burst throttle limit"
  type        = number
  default     = 100
}

variable "throttling_rate_limit" {
  description = "API Gateway stage-level rate throttle limit (requests/second)"
  type        = number
  default     = 50
}
