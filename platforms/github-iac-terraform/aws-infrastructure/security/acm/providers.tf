provider "aws" {
  region = var.region
  alias  = "regional"
}

# CloudFront certificates must be in us-east-1
provider "aws" {
  region = "us-east-1"
  alias  = "us_east_1"
}
