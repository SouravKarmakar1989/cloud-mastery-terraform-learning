output "cluster_id" {
  value = aws_docdb_cluster.this.id
}

output "cluster_arn" {
  value = aws_docdb_cluster.this.arn
}

output "cluster_endpoint" {
  value = aws_docdb_cluster.this.endpoint
}

output "cluster_reader_endpoint" {
  value = aws_docdb_cluster.this.reader_endpoint
}

output "instance_id" {
  value = aws_docdb_cluster_instance.this.id
}
