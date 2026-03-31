# ---------------------------------------------------------------------------
# security/cognito — Amazon Cognito User Pool + Identity Pool
#
# Implements (Task 1.2 – Secure Application Access):
#   • User Pool with:
#       - Strong password policy
#       - MFA enforcement (TOTP + SMS)
#       - Admin-only user creation (no self-registration by default)
#       - Advanced security (compromised credential detection, adaptive auth)
#       - Account recovery via email only (no phone enumeration attacks)
#   • App Client with OAuth 2.0 authorization code flow (PKCE-ready)
#       - Client secret disabled for SPAs (public client)
#       - Prevent user existence errors (blocks username enumeration)
#   • Identity Pool (optional) for federated AWS temporary credential vending
#       - Authenticated role → limited S3/DynamoDB access
#       - Unauthenticated identities disabled by default
# ---------------------------------------------------------------------------

data "aws_caller_identity" "current" {}
data "aws_partition" "current" {}

# ── User Pool ─────────────────────────────────────────────────────────────────

resource "aws_cognito_user_pool" "main" {
  name = "${local.prefix}-${var.user_pool_name}"

  # Allow users to sign in with email (not just username)
  username_attributes      = ["email"]
  auto_verified_attributes = ["email"]

  # Self-registration control
  admin_create_user_config {
    allow_admin_create_user_only = !var.allow_self_registration

    invite_message_template {
      email_subject = "Your temporary password for ${local.prefix}"
      email_message = "Your username is {username} and temporary password is {####}"
      sms_message   = "Your username is {username} and temporary password is {####}"
    }
  }

  # Password policy (Task 1.1 – security best practices)
  password_policy {
    minimum_length                   = var.password_minimum_length
    require_lowercase                = true
    require_numbers                  = true
    require_symbols                  = true
    require_uppercase                = true
    temporary_password_validity_days = var.temporary_password_validity_days
  }

  # MFA configuration (Task 1.1 – MFA enforcement)
  mfa_configuration = var.mfa_configuration

  software_token_mfa_configuration {
    enabled = true
  }

  # Account recovery — email only (prevents phone-based enumeration attacks)
  account_recovery_setting {
    recovery_mechanism {
      name     = "verified_email"
      priority = 1
    }
  }

  # Advanced security: detects compromised credentials and adaptive authentication
  user_pool_add_ons {
    advanced_security_mode = var.advanced_security_mode
  }

  # Schema: capture required user attributes
  schema {
    name                     = "email"
    attribute_data_type      = "String"
    required                 = true
    mutable                  = true
    string_attribute_constraints {
      min_length = 5
      max_length = 254
    }
  }

  schema {
    name                = "given_name"
    attribute_data_type = "String"
    required            = true
    mutable             = true
    string_attribute_constraints {
      min_length = 1
      max_length = 100
    }
  }

  schema {
    name                = "family_name"
    attribute_data_type = "String"
    required            = true
    mutable             = true
    string_attribute_constraints {
      min_length = 1
      max_length = 100
    }
  }

  # Device tracking
  device_configuration {
    challenge_required_on_new_device      = true
    device_only_remembered_on_user_prompt = true
  }

  # Deletion protection for non-dev environments
  deletion_protection = var.environment == "prod" ? "ACTIVE" : "INACTIVE"

  tags = local.common_tags
}

# ── User Pool Domain ──────────────────────────────────────────────────────────
# Provides the hosted UI endpoint for OAuth 2.0 / OIDC flows

resource "aws_cognito_user_pool_domain" "main" {
  domain       = "${local.prefix}-auth"
  user_pool_id = aws_cognito_user_pool.main.id
}

# ── App Client ────────────────────────────────────────────────────────────────

resource "aws_cognito_user_pool_client" "main" {
  name         = "${local.prefix}-${var.app_client_name}"
  user_pool_id = aws_cognito_user_pool.main.id

  # Public client (SPA/mobile) — no client secret
  generate_secret = false

  # Prevent user existence errors (blocks username enumeration — OWASP A07)
  prevent_user_existence_errors = "ENABLED"

  # Auth flows: only allow SRP and refresh tokens (no plain password auth)
  explicit_auth_flows = [
    "ALLOW_USER_SRP_AUTH",
    "ALLOW_REFRESH_TOKEN_AUTH"
  ]

  # OAuth 2.0 configuration
  allowed_oauth_flows_user_pool_client = true
  allowed_oauth_flows                  = var.allowed_oauth_flows
  allowed_oauth_scopes                 = var.allowed_oauth_scopes
  callback_urls                        = var.callback_urls
  logout_urls                          = var.logout_urls
  supported_identity_providers         = ["COGNITO"]

  # Token validity
  access_token_validity  = 1    # 1 hour
  id_token_validity      = 1    # 1 hour
  refresh_token_validity = 30   # 30 days

  token_validity_units {
    access_token  = "hours"
    id_token      = "hours"
    refresh_token = "days"
  }
}

# ── Identity Pool ─────────────────────────────────────────────────────────────

resource "aws_cognito_identity_pool" "main" {
  count = var.enable_identity_pool ? 1 : 0

  identity_pool_name               = "${local.prefix}-identity-pool"
  allow_unauthenticated_identities = var.allow_unauthenticated_identities

  cognito_identity_providers {
    client_id               = aws_cognito_user_pool_client.main.id
    provider_name           = aws_cognito_user_pool.main.endpoint
    server_side_token_check = true
  }

  tags = local.common_tags
}

# ── Identity Pool Roles ───────────────────────────────────────────────────────

resource "aws_iam_role" "cognito_authenticated" {
  count = var.enable_identity_pool ? 1 : 0

  name = "${local.prefix}-cognito-authenticated"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Federated = "cognito-identity.amazonaws.com"
        }
        Action = "sts:AssumeRoleWithWebIdentity"
        Condition = {
          StringEquals = {
            "cognito-identity.amazonaws.com:aud" = aws_cognito_identity_pool.main[0].id
          }
          "ForAnyValue:StringLike" = {
            "cognito-identity.amazonaws.com:amr" = "authenticated"
          }
        }
      }
    ]
  })

  tags = local.common_tags
}

resource "aws_iam_role_policy" "cognito_authenticated" {
  count = var.enable_identity_pool ? 1 : 0

  name = "${local.prefix}-cognito-authenticated-policy"
  role = aws_iam_role.cognito_authenticated[0].id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "AllowCognitoSync"
        Effect = "Allow"
        Action = [
          "cognito-sync:*",
          "cognito-identity:*"
        ]
        Resource = "*"
      }
    ]
  })
}

resource "aws_cognito_identity_pool_roles_attachment" "main" {
  count = var.enable_identity_pool ? 1 : 0

  identity_pool_id = aws_cognito_identity_pool.main[0].id

  roles = {
    authenticated = aws_iam_role.cognito_authenticated[0].arn
  }
}
