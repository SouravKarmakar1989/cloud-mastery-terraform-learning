locals {
  prefix = "${var.project}-${var.environment}"

  common_tags = {
    project     = var.project
    environment = var.environment
    module      = "waf-shield"
    managed_by  = "terraform"
    repo        = "github-iac-terraform"
  }

  # Build ordered managed rule groups based on enabled flags
  managed_rule_groups = merge(
    var.enable_aws_managed_common_rules ? {
      AWSManagedRulesCommonRuleSet = {
        name     = "AWSManagedRulesCommonRuleSet"
        vendor   = "AWS"
        priority = 10
      }
    } : {},
    var.enable_known_bad_inputs ? {
      AWSManagedRulesKnownBadInputsRuleSet = {
        name     = "AWSManagedRulesKnownBadInputsRuleSet"
        vendor   = "AWS"
        priority = 20
      }
    } : {},
    var.enable_sqli_rules ? {
      AWSManagedRulesSQLiRuleSet = {
        name     = "AWSManagedRulesSQLiRuleSet"
        vendor   = "AWS"
        priority = 30
      }
    } : {},
    var.enable_linux_rules ? {
      AWSManagedRulesLinuxRuleSet = {
        name     = "AWSManagedRulesLinuxRuleSet"
        vendor   = "AWS"
        priority = 40
      }
    } : {},
    var.enable_anonymous_ip_list ? {
      AWSManagedRulesAnonymousIpList = {
        name     = "AWSManagedRulesAnonymousIpList"
        vendor   = "AWS"
        priority = 50
      }
    } : {}
  )
}
