output "vertex_api_enabled" { value = google_project_service.vertex.service }
output "artifacts_bucket" { value = google_storage_bucket.agent_artifacts.name }