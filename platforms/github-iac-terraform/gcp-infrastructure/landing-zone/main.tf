module "network" {
  source = "../network/core"

  project_id                   = var.project_id
  environment                  = var.environment
  region                       = var.region
  prefix                       = var.prefix
  vpc_name                     = var.vpc_name
  subnets                      = var.subnets
  enable_private_google_access = var.enable_private_google_access
  firewall_allow_internal      = var.firewall_allow_internal
}

module "observability" {
  source = "../observability/cloud-logging"

  project_id         = var.project_id
  environment        = var.environment
  region             = var.region
  prefix             = var.prefix
  log_retention_days = var.log_retention_days
  export_to_bigquery = var.export_to_bigquery
  notification_email = var.notification_email
}

module "security" {
  source = "../security/secret-manager"

  project_id             = var.project_id
  environment            = var.environment
  region                 = var.region
  prefix                 = var.prefix
  secret_names           = var.secret_names
  replication_automatic  = var.replication_automatic
}
