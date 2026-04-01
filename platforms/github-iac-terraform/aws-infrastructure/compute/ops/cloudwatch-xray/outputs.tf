output "log_group_name" { value = aws_cloudwatch_log_group.compute.name }
output "xray_sampling_rule_arn" { value = aws_xray_sampling_rule.default.arn }
