# RDS - Invoking Lambda and Event Notifications

## Pointwise No-Loss Summary

1. RDS/Aurora can integrate with Lambda in specific engine scenarios.
2. Lambda can be invoked from within the database instance for data-event processing.
3. Examples mentioned as supported:
   - RDS for PostgreSQL,
   - Aurora MySQL.

## Invoking Lambda from Database Logic

1. Example flow:
   - user inserts registration data into a table,
   - database triggers Lambda invocation,
   - Lambda sends a welcome email to the user.
2. Setup is done from within the database connection/session.
3. This setup is not configured from AWS console alone.

## Critical Requirements for DB-Initiated Lambda Invocation

1. Invoker is the RDS instance itself.
2. Network connectivity from DB to Lambda must be possible.
3. Connectivity options/examples mentioned:
   - public access path,
   - NAT gateway,
   - VPC endpoints.
4. IAM permissions are required for DB instance to invoke Lambda.
5. Ensure database instance has proper IAM policy attached/configured.

## Not the Same as RDS Event Notifications

1. RDS event notifications report metadata/state events about database resources.
2. They do not provide row-level/data-change content from inside tables.
3. Example notification domains include:
   - DB instance,
   - snapshots,
   - parameter groups,
   - security groups,
   - proxy,
   - custom engine version.

## Delivery and Routing for RDS Event Notifications

1. Notifications are near real-time (up to about five minutes).
2. Destinations include SNS and EventBridge.
3. From SNS, downstream targets can include SQS or Lambda.
4. EventBridge can route to many targets, including Lambda.

## Trap to Avoid

1. Do not confuse infrastructure event notifications with data-event triggers.
2. If you need data-level reactions, use direct database-to-Lambda invocation approach shown earlier.
