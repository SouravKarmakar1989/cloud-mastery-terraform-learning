locals {
  name_prefix = "${var.prefix}-${var.env}"

  # Key Vault name: max 24 chars, alphanumeric + hyphens
  kv_name = substr("${var.prefix}-${var.env}-kv", 0, 24)

  subscription_id = data.azurerm_subscription.shared.subscription_id
  tenant_id       = data.azurerm_client_config.shared.tenant_id

  common_tags = {
    env        = var.env
    module     = "key-vault"
    managed_by = "terraform"
    repo       = "github-iac-terraform"
  }
}
