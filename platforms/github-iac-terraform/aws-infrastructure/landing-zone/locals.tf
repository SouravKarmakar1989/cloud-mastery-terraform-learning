locals {
  landing_zone_name = join("-", [var.project, var.environment, "landing-zone"])

  common_tags = merge(
    {
      project     = var.project
      environment = var.environment
      stack       = "landing-zone"
      managed_by  = "terraform"
      repo        = "github-iac-terraform"
    },
    var.tags,
  )
}