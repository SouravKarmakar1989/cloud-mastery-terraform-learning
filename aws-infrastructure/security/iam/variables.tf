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
  description = "Project / workload name used as a name prefix"
  type        = string
  default     = "security"
}

# ── IAM Groups ────────────────────────────────────────────────────────────────

variable "iam_groups" {
  description = "Map of IAM groups to create. Key = group name, value = list of managed policy ARNs to attach."
  type        = map(list(string))
  default = {
    "admins"     = ["arn:aws:iam::aws:policy/AdministratorAccess"]
    "developers" = ["arn:aws:iam::aws:policy/PowerUserAccess"]
    "readonly"   = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
    "billing"    = ["arn:aws:iam::aws:policy/job-function/Billing"]
  }
}

# ── IAM Users ─────────────────────────────────────────────────────────────────

variable "iam_users" {
  description = "Map of IAM users to create. Key = username, value = group membership list."
  type        = map(list(string))
  default     = {}
}

variable "force_mfa_on_console" {
  description = "Attach the MFA-enforcement deny policy to all human IAM groups (blocks most actions without active MFA session)"
  type        = bool
  default     = true
}

# ── IAM Roles ─────────────────────────────────────────────────────────────────

variable "cross_account_role_arns" {
  description = "List of external AWS account ARNs allowed to assume the cross-account read role"
  type        = list(string)
  default     = []
}

variable "workload_role_name" {
  description = "Name of the EC2/ECS workload role (instance profile)"
  type        = string
  default     = "workload-role"
}

variable "workload_managed_policies" {
  description = "List of managed policy ARNs to attach to the workload role"
  type        = list(string)
  default     = []
}

# ── Password Policy ──────────────────────────────────────────────────────────

variable "password_minimum_length" {
  description = "Minimum number of characters in IAM user passwords"
  type        = number
  default     = 16
}

variable "password_reuse_prevention" {
  description = "Number of previous passwords that users are prevented from reusing"
  type        = number
  default     = 24
}

variable "max_password_age" {
  description = "Maximum number of days before password expiration (0 = never expires)"
  type        = number
  default     = 90
}
