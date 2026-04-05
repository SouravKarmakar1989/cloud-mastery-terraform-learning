locals {
  prefix = join("-", [var.project, var.environment])

  common_tags = {
    project     = var.project
    environment = var.environment
    managed_by  = "terraform"
    component   = "compute-networking-elb-alb"
  }
}
