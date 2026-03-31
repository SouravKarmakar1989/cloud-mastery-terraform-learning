environment       = "dev"
region            = "us-east-1"
project           = "security"

# Retrieve with: aws sso-admin list-instances
sso_instance_arn  = "arn:aws:sso:::instance/ssoins-REPLACE_ME"
identity_store_id = "d-REPLACE_ME"

sso_groups = {
  admins = {
    display_name = "Platform Admins"
    description  = "Break-glass administrator access"
  }
  developers = {
    display_name = "Developers"
    description  = "Application developer access"
  }
  readonly = {
    display_name = "Read-Only Users"
    description  = "Read-only access"
  }
}

account_assignments = []
