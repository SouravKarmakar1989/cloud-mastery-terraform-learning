output "portfolio_id" {
  description = "Service Catalog portfolio ID"
  value       = try(aws_servicecatalog_portfolio.this[0].id, null)
}