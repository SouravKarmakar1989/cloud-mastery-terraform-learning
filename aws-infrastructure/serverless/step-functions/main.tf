# ---------------------------------------------------------------------------
# serverless/step-functions — Certification Workflow State Machine
#
# Creates:
#   • IAM execution role with Lambda invoke permissions
#   • CloudWatch Log Group for state machine executions
#   • Standard state machine — 8-state certification workflow
#
# Workflow states:
#   ValidateStudent → CheckValidationResult
#     ├─ (fail) → HandleValidationFailure → WorkflowFailed
#     └─ (pass) → CheckEligibility → CheckEligibilityResult
#           ├─ (ineligible) → WorkflowFailed
#           └─ (eligible)  → WaitBeforeMarking → MarkCertification
#                              → PersistWorkflowResult → PublishStatus
#                                → WorkflowSucceeded
# ---------------------------------------------------------------------------

data "aws_caller_identity" "current" {}
data "aws_partition" "current" {}

# ── IAM Execution Role ────────────────────────────────────────────────────────

resource "aws_iam_role" "execution" {
  name = "${local.prefix}-sfn-exec"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect    = "Allow"
      Principal = { Service = "states.amazonaws.com" }
      Action    = "sts:AssumeRole"
    }]
  })

  tags = local.common_tags
}

resource "aws_iam_role_policy" "execution" {
  name = "${local.prefix}-sfn-exec-policy"
  role = aws_iam_role.execution.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "InvokeLambda"
        Effect = "Allow"
        Action = ["lambda:InvokeFunction"]
        Resource = [
          var.validate_student_arn,
          var.check_eligibility_arn,
          var.mark_certification_arn,
          var.persist_workflow_result_arn,
          var.publish_status_arn,
          # Include $LATEST qualifier variants
          "${var.validate_student_arn}:*",
          "${var.check_eligibility_arn}:*",
          "${var.mark_certification_arn}:*",
          "${var.persist_workflow_result_arn}:*",
          "${var.publish_status_arn}:*"
        ]
      },
      {
        Sid    = "CloudWatchLogs"
        Effect = "Allow"
        Action = [
          "logs:CreateLogDelivery",
          "logs:GetLogDelivery",
          "logs:UpdateLogDelivery",
          "logs:DeleteLogDelivery",
          "logs:ListLogDeliveries",
          "logs:PutLogEvents",
          "logs:PutResourcePolicy",
          "logs:DescribeResourcePolicies",
          "logs:DescribeLogGroups"
        ]
        Resource = "*"
      },
      {
        Sid    = "XRayTracing"
        Effect = "Allow"
        Action = [
          "xray:PutTraceSegments",
          "xray:PutTelemetryRecords",
          "xray:GetSamplingRules",
          "xray:GetSamplingTargets"
        ]
        Resource = "*"
      }
    ]
  })
}

# ── CloudWatch Log Group ──────────────────────────────────────────────────────

resource "aws_cloudwatch_log_group" "state_machine" {
  name              = "/aws/states/${local.prefix}-certification-workflow"
  retention_in_days = var.log_retention_days
  tags              = local.common_tags
}

# ── State Machine ─────────────────────────────────────────────────────────────

