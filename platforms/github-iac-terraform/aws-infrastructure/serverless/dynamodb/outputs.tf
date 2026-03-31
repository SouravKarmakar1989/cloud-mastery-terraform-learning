output "students_table_name" {
  description = "Name of the students DynamoDB table"
  value       = aws_dynamodb_table.students.name
}

output "students_table_arn" {
  description = "ARN of the students DynamoDB table"
  value       = aws_dynamodb_table.students.arn
}

output "students_table_stream_arn" {
  description = "ARN of the students table DynamoDB Streams (empty string when streams are disabled)"
  value       = aws_dynamodb_table.students.stream_arn
}

output "certifications_table_name" {
  description = "Name of the certifications DynamoDB table"
  value       = aws_dynamodb_table.certifications.name
}

output "certifications_table_arn" {
  description = "ARN of the certifications DynamoDB table"
  value       = aws_dynamodb_table.certifications.arn
}

output "account_id" {
  description = "AWS account ID where resources were created"
  value       = data.aws_caller_identity.current.account_id
}

output "region" {
  description = "AWS region where resources were created"
  value       = var.region
}
