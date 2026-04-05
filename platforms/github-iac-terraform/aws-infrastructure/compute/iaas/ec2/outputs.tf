output "instance_id" { value = try(aws_instance.this[0].id, null) }
output "instance_arn" { value = try(aws_instance.this[0].arn, null) }
output "instance_ids" { value = aws_instance.this[*].id }
output "instance_private_ips" { value = aws_instance.this[*].private_ip }
output "security_group_id" { value = var.security_group_id != null ? var.security_group_id : aws_security_group.ec2[0].id }
