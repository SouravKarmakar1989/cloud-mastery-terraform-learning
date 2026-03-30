# ---------------------------------------------------------------------------
# security/iam-identity-center — AWS IAM Identity Center (SSO) baseline
#
# Implements:
#   • Permission sets (Administrator, Developer, ReadOnly, SecurityAudit)
#     with configurable session durations and managed policy attachments
#   • Identity Store groups for role-based access control (RBAC)
#   • Account-level permission assignments (group → permission set → account)
#
# SAA-C03 Domain 1 mapping:
#   • Task 1.1 – federated access, role-based authorization model,
#     cross-account access, IAM Identity Center
# ---------------------------------------------------------------------------

data "aws_caller_identity" "current" {}

# ── Permission Sets ───────────────────────────────────────────────────────────
# Each permission set is a logical role that users assume via the SSO portal.

resource "aws_ssoadmin_permission_set" "this" {
  for_each = var.permission_sets

  name             = each.key
  description      = each.value.description
  instance_arn     = var.sso_instance_arn
  session_duration = each.value.session_duration
  relay_state      = each.value.relay_state != "" ? each.value.relay_state : null

  tags = local.common_tags
}

# ── Managed Policy Attachments to Permission Sets ────────────────────────────

resource "aws_ssoadmin_managed_policy_attachment" "this" {
  for_each = {
    for item in flatten([
      for ps_name, ps in var.permission_sets : [
        for policy_arn in ps.managed_policies : {
          key             = "${ps_name}-${basename(policy_arn)}"
          instance_arn    = var.sso_instance_arn
          permission_set  = ps_name
          policy_arn      = policy_arn
        }
      ]
    ]) : item.key => item
  }

  instance_arn       = each.value.instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.value.permission_set].arn
  managed_policy_arn = each.value.policy_arn
}

# ── Identity Store Groups ─────────────────────────────────────────────────────
# Groups are created in the Identity Store and assigned to permission sets
# at the account level, enabling RBAC without managing individual users.

resource "aws_identitystore_group" "this" {
  for_each = var.sso_groups

  identity_store_id = var.identity_store_id
  display_name      = each.value.display_name
  description       = each.value.description
}

# ── Account Assignments ───────────────────────────────────────────────────────
# Binds a group (or user) to a permission set within a specific AWS account.
# This is the "cross-account access" pattern driven from a single identity source.

resource "aws_ssoadmin_account_assignment" "this" {
  for_each = {
    for a in var.account_assignments :
    "${a.account_id}-${a.principal_name}-${a.permission_set_name}" => a
  }

  instance_arn       = var.sso_instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.this[each.value.permission_set_name].arn

  principal_id = (
    each.value.principal_type == "GROUP"
    ? aws_identitystore_group.this[each.value.principal_name].group_id
    : each.value.principal_name # For USER type, supply the user ID directly
  )
  principal_type = each.value.principal_type

  target_id   = each.value.account_id
  target_type = "AWS_ACCOUNT"

  depends_on = [
    aws_ssoadmin_managed_policy_attachment.this,
    aws_identitystore_group.this
  ]
}
