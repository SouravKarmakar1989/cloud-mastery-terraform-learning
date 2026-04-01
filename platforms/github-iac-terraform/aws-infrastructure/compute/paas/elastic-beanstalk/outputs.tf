output "application_name" { value = aws_elastic_beanstalk_application.this.name }
output "environment_url" { value = aws_elastic_beanstalk_environment.this.endpoint_url }
