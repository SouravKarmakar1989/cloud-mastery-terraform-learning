data "aws_vpc" "default" { default = true }

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

resource "aws_lb" "this" {
  name               = substr("-application", 0, 32)
  load_balancer_type = "application"
  subnets            = length(var.subnet_ids) > 0 ? var.subnet_ids : data.aws_subnets.default.ids
  internal           = var.internal

  tags = merge(local.common_tags, { Name = "-application" })
}

resource "aws_lb_target_group" "this" {
  name     = substr("-application-tg", 0, 32)
  port     = var.target_port
  protocol = "HTTP"
  vpc_id   = data.aws_vpc.default.id
}

resource "aws_lb_listener" "this" {
  load_balancer_arn = aws_lb.this.arn
  port              = var.listener_port
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.this.arn
  }
}
