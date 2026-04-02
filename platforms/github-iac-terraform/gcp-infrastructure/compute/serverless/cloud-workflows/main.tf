resource "google_project_service" "workflows" {
  service            = "workflows.googleapis.com"
  project            = var.project_id
  disable_on_destroy = false
}

resource "google_workflows_workflow" "wf" {
  name        = "${local.name_prefix}-${var.workflow_name}"
  region      = var.region
  project     = var.project_id
  description = "Serverless workflow orchestration"

  source_contents = <<-EOT
    main:
      steps:
        - init:
            assign:
              - message: "Hello from Workflows"
        - return_output:
            return: $${message}
  EOT

  labels = local.common_labels

  depends_on = [google_project_service.workflows]
}
