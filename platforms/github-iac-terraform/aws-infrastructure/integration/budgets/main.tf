resource "aws_budgets_budget" "this" {
  count = var.enabled ? 1 : 0

  name         = "${local.prefix}-monthly-budget"
  budget_type  = "COST"
  limit_amount = tostring(var.monthly_budget_limit)
  limit_unit   = "USD"
  time_unit    = "MONTHLY"
}