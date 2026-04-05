output "cluster_id" {
  value = aws_neptune_cluster.this.id
}

output "cluster_arn" {
  value = aws_neptune_cluster.this.arn
}

output "cluster_endpoint" {
  value = aws_neptune_cluster.this.endpoint
}

output "cluster_reader_endpoint" {
  value = aws_neptune_cluster.this.reader_endpoint
}
