# VPC Connectivity Learner Notes

This file is a learner-first companion to `02_VPC_Connectivity.md`.
It is structured as topic-specific theory notes, a hands-on activity guide, and closing revision material so the raw knowledge base becomes easier to study and reuse.

Source authority: 103 processed source files, 8883 extracted non-empty transcript lines. The architect-level concepts are drawn directly from the curated primary knowledge base for this topic.

## How To Use This File
1. Read the theory sections in order — each connectivity pattern builds on the previous isolation concept.
2. Work through the hands-on labs, paying close attention to route propagation and DNS override behavior.
3. Use the cross-cloud table to translate connectivity concepts when working with multi-cloud architectures.
4. Use the troubleshooting table when traffic between VPCs or to AWS services is unexpectedly failing.
5. Revisit the quick revision sheet before exam sessions covering networking specialty topics.

---

## Theoretical Notes

### 1. The VPC Connectivity Landscape

When you need to move traffic in or out of a VPC, the answer is never just "add a route." Every connectivity pattern in AWS has its own addressing model, security posture, cost structure, and failure behavior. Choosing the wrong pattern creates either security gaps or unnecessary cost, and the symptoms are often invisible until an incident.

The three fundamental connectivity questions are: (a) where is the destination — internet, another VPC, or an on-premises network? (b) who owns the destination — is it an AWS-managed service, your VPC, or a third party? (c) what are the data path and security requirements — does traffic need to stay on the AWS backbone, does it need encryption, does it need to bypass the internet entirely? Answering these questions determines your tool: VPC Peering, Gateway Endpoint, Interface Endpoint, PrivateLink, Transit Gateway, VPN, or Direct Connect.

---

### 2. VPC Peering: Simple but Non-Transitive

VPC peering creates a direct, private, encrypted connection between two VPCs. Traffic travels on the AWS backbone — never over the public internet. Support for peering between VPCs in different AWS accounts and different regions (inter-region peering, where traffic stays on AWS backbone) makes it a versatile building block.

The critical limitation is non-transitivity: if VPC A peers with VPC B, and VPC B peers with VPC C, VPC A cannot reach VPC C through VPC B. Each VPC pair that needs to communicate requires its own independent peering connection. At five or ten VPCs this is manageable; at fifty it becomes unmanageable. That inflection point is when Transit Gateway becomes the right answer.

After creating a peering connection, you must: (1) accept the peering from the accepter side, (2) add routes in both VPC route tables pointing to the other VPC's CIDR via the peering connection ID, and (3) update Security Groups to allow traffic from the peer VPC CIDR. No DNS resolution of private hostnames across the peering works by default — you must enable DNS resolution support on both sides of the connection.

---

### 3. Gateway Endpoints: Free Private Access to S3 and DynamoDB

Gateway Endpoints are a route-table injection mechanism — they add a prefix list entry to your VPC route table that redirects S3 and DynamoDB traffic to AWS-internal endpoints, bypassing the internet entirely. This means your private EC2 instances can reach S3 without a NAT Gateway, reducing data transfer cost significantly.

Gateway Endpoints are free and do not consume ENI slots or IP addresses. They do not support PrivateLink-style cross-account service sharing. They work only within the same region. The endpoint policy attached to a Gateway Endpoint controls which S3 buckets or DynamoDB tables are reachable through that endpoint — this is a powerful data exfiltration control: you can restrict endpoint access to only your organization's buckets using `aws:PrincipalOrgID` conditions.

The route table entry added by a Gateway Endpoint uses an AWS-managed prefix list (pl-xxxxxxxx format) rather than a CIDR. This means you cannot manually recreate it with a CIDR route — the prefix list is what makes the route work correctly as S3's IP ranges change over time.

---

### 4. Interface Endpoints and AWS PrivateLink

Interface Endpoints use PrivateLink to bring AWS service APIs (or your own services) into your VPC via an ENI with a private IP address in your subnet. Unlike Gateway Endpoints, Interface Endpoints consume IP addresses and are billed per hour per AZ and per GB of data processed.

