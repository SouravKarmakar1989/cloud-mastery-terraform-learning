locals {
  common_tags = merge(
    {
      Project     = var.project
      Environment = var.environment
      ManagedBy   = "Terraform"
      RootStack   = "aws-compute-platform"
    },
    var.created_at != null ? { CreatedAt = var.created_at } : {},
    var.tags
  )

  name_prefix = "${var.project}-${var.environment}"
}
