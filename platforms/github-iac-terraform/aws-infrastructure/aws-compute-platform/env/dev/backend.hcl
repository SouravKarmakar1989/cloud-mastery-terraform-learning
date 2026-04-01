# Backend configuration for S3 + DynamoDB state storage
# Use with: terraform init -backend-config=env/dev/backend.hcl

bucket         = "cloud-mastery-tf-state-dev"
key            = "aws-compute-platform/terraform.tfstate"
region         = "us-east-1"
encrypt        = true
dynamodb_table = "terraform-lock"