When you create an Interface Endpoint, AWS creates a private DNS override: the service's public DNS name (e.g., `sqs.us-east-1.amazonaws.com`) resolves to the private IP of the endpoint ENI inside your VPC instead of the public IP. This DNS override is the key behavior to understand — traffic from your VPC automatically routes to the endpoint without you updating application configuration, as long as `enableDnsSupport` is true on the VPC. You can also disable the private DNS and use the endpoint-specific DNS name if you need coexistence with public access.

Interface Endpoints support a VPC Endpoint Policy — an IAM-style JSON policy that controls which principals and actions are allowed through the endpoint. This enables defense-in-depth: even if IAM allows a principal to write to SQS, the endpoint policy can limit which SQS queues are accessible from the VPC.

PrivateLink endpoint services let you publish your own service (backed by an NLB) and allow other VPCs or accounts to consume it via Interface Endpoints. The provider creates a VPC Endpoint Service; consumers create Interface Endpoints pointing to the service. Traffic never leaves the AWS backbone. Provider and consumer CIDRs do not need to be non-overlapping — which is architecturally important when comparing to VPC Peering.

---

### 5. Transit Gateway: Hub-and-Spoke at Scale

Transit Gateway (TGW) is the AWS-managed multi-VPC and multi-account router. It replaces the n*(n-1)/2 full-mesh peering requirement with a centralized hub. Each VPC, VPN, or Direct Connect attachment is associated with one or more TGW route tables, and route propagation or static entries control what each attachment can reach.

TGW route tables are the key segmentation mechanism. By default, a single TGW has a default route table. You can create additional route tables to create routing domains — for example, a shared-services route table that allows all VPCs to reach common services like DNS, Active Directory, and monitoring, and separate per-environment route tables that prevent dev from reaching prod directly.

AZ affinity is important for performance and cost: a TGW attachment is created per AZ. Traffic crossing AZ boundaries incurs cross-AZ data transfer charges. For appliance mode (when you need symmetric flows through a transit inspection appliance), enable appliance mode on the TGW attachment so that forward and return traffic always go through the same appliance AZ.

---

### 6. VPC Endpoint Policies and Data Perimeter Design

VPC Endpoint Policies, Service Control Policies (SCPs), and IAM policies form a three-layer data perimeter. The standard pattern: an SCP prevents resources in your organization from accessing S3 unless the request comes through a VPC endpoint or uses a specific condition. The endpoint policy limits which buckets can be accessed through the endpoint. IAM policies at the identity level further refine what each role can do.

This three-layer approach ensures that even a compromised IAM credential cannot exfiltrate data to an S3 bucket outside your organization — the endpoint policy blocks access to non-org buckets, and the SCP blocks any non-endpoint path to S3 from VPC resources. This is called a data perimeter: identity perimeter (IAM), network perimeter (endpoint policy), and resource perimeter (bucket policy with `aws:PrincipalOrgID`).

---

### 7. Cross-Cloud Mental Map

| Concept | AWS | Azure | GCP |
|---|---|---|---|
| VPC-to-VPC (direct) | VPC Peering | VNet Peering | VPC Peering |
| Non-transitive limit | Yes (use TGW) | Yes (use VNet Hub) | Yes (use shared VPC) |
| Free private service access | Gateway Endpoint (S3/DynamoDB) | Service Endpoint (free, route-based) | Private Google Access |
| Private endpoint with ENI | Interface Endpoint / PrivateLink | Private Endpoint (Azure PE) | Private Service Connect |
| Multi-VPC hub router | Transit Gateway | Virtual WAN Hub | Cloud Router (NCC) |
| Endpoint policy | VPC Endpoint Policy | No direct equivalent | PSC endpoint policy |

---

## Hands-On Activity Guide

### Prerequisites
- VPC from Lab 1 (VPC Core) or create a new one.
- A second VPC (can be in the same account) for peering lab.
- S3 bucket in the same region for Gateway Endpoint lab.
- AWS CLI configured with appropriate permissions.

