resource "aws_quicksight_account_subscription" "this" {
  count                 = var.enabled ? 1 : 0
  account_name          = "${local.prefix}-${var.account_name_suffix}"
  authentication_method = var.authentication_method
  edition               = var.edition
  notification_email    = var.notification_email
}