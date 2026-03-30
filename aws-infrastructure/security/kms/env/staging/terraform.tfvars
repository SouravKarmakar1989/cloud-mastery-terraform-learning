environment = "staging"
region      = "us-east-1"
project     = "security"

customer_managed_keys = {
  s3 = {
    description     = "CMK for S3 bucket encryption (staging)"
    enable_rotation = true
    deletion_window = 14
  }
  rds = {
    description     = "CMK for RDS encryption (staging)"
    enable_rotation = true
    deletion_window = 14
  }
  secrets = {
    description     = "CMK for Secrets Manager (staging)"
    enable_rotation = true
    deletion_window = 14
  }
  ebs = {
    description     = "CMK for EBS volume encryption (staging)"
    enable_rotation = true
    deletion_window = 14
  }
}
