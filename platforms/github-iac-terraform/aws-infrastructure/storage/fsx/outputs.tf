output "file_system_id" {
  value = aws_fsx_lustre_file_system.this.id
}

output "file_system_arn" {
  value = aws_fsx_lustre_file_system.this.arn
}

output "dns_name" {
  value = aws_fsx_lustre_file_system.this.dns_name
}

output "mount_name" {
  value = aws_fsx_lustre_file_system.this.mount_name
}
