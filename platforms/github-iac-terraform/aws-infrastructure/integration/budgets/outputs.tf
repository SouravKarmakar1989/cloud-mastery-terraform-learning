output "budget_name" {
  description = "Budget name"
  value       = try(aws_budgets_budget.this[0].name, null)
}