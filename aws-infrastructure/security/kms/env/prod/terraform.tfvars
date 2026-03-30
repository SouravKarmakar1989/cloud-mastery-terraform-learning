environment = "prod"
region      = "us-east-1"
project     = "security"

customer_managed_keys = {
  s3 = {
    description     = "CMK for S3 bucket encryption (prod)"
    enable_rotation = true
    deletion_window = 30
  }
  rds = {
    description     = "CMK for RDS encryption (prod)"
    enable_rotation = true
    deletion_window = 30
  }
  secrets = {
    description     = "CMK for Secrets Manager (prod)"
    enable_rotation = true
    deletion_window = 30
  }
  ebs = {
    description     = "CMK for EBS volume encryption (prod)"
    enable_rotation = true
    deletion_window = 30
  }
  logs = {
    description     = "CMK for CloudWatch Logs encryption (prod)"
    enable_rotation = true
    deletion_window = 30
  }
}
