environment                 = "dev"
region                      = "us-east-1"
validate_student_arn        = "arn:aws:lambda:us-east-1:ACCOUNT_ID:function:stu-cert-dev-validate_student"
check_eligibility_arn       = "arn:aws:lambda:us-east-1:ACCOUNT_ID:function:stu-cert-dev-check_eligibility"
mark_certification_arn      = "arn:aws:lambda:us-east-1:ACCOUNT_ID:function:stu-cert-dev-mark_certification"
persist_workflow_result_arn = "arn:aws:lambda:us-east-1:ACCOUNT_ID:function:stu-cert-dev-persist_workflow_result"
publish_status_arn          = "arn:aws:lambda:us-east-1:ACCOUNT_ID:function:stu-cert-dev-publish_status"
log_retention_days          = 7
