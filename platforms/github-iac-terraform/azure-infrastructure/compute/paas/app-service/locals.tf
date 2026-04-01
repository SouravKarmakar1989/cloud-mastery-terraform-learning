locals {
  name_prefix = "${var.prefix}-${var.env}"

  subscription_id = data.azurerm_subscription.shared.subscription_id
  tenant_id       = data.azurerm_client_config.shared.tenant_id

  common_tags = merge(
    {
      env        = var.env
      managed_by = "terraform"
      repo       = "cloud-mastery-terraform-learning"
      module     = "compute/paas/app-service"
    },
    var.tags
  )
}
