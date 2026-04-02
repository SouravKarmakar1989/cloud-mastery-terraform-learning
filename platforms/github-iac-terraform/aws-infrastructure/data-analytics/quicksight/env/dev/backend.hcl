bucket         = "replace-with-terraform-state-bucket"
key            = "aws-infrastructure/data-analytics/quicksight/dev/terraform.tfstate"
region         = "us-east-1"
encrypt        = true
dynamodb_table = "replace-with-terraform-lock-table"