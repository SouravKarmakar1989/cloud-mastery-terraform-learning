region      = "us-east-1"
environment = "prod"
project     = "security"

# Reference the prod KMS key ARN from the kms module
# kms_key_arn = "arn:aws:kms:us-east-1:123456789012:key/REPLACE_ME"
kms_key_arn = ""

secrets = {
  db_credentials = {
    description             = "RDS database master credentials (prod)"
    recovery_window_in_days = 30
    enable_rotation         = true
    rotation_days           = 30
    # Set to the ARN of your SecretsManager rotation Lambda
    rotation_lambda_arn     = "arn:aws:lambda:us-east-1:123456789012:function:REPLACE_ME"
    initial_value_json      = "{\"username\": \"admin\", \"password\": \"REPLACE_ME\"}"
    allowed_principal_arns  = []
  }
  app_api_key = {
    description             = "External API key for third-party service (prod)"
    recovery_window_in_days = 30
    enable_rotation         = false
    initial_value_json      = "{\"api_key\": \"REPLACE_ME\"}"
    allowed_principal_arns  = []
  }
}
