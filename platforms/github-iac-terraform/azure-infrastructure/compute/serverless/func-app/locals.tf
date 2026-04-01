locals {
  name_prefix = "${var.prefix}-${var.env}"
  # Storage account name: 3-24 chars, lowercase alphanumeric only
  storage_name = lower(replace("${var.prefix}${var.env}func", "-", ""))

  subscription_id = data.azurerm_subscription.shared.subscription_id
  tenant_id       = data.azurerm_client_config.shared.tenant_id

  common_tags = {
    env        = var.env
    managed_by = "terraform"
    repo       = "github-iac-terraform"
    module     = "compute/serverless/func-app"
  }
}
