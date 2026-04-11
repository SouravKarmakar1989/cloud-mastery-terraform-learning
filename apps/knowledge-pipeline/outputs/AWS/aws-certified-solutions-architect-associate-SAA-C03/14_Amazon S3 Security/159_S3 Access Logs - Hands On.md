# S3 Access Logs - Hands On

## Pointwise No-Loss Summary

1. Demo creates dedicated logging bucket (example access-log bucket name).
2. Another existing bucket is chosen as source bucket to monitor.

## Enabling Logging on Source Bucket

1. Source bucket Properties -> Server access logging is edited.
2. Logging is enabled.
3. Destination bucket is selected as dedicated logging bucket.
4. Destination prefix is optional and left empty in demo.
5. Log object key format options are shown; default format is used.
6. Save applies settings.

## Generating Activity and Waiting for Delivery

1. User performs source-bucket operations (open object, upload object) to generate events.
2. Log delivery is not immediate.
3. After waiting period (noted as potentially long), log objects appear in target bucket.

## Permission Validation

1. Destination bucket policy is automatically updated when enabling logging.
2. Policy grants S3 logging service permission to put objects into logging bucket.

## Reading Log Content

1. Opened log object shows request records including API action/status and request metadata.

## Outcome

1. Hands-on confirms end-to-end setup and delayed delivery behavior for S3 server access logging.
