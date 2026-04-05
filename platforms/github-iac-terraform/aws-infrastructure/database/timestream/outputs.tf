output "database_name" {
  value = aws_timestreamwrite_database.this.database_name
}

output "database_arn" {
  value = aws_timestreamwrite_database.this.arn
}

output "table_name" {
  value = aws_timestreamwrite_table.this.table_name
}

output "table_arn" {
  value = aws_timestreamwrite_table.this.arn
}
