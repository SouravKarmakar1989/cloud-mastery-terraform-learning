locals {
  common_tags = merge(
    {
      Project     = var.project
      Environment = var.environment
      ManagedBy   = "Terraform"
      RootStack   = "aws-compute-platform"
      CreatedAt   = timestamp()
    },
    var.tags
  )

  name_prefix = "${var.project}-${var.environment}"
}
