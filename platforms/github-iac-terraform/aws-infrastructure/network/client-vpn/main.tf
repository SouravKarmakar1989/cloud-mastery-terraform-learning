resource "aws_cloudwatch_log_group" "this" {
  name              = "/aws/client-vpn/${local.prefix}"
  retention_in_days = 30

  tags = local.common_tags
}

resource "aws_cloudwatch_log_stream" "this" {
  name           = "connections"
  log_group_name = aws_cloudwatch_log_group.this.name
}

resource "aws_ec2_client_vpn_endpoint" "this" {
  description            = "${local.prefix}-client-vpn"
  server_certificate_arn = var.server_certificate_arn
  client_cidr_block      = var.client_cidr_block
  split_tunnel           = var.split_tunnel
  transport_protocol     = var.transport_protocol
  vpc_id                 = var.vpc_id
  security_group_ids     = var.security_group_ids

  authentication_options {
    type = "certificate-authentication"

    root_certificate_chain_arn = var.client_root_certificate_chain_arn
  }

  connection_log_options {
    enabled               = true
    cloudwatch_log_group  = aws_cloudwatch_log_group.this.name
    cloudwatch_log_stream = aws_cloudwatch_log_stream.this.name
  }

  tags = merge(local.common_tags, { Name = "${local.prefix}-client-vpn" })
}

resource "aws_ec2_client_vpn_network_association" "this" {
  for_each = toset(var.association_subnet_ids)

  client_vpn_endpoint_id = aws_ec2_client_vpn_endpoint.this.id
  subnet_id              = each.value
}

resource "aws_ec2_client_vpn_authorization_rule" "this" {
  for_each = toset(var.authorize_cidr_blocks)

  client_vpn_endpoint_id = aws_ec2_client_vpn_endpoint.this.id
  target_network_cidr    = each.value
  authorize_all_groups   = true
}
