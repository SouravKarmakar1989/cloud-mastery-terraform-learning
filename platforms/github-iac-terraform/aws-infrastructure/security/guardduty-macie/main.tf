# ---------------------------------------------------------------------------
# security/guardduty-macie — Threat detection + sensitive data discovery
#
# Implements (Task 1.2 – Security services with appropriate use cases):
#   • Amazon GuardDuty — intelligent threat detection (VPC flow logs,
#     CloudTrail, DNS logs, S3 data-plane events, EKS audit logs)
#     Protects against: reconnaissance, compromised instances, credential
#     exfiltration, crypto-mining, exfiltration via S3
#   • Amazon Macie — PII / sensitive data discovery in S3 (PHI, PCI, secrets)
#   • AWS Security Hub — aggregates findings from GuardDuty, Macie, Config,
#     Access Analyzer into a single pane; enables CIS + FSBP standards
#   • EventBridge rule + SNS — high/critical findings routed to email alert
# ---------------------------------------------------------------------------

data "aws_caller_identity" "current" {}
data "aws_region" "current" { provider = aws }

# ── Amazon GuardDuty ──────────────────────────────────────────────────────────

resource "aws_guardduty_detector" "main" {
  count = var.enable_guardduty ? 1 : 0

  enable                       = true
  finding_publishing_frequency = var.guardduty_finding_publishing_frequency

  datasources {
    s3_logs {
      enable = var.enable_guardduty_s3_protection
    }
    kubernetes {
      audit_logs {
        enable = var.enable_guardduty_eks_protection
      }
    }
    malware_protection {
      scan_ec2_instance_with_findings {
        ebs_volumes {
          enable = var.enable_guardduty_malware_protection
        }
      }
    }
  }

  tags = local.common_tags
}

# ── Amazon Macie ──────────────────────────────────────────────────────────────

resource "aws_macie2_account" "main" {
  count = var.enable_macie ? 1 : 0

  status                       = "ENABLED"
  finding_publishing_frequency = var.macie_finding_publishing_frequency
}

# Classify specific S3 buckets for sensitive data discovery
resource "aws_macie2_classification_job" "s3" {
  for_each = var.enable_macie ? toset(var.macie_s3_buckets_to_classify) : toset([])

  name       = "${local.prefix}-classify-${index(var.macie_s3_buckets_to_classify, each.value)}"
  job_type   = "SCHEDULED"
  job_status = "RUNNING"

  s3_job_definition {
    bucket_definitions {
      account_id = data.aws_caller_identity.current.account_id
      buckets    = [each.value]
    }
  }

  schedule_frequency {
    weekly_schedule = "MONDAY"
  }

  tags = local.common_tags

  depends_on = [aws_macie2_account.main]
}

# ── AWS Security Hub ──────────────────────────────────────────────────────────

resource "aws_securityhub_account" "main" {
  count = var.enable_security_hub ? 1 : 0
}

resource "aws_securityhub_standards_subscription" "this" {
  for_each = var.enable_security_hub ? toset(var.security_hub_standards) : toset([])

  standards_arn = each.value

  depends_on = [aws_securityhub_account.main]
}

# Enable GuardDuty → Security Hub integration
resource "aws_securityhub_product_subscription" "guardduty" {
  count = (var.enable_security_hub && var.enable_guardduty) ? 1 : 0

  product_arn = "arn:aws:securityhub:${var.region}::product/aws/guardduty"

  depends_on = [aws_securityhub_account.main]
}

# Enable Macie → Security Hub integration
resource "aws_securityhub_product_subscription" "macie" {
  count = (var.enable_security_hub && var.enable_macie) ? 1 : 0

  product_arn = "arn:aws:securityhub:${var.region}::product/aws/macie"

  depends_on = [aws_securityhub_account.main]
}

# ── Findings Notifications (EventBridge → SNS) ────────────────────────────────

resource "aws_sns_topic" "security_findings" {
  count = var.enable_findings_notifications ? 1 : 0

  name              = "${local.prefix}-security-findings"
  kms_master_key_id = "alias/aws/sns"

  tags = local.common_tags
}

resource "aws_sns_topic_subscription" "email" {
  count = (var.enable_findings_notifications && var.findings_alert_email != "") ? 1 : 0

  topic_arn = aws_sns_topic.security_findings[0].arn
  protocol  = "email"
  endpoint  = var.findings_alert_email
}

# EventBridge rule: GuardDuty high/critical findings
resource "aws_cloudwatch_event_rule" "guardduty_high" {
  count = var.enable_findings_notifications ? 1 : 0

  name        = "${local.prefix}-guardduty-high-findings"
  description = "Route HIGH and CRITICAL GuardDuty findings to SNS"

  event_pattern = jsonencode({
    source      = ["aws.guardduty"]
    detail-type = ["GuardDuty Finding"]
    detail = {
      severity = [{ numeric = [">=", 7] }]
    }
  })

  tags = local.common_tags
}

resource "aws_cloudwatch_event_target" "guardduty_sns" {
  count = var.enable_findings_notifications ? 1 : 0

  rule      = aws_cloudwatch_event_rule.guardduty_high[0].name
  target_id = "SendToSNS"
  arn       = aws_sns_topic.security_findings[0].arn
}

# EventBridge rule: Security Hub CRITICAL findings
resource "aws_cloudwatch_event_rule" "securityhub_critical" {
  count = (var.enable_findings_notifications && var.enable_security_hub) ? 1 : 0

  name        = "${local.prefix}-securityhub-critical"
  description = "Route CRITICAL Security Hub findings to SNS"

  event_pattern = jsonencode({
    source      = ["aws.securityhub"]
    detail-type = ["Security Hub Findings - Imported"]
    detail = {
      findings = {
        Severity = {
          Label = ["CRITICAL", "HIGH"]
        }
        Workflow = {
          Status = ["NEW"]
        }
        RecordState = ["ACTIVE"]
      }
    }
  })

  tags = local.common_tags
}

resource "aws_cloudwatch_event_target" "securityhub_sns" {
  count = (var.enable_findings_notifications && var.enable_security_hub) ? 1 : 0

  rule      = aws_cloudwatch_event_rule.securityhub_critical[0].name
  target_id = "SendToSNS"
  arn       = aws_sns_topic.security_findings[0].arn
}

# SNS topic policy to allow EventBridge to publish
resource "aws_sns_topic_policy" "security_findings" {
  count = var.enable_findings_notifications ? 1 : 0

  arn = aws_sns_topic.security_findings[0].arn

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "AllowEventBridgePublish"
        Effect = "Allow"
        Principal = {
          Service = "events.amazonaws.com"
        }
        Action   = "SNS:Publish"
        Resource = aws_sns_topic.security_findings[0].arn
      }
    ]
  })
}
