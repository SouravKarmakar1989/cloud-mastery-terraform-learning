data "aws_vpc" "default" { default = true }

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

resource "aws_lb" "this" {
  name               = substr("${local.prefix}-gwlb", 0, 32)
  load_balancer_type = "gateway"
  subnets            = length(var.subnet_ids) > 0 ? var.subnet_ids : data.aws_subnets.default.ids

  tags = merge(local.common_tags, { Name = "${local.prefix}-gwlb" })
}

resource "aws_lb_target_group" "this" {
  name        = substr("${local.prefix}-gwlb-tg", 0, 32)
  port        = 6081
  protocol    = "GENEVE"
  target_type = "ip"
  vpc_id      = data.aws_vpc.default.id
}

resource "aws_lb_listener" "geneve" {
  load_balancer_arn = aws_lb.this.arn

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.this.arn
  }
}
