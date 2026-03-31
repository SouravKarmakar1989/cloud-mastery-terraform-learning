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

# ── SSO Instance ──────────────────────────────────────────────────────────────

variable "sso_instance_arn" {
  description = "ARN of the existing IAM Identity Center (SSO) instance. Retrieve with: aws sso-admin list-instances"
  type        = string
}

variable "identity_store_id" {
  description = "Identity Store ID associated with the SSO instance. Retrieve with: aws sso-admin list-instances"
  type        = string
}

# ── Permission Sets ───────────────────────────────────────────────────────────

variable "permission_sets" {
  description = <<-EOT
    Map of permission set definitions.
    Key = logical name.
    managed_policies = list of AWS managed policy ARNs to attach.
    session_duration  = ISO 8601 duration string (e.g. PT8H).
    relay_state       = Optional console deep-link URL.
  EOT
  type = map(object({
    description      = string
    session_duration = string
    managed_policies = list(string)
    relay_state      = optional(string, "")
  }))
  default = {
    AdministratorAccess = {
      description      = "Full administrator access — break-glass only"
      session_duration = "PT1H"
      managed_policies = ["arn:aws:iam::aws:policy/AdministratorAccess"]
      relay_state      = ""
    }
    DeveloperAccess = {
      description      = "Developer power-user access with billing read-only"
      session_duration = "PT8H"
      managed_policies = [
        "arn:aws:iam::aws:policy/PowerUserAccess",
        "arn:aws:iam::aws:policy/AWSBillingReadOnlyAccess"
      ]
      relay_state = ""
    }
    ReadOnlyAccess = {
      description      = "Read-only view for auditors and reviewers"
      session_duration = "PT8H"
      managed_policies = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
      relay_state      = ""
    }
    SecurityAudit = {
      description      = "Security audit and compliance read access"
      session_duration = "PT4H"
      managed_policies = ["arn:aws:iam::aws:policy/SecurityAudit"]
      relay_state      = ""
    }
  }
}

# ── Groups ────────────────────────────────────────────────────────────────────

variable "sso_groups" {
  description = "Map of SSO group names to create in the Identity Store"
  type = map(object({
    display_name = string
    description  = string
  }))
  default = {
    admins = {
      display_name = "Platform Admins"
      description  = "Break-glass administrator access"
    }
    developers = {
      display_name = "Developers"
      description  = "Application developer access"
    }
    auditors = {
      display_name = "Security Auditors"
      description  = "Read-only security and compliance access"
    }
  }
}

# ── Account Assignments ───────────────────────────────────────────────────────

variable "account_assignments" {
  description = <<-EOT
    List of account-level permission assignments.
    Each entry: { account_id, principal_type (GROUP|USER), principal_name, permission_set_name }
  EOT
  type = list(object({
    account_id          = string
    principal_type      = string
    principal_name      = string
    permission_set_name = string
  }))
  default = []
}
