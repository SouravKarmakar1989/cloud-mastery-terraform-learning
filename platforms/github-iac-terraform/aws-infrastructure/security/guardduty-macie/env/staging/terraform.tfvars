environment                            = "staging"
region                                 = "us-east-1"
project                                = "security"
enable_guardduty                       = true
guardduty_finding_publishing_frequency = "ONE_HOUR"
enable_guardduty_s3_protection         = true
enable_guardduty_eks_protection        = false
enable_guardduty_malware_protection    = true
enable_macie                           = true
macie_finding_publishing_frequency     = "ONE_HOUR"
macie_s3_buckets_to_classify           = []
enable_security_hub                    = true
security_hub_standards = [
  "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0",
  "arn:aws:securityhub:us-east-1::standards/aws-foundational-security-best-practices/v/1.0.0"
]
enable_findings_notifications = true
findings_alert_email          = ""
