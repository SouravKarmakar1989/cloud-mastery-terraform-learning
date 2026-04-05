project_id  = "project-5d94a90a-4ca3-4073-b6e"
environment = "prod"
region      = "us-central1"
prefix      = "cm"

subnets = {
  snet-gke = { cidr = "10.90.1.0/24" }
  snet-vm  = { cidr = "10.90.2.0/24" }
  snet-app = { cidr = "10.90.3.0/24" }
}

export_to_bigquery = true
secret_names       = ["app-db-password", "app-api-key", "shared-token", "signing-key"]