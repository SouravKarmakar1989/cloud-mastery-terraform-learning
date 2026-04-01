data "aws_vpc" "default" { default = true }
data "aws_subnets" "default" {
  filter { name = "vpc-id" values = [data.aws_vpc.default.id] }
}
data "aws_ami" "ecs" {
  most_recent = true
  owners      = ["amazon"]
  filter { name = "name" values = ["amzn2-ami-ecs-hvm-*-x86_64-ebs"] }
}

resource "aws_ecs_cluster" "this" {
  name = "${local.prefix}-ecs-ec2"
  tags = local.common_tags
}

resource "aws_launch_template" "ecs" {
  name_prefix   = "${local.prefix}-ecs-"
  image_id      = data.aws_ami.ecs.id
  instance_type = var.instance_type
  user_data     = base64encode("ECS_CLUSTER=${aws_ecs_cluster.this.name}")
}

resource "aws_autoscaling_group" "ecs" {
  name                = "${local.prefix}-ecs-asg"
  min_size            = var.min_size
  max_size            = var.max_size
  desired_capacity    = var.desired_capacity
  vpc_zone_identifier = length(var.subnet_ids) > 0 ? var.subnet_ids : data.aws_subnets.default.ids

  launch_template {
    id      = aws_launch_template.ecs.id
    version = "$Latest"
  }
}
