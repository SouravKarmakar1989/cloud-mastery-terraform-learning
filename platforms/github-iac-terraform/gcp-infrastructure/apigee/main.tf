resource "google_project_service" "apigee" {
  service            = "apigee.googleapis.com"
  project            = var.project_id
  disable_on_destroy = false
}

resource "google_apigee_instance" "apim" {
  name     = "${local.name_prefix}-apigee"
  location = var.region
  org_id   = var.apigee_org

  depends_on = [google_project_service.apigee]
}