output "firehose_stream_name" {
  description = "Firehose stream name"
  value       = try(aws_kinesis_firehose_delivery_stream.this[0].name, null)
}