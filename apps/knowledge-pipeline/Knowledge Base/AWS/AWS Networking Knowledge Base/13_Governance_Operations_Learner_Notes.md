# Governance Operations Learner Notes

This file is a learner-first companion to `13_Governance_Operations.md`.
It is structured as topic-specific theory notes, a hands-on activity guide, and closing revision material so the raw knowledge base becomes easier to study and reuse.

Source authority: 6 processed source files, 601 extracted non-empty transcript lines. The architect-level concepts are drawn directly from the curated primary knowledge base for this topic.

## How To Use This File
1. Read IPAM first — IP address governance is the prerequisite to multi-account VPC provisioning at scale.
2. Sections 2 and 3 (CloudFormation and Service Catalog) go hand in hand — IaC templates delivered via Service Catalog is the standard pattern.
3. Section 4 (Config) and Section 5 (CloudTrail) cover drift detection and audit — know the specific rule names and API calls for exam scenarios.
4. Use the troubleshooting table when conformance packs are reporting violations or CloudTrail queries return unexpected results.
5. Use the quick revision sheet before any landing zone, compliance architecture, or multi-account design session.

---

## Theoretical Notes

### 1. IPAM: Hierarchical CIDR Governance

In a single-account AWS environment, CIDR management is an informal concern — teams pick /16 blocks and hope nothing overlaps. In a multi-account environment with dozens or hundreds of VPCs across multiple regions, CIDR management becomes a governance problem: overlapping CIDRs prevent VPC peering and Direct Connect routing, and discovering conflicts after VPCs exist is operationally costly.

VPC IP Address Manager (IPAM) is the AWS service that provides hierarchical CIDR pool management across an AWS Organization. The hierarchy: a top-level pool represents the entire RFC 1918 space you have allocated (e.g., 10.0.0.0/8), which delegates into regional pools (e.g., 10.0.0.0/12 for us-east-1, 10.16.0.0/12 for eu-west-1), which delegate into account-level or team-level pools (e.g., 10.0.0.0/16 for team-payment), from which individual VPC CIDRs are allocated.

When a VPC is created and its CIDR is allocated from an IPAM pool, IPAM tracks the allocation. No two allocations from the same pool can overlap. If an account tries to create a VPC with a CIDR that would overlap an existing allocation, IPAM rejects the allocation. Auto-discovery can scan all existing VPCs in the organization and import their CIDRs into IPAM retrospectively, giving you a live map of all VPC address space.

IPAM scopes: the **Private scope** manages RFC 1918 address space (10.x, 172.16.x, 192.168.x). The **Public scope** manages BYOIP (Bring Your Own IP) public prefixes brought into AWS for Elastic IPs and NLB addresses. Most enterprises will primarily use the private scope.

Exam tip: IPAM requires that all member accounts in the AWS Organization have the IPAM service delegated to the management account, and all accounts must be registered as IPAM resource discovery sources.

---

### 2. CloudFormation for Networking: Infrastructure as Code

The core governance principle: network infrastructure should be version-controlled, change-reviewed, and deployed through automation — not hand-crafted in the console. CloudFormation enables this for all AWS network primitives: VPCs, subnets, route tables, internet gateways, NAT gateways, security groups, NACLs, VPC peering connections, TGW attachments.

Network CloudFormation templates as governance artifacts:
- **Blueprints:** a standard VPC template (3-tier: public/private/data subnets, NAT GW, S3 endpoint, SG baselines) that teams instantiate rather than designing from scratch.
- **Cross-stack references:** a network-foundation stack exports VPC ID, subnet IDs, and SG IDs as CloudFormation Exports. Application stacks `Fn::ImportValue` those exports, creating a dependency chain that prevents the network stack from being deleted while application stacks exist.
- **StackSets:** deploy the same networking template across multiple accounts and regions from a single management account. Used during landing zone setup to provision standard VPC structure in every new account automatically.

Change governance pattern: networking proposals go through PR review on the CloudFormation template, then `cloudformation deploy --change-set-name review` to preview changes before execution. This gives the same code-review discipline to network changes as application code changes.

---

