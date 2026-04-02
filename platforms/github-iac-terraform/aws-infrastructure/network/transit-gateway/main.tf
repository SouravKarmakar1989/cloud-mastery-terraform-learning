resource "aws_ec2_transit_gateway" "this" {
  description                     = "${local.prefix}-tgw"
  amazon_side_asn                 = var.amazon_side_asn
  auto_accept_shared_attachments  = var.auto_accept_shared_attachments
  default_route_table_association = "enable"
  default_route_table_propagation = "enable"

  tags = merge(local.common_tags, { Name = "${local.prefix}-tgw" })
}

resource "aws_ec2_transit_gateway_vpc_attachment" "this" {
  for_each = var.vpc_attachments

  transit_gateway_id = aws_ec2_transit_gateway.this.id
  vpc_id             = each.value.vpc_id
  subnet_ids         = each.value.subnet_ids
  dns_support        = each.value.dns_support
  ipv6_support       = each.value.ipv6_support

  tags = merge(local.common_tags, { Name = "${local.prefix}-tgw-attach-${each.key}" })
}
