environment              = "prod"
region                   = "us-east-1"
project                  = "security"
force_mfa_on_console     = true
password_minimum_length  = 16
max_password_age         = 60
password_reuse_prevention = 24

iam_groups = {
  "admins"     = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  "developers" = ["arn:aws:iam::aws:policy/PowerUserAccess"]
  "readonly"   = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
  "billing"    = ["arn:aws:iam::aws:policy/job-function/Billing"]
  "auditors"   = ["arn:aws:iam::aws:policy/SecurityAudit"]
}

iam_users = {}

cross_account_role_arns   = []
workload_role_name        = "workload-role"
workload_managed_policies = []