### 3. Service Catalog: Self-Service with Guardrails

The problem Service Catalog solves: a central networking team wants application teams to be able to provision their own VPCs, but cannot allow them to use arbitrary CIDR ranges, skip flow logs, or create overly permissive security groups. Service Catalog bridges this gap by publishing curated, pre-approved CloudFormation products that app teams can launch without understanding CloudFormation.

Products are organized into portfolios, which are granted to specific IAM principals (users, groups, roles) or shared to specific AWS accounts or OUs. A portfolio for "Standard Application VPC" might include products for: small VPC (/24), medium VPC (/22), VPC peering request to shared-services VPC.

Launch Constraints: a Service Catalog product can be launched with a specific IAM role (the launch constraint role), rather than with the caller's own permissions. This means the app team's user only needs `ServiceCatalog:ProvisionProduct` permission, not full CloudFormation and EC2 CreateVpc permissions. The launch constraint role holds the permissions; the product deploys with those permissions regardless of who launched it.

TagOptions: Service Catalog enforces tag specifications on all provisioned resources. The networking team mandates that every VPC and subnet must have `Env=`, `CostCenter=`, and `Owner=` tags. This tag enforcement prevents tagging gaps that would break cost allocation and compliance reporting.

---

### 4. AWS Config: Continuous Networking Compliance

AWS Config records the configuration state of all supported resources over time and evaluates that state against Config Rules. For networking, key Config Rules are:

| Rule Name | What It Checks |
|---|---|
| `vpc-flow-logs-enabled` | Every VPC has flow logs enabled; non-compliant VPCs are flagged |
| `restricted-ssh` | No security group allows unrestricted inbound SSH (0.0.0.0/0 or ::/0 on port 22) |
| `restricted-common-ports` | No SG allows 0.0.0.0/0 on ports 20, 21, 23, 25, 110, 135, 143, 3389 |
| `vpc-default-security-group-closed` | Default SG in every VPC has no inbound or outbound rules |
| `vpc-sg-open-only-to-authorized-ports` | SGs only allow traffic on approved ports |
| `no-unrestricted-route-53-resolver` | Route 53 Resolver endpoints not publicly accessible |
| `nacl-no-unrestricted-ssh-rdp` | No NACL rule allows inbound SSH/RDP from 0.0.0.0/0 |

**Auto-remediation:** Config Rules can trigger SSM Automation documents when a resource becomes non-compliant. Example: when `vpc-flow-logs-enabled` fires for a VPC, the Auto Remediation invokes `AWS-EnableVPCFlowLogs` which creates the flow logs automatically. The remediation action is audited in CloudTrail.

**Conformance Packs:** pre-built collections of Config Rules aligned to frameworks (CIS Benchmarks, PCI-DSS, NIST). The `Operational-Best-Practices-for-AWS-Networking` conformance pack bundles the networking-relevant rules with their remediation templates.

Config aggregators span accounts — a delegated admin account in the AWS Organization can aggregate compliance data from all member accounts, giving a centralized view of which accounts have SGs with open SSH or VPCs without flow logs.

---

### 5. CloudTrail: API-Level Audit for Network Changes

CloudTrail records every AWS API call as a structured log event. For networking governance, this means: who created that security group rule, who deleted that subnet route, what Lambda execution changed a TGW route table, and at what time did `ModifyVpcAttribute` get called that disabled DNS hostnames.

Every networking API call generates a CloudTrail event with: `eventName` (e.g., `AuthorizeSecurityGroupIngress`), `userIdentity` (IAM user/role ARN), `sourceIPAddress`, `requestParameters` (the actual change made), `responseElements`, `eventTime`, and `awsRegion`.

Networking-specific API calls worth knowing for governance:
- `CreateVpc`, `DeleteVpc`, `ModifyVpcAttribute`
- `AuthorizeSecurityGroupIngress`, `RevokeSecurityGroupIngress`, `DeleteSecurityGroup`
- `CreateRoute`, `DeleteRoute`, `ReplaceRoute`
- `CreateTransitGatewayRouteTableAssociation`, `CreateTransitGatewayRouteTablePropagation`
- `CreateInternetGateway`, `AttachInternetGateway`, `DetachInternetGateway`

