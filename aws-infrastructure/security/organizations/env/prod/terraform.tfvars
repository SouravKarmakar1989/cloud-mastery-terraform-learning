environment                = "prod"
region                     = "us-east-1"
project                    = "security"

organizational_units = {
  "Security"  = "root"
  "Workloads" = "root"
  "Sandbox"   = "root"
  "Dev"       = "Workloads"
  "Staging"   = "Workloads"
  "Prod"      = "Workloads"
}

deny_root_user_actions    = true
deny_leave_organization   = true
deny_disable_cloudtrail   = true
deny_non_approved_regions = ["us-east-1", "us-west-2"]
require_imdsv2            = true

scp_target_ou_names = ["Workloads", "Prod"]
