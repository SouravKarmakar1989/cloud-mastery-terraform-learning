output "regional_certificate_arn" {
  description = "ARN of the validated regional ACM certificate"
  value       = aws_acm_certificate_validation.regional.certificate_arn
}

output "regional_certificate_domain" {
  description = "Primary domain of the regional certificate"
  value       = aws_acm_certificate.regional.domain_name
}

output "regional_certificate_status" {
  description = "Status of the regional certificate (ISSUED once validated)"
  value       = aws_acm_certificate.regional.status
}

output "regional_certificate_expiry" {
  description = "Expiry date of the regional certificate"
  value       = aws_acm_certificate.regional.not_after
}

output "cloudfront_certificate_arn" {
  description = "ARN of the validated CloudFront (us-east-1) ACM certificate"
  value       = var.create_cloudfront_certificate ? aws_acm_certificate_validation.cloudfront[0].certificate_arn : null
}

output "validation_record_fqdns" {
  description = "FQDNs of the DNS validation CNAME records"
  value       = [for r in aws_route53_record.cert_validation : r.fqdn]
}
