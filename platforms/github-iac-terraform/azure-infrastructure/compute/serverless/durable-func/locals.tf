locals {
  name_prefix       = "${var.prefix}-${var.env}"
  storage_host_name = lower(replace("${var.prefix}${var.env}dfhost", "-", ""))
  storage_dur_name  = lower(replace("${var.prefix}${var.env}dfstate", "-", ""))

  subscription_id = data.azurerm_subscription.shared.subscription_id
  tenant_id       = data.azurerm_client_config.shared.tenant_id

  common_tags = {
    env        = var.env
    managed_by = "terraform"
    repo       = "github-iac-terraform"
    module     = "compute/serverless/durable-func"
  }
}
