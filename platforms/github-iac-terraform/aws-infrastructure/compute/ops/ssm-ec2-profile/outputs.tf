output "instance_profile_name" { value = aws_iam_instance_profile.ec2_ssm.name }
output "role_arn" { value = aws_iam_role.ec2_ssm.arn }
output "patch_baseline_id" { value = aws_ssm_patch_baseline.default.id }
output "maintenance_window_id" { value = aws_ssm_maintenance_window.weekly.id }
