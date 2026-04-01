locals {
  name_prefix = "${var.prefix}-${var.env}"
  sa_name     = "${replace(local.name_prefix, "-", "")}adls"

  subscription_id = data.azurerm_subscription.shared.subscription_id
  tenant_id       = data.azurerm_client_config.shared.tenant_id

  common_tags = {
    env        = var.env
    managed_by = "terraform"
    repo       = "github-iac-terraform"
    module     = "storage-adls"
  }
}
