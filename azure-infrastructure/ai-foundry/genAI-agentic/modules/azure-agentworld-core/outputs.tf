output "planned_resources" {
  value = local.planned_resources
}

output "tags" {
  value = module.naming.tags
}

output "feature_flags" {
  value = var.feature_flags
}
