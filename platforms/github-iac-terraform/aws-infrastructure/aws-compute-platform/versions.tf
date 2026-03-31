terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Backend configured per environment
  # Dev: terraform init -backend-config=env/dev/backend.hcl
  # Staging: terraform init -backend-config=env/staging/backend.hcl
  # Prod: terraform init -backend-config=env/prod/backend.hcl
  backend "s3" {
    # Bucket, key, region set via backend.hcl files
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = local.common_tags
  }
}
