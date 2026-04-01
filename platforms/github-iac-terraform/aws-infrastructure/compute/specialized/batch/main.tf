data "aws_vpc" "default" { default = true }
data "aws_subnets" "default" { filter { name = "vpc-id" values = [data.aws_vpc.default.id] } }

resource "aws_security_group" "batch" {
  name_prefix = "${local.prefix}-batch-"
  vpc_id      = data.aws_vpc.default.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = local.common_tags
}

resource "aws_iam_role" "batch_service" {
  name = "${local.prefix}-batch-service-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{ Effect = "Allow", Principal = { Service = "batch.amazonaws.com" }, Action = "sts:AssumeRole" }]
  })

  tags = local.common_tags
}

resource "aws_iam_role_policy_attachment" "batch_service" {
  role       = aws_iam_role.batch_service.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSBatchServiceRole"
}

resource "aws_batch_compute_environment" "this" {
  compute_environment_name = "${local.prefix}-batch-ce"
  type                     = "MANAGED"
  service_role             = aws_iam_role.batch_service.arn

  compute_resources {
    type               = "FARGATE"
    max_vcpus          = var.max_vcpus
    subnets            = data.aws_subnets.default.ids
    security_group_ids = [aws_security_group.batch.id]
  }

  depends_on = [aws_iam_role_policy_attachment.batch_service]

  tags = local.common_tags
}

resource "aws_batch_job_queue" "this" {
  name                 = "${local.prefix}-batch-queue"
  state                = "ENABLED"
  priority             = 1
  compute_environments = [aws_batch_compute_environment.this.arn]

  tags = local.common_tags
}
