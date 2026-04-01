resource "aws_ssm_parameter" "outposts_mode" {
  name  = "/${local.prefix}/compute/outposts-mode"
  type  = "String"
  value = var.outposts_mode

  tags = local.common_tags
}

resource "aws_ssm_parameter" "local_zone_preference" {
  name  = "/${local.prefix}/compute/local-zone-preference"
  type  = "String"
  value = var.local_zone_preference

  tags = local.common_tags
}
