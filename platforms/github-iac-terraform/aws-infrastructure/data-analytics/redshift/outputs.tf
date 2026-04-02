output "redshift_cluster_id" {
  description = "Redshift cluster ID"
  value       = try(aws_redshift_cluster.this[0].id, null)
}