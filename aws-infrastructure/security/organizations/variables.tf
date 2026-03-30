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
  description = "Project name used as a prefix"
  type        = string
  default     = "security"
}

# ── Organizational Units ──────────────────────────────────────────────────────

variable "organizational_units" {
  description = "Map of OU names → parent OU key (use 'root' for top-level). Creates a flat or two-level OU hierarchy."
  type        = map(string)
  default = {
    "Security"   = "root"
    "Workloads"  = "root"
    "Sandbox"    = "root"
    "Dev"        = "Workloads"
    "Staging"    = "Workloads"
    "Prod"       = "Workloads"
  }
}

# ── Service Control Policies ──────────────────────────────────────────────────

variable "deny_root_user_actions" {
  description = "Attach SCP that denies all actions performed by the root user (except in the management account)"
  type        = bool
  default     = true
}

variable "deny_leave_organization" {
  description = "Attach SCP that prevents member accounts from leaving the organization"
  type        = bool
  default     = true
}

variable "deny_disable_cloudtrail" {
  description = "Attach SCP that prevents disabling or modifying CloudTrail in member accounts"
  type        = bool
  default     = true
}

variable "deny_non_approved_regions" {
  description = "If non-empty, deny all actions in regions NOT in this list"
  type        = list(string)
  # Set to empty list to disable the region restriction SCP
  default = []
}

variable "require_imdsv2" {
  description = "Attach SCP that requires IMDSv2 (blocks IMDSv1) on EC2 instances across all member accounts"
  type        = bool
  default     = true
}

variable "scp_target_ou_names" {
  description = "List of OU names (from var.organizational_units) to attach all enabled SCPs to"
  type        = list(string)
  default     = ["Workloads", "Prod"]
}
