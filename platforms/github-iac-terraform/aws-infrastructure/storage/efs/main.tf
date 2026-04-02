resource "aws_efs_file_system" "this" {
  encrypted = true
  tags      = merge(local.common_tags, { Name = "${local.prefix}-efs" })
}

resource "aws_efs_mount_target" "this" {
  for_each = toset(var.subnet_ids)

  file_system_id  = aws_efs_file_system.this.id
  subnet_id       = each.value
  security_groups = var.security_group_ids
}
