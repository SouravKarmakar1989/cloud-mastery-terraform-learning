locals {
  prefix = "${var.project}-${var.environment}"

  common_tags = {
    project     = var.project
    environment = var.environment
    managed_by  = "terraform"
    component   = "serverless-api-gateway"
  }

  # CORS allowed origins per environment
  cors_origin = var.environment == "prod" ? var.frontend_origin : "*"
}
