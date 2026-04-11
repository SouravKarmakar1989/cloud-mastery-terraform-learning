# Lambda in VPC - Hands On

## Pointwise No-Loss Summary

1. Hands-on deploys Lambda into a customer VPC and verifies ENI creation.
2. Demonstrates required IAM permissions for Lambda VPC attachment.
3. Reinforces internet-access caveat for VPC-connected Lambda.

## Create Lambda and Security Group

1. Create Lambda function (example name: Lambda VPC) with Python runtime.
2. In EC2 console, create dedicated security group for Lambda (example: Lambda SG).
3. Inbound rules are not required for this simple demo.
4. Security group is mainly for outbound/network control when Lambda accesses VPC resources.

## Attach Lambda to VPC

1. In Lambda configuration, open VPC settings.
2. Select target VPC.
3. Select subnets and attach Lambda SG.
4. Console warning highlights key rule:
   - Lambda in VPC does not get internet access automatically,
   - even if subnets are public,
   - internet egress requires private-subnet placement plus NAT routing design.

## Required IAM Fix

1. Initial save fails due to missing EC2 network interface permissions.
2. Open Lambda execution role in IAM.
3. Attach ENI management permissions policy (Lambda ENI management access style policy).
4. Permissions include create/describe/delete network interfaces.
5. Retry save in Lambda VPC config; attachment succeeds.

## Invocation and Verification

1. Test Lambda function after VPC update completes.
2. First update may take extra time while AWS provisions networking.
3. Function invocation succeeds.
4. In EC2 -> Network Interfaces, multiple Lambda-managed ENIs appear.
5. ENIs are distributed across selected subnets/AZs and represent Lambda VPC connectivity.

## Practical Takeaway

1. Lambda-to-VPC access is powered by ENIs plus security group/routing design.
2. Correct IAM role permissions are mandatory for ENI lifecycle operations.
