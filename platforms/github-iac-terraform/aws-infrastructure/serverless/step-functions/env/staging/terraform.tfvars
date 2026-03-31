environment                 = "staging"
region                      = "us-east-1"
validate_student_arn        = "arn:aws:lambda:us-east-1:ACCOUNT_ID:function:stu-cert-staging-validate_student"
check_eligibility_arn       = "arn:aws:lambda:us-east-1:ACCOUNT_ID:function:stu-cert-staging-check_eligibility"
mark_certification_arn      = "arn:aws:lambda:us-east-1:ACCOUNT_ID:function:stu-cert-staging-mark_certification"
persist_workflow_result_arn = "arn:aws:lambda:us-east-1:ACCOUNT_ID:function:stu-cert-staging-persist_workflow_result"
publish_status_arn          = "arn:aws:lambda:us-east-1:ACCOUNT_ID:function:stu-cert-staging-publish_status"
log_retention_days          = 14