**90-day Event History:** CloudTrail Event History provides 90 days of management event history in the console without any configuration. For long-term retention, create a CloudTrail Trail that delivers logs to an S3 bucket; logs can be retained indefinitely with S3 lifecycle policies.

**Athena Querying:** convert CloudTrail S3 logs into Athena-queryable format and run queries like "find all security group changes in the last 30 days by human IAM users" or "list all `DeleteRoute` calls across the organization." This is the foundation of network change audit reporting.

**Integration with EventBridge:** CloudTrail management events can be forwarded to EventBridge rules. A rule matching `aws.ec2` source and `AuthorizeSecurityGroupIngress` eventName can trigger a Lambda that checks if the added rule opens port 22 to 0.0.0.0/0 and calls `RevokeSecurityGroupIngress` automatically — a real-time security response pattern.

---

### 6. Cross-Cloud Mental Map

| Concept | AWS | Azure | GCP |
|---|---|---|---|
| CIDR pool governance | VPC IPAM | Azure Virtual Network Manager / Address Space Manager | GCP VPC Network IPAM (built-in via IP address management) |
| Networking IaC | CloudFormation / Terraform | ARM Templates / Bicep / Terraform | Deployment Manager / Terraform |
| Self-service with guardrails | Service Catalog + Launch Constraints | Azure Blueprint / Managed Applications | GCP Service Catalog / Config Connector |
| Continuous compliance | AWS Config + Config Rules | Azure Policy + Policy Effects | Org Policy / Security Command Center |
| API audit log | CloudTrail | Azure Activity Log / Diagnostic Logs | Cloud Audit Logs |
| Real-time policy enforcement | Config Auto-Remediation + EventBridge | Azure Policy Deny effect / Remediation tasks | Org Policy Constraints / Cloud Functions remediation |

---

## Hands-On Activity Guide

### Prerequisites
- An AWS Organization with at least two member accounts.
- AWS CLI configured with org management account permissions.
- CloudTrail trail already sending logs to an S3 bucket (or create one in lab 3).

---

### Lab 1: Set Up IPAM and Allocate a VPC CIDR

```bash
# 1. Enable IPAM and create a top-level private pool
IPAM_ID=$(aws ec2 create-ipam \
  --operating-regions RegionName=us-east-1 \
  --query 'Ipam.IpamId' --output text)

# 2. Create a private scope (for RFC 1918 space)
# IPAM auto-creates a private scope; get its ID
SCOPE_ID=$(aws ec2 describe-ipam-scopes \
  --filters Name=ipam-id,Values=$IPAM_ID Name=ipam-scope-type,Values=private \
  --query 'IpamScopes[0].IpamScopeId' --output text)

# 3. Create a regional pool for us-east-1
REGIONAL_POOL=$(aws ec2 create-ipam-pool \
  --ipam-scope-id $SCOPE_ID \
  --address-family ipv4 \
  --locale us-east-1 \
  --auto-import false \
  --query 'IpamPool.IpamPoolId' --output text)

# 4. Provision CIDR into the regional pool
aws ec2 provision-ipam-pool-cidr \
  --ipam-pool-id $REGIONAL_POOL \
  --cidr 10.0.0.0/16
aws ec2 wait ipam-pool-cidr-allocated --ipam-pool-id $REGIONAL_POOL

# 5. Create a VPC using an allocation from the pool
aws ec2 create-vpc \
  --ipv4-ipam-pool-id $REGIONAL_POOL \
  --ipv4-netmask-length 24 \
  --tag-specifications 'ResourceType=vpc,Tags=[{Key=Name,Value=ipam-managed-vpc}]'

# 6. Check IPAM allocations
aws ec2 get-ipam-pool-allocations --ipam-pool-id $REGIONAL_POOL
```

---

### Lab 2: Query AWS Config for Non-Compliant Networking Resources

