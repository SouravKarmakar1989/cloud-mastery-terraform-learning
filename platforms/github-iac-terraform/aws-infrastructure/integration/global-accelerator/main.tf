resource "aws_globalaccelerator_accelerator" "this" {
  count           = var.enabled ? 1 : 0
  name            = "${local.prefix}-accelerator"
  enabled         = true
  ip_address_type = "IPV4"

  attributes {
    flow_logs_enabled = false
  }

  tags = merge(local.common_tags, var.tags)
}