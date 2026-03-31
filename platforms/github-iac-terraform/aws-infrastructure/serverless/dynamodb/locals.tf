locals {
  prefix = "${var.project}-${var.environment}"

  students_table_name       = "${local.prefix}-students"
  certifications_table_name = "${local.prefix}-certifications"

  common_tags = {
    project     = var.project
    environment = var.environment
    managed_by  = "terraform"
    component   = "serverless-dynamodb"
  }
}