```bash
# 1. List all Config rules related to networking
aws configservice describe-config-rules \
  --query 'ConfigRules[?contains(ConfigRuleName,`vpc`) || contains(ConfigRuleName,`sg`) || contains(ConfigRuleName,`ssh`)].{Rule:ConfigRuleName,State:ConfigRuleState}' \
  --output table

# 2. Get compliance summary for a specific rule
aws configservice get-compliance-details-by-config-rule \
  --config-rule-name restricted-ssh \
  --compliance-types NON_COMPLIANT \
  --query 'EvaluationResults[*].{ResourceId:EvaluationResultIdentifier.EvaluationResultQualifier.ResourceId,Time:ResultRecordedTime}' \
  --output table

# 3. Get overall compliance summary for your account
aws configservice get-compliance-summary-by-config-rule \
  --query 'ComplianceSummariesByConfigRule[*].{Rule:ConfigRuleName,Compliant:ComplianceSummary.CompliantResourceCount.CappedCount,NonCompliant:ComplianceSummary.NonCompliantResourceCount.CappedCount}' \
  --output table

# 4. Get configuration history for a specific VPC
aws configservice get-resource-config-history \
  --resource-type AWS::EC2::VPC \
  --resource-id $VPC_ID \
  --limit 5 \
  --query 'configurationItems[*].{Time:configurationItemCaptureTime,Change:configurationItemStatus}' \
  --output table
```

---

### Lab 3: Audit Security Group Changes with CloudTrail

```bash
# 1. Look up security group changes in last 24 hours via Event History
aws cloudtrail lookup-events \
  --lookup-attributes AttributeKey=EventName,AttributeValue=AuthorizeSecurityGroupIngress \
  --start-time $(date -u -d '24 hours ago' +%Y-%m-%dT%H:%M:%SZ) \
  --query 'Events[*].{Time:EventTime,User:Username,Resources:Resources[0].ResourceName}' \
  --output table

# 2. Query for all route table changes
aws cloudtrail lookup-events \
  --lookup-attributes AttributeKey=EventName,AttributeValue=CreateRoute \
  --query 'Events[*].{Time:EventTime,User:Username}' \
  --output table

# 3. Find DeleteRoute events (potential unauthorized changes)
aws cloudtrail lookup-events \
  --lookup-attributes AttributeKey=EventName,AttributeValue=DeleteRoute \
  --query 'Events[*].{Time:EventTime,User:Username,EventId:EventId}' \
  --output table

# 4. Get full event details for a specific EventId
aws cloudtrail get-event \
  --event-id <EventId-from-above>

# 5. Set up EventBridge rule to alert on restrictive-SSH violations
aws events put-rule \
  --name "detect-open-ssh-sg" \
  --event-pattern '{"source":["aws.ec2"],"detail-type":["AWS API Call via CloudTrail"],"detail":{"eventSource":["ec2.amazonaws.com"],"eventName":["AuthorizeSecurityGroupIngress"]}}' \
  --state ENABLED
# Then add a target (SNS topic, Lambda) to the rule to alert or auto-remediate
```

---

## Troubleshooting Guide

| Symptom | Most Likely Cause | Diagnostic Step | Fix |
|---|---|---|---|
| VPC CIDR allocation from IPAM pool fails | Pool CIDR is exhausted; requested /24 does not fit remaining unallocated space | `aws ec2 describe-ipam-pools --ipam-pool-ids $POOL` — check `AllocatedCidrs` vs pool size | Expand pool by provisioning additional CIDR; or increase pool size at parent level |
| Config Rule `restricted-ssh` shows non-compliant but SG looks correct | Rule is evaluating a different account's SG if using aggregator; or SG is in a different region | Specify region in lookup; check Config Rule scope parameter | Ensure Config recorder is running in all regions; check the SG ID in the violation detail |
| Config Auto-Remediation runs but resource stays non-compliant | SSM Automation document failed; IAM role for remediation lacks permissions | Check SSM Automation execution history for errors | Attach correct IAM permissions to the remediation execution role |
| CloudTrail Event History returns empty for networking events | Trail not configured or management events not enabled | `aws cloudtrail get-trail-status --name <trail>` — check `IsLogging` | Enable management events on the trail; verify trail is active |
| Service Catalog product launch fails with AccessDenied | Launch Constraint role missing required EC2/VPC permissions | Check CloudFormation stack events for the resource that failed | Update the Launch Constraint IAM role with required permissions |
| IPAM auto-discovery not finding existing VPCs | Resource discovery not enabled in all accounts; IPAM not delegated to management account | Check IPAM resource discovery associations | Enable AWS Organizations integration in IPAM; add member accounts to resource discovery |
| Config conformance pack non-compliance cannot be linked to specific change | CloudTrail lookup scope too narrow; change was made via assumed role | Use CloudTrail Insights or Athena queries with broader time window and userIdentity filter | Run Athena query on S3 CloudTrail logs with join on `requestParameters.groupId` |

