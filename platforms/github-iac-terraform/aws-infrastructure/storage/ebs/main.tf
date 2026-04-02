resource "aws_ebs_volume" "this" {
  availability_zone = var.availability_zone
  size              = var.size
  type              = var.type
  encrypted         = var.encrypted
  kms_key_id        = var.kms_key_id

  tags = merge(local.common_tags, { Name = "${local.prefix}-ebs" })
}