---

### Lab 1: VPC Peering Between Two VPCs

```bash
# Assume VPC_A and VPC_B already exist with non-overlapping CIDRs:
# VPC_A: 10.0.0.0/16
# VPC_B: 10.1.0.0/16

# 1. Create peering connection (from VPC_A side)
PEERING_ID=$(aws ec2 create-vpc-peering-connection \
  --vpc-id $VPC_A_ID --peer-vpc-id $VPC_B_ID \
  --query 'VpcPeeringConnection.VpcPeeringConnectionId' --output text)
echo "Peering: $PEERING_ID"

# 2. Accept the peering (from VPC_B side — could be different account)
aws ec2 accept-vpc-peering-connection \
  --vpc-peering-connection-id $PEERING_ID

# 3. Add routes in VPC_A's route table pointing to VPC_B's CIDR
aws ec2 create-route --route-table-id $VPC_A_RT \
  --destination-cidr-block 10.1.0.0/16 \
  --vpc-peering-connection-id $PEERING_ID

# 4. Add routes in VPC_B's route table pointing to VPC_A's CIDR
aws ec2 create-route --route-table-id $VPC_B_RT \
  --destination-cidr-block 10.0.0.0/16 \
  --vpc-peering-connection-id $PEERING_ID

# 5. Enable DNS resolution support on both sides
aws ec2 modify-vpc-peering-connection-options \
  --vpc-peering-connection-id $PEERING_ID \
  --requester-peering-connection-options AllowDnsResolutionFromRemoteVpc=true \
  --accepter-peering-connection-options AllowDnsResolutionFromRemoteVpc=true
```

Test: ping a private IP in VPC_B from VPC_A. Then verify the same DNS name resolves to a private IP.

---

### Lab 2: S3 Gateway Endpoint — Eliminating NAT for S3 Traffic

```bash
# Create Gateway Endpoint for S3 in your VPC
# The endpoint automatically adds a prefix-list route to specified route tables
ENDPOINT_ID=$(aws ec2 create-vpc-endpoint \
  --vpc-id $VPC_ID \
  --service-name com.amazonaws.us-east-1.s3 \
  --route-table-ids $PRIV_RT \
  --vpc-endpoint-type Gateway \
  --policy-document '{
    "Statement": [{
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:*",
      "Resource": ["arn:aws:s3:::my-org-bucket", "arn:aws:s3:::my-org-bucket/*"]
    }]
  }' \
  --query 'VpcEndpoint.VpcEndpointId' --output text)

# Verify the route was added automatically
aws ec2 describe-route-tables --route-table-ids $PRIV_RT \
  --query 'RouteTables[].Routes[?DestinationPrefixListId!=null]'
```

Test: From a private EC2 instance (no NAT Gateway in route table), run `aws s3 ls s3://my-org-bucket --region us-east-1`. It should succeed. Try `aws s3 ls s3://some-external-bucket` — it should fail because the endpoint policy only allows the org bucket.

---

### Lab 3: SQS Interface Endpoint — Private Service API Access

```bash
# Create Interface Endpoint for SQS with private DNS enabled
aws ec2 create-vpc-endpoint \
  --vpc-id $VPC_ID \
  --service-name com.amazonaws.us-east-1.sqs \
  --vpc-endpoint-type Interface \
  --subnet-ids $PRIV_SUBNET \
  --security-group-ids $SG_ID \
  --private-dns-enabled \
  --query 'VpcEndpoint.VpcEndpointId' --output text

# After creation, verify DNS override from within the VPC:
# nslookup sqs.us-east-1.amazonaws.com should return a 10.x.x.x private IP
```

Test: From a private EC2 instance with no internet access, run `aws sqs list-queues --region us-east-1`. It should work via the private endpoint without any public internet path.

---

## Troubleshooting Guide

