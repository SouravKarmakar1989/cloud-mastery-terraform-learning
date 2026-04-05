region                      = "us-east-1"
environment                 = "prod"
project                     = "data-analytics"
enabled                     = false
application_code_bucket_arn = "arn:aws:s3:::replace-flink-artifacts-bucket"
application_code_file_key   = "flink-app.jar"

tags = {
  owner       = "platform-team"
  cost_center = "cloud"
}