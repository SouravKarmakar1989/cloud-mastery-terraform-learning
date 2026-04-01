# Backend configuration for S3 + DynamoDB state storage
# Use with: terraform init -backend-config=env/prod/backend.hcl

bucket         = "cloud-mastery-tf-state-prod"
key            = "aws-compute-platform/terraform.tfstate"
region         = "us-east-1"
encrypt        = true
dynamodb_table = "terraform-lock"
