output "kinesis_stream_name" {
  description = "Kinesis stream name"
  value       = try(aws_kinesis_stream.this[0].name, null)
}