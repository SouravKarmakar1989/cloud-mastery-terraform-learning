# compute/container/artifact-registry — Google Artifact Registry
#
# GCP equivalent of Azure Container Registry (ACR).
# Unified repository for Docker images, Helm charts, Maven/npmpackages, and more.
# Successor to Container Registry (gcr.io); integrates with Cloud Build, GKE, Cloud Run.
#
# Cost:
#   - Storage: $0.10/GB/month (first 500 MB free per month)
#   - Network egress within same region: FREE
#   - Network egress to other regions/internet: standard egress rates
#
# Push image:  docker tag myimage us-central1-docker.pkg.dev/<project>/<repo>/myimage:latest
# Pull image:  docker pull us-central1-docker.pkg.dev/<project>/<repo>/myimage:latest
# Auth config: gcloud auth configure-docker us-central1-docker.pkg.dev

resource "google_project_service" "artifact_registry" {
  service            = "artifactregistry.googleapis.com"
  project            = var.project_id
  disable_on_destroy = false
}

resource "google_artifact_registry_repository" "registry" {
  repository_id = "${local.name_prefix}-registry"
  location      = var.region
  format        = var.format
  project       = var.project_id
  description   = "Container registry for ${local.name_prefix}"

  docker_config {
    immutable_tags = var.immutable_tags
  }

  labels = local.common_labels

  depends_on = [google_project_service.artifact_registry]
}
