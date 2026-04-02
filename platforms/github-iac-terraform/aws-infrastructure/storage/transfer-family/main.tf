resource "aws_transfer_server" "this" {
  identity_provider_type = var.identity_provider_type
  endpoint_type          = var.endpoint_type
  protocols              = ["SFTP"]

  tags = local.common_tags
}
