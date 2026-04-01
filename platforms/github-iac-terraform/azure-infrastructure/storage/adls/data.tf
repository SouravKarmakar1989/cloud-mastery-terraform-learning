# Shared environment data available to every module in this stack.
# Use these data sources when modules need tenant/subscription context.

data "azurerm_client_config" "shared" {}

data "azurerm_subscription" "shared" {}
