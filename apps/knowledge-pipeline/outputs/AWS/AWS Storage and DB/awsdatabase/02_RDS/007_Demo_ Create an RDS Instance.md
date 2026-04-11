# Demo: Create an RDS Instance

## Pointwise No-Loss Summary

1. Demo walks through standard RDS instance creation in AWS console.
2. Region used is Ohio.
3. Engine selected is MySQL with dev/test deployment posture.

## Start Database Creation

1. Open RDS -> DB instances -> Create database.
2. Choose Standard create (not Easy create) to control all settings manually.
3. Select MySQL engine.
4. Choose engine version (default selection used in demo).

## Template/Use Case Selection

1. Deployment profile set to Dev/Test.
2. Single DB instance selected (not Multi-AZ at this step).

## Credentials and Naming

1. Set DB instance identifier.
2. Configure master username and password.
3. Optional Secrets Manager integration is noted but not used in this demo.

## Instance Class and Storage

1. Select burstable instance class (demo uses T4g micro class).
2. Discusses generation/price tradeoff and preference for newer generation where appropriate.
3. Storage type selected as GP3.
4. Allocated storage set (demo example uses 40 GB).
5. Storage autoscaling enabled with max cap (demo uses larger max limit).

## Connectivity Configuration

1. Choose not to auto-connect to EC2 in this step.
2. Select custom demo VPC.
3. Select previously created DB subnet group.
4. Set public access to No.
5. Create/select DB security group (demo creates new one for RDS).
6. Choose target AZ placement for primary instance.
7. RDS Proxy not configured in this demo.
8. Authentication mode kept as password authentication.

## Monitoring and Additional Settings

1. Enhanced monitoring left disabled (cost/need tradeoff discussed).
2. Initial DB name configured.
3. Default parameter and option groups used.
4. Automated backup retention set (demo uses one day).
5. Backup window can be specified if needed.
6. Copy tags to snapshots kept enabled.
7. Cross-region automated backup copy left disabled.
8. Encryption kept enabled with default keying choice.
9. Maintenance window settings reviewed.
10. Deletion protection enabled to prevent accidental DB deletion.

## Post-Create Security Group Review

1. In VPC console, security group created for RDS is inspected.
2. Inbound allows DB port traffic (MySQL port context) to configured sources.
3. Outbound defaults allow broad egress.
4. Next step noted: restrict inbound source to actual client(s) when creating DB client access path.

## Outcome

1. RDS instance creation initiated successfully.
2. Supporting network/security components are in place for follow-up connectivity demos.
