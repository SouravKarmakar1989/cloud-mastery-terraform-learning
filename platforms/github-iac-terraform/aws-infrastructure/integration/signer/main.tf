resource "aws_signer_signing_profile" "this" {
  count       = var.enabled ? 1 : 0
  name_prefix = "${replace(local.prefix, "_", "-")}-"

  platform_id = var.platform_id

  signature_validity_period {
    value = var.signature_validity_value
    type  = var.signature_validity_type
  }

  tags = merge(local.common_tags, var.tags)
}