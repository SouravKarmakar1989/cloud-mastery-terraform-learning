output "cluster_id" {
  value = aws_memorydb_cluster.this.id
}

output "cluster_name" {
  value = aws_memorydb_cluster.this.name
}

output "subnet_group_name" {
  value = aws_memorydb_subnet_group.this.name
}
