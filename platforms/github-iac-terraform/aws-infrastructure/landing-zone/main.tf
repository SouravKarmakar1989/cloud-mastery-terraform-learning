module "network_security" {
  source = "../security/vpc-secure"

  region                  = var.aws_region
  environment             = var.environment
  project                 = var.project
  tags                    = local.common_tags
  vpc_cidr                = var.vpc_cidr
  public_subnets          = var.public_subnets
  private_app_subnets     = var.private_app_subnets
  private_data_subnets    = var.private_data_subnets
  single_nat_gateway      = var.single_nat_gateway
  enable_flow_logs        = var.enable_flow_logs
  flow_log_retention_days = var.flow_log_retention_days
  enable_s3_endpoint      = var.enable_s3_endpoint
  enable_ssm_endpoints    = var.enable_ssm_endpoints
}

module "audit_trail" {
  source = "../observability/cloudtrail"

  region                        = var.aws_region
  environment                   = var.environment
  project                       = var.project
  trail_name                    = var.trail_name
  is_multi_region_trail         = var.is_multi_region_trail
  enable_log_file_validation    = var.enable_log_file_validation
  include_global_service_events = var.include_global_service_events
  retention_in_days             = var.cloudtrail_retention_in_days
}

module "configuration_baseline" {
  source = "../observability/config"

  region                        = var.aws_region
  environment                   = var.environment
  project                       = var.project
  record_all_supported          = var.config_record_all_supported
  include_global_resource_types = var.config_include_global_resource_types
  retention_in_days             = var.config_retention_in_days
}