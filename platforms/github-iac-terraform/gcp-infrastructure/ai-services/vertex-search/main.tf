resource "google_project_service" "discoveryengine" {
  service            = "discoveryengine.googleapis.com"
  project            = var.project_id
  disable_on_destroy = false
}

resource "google_discovery_engine_data_store" "search" {
  location                    = "global"
  data_store_id               = "${local.name_prefix}-search"
  display_name                = var.engine_display_name
  industry_vertical           = "GENERIC"
  content_config              = "CONTENT_REQUIRED"
  solution_types              = ["SOLUTION_TYPE_SEARCH"]
  create_advanced_site_search = false
  project                     = var.project_id

  depends_on = [google_project_service.discoveryengine]
}