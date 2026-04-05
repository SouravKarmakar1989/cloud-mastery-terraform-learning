bucket         = "cloud-mastery-tf-state-staging"
key            = "landing-zone/terraform.tfstate"
region         = "us-east-1"
encrypt        = true
dynamodb_table = "terraform-lock"