locals {
  name_prefix = "${var.prefix}-${var.env}"
  # ACR name: 5-50 chars, alphanumeric only
  acr_name = lower(replace("${var.prefix}${var.env}acr", "-", ""))

  subscription_id = data.azurerm_subscription.shared.subscription_id
  tenant_id       = data.azurerm_client_config.shared.tenant_id

  common_tags = {
    env        = var.env
    managed_by = "terraform"
    repo       = "github-iac-terraform"
    module     = "compute/container/acr"
  }
}
