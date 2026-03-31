data "aws_vpc" "default" { default = true }

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

resource "aws_lb" "this" {
  name               = substr("-network", 0, 32)
  load_balancer_type = "network"
  subnets            = length(var.subnet_ids) > 0 ? var.subnet_ids : data.aws_subnets.default.ids
  internal           = var.internal

  tags = merge(local.common_tags, { Name = "-network" })
}

resource "aws_lb_target_group" "this" {
  name     = substr("-network-tg", 0, 32)
  port     = var.target_port
  protocol = "TCP"
  vpc_id   = data.aws_vpc.default.id
}

resource "aws_lb_listener" "this" {
  load_balancer_arn = aws_lb.this.arn
  port              = var.listener_port
  protocol          = "TCP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.this.arn
  }
}
