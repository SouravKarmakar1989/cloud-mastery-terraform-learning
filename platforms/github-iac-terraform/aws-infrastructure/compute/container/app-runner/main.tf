resource "aws_apprunner_service" "this" {
  service_name = "${local.prefix}-app-runner"

  source_configuration {
    image_repository {
      image_repository_type = "ECR_PUBLIC"
      image_identifier      = var.image_identifier
      image_configuration {
        port = tostring(var.container_port)
      }
    }
    auto_deployments_enabled = false
  }

  tags = local.common_tags
}
