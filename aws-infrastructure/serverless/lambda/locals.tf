locals {
  prefix = "${var.project}-${var.environment}"

  common_tags = {
    project     = var.project
    environment = var.environment
    managed_by  = "terraform"
    component   = "serverless-lambda"
  }

  # ── Function catalogue ──────────────────────────────────────────────────────
  # Each entry drives a Lambda function resource and its CloudWatch log group.
  # s3_key  = path inside var.deployment_bucket where the data-plane CI/CD
  #           uploads the deployment zip.  Terraform ignores code changes after
  #           initial creation (lifecycle.ignore_changes in main.tf).
  # ────────────────────────────────────────────────────────────────────────────

  functions = {
    # Student CRUD
    list_students = {
      handler     = "list_students.handler"
      description = "Return a paginated list of students"
      s3_key      = "${var.deployment_prefix}/students/list_students.zip"
      timeout     = 30
      memory_size = 256
      env_vars = {
        STUDENTS_TABLE        = var.students_table_name
        CERTIFICATIONS_TABLE  = var.certifications_table_name
        POWERTOOLS_SERVICE_NAME = "${local.prefix}-list-students"
      }
    }

    get_student = {
      handler     = "get_student.handler"
      description = "Fetch a single student by id"
      s3_key      = "${var.deployment_prefix}/students/get_student.zip"
      timeout     = 30
      memory_size = 256
      env_vars = {
        STUDENTS_TABLE        = var.students_table_name
        POWERTOOLS_SERVICE_NAME = "${local.prefix}-get-student"
      }
    }

    create_student = {
      handler     = "create_student.handler"
      description = "Create a new student record"
      s3_key      = "${var.deployment_prefix}/students/create_student.zip"
      timeout     = 30
      memory_size = 256
      env_vars = {
        STUDENTS_TABLE        = var.students_table_name
        POWERTOOLS_SERVICE_NAME = "${local.prefix}-create-student"
      }
    }

    update_student = {
      handler     = "update_student.handler"
      description = "Update an existing student record"
      s3_key      = "${var.deployment_prefix}/students/update_student.zip"
      timeout     = 30
      memory_size = 256
      env_vars = {
        STUDENTS_TABLE        = var.students_table_name
        POWERTOOLS_SERVICE_NAME = "${local.prefix}-update-student"
      }
    }

    delete_student = {
      handler     = "delete_student.handler"
      description = "Delete a student record"
      s3_key      = "${var.deployment_prefix}/students/delete_student.zip"
      timeout     = 30
      memory_size = 256
      env_vars = {
        STUDENTS_TABLE        = var.students_table_name
        POWERTOOLS_SERVICE_NAME = "${local.prefix}-delete-student"
      }
    }

    # Certification REST handlers
    start_certification = {
      handler     = "start_certification.handler"
      description = "Start the certification Step Functions workflow"
      s3_key      = "${var.deployment_prefix}/certifications/start_certification.zip"
      timeout     = 30
      memory_size = 256
      env_vars = {
        STUDENTS_TABLE        = var.students_table_name
        CERTIFICATIONS_TABLE  = var.certifications_table_name
        STATE_MACHINE_ARN     = var.state_machine_arn
        POWERTOOLS_SERVICE_NAME = "${local.prefix}-start-certification"
      }
    }

    get_certification_status = {
      handler     = "get_certification_status.handler"
      description = "Poll the status of a certification workflow"
      s3_key      = "${var.deployment_prefix}/certifications/get_certification_status.zip"
      timeout     = 30
      memory_size = 256
      env_vars = {
        CERTIFICATIONS_TABLE  = var.certifications_table_name
        POWERTOOLS_SERVICE_NAME = "${local.prefix}-get-cert-status"
      }
    }

    # Step Functions workflow task handlers
    validate_student = {
      handler     = "validate_student.handler"
      description = "Validate student data (Step Functions task)"
      s3_key      = "${var.deployment_prefix}/workflow/validate_student.zip"
      timeout     = 60
      memory_size = 256
      env_vars = {
        STUDENTS_TABLE        = var.students_table_name
        POWERTOOLS_SERVICE_NAME = "${local.prefix}-validate-student"
      }
    }

    check_eligibility = {
      handler     = "check_eligibility.handler"
      description = "Check certification eligibility (Step Functions task)"
      s3_key      = "${var.deployment_prefix}/workflow/check_eligibility.zip"
      timeout     = 60
      memory_size = 256
      env_vars = {
        POWERTOOLS_SERVICE_NAME = "${local.prefix}-check-eligibility"
      }
    }

    mark_certification = {
      handler     = "mark_certification.handler"
      description = "Mark student as certified (Step Functions task)"
      s3_key      = "${var.deployment_prefix}/workflow/mark_certification.zip"
      timeout     = 60
      memory_size = 256
      env_vars = {
        CERTIFICATIONS_TABLE  = var.certifications_table_name
        POWERTOOLS_SERVICE_NAME = "${local.prefix}-mark-certification"
      }
    }

    persist_workflow_result = {
      handler     = "persist_workflow_result.handler"
      description = "Persist final workflow outcome (Step Functions task)"
      s3_key      = "${var.deployment_prefix}/workflow/persist_workflow_result.zip"
      timeout     = 60
      memory_size = 256
      env_vars = {
        CERTIFICATIONS_TABLE  = var.certifications_table_name
        POWERTOOLS_SERVICE_NAME = "${local.prefix}-persist-workflow"
      }
    }

    publish_status = {
      handler     = "publish_status.handler"
      description = "Publish workflow status event (Step Functions task)"
      s3_key      = "${var.deployment_prefix}/workflow/publish_status.zip"
      timeout     = 60
      memory_size = 256
      env_vars = {
        POWERTOOLS_SERVICE_NAME = "${local.prefix}-publish-status"
      }
    }

    # AppSync Lambda resolver
    appsync_resolver = {
      handler     = "appsync_resolver.handler"
      description = "Multi-field AppSync Lambda resolver"
      s3_key      = "${var.deployment_prefix}/appsync/appsync_resolver.zip"
      timeout     = 30
      memory_size = 256
      env_vars = {
        STUDENTS_TABLE        = var.students_table_name
        CERTIFICATIONS_TABLE  = var.certifications_table_name
        STATE_MACHINE_ARN     = var.state_machine_arn
        POWERTOOLS_SERVICE_NAME = "${local.prefix}-appsync-resolver"
      }
    }
  }
}
