resource "aws_vpc_endpoint" "interface" {
  for_each = var.interface_endpoints

  vpc_id              = var.vpc_id
  service_name        = each.value.service_name
  vpc_endpoint_type   = "Interface"
  subnet_ids          = each.value.subnet_ids
  security_group_ids  = each.value.security_group_ids
  private_dns_enabled = each.value.private_dns_enabled

  tags = merge(local.common_tags, { Name = "${local.prefix}-if-ep-${each.key}" })
}

resource "aws_vpc_endpoint" "gateway" {
  for_each = var.gateway_endpoints

  vpc_id            = var.vpc_id
  service_name      = each.value.service_name
  vpc_endpoint_type = "Gateway"
  route_table_ids   = each.value.route_table_ids

  tags = merge(local.common_tags, { Name = "${local.prefix}-gw-ep-${each.key}" })
}

resource "aws_vpc_endpoint_service" "this" {
  count = var.enable_endpoint_service ? 1 : 0

  network_load_balancer_arns = var.endpoint_service_nlb_arns
  acceptance_required        = var.acceptance_required

  tags = merge(local.common_tags, { Name = "${local.prefix}-endpoint-service" })
}
