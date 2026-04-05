output "location_id" {
  value = aws_datasync_location_s3.this.id
}

output "location_arn" {
  value = aws_datasync_location_s3.this.arn
}

output "s3_bucket_arn" {
  value = var.s3_bucket_arn
}
