locals {
  name_prefix = "${var.prefix}-${var.env}"

  sa_name = substr(lower(replace("${var.prefix}${var.env}docintel", "-", "")), 0, 24)

  subscription_id = data.azurerm_subscription.shared.subscription_id
  tenant_id       = data.azurerm_client_config.shared.tenant_id

  common_tags = {
    env        = var.env
    module     = "doc-intelligence"
    managed_by = "terraform"
    repo       = "github-iac-terraform"
  }
}
