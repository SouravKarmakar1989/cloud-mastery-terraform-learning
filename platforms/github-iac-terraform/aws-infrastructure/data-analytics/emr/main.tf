resource "aws_emr_security_configuration" "this" {
  count = var.enabled ? 1 : 0
  name  = "${local.prefix}-${var.security_configuration_name}"

  configuration = jsonencode({
    EncryptionConfiguration = {
      EnableAtRestEncryption    = true
      EnableInTransitEncryption = true
      AtRestEncryptionConfiguration = {
        S3EncryptionConfiguration = {
          EncryptionMode = "SSE-S3"
        }
      }
    }
  })
}