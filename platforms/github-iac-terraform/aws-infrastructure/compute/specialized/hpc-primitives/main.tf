resource "aws_placement_group" "cluster" {
  name     = "${local.prefix}-hpc-pg"
  strategy = "cluster"

  tags = local.common_tags
}
