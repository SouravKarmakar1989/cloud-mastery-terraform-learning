resource "aws_fsx_lustre_file_system" "this" {
  subnet_ids         = [var.subnet_ids[0]]
  storage_capacity   = var.storage_capacity
  deployment_type    = var.deployment_type
  security_group_ids = var.security_group_ids

  tags = merge(local.common_tags, { Name = "${local.prefix}-fsx-lustre" })
}
