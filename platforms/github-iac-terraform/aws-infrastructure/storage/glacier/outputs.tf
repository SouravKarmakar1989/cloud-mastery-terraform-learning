output "vault_name" {
  value = aws_glacier_vault.this.id
}

output "vault_arn" {
  value = aws_glacier_vault.this.arn
}
