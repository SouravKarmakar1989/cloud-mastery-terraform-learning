bucket         = "cloud-mastery-tf-state-dev"
key            = "landing-zone/terraform.tfstate"
region         = "us-east-1"
encrypt        = true
dynamodb_table = "terraform-lock"