locals {
  name_prefix = "${var.prefix}-${var.env}"

  subscription_id = data.azurerm_subscription.shared.subscription_id
  tenant_id       = data.azurerm_client_config.shared.tenant_id

  common_tags = {
    env        = var.env
    module     = "azure-minimal"
    managed_by = "terraform"
    repo       = "github-iac-terraform"
  }
}
