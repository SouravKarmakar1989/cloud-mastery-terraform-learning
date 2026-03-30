environment       = "staging"
region            = "us-east-1"
project           = "security"

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
  auditors = {
    display_name = "Security Auditors"
    description  = "Security and compliance read access"
  }
}

account_assignments = []
