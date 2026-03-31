resource "aws_iam_role" "this" {
  name = "${local.prefix}-sfn-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{ Effect = "Allow", Principal = { Service = "states.amazonaws.com" }, Action = "sts:AssumeRole" }]
  })

  tags = local.common_tags
}

resource "aws_sfn_state_machine" "this" {
  name     = "${local.prefix}-state-machine"
  role_arn = aws_iam_role.this.arn

  definition = jsonencode({
    StartAt = "Done",
    States = {
      Done = { Type = "Succeed" }
    }
  })

  tags = local.common_tags
}