---

## Quick Revision Sheet

- **IPAM** = hierarchical CIDR pool manager; prevents overlapping allocations across accounts in AWS Organizations
- **IPAM Private Scope** = manages RFC 1918 address space; Public Scope manages BYOIP public IPs
- **IPAM allocation** = VPC CIDR checked out from pool; allocation blocks the CIDR range for other VPCs
- **CloudFormation cross-stack references** = networking stack exports VPC/subnet IDs; app stacks import them; prevents deletion of network stack while in use
- **StackSets** = deploy same networking template to multiple accounts/regions from management account
- **Service Catalog Launch Constraint** = product deploys with a specific IAM role; callers do not need full EC2/VPC permissions
- **TagOptions** = Service Catalog enforces mandatory tag keys on all provisioned resources
- **Config `restricted-ssh`** = flags SGs with inbound 0.0.0.0/0 or ::/0 on port 22
- **Config `vpc-flow-logs-enabled`** = flags VPCs without flow logs; supports auto-remediation via SSM
- **Config conformance pack** = bundled set of rules; `Operational-Best-Practices-for-AWS-Networking` covers key networking rules
- **CloudTrail 90-day Event History** = free in-console lookup; add a Trail for long-term S3 retention + Athena
- **EventBridge + CloudTrail** = route `AuthorizeSecurityGroupIngress` events to Lambda for real-time remediation
- **Key networking API calls to audit:** `AuthorizeSecurityGroupIngress`, `DeleteRoute`, `DetachInternetGateway`, `ModifyVpcAttribute`, `CreateTransitGatewayRouteTablePropagation`

## How To Use This File
1. Read the theory sections first so the service or platform model is clear before you touch the console.
2. Work through the hands-on modules in order and record what the platform proves versus what you only assumed.
3. Compare the AWS pattern with Azure and GCP when possible so the idea becomes cloud-portable.
4. Use the troubleshooting table when behavior is confusing instead of guessing from one console view.
5. Revisit the quick revision sheet before a design review, exam session, or migration plan.

## Theoretical Notes

### 1. Governance Mental Model

Governance Mental Model sets the boundary for governance operations, because it explains what the platform owns, what the operator owns, and where the first failure usually appears. When that boundary is fuzzy, teams tend to misread symptoms and make design choices in governance operations that solve the wrong problem. In practice, the durable way to learn governance operations is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 2. Core Governance Dimensions

Core Governance Dimensions matter because they determine how the control plane, data path, and identity or addressing model actually work inside governance operations. Understanding those building blocks makes it easier to compare AWS behavior with Azure and GCP instead of memorizing vendor-specific wording. In practice, the durable way to learn governance operations is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 3. Operational Ownership

Operational Ownership are where scale, resilience, and governance turn basic feature knowledge into durable system design for governance operations. This is usually the part of the topic that separates a passing lab from a design that still behaves well under real traffic and operator pressure. In practice, the durable way to learn governance operations is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 4. Observability is part of the network design

Governance operations is only trustworthy when the team can prove what path traffic takes and which layer is allowed to change that path. Without those signals, networking problems inside governance operations often masquerade as random application or infrastructure failures. In practice, the durable way to learn governance operations is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 5. Cross-cloud mapping keeps the boundary clear

