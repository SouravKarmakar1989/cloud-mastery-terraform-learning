output "landing_zone_name" {
  description = "Landing zone stack name"
  value       = local.landing_zone_name
}

output "vnet_id" {
  description = "Landing zone VNet resource ID"
  value       = module.network.vnet_id
}

output "vnet_name" {
  description = "Landing zone VNet name"
  value       = module.network.vnet_name
}

output "network_resource_group_name" {
  description = "Resource group created for landing zone networking"
  value       = module.network.resource_group_name
}

output "subnet_ids" {
  description = "Subnet IDs by name"
  value       = module.network.subnet_ids
}

output "log_analytics_workspace_id" {
  description = "Shared Log Analytics workspace ID"
  value       = module.observability.log_analytics_workspace_id
}

output "log_analytics_workspace_name" {
  description = "Shared Log Analytics workspace name"
  value       = module.observability.log_analytics_workspace_name
}

output "key_vault_id" {
  description = "Landing zone Key Vault resource ID"
  value       = module.security.key_vault_id
}

output "key_vault_name" {
  description = "Landing zone Key Vault name"
  value       = module.security.key_vault_name
}

output "key_vault_uri" {
  description = "Landing zone Key Vault URI"
  value       = module.security.key_vault_uri
}