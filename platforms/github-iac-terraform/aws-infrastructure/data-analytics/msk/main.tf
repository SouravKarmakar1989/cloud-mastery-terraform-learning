resource "aws_msk_configuration" "this" {
  count             = var.enabled ? 1 : 0
  name              = "${local.prefix}-${var.configuration_name}"
  kafka_versions    = [var.kafka_version]
  server_properties = var.server_properties
}