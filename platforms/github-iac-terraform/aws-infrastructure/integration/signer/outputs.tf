output "signing_profile_arn" {
  description = "Signer profile ARN"
  value       = try(aws_signer_signing_profile.this[0].arn, null)
}