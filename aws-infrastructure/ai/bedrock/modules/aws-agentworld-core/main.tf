module "naming" {
  source = "../shared-labels"

  platform_short = var.platform_short
  cloud_short    = "aws"
  workload       = "tools"
  environment    = var.environment
  region_short   = replace(lower(var.region), "-", "")
  extra_tags     = var.tags
}

locals {
  planned_resources = {
    api_name              = "${module.naming.name_prefix}-http-api"
    lambda_prefix         = "${module.naming.name_prefix}-lambda"
    optional_dynamodb     = "${module.naming.name_prefix}-ddb"
    optional_s3           = "${module.naming.name_prefix}-s3"
    bedrock_enabled       = var.feature_flags.enable_bedrock_agentcore
  }
}
