resource "aws_iam_role" "ec2_ssm" {
  name = "${local.prefix}-ec2-ssm-role"

  assume_role_policy = jsonencode({
    Version   = "2012-10-17",
    Statement = [{ Effect = "Allow", Principal = { Service = "ec2.amazonaws.com" }, Action = "sts:AssumeRole" }]
  })

  tags = local.common_tags
}

resource "aws_iam_role_policy_attachment" "ssm_managed" {
  role       = aws_iam_role.ec2_ssm.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_iam_role_policy_attachment" "cloudwatch_agent" {
  role       = aws_iam_role.ec2_ssm.name
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
}

resource "aws_iam_instance_profile" "ec2_ssm" {
  name = "${local.prefix}-ec2-ssm-profile"
  role = aws_iam_role.ec2_ssm.name
}

resource "aws_ssm_patch_baseline" "default" {
  name             = "${local.prefix}-baseline"
  operating_system = "AMAZON_LINUX_2"

  approval_rule {
    approve_after_days = var.patch_approval_days

    patch_filter {
      key    = "CLASSIFICATION"
      values = ["Security", "Bugfix"]
    }
  }

  tags = local.common_tags
}

resource "aws_ssm_maintenance_window" "weekly" {
  name                       = "${local.prefix}-weekly"
  schedule                   = var.maintenance_window_schedule
  duration                   = 4
  cutoff                     = 1
  allow_unassociated_targets = true
}