| Symptom | Most Likely Cause | Diagnostic Step | Fix |
|---|---|---|---|
| VPC peering created but instances can't communicate | Route table entries missing in one or both VPCs | `aws ec2 describe-route-tables` for both VPCs; look for peer CIDR routes | Add missing routes via `create-route` |
| Peering established but DNS doesn't resolve private hostnames | DNS resolution support not enabled on peering connection | `aws ec2 describe-vpc-peering-connections` — check `AllowDnsResolutionFromRemoteVpc` | Enable on both requester and accepter |
| S3 access fails from private subnet despite Gateway Endpoint | Missing prefix-list route, or endpoint policy too restrictive | Check route table for pl-xxxxx entry; review endpoint policy | Verify policy allows the specific bucket ARN |
| Interface Endpoint created but API calls still go to public IP | `enableDnsSupport` disabled on VPC, or private DNS not enabled on endpoint | `aws ec2 describe-vpc-attribute --attribute enableDnsSupport`; check endpoint private DNS | Enable DNS support on VPC; enable private DNS on endpoint |
| TGW attachment created but cross-VPC traffic fails | Routes not propagated or added in TGW route table | `aws ec2 describe-transit-gateway-route-tables` — check propagations and static routes | Add routes to TGW route table; check VPC route tables for TGW routes |
| PrivateLink consumer endpoint can't reach provider service | Endpoint not accepted by provider, or NLB health checks failing | Check endpoint state in `describe-vpc-endpoints`; check NLB target health | Accept endpoint, fix NLB target health issues |
| Cross-account S3 access blocked despite IAM permissions | SCP or bucket policy blocks access from non-org accounts | Check SCP for `aws:PrincipalOrgID` conditions; check bucket policy | Add cross-account bucket policy; adjust SCP conditions |
| TGW cross-AZ traffic incurring unexpected cost | Single TGW attachment per VPC, traffic routing cross-AZ | Check TGW attachment AZs vs subnet AZs in CloudWatch traffic metrics | Create TGW attachments in each AZ; review routing to prefer same-AZ |

---

## Quick Revision Sheet

- **VPC Peering** = private, backbone-level, non-transitive; requires routes and SG updates in both VPCs
- **Non-transitive** = A↔B and B↔C does NOT mean A↔C; use TGW when you need transitive routing
- **Gateway Endpoint** = free, route-table-based, S3 + DynamoDB only; uses AWS prefix list
- **Interface Endpoint** = ENI in subnet, private DNS override, billed per hour + GB; supports most AWS services
- **PrivateLink** = underlying tech for Interface Endpoints; also enables publishing own services via NLB
- **VPC Endpoint Policy** = IAM-style document attached to endpoint; restricts which resources can be accessed through it
- **TGW** = hub-and-spoke router; replaces n*(n-1)/2 mesh with centralized route tables
- **TGW route tables** = segmentation mechanism; one TGW can have multiple route tables for different routing domains
- **Appliance mode** = symmetric flow routing through inspection appliance in same AZ
- **DNS resolution for peering** = must explicitly enable `AllowDnsResolutionFromRemoteVpc` on both sides

## How To Use This File
1. Read the theory sections first so the service or platform model is clear before you touch the console.
2. Work through the hands-on modules in order and record what the platform proves versus what you only assumed.
3. Compare the AWS pattern with Azure and GCP when possible so the idea becomes cloud-portable.
4. Use the troubleshooting table when behavior is confusing instead of guessing from one console view.
5. Revisit the quick revision sheet before a design review, exam session, or migration plan.

## Theoretical Notes

### 1. Connectivity Mental Model

Connectivity Mental Model sets the boundary for vpc connectivity, because it explains what the platform owns, what the operator owns, and where the first failure usually appears. When that boundary is fuzzy, teams tend to misread symptoms and make design choices in vpc connectivity that solve the wrong problem. In practice, the durable way to learn vpc connectivity is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 2. Private Connectivity Options

Private Connectivity Options matter because they determine how the control plane, data path, and identity or addressing model actually work inside vpc connectivity. Understanding those building blocks makes it easier to compare AWS behavior with Azure and GCP instead of memorizing vendor-specific wording. In practice, the durable way to learn vpc connectivity is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 3. Hybrid Path Principles

