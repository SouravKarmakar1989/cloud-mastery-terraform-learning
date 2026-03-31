output "web_acl_arn" {
  description = "ARN of the WAFv2 Web ACL"
  value       = aws_wafv2_web_acl.main.arn
}

output "web_acl_id" {
  description = "ID of the WAFv2 Web ACL"
  value       = aws_wafv2_web_acl.main.id
}

output "web_acl_capacity" {
  description = "WAF capacity units consumed by the Web ACL"
  value       = aws_wafv2_web_acl.main.capacity
}

output "waf_log_group_name" {
  description = "CloudWatch Log Group name for WAF logs"
  value       = var.enable_waf_logging ? aws_cloudwatch_log_group.waf[0].name : null
}

output "shield_protection_ids" {
  description = "Map of resource ARN → Shield Advanced protection ID"
  value       = { for k, p in aws_shield_protection.this : k => p.id }
}
