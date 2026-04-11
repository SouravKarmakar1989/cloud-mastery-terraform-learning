# Lambda External Dependencies

## Pointwise No-Loss Summary

1. Real-world Lambda functions commonly require external libraries.
2. Dependencies must be packaged with function code unless provided by runtime.

## Packaging Model

1. Install required libraries for chosen language.
2. Bundle code plus dependencies together.
3. Zip deployment artifact and upload.

## Language-Specific Examples Mentioned

1. Node.js:
   - use npm,
   - include node_modules.
2. Python:
   - use pip install target-style packaging.
3. Java:
   - include required JAR artifacts.

## Upload Size Path

1. If zip is under direct upload threshold (lecture references 50 MB), upload directly to Lambda.
2. If larger, upload package to S3 and reference from Lambda deployment.

## Native Libraries

1. Native dependencies must be compiled for Amazon Linux compatibility before deployment.

## AWS SDK Note

1. AWS SDK is included by default in Lambda runtime environment.
2. If only using built-in SDK availability, separate packaging of SDK may not be required.

## Overall Takeaway

1. Dependency packaging strategy is language-specific, but deployment principle is consistent: code + required libs in compatible build artifact.
