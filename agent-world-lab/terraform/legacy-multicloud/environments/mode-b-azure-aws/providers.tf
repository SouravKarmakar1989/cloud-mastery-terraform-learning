provider "azurerm" {
  features {}

  subscription_id = var.azure_subscription_id
  tenant_id       = var.azure_tenant_id
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}
