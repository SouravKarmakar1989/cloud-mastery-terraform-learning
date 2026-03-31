environment = "dev"
region      = "us-east-1"
project     = "security"

customer_managed_keys = {
  s3 = {
    description     = "CMK for S3 bucket encryption (dev)"
    enable_rotation = true
    deletion_window = 7
  }
  secrets = {
    description     = "CMK for Secrets Manager (dev)"
    enable_rotation = true
    deletion_window = 7
  }
}
