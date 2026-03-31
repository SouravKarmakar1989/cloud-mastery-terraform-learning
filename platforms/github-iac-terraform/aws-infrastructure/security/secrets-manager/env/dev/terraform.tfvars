region      = "us-east-1"
environment = "dev"
project     = "security"

# Optional: reference KMS key ARN from the kms module output
# kms_key_arn = "arn:aws:kms:us-east-1:123456789012:key/REPLACE_ME"
kms_key_arn = ""

secrets = {
  db_credentials = {
    description             = "RDS database master credentials (dev)"
    recovery_window_in_days = 7
    enable_rotation         = false
    initial_value_json      = "{\"username\": \"admin\", \"password\": \"REPLACE_ME\"}"
    allowed_principal_arns  = []
  }
  app_api_key = {
    description             = "External API key for third-party service (dev)"
    recovery_window_in_days = 7
    enable_rotation         = false
    initial_value_json      = "{\"api_key\": \"REPLACE_ME\"}"
    allowed_principal_arns  = []
  }
}
