output "opensearch_domain_arn" {
  description = "OpenSearch domain ARN"
  value       = try(aws_opensearch_domain.this[0].arn, null)
}