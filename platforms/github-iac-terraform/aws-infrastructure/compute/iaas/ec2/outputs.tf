output "instance_id" { value = aws_instance.this.id }
output "instance_arn" { value = aws_instance.this.arn }
output "security_group_id" { value = aws_security_group.ec2.id }