Mapping governance operations to Azure and GCP helps separate the underlying networking concept from the AWS product packaging around it. That usually makes both troubleshooting and migration planning easier because the real control surface stays visible. In practice, the durable way to learn governance operations is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 6. Cross-Cloud Mental Map

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Address governance | IPAM | Azure Virtual Network Manager plus IP planning | IP planning and policy tooling |
| Provisioning guardrails | CloudFormation, Service Catalog, and SCP-aware patterns | Bicep, Policy, and Blueprint-aligned patterns | Terraform and Organization Policy patterns |
| Continuous compliance | Config, CloudTrail, and Security Hub alignment | Policy, Activity Log, and Defender alignment | Organization Policy, Audit Logs, and SCC alignment |
| Change visibility | EventBridge plus CloudWatch plus Config rules | Azure Monitor plus Activity Log | Event-driven ops plus Audit Logs and Monitoring |
| Central network platform operations | Shared networking account model | Landing zone connectivity subscriptions | Host project and platform project models |

## Hands-On Activity Guide

### Prerequisites and Safety Rules
- Use a sandbox account or non-production subscription and set a budget alert before creating resources.
- Keep naming, tagging, and cleanup disciplined so you can remove every lab artifact after practice.
- Prefer the smallest viable instances or service tiers unless the learning goal specifically depends on scale.
- Record both the intended design and the first thing that contradicted your expectation.

### Module 1: Governance Mental Model

**Goal:** Turn governance mental model for governance operations into one observable and repeatable workflow.

1. Review the governance mental model section in the curated raw material for Governance Operations.
2. Build or diagram one small AWS scenario that proves the core behavior behind governance mental model.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 2: Core Governance Dimensions

**Goal:** Turn core governance dimensions for governance operations into one observable and repeatable workflow.

1. Review the core governance dimensions section in the curated raw material for Governance Operations.
2. Build or diagram one small AWS scenario that proves the core behavior behind core governance dimensions.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 3: Operational Ownership

**Goal:** Turn operational ownership for governance operations into one observable and repeatable workflow.

1. Review the operational ownership section in the curated raw material for Governance Operations.
2. Build or diagram one small AWS scenario that proves the core behavior behind operational ownership.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

## Troubleshooting Notes

| Symptom | Likely Cause | Check First |
|---|---|---|
| Traffic does not reach the target | The route path, attachment, or return path is wrong | Start with route tables, attachment state, and whether the return path is symmetric |
| DNS resolution works in one place but fails in another | Resolver rules, private zones, or forwarding boundaries are incomplete | Check which resolver answered, what zone was authoritative, and where forwarding stops |
| A security control appears to allow traffic but packets still fail | Another layer is denying or bypassing the expected flow | Evaluate security groups, NACLs, firewall policy, and the actual source or destination identity together |
| Performance is inconsistent | Path length, cross-zone movement, or overloaded translation points are adding latency | Inspect the chosen path, NAT or proxy hops, and whether traffic locality matches the design |
| The incident is hard to explain after the fact | Telemetry was not enabled at the right layer | Check flow logs, query logs, LB logs, and control-plane audit logs before reproducing the issue |
| Behavior contradicts the governance operations model | The intended control boundary was never translated into a concrete policy, route, identity path, or recovery signal | Re-check the mental model, then inspect the first control plane, data plane, and evidence source that should prove it |

## Quick Revision Sheet
- Decide what boundary or path governance operations is supposed to control before you add more routes, policies, or services.
- Decide how identity, DNS, and routing assumptions should be documented around governance operations.
- Decide which layer should own reachability, security, and failover behavior in governance operations.
- Decide which telemetry proves that governance operations is working as designed instead of only appearing configured.
- Keep the mental model for governance operations tied to observable signals instead of memorized labels.

## Self-Check Questions
1. What is the primary control boundary in governance operations, and how would you explain it to a teammate?
2. Which failure mode would appear first if the design assumption were wrong?
3. What signal, log, or metric would you inspect before changing the architecture under pressure?
4. Which Azure or GCP equivalent helps confirm that you understand the concept rather than only the product name?
5. What part of this topic would become the hardest to operate at scale if left implicit?
