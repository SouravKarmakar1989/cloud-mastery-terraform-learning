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

# ── CMK Definitions ───────────────────────────────────────────────────────────

variable "customer_managed_keys" {
  description = <<-EOT
    Map of Customer Managed Keys to create.
    Key = logical name (used as alias suffix).
    description       = human-readable purpose
    enable_rotation   = whether to enable annual automatic key rotation
    deletion_window   = days before key is deleted after scheduling (7-30)
    key_usage         = ENCRYPT_DECRYPT | SIGN_VERIFY | GENERATE_VERIFY_MAC
    multi_region      = create as multi-region primary key
    additional_admins = list of extra IAM principal ARNs granted kms:* admin rights
    additional_users  = list of IAM principal ARNs granted encrypt/decrypt/describe
  EOT
  type = map(object({
    description       = string
    enable_rotation   = optional(bool, true)
    deletion_window   = optional(number, 30)
    key_usage         = optional(string, "ENCRYPT_DECRYPT")
    multi_region      = optional(bool, false)
    additional_admins = optional(list(string), [])
    additional_users  = optional(list(string), [])
  }))
  default = {
    s3 = {
      description     = "CMK for S3 bucket encryption"
      enable_rotation = true
      deletion_window = 30
    }
    rds = {
      description     = "CMK for RDS / Aurora database encryption"
      enable_rotation = true
      deletion_window = 30
    }
    secrets = {
      description     = "CMK for Secrets Manager secret encryption"
      enable_rotation = true
      deletion_window = 30
    }
    ebs = {
      description     = "CMK for EBS volume encryption"
      enable_rotation = true
      deletion_window = 30
    }
    logs = {
      description     = "CMK for CloudWatch Logs encryption"
      enable_rotation = true
      deletion_window = 30
    }
  }
}
