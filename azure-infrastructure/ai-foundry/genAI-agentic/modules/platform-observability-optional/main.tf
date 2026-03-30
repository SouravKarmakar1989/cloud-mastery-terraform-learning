locals {
  enabled = var.feature_flags.enable_observability_stack

  plan = {
    environment = var.environment
    enabled     = local.enabled
  }
}
