resource "google_dns_managed_zone" "zone" {
  name        = "${local.name_prefix}-zone"
  dns_name    = var.dns_name
  description = "Managed DNS zone for ${var.dns_name}"
  visibility  = var.visibility
  project     = var.project_id

  dynamic "private_visibility_config" {
    for_each = var.visibility == "private" && var.vpc_self_link != "" ? [1] : []
    content {
      networks {
        network_url = var.vpc_self_link
      }
    }
  }

  labels = local.common_labels
}
