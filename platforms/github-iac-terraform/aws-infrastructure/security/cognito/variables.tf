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

# ── User Pool ─────────────────────────────────────────────────────────────────

variable "user_pool_name" {
  description = "Display name for the Cognito User Pool"
  type        = string
  default     = "app-user-pool"
}

variable "allow_self_registration" {
  description = "Allow users to sign themselves up (false for admin-only invitation flows)"
  type        = bool
  default     = false
}

variable "mfa_configuration" {
  description = "MFA configuration: OFF | OPTIONAL | ON"
  type        = string
  default     = "ON"

  validation {
    condition     = contains(["OFF", "OPTIONAL", "ON"], var.mfa_configuration)
    error_message = "mfa_configuration must be OFF, OPTIONAL, or ON."
  }
}

variable "password_minimum_length" {
  description = "Minimum password length for user pool"
  type        = number
  default     = 12
}

variable "temporary_password_validity_days" {
  description = "Number of days a temporary admin-created password is valid"
  type        = number
  default     = 7
}

variable "advanced_security_mode" {
  description = "Cognito advanced security mode: OFF | AUDIT | ENFORCED"
  type        = string
  default     = "ENFORCED"

  validation {
    condition     = contains(["OFF", "AUDIT", "ENFORCED"], var.advanced_security_mode)
    error_message = "advanced_security_mode must be OFF, AUDIT, or ENFORCED."
  }
}

# ── App Client ────────────────────────────────────────────────────────────────

variable "app_client_name" {
  description = "Name of the user pool app client"
  type        = string
  default     = "web-app-client"
}

variable "callback_urls" {
  description = "Allowed callback (redirect) URLs after authentication"
  type        = list(string)
  default     = ["https://localhost:3000/callback"]
}

variable "logout_urls" {
  description = "Allowed sign-out redirect URLs"
  type        = list(string)
  default     = ["https://localhost:3000/logout"]
}

variable "allowed_oauth_flows" {
  description = "OAuth 2.0 flows enabled for the app client"
  type        = list(string)
  default     = ["code"]
}

variable "allowed_oauth_scopes" {
  description = "OAuth scopes allowed for the app client"
  type        = list(string)
  default     = ["openid", "email", "profile"]
}

# ── Identity Pool (optional federation) ──────────────────────────────────────

variable "enable_identity_pool" {
  description = "Create a Cognito Identity Pool for federated AWS credential vending"
  type        = bool
  default     = true
}

variable "allow_unauthenticated_identities" {
  description = "Allow unauthenticated guest identities in the Identity Pool"
  type        = bool
  default     = false
}
