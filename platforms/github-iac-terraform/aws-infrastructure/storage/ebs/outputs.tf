output "volume_id" {
  value = aws_ebs_volume.this.id
}

output "volume_arn" {
  value = aws_ebs_volume.this.arn
}

output "availability_zone" {
  value = aws_ebs_volume.this.availability_zone
}
