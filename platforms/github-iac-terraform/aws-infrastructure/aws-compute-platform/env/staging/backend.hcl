# Backend configuration for S3 + DynamoDB state storage
# Use with: terraform init -backend-config=env/staging/backend.hcl

bucket         = "cloud-mastery-tf-state-staging"
key            = "aws-compute-platform/terraform.tfstate"
region         = "us-east-1"
encrypt        = true
dynamodb_table = "terraform-lock"
