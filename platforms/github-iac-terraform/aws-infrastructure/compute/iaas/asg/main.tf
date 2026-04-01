data "aws_vpc" "default" { default = true }

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

data "aws_ami" "al2023" {
  most_recent = true
  owners      = ["amazon"]
  filter { name = "name" values = ["al2023-ami-*-x86_64"] }
}

resource "aws_launch_template" "this" {
  name_prefix   = "${local.prefix}-lt-"
  image_id      = data.aws_ami.al2023.id
  instance_type = var.instance_type

  tag_specifications {
    resource_type = "instance"
    tags          = merge(local.common_tags, { Name = "${local.prefix}-asg-node" })
  }
}

resource "aws_autoscaling_group" "this" {
  name                = "${local.prefix}-asg"
  min_size            = var.min_size
  max_size            = var.max_size
  desired_capacity    = var.desired_capacity
  vpc_zone_identifier = length(var.subnet_ids) > 0 ? var.subnet_ids : data.aws_subnets.default.ids

  launch_template {
    id      = aws_launch_template.this.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "${local.prefix}-asg"
    propagate_at_launch = true
  }
}
