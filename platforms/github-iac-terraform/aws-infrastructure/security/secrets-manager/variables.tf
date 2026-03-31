variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment (dev, staging, prod)"
  type        = string
}

variable "project" {
  description = "Project name used as a name prefix"
  type        = string
  default     = "security"
}

# ── KMS Key ───────────────────────────────────────────────────────────────────

variable "kms_key_arn" {
  description = "ARN of the KMS CMK to encrypt secrets. Leave empty to use the default AWS managed key."
  type        = string
  default     = ""
}

# ── Secrets ───────────────────────────────────────────────────────────────────

variable "secrets" {
  description = <<-EOT
    Map of secrets to create in Secrets Manager.
    Key = logical name (used as part of secret name).
    description              = human-readable purpose
    recovery_window_in_days  = 0 for immediate deletion, 7-30 for recovery window
    enable_rotation          = whether to attach a rotation Lambda
    rotation_days            = rotation schedule in days (requires rotation_lambda_arn)
    rotation_lambda_arn      = ARN of the Lambda function to rotate the secret
    initial_value_json       = initial JSON secret value (use placeholder, not real secrets)
    allowed_principal_arns   = list of IAM principal ARNs allowed to read the secret
  EOT
  type = map(object({
    description             = string
    recovery_window_in_days = optional(number, 30)
    enable_rotation         = optional(bool, false)
    rotation_days           = optional(number, 30)
    rotation_lambda_arn     = optional(string, "")
    initial_value_json      = optional(string, "{\"placeholder\": \"replace-me\"}")
    allowed_principal_arns  = optional(list(string), [])
  }))
  default = {
    db_credentials = {
      description            = "RDS database master credentials"
      recovery_window_in_days = 30
      enable_rotation        = false
      initial_value_json     = "{\"username\": \"admin\", \"password\": \"REPLACE_ME\"}"
    }
    app_api_key = {
      description            = "External API key for third-party service"
      recovery_window_in_days = 30
      enable_rotation        = false
      initial_value_json     = "{\"api_key\": \"REPLACE_ME\"}"
    }
  }
}
