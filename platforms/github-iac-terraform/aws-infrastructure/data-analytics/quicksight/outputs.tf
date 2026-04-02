output "quicksight_subscription_account_name" {
  description = "QuickSight subscription account name"
  value       = try(aws_quicksight_account_subscription.this[0].account_name, null)
}