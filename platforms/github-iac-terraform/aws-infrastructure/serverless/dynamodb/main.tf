# ---------------------------------------------------------------------------
# serverless/dynamodb — Student Certification Platform DynamoDB tables
#
# Creates two on-demand, encrypted, PITR-enabled DynamoDB tables:
#   • students          — PK: id (S), GSI: email-index (email)
#   • certifications    — PK: studentId (S), SK: workflowId (S), TTL: expiresAt
# ---------------------------------------------------------------------------

data "aws_caller_identity" "current" {}

# ── Students table ────────────────────────────────────────────────────────────

resource "aws_dynamodb_table" "students" {
  name         = local.students_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "email"
    type = "S"
  }

  global_secondary_index {
    name            = "email-index"
    hash_key        = "email"
    projection_type = "ALL"
  }

  server_side_encryption {
    enabled = true
  }

  point_in_time_recovery {
    enabled = true
  }

  tags = local.common_tags
}

# ── Certifications table ──────────────────────────────────────────────────────

resource "aws_dynamodb_table" "certifications" {
  name         = local.certifications_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "studentId"
  range_key    = "workflowId"

  attribute {
    name = "studentId"
    type = "S"
  }

  attribute {
    name = "workflowId"
    type = "S"
  }

  ttl {
    attribute_name = "expiresAt"
    enabled        = true
  }

  server_side_encryption {
    enabled = true
  }

  point_in_time_recovery {
    enabled = true
  }

  tags = local.common_tags
}
