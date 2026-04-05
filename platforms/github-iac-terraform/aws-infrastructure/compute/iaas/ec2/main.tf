data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

data "aws_ami" "al2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

resource "aws_security_group" "ec2" {
  count = var.security_group_id == null ? 1 : 0

  name_prefix = "${local.prefix}-ec2-"
  description = "EC2 baseline security group"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.allowed_ssh_cidrs
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(local.common_tags, var.tags, { Name = "${local.prefix}-ec2-sg" })
}

resource "aws_instance" "this" {
  count = var.instance_count

  ami                    = data.aws_ami.al2023.id
  instance_type          = var.instance_type
  subnet_id              = coalesce(var.subnet_id, data.aws_subnets.default.ids[0])
  vpc_security_group_ids = var.security_group_id != null ? [var.security_group_id] : [aws_security_group.ec2[0].id]
  key_name               = var.key_name

  metadata_options {
    http_tokens = "required"
  }

  tags = merge(local.common_tags, var.tags, { Name = "${local.prefix}-ec2-${count.index + 1}" })
}
