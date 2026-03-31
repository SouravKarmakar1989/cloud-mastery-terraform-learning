output "guardduty_detector_id" {
  description = "GuardDuty Detector ID"
  value       = var.enable_guardduty ? aws_guardduty_detector.main[0].id : null
}

output "guardduty_detector_arn" {
  description = "GuardDuty Detector ARN"
  value       = var.enable_guardduty ? aws_guardduty_detector.main[0].arn : null
}

output "macie_account_id" {
  description = "Macie account status resource ID"
  value       = var.enable_macie ? aws_macie2_account.main[0].id : null
}

output "security_hub_arn" {
  description = "Security Hub account resource ARN"
  value       = var.enable_security_hub ? aws_securityhub_account.main[0].id : null
}

output "findings_sns_topic_arn" {
  description = "SNS Topic ARN for security findings notifications"
  value       = var.enable_findings_notifications ? aws_sns_topic.security_findings[0].arn : null
}