resource "aws_sfn_state_machine" "certification_workflow" {
  name     = "${local.prefix}-certification-workflow"
  role_arn = aws_iam_role.execution.arn
  type     = "STANDARD"

  definition = jsonencode({
    Comment = "Student Certification Workflow — validates student, checks eligibility, marks certification"
    StartAt = "ValidateStudent"

    States = {
      ValidateStudent = {
        Type     = "Task"
        Resource = "arn:aws:states:::lambda:invoke"
        Parameters = {
          FunctionName = var.validate_student_arn
          "Payload.$"  = "$"
        }
        ResultSelector = { "body.$" = "$.Payload" }
        ResultPath     = "$.validateResult"
        Retry = [{
          ErrorEquals     = ["Lambda.ServiceException", "Lambda.AWSLambdaException", "Lambda.SdkClientException", "Lambda.TooManyRequestsException"]
          IntervalSeconds = 2
          MaxAttempts     = 3
          BackoffRate     = 2
        }]
        Catch = [{
          ErrorEquals = ["States.ALL"]
          Next        = "WorkflowFailed"
          ResultPath  = "$.error"
        }]
        Next = "CheckValidationResult"
      }

      CheckValidationResult = {
        Type = "Choice"
        Choices = [{
          Variable      = "$.validateResult.body.validationPassed"
          BooleanEquals = false
          Next          = "HandleValidationFailure"
        }]
        Default = "CheckEligibility"
      }

      HandleValidationFailure = {
        Type   = "Pass"
        Result = { reason = "Student failed validation checks" }
        ResultPath = "$.failureReason"
        Next   = "WorkflowFailed"
      }

      CheckEligibility = {
        Type     = "Task"
        Resource = "arn:aws:states:::lambda:invoke"
        Parameters = {
          FunctionName = var.check_eligibility_arn
          "Payload.$"  = "$"
        }
        ResultSelector = { "body.$" = "$.Payload" }
        ResultPath     = "$.eligibilityResult"
        Retry = [{
          ErrorEquals     = ["Lambda.ServiceException", "Lambda.AWSLambdaException", "Lambda.SdkClientException", "Lambda.TooManyRequestsException"]
          IntervalSeconds = 2
          MaxAttempts     = 3
          BackoffRate     = 2
        }]
        Catch = [{
          ErrorEquals = ["States.ALL"]
          Next        = "WorkflowFailed"
          ResultPath  = "$.error"
        }]
        Next = "CheckEligibilityResult"
      }

      CheckEligibilityResult = {
        Type = "Choice"
        Choices = [{
          Variable      = "$.eligibilityResult.body.eligible"
          BooleanEquals = false
          Next          = "WorkflowFailed"
        }]
        Default = "WaitBeforeMarking"
      }

      WaitBeforeMarking = {
        Type    = "Wait"
        Seconds = 2
        Next    = "MarkCertification"
      }

      MarkCertification = {
        Type     = "Task"
        Resource = "arn:aws:states:::lambda:invoke"
        Parameters = {
          FunctionName = var.mark_certification_arn
          "Payload.$"  = "$"
        }
        ResultSelector = { "body.$" = "$.Payload" }
        ResultPath     = "$.markResult"
        Retry = [{
          ErrorEquals     = ["Lambda.ServiceException", "Lambda.AWSLambdaException", "Lambda.SdkClientException", "Lambda.TooManyRequestsException"]
          IntervalSeconds = 2
          MaxAttempts     = 3
          BackoffRate     = 2
        }]
        Catch = [{
          ErrorEquals = ["States.ALL"]
          Next        = "WorkflowFailed"
          ResultPath  = "$.error"
        }]
        Next = "PersistWorkflowResult"
      }

      PersistWorkflowResult = {
        Type     = "Task"
        Resource = "arn:aws:states:::lambda:invoke"
        Parameters = {
          FunctionName = var.persist_workflow_result_arn
          "Payload.$"  = "$"
        }
        ResultSelector = { "body.$" = "$.Payload" }
        ResultPath     = "$.persistResult"
        Retry = [{
          ErrorEquals     = ["Lambda.ServiceException", "Lambda.AWSLambdaException", "Lambda.SdkClientException", "Lambda.TooManyRequestsException"]
          IntervalSeconds = 2
          MaxAttempts     = 3
          BackoffRate     = 2
        }]
        Catch = [{
          ErrorEquals = ["States.ALL"]
          Next        = "WorkflowFailed"
          ResultPath  = "$.error"
        }]
        Next = "PublishStatus"
      }

      PublishStatus = {
        Type     = "Task"
        Resource = "arn:aws:states:::lambda:invoke"
        Parameters = {
          FunctionName = var.publish_status_arn
          "Payload.$"  = "$"
        }
        ResultSelector = { "body.$" = "$.Payload" }
        ResultPath     = "$.publishResult"
        Retry = [{
          ErrorEquals     = ["Lambda.ServiceException", "Lambda.AWSLambdaException", "Lambda.SdkClientException", "Lambda.TooManyRequestsException"]
          IntervalSeconds = 2
          MaxAttempts     = 3
          BackoffRate     = 2
        }]
        Catch = [{
          ErrorEquals = ["States.ALL"]
          Next        = "WorkflowFailed"
          ResultPath  = "$.error"
        }]
        Next = "WorkflowSucceeded"
      }

      WorkflowSucceeded = {
        Type = "Succeed"
      }

      WorkflowFailed = {
        Type  = "Fail"
        Error = "WorkflowError"
        Cause = "Certification workflow failed — see execution history for details"
      }
    }
  })

  logging_configuration {
    log_destination        = "${aws_cloudwatch_log_group.state_machine.arn}:*"
    include_execution_data = true
    level                  = var.environment == "prod" ? "ERROR" : "ALL"
  }

  tracing_configuration {
    enabled = true
  }

  tags = local.common_tags
}
