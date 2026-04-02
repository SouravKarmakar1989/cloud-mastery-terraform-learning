bucket         = "replace-with-terraform-state-bucket"
key            = "aws-infrastructure/integration/cost-explorer/prod/terraform.tfstate"
region         = "us-east-1"
encrypt        = true
dynamodb_table = "replace-with-terraform-lock-table"