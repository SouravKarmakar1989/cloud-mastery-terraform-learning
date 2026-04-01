resource "aws_elastic_beanstalk_application" "this" {
  name        = "${local.prefix}-app"
  description = "Managed by Terraform"

  tags = local.common_tags
}

resource "aws_elastic_beanstalk_environment" "this" {
  name                = "${local.prefix}-env"
  application         = aws_elastic_beanstalk_application.this.name
  solution_stack_name = var.solution_stack_name

  setting {
    namespace = "aws:autoscaling:asg"
    name      = "MinSize"
    value     = tostring(var.min_size)
  }

  setting {
    namespace = "aws:autoscaling:asg"
    name      = "MaxSize"
    value     = tostring(var.max_size)
  }

  tags = local.common_tags
}
