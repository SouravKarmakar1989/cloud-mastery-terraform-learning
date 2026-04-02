bucket         = "replace-with-terraform-state-bucket"
key            = "aws-infrastructure/integration/application-migration-service/dev/terraform.tfstate"
region         = "us-east-1"
encrypt        = true
dynamodb_table = "replace-with-terraform-lock-table"