Hybrid Path Principles are where scale, resilience, and governance turn basic feature knowledge into durable system design for vpc connectivity. This is usually the part of the topic that separates a passing lab from a design that still behaves well under real traffic and operator pressure. In practice, the durable way to learn vpc connectivity is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 4. Observability is part of the network design

Vpc connectivity is only trustworthy when the team can prove what path traffic takes and which layer is allowed to change that path. Without those signals, networking problems inside vpc connectivity often masquerade as random application or infrastructure failures. In practice, the durable way to learn vpc connectivity is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 5. Cross-cloud mapping keeps the boundary clear

Mapping vpc connectivity to Azure and GCP helps separate the underlying networking concept from the AWS product packaging around it. That usually makes both troubleshooting and migration planning easier because the real control surface stays visible. In practice, the durable way to learn vpc connectivity is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 6. Cross-Cloud Mental Map

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Private VPC-to-VPC link | Peering and PrivateLink | VNet peering and Private Link | VPC peering and Private Service Connect |
| Central transit fabric | Transit Gateway | Virtual WAN and hub routing | Network Connectivity Center |
| On-premises private path | Site-to-Site VPN and Direct Connect | VPN Gateway and ExpressRoute | Cloud VPN and Interconnect |
| Service endpoint pattern | Gateway endpoint and interface endpoint | Service endpoint and Private Endpoint | Private Google Access and Private Service Connect |
| Shared service publishing | PrivateLink service | Private Link service | Private Service Connect producer service |

## Hands-On Activity Guide

### Prerequisites and Safety Rules
- Use a sandbox account or non-production subscription and set a budget alert before creating resources.
- Keep naming, tagging, and cleanup disciplined so you can remove every lab artifact after practice.
- Prefer the smallest viable instances or service tiers unless the learning goal specifically depends on scale.
- Record both the intended design and the first thing that contradicted your expectation.

### Module 1: Connectivity Mental Model

**Goal:** Turn connectivity mental model for vpc connectivity into one observable and repeatable workflow.

1. Review the connectivity mental model section in the curated raw material for VPC Connectivity.
2. Build or diagram one small AWS scenario that proves the core behavior behind connectivity mental model.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 2: Private Connectivity Options

**Goal:** Turn private connectivity options for vpc connectivity into one observable and repeatable workflow.

1. Review the private connectivity options section in the curated raw material for VPC Connectivity.
2. Build or diagram one small AWS scenario that proves the core behavior behind private connectivity options.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 3: Hybrid Path Principles

**Goal:** Turn hybrid path principles for vpc connectivity into one observable and repeatable workflow.

1. Review the hybrid path principles section in the curated raw material for VPC Connectivity.
2. Build or diagram one small AWS scenario that proves the core behavior behind hybrid path principles.
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
| Behavior contradicts the vpc connectivity model | The intended control boundary was never translated into a concrete policy, route, identity path, or recovery signal | Re-check the mental model, then inspect the first control plane, data plane, and evidence source that should prove it |

## Quick Revision Sheet
- Decide what boundary or path vpc connectivity is supposed to control before you add more routes, policies, or services.
- Decide how identity, DNS, and routing assumptions should be documented around vpc connectivity.
- Decide which layer should own reachability, security, and failover behavior in vpc connectivity.
- Decide which telemetry proves that vpc connectivity is working as designed instead of only appearing configured.
- Keep the mental model for vpc connectivity tied to observable signals instead of memorized labels.

## Self-Check Questions
1. What is the primary control boundary in vpc connectivity, and how would you explain it to a teammate?
2. Which failure mode would appear first if the design assumption were wrong?
3. What signal, log, or metric would you inspect before changing the architecture under pressure?
4. Which Azure or GCP equivalent helps confirm that you understand the concept rather than only the product name?
5. What part of this topic would become the hardest to operate at scale if left implicit?
