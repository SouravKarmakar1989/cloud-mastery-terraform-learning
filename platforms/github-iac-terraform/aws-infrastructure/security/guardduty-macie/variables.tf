variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment (dev, staging, prod)"
  type        = string
}

variable "project" {
  description = "Project name used as a name prefix"
  type        = string
  default     = "security"
}

# ── GuardDuty ─────────────────────────────────────────────────────────────────

variable "enable_guardduty" {
  description = "Enable Amazon GuardDuty (intelligent threat detection)"
  type        = bool
  default     = true
}

variable "guardduty_finding_publishing_frequency" {
  description = "How often GuardDuty publishes findings: FIFTEEN_MINUTES | ONE_HOUR | SIX_HOURS"
  type        = string
  default     = "ONE_HOUR"
}

variable "enable_guardduty_s3_protection" {
  description = "Enable GuardDuty S3 Protection (monitors S3 data-plane events)"
  type        = bool
  default     = true
}

variable "enable_guardduty_eks_protection" {
  description = "Enable GuardDuty EKS Audit Log Monitoring"
  type        = bool
  default     = false
}

variable "enable_guardduty_malware_protection" {
  description = "Enable GuardDuty Malware Protection for EC2"
  type        = bool
  default     = true
}

# ── Macie ─────────────────────────────────────────────────────────────────────

variable "enable_macie" {
  description = "Enable Amazon Macie (S3 sensitive data discovery)"
  type        = bool
  default     = true
}

variable "macie_finding_publishing_frequency" {
  description = "How often Macie publishes policy findings: FIFTEEN_MINUTES | ONE_HOUR | SIX_HOURS"
  type        = string
  default     = "ONE_HOUR"
}

variable "macie_s3_buckets_to_classify" {
  description = "List of S3 bucket ARNs for Macie to classify for sensitive data (PII, PHI, PCI)"
  type        = list(string)
  default     = []
}

# ── Security Hub ──────────────────────────────────────────────────────────────

variable "enable_security_hub" {
  description = "Enable AWS Security Hub for centralized security posture management"
  type        = bool
  default     = true
}

variable "security_hub_standards" {
  description = "List of Security Hub standard ARNs to enable"
  type        = list(string)
  default = [
    "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0",
    "arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0"
  ]
}

# ── Findings → EventBridge + SNS ─────────────────────────────────────────────

variable "enable_findings_notifications" {
  description = "Route high/critical GuardDuty and Security Hub findings to SNS"
  type        = bool
  default     = true
}

variable "findings_alert_email" {
  description = "Email address to subscribe for high/critical security findings"
  type        = string
  default     = ""
}
