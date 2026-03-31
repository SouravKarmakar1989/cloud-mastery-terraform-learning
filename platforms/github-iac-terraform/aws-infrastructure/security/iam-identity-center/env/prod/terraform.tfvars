environment       = "prod"
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

# Example: assign admins group to this account with AdministratorAccess
# account_assignments = [
#   {
#     account_id          = "123456789012"
#     principal_type      = "GROUP"
#     principal_name      = "admins"
#     permission_set_name = "AdministratorAccess"
#   }
# ]
account_assignments = []
