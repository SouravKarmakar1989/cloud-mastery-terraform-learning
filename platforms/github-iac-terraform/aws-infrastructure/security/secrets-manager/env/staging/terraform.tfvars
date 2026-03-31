region      = "us-east-1"
environment = "staging"
project     = "security"

kms_key_arn = ""

secrets = {
  db_credentials = {
    description             = "RDS database master credentials (staging)"
    recovery_window_in_days = 14
    enable_rotation         = false
    initial_value_json      = "{\"username\": \"admin\", \"password\": \"REPLACE_ME\"}"
    allowed_principal_arns  = []
  }
  app_api_key = {
    description             = "External API key for third-party service (staging)"
    recovery_window_in_days = 14
    enable_rotation         = false
    initial_value_json      = "{\"api_key\": \"REPLACE_ME\"}"
    allowed_principal_arns  = []
  }
}
