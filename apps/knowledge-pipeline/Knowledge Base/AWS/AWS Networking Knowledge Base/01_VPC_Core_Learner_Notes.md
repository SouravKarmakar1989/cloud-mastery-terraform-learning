# VPC Core Learner Notes

This file is a learner-first companion to `01_VPC_Core.md`.
It is structured as topic-specific theory notes, a hands-on activity guide, and closing revision material so the raw knowledge base becomes easier to study and reuse.

Source authority: 41 processed source files, 3316 extracted non-empty transcript lines. The architect-level concepts are drawn directly from the curated primary knowledge base for this topic.

## How To Use This File
1. Read the theory sections first so the VPC isolation and routing model is clear before you open the console.
2. Work through the hands-on modules in order — each builds on the previous subnet and route configuration.
3. Compare the AWS pattern with Azure VNet and GCP VPC where noted so the concept becomes cloud-portable.
4. Use the troubleshooting table when traffic refuses to flow — most VPC problems are in one of eight categories.
5. Revisit the quick revision sheet before the Solutions Architect exam or a VPC design review.

---

## Theoretical Notes

### 1. The VPC as an Isolation Boundary

A VPC is not just a network segment — it is the fundamental isolation primitive AWS uses to separate workloads at an account and region level. Every resource you launch in AWS either lives inside a VPC (EC2, RDS, Lambda in VPC mode, EKS nodes) or reaches into a VPC through an endpoint. Understanding the VPC as an isolation boundary means understanding that connectivity is denied by default, and every path must be explicitly opened through routing, gateway attachment, and policy.

Each VPC lives in a single AWS Region and spans all Availability Zones within that region. Within the VPC you carve subnets — each subnet lives in exactly one AZ. The VPC itself does not own the compute; it provides the network plane on which compute runs. This is architecturally different from Azure VNet where subnets can span zones, and similar to GCP VPC except GCP VPCs are global while AWS VPCs are regional.

The key mental model checkpoint: public vs private is not a subnet attribute — it is a routing attribute. AWS Console shows subnet "type" labels but what actually makes a subnet reachable from the internet is whether its route table has a default route (0.0.0.0/0) pointing to an Internet Gateway and whether the instances in that subnet have public IP addresses. Two subnets can exist in the same VPC with exactly the same CIDR configuration but opposite reachability profiles depending solely on their associated route tables.

---

### 2. CIDR Planning and Subnetting

CIDR selection is an architecture decision, not a provisioning detail. The common mistake is treating it as a fill-in-the-blank step and then discovering 18 months later that VPC peering fails because two environments share overlapping address space. Address ranges are permanent: a VPC CIDR cannot be changed after creation (you can add secondary CIDRs but not replace the primary).

The recommended approach: use RFC 1918 space (10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16), choose a consistent prefix length per environment tier (/16 per VPC is common), and document the allocation in a central registry or use AWS IPAM. Reserve enough space per subnet for future growth and for the five AWS-reserved IPs in every subnet (network address, VPC router, DNS, future use, broadcast — so a /28 gives you only 11 usable addresses).

IPv6 is increasingly relevant. AWS provides a /56 per VPC from the AWS-managed IPv6 pool (or BYOIP). Each subnet gets a /64. IPv6 addresses are always public (globally routable) unless you use an Egress-Only Internet Gateway to restrict outbound-only behavior. Dual-stack design means planning both address families from the start, which affects your Security Group and NACL rule sets.

---

### 3. Route Tables: The Real Routing Authority

Route tables determine where traffic goes. Every subnet is associated with exactly one route table; the main route table is the default. A single route table can be shared across multiple subnets. The rule of thumb: never add a route to the main (default) route table that changes public vs private behavior — instead create dedicated route tables for public subnets and for each private tier.

Routes are evaluated by longest-prefix match. Local VPC routes (covering the entire VPC CIDR) are implicit, always present, and cannot be deleted — they ensure that any two instances within the same VPC can communicate directly without going through a gateway. Everything beyond the local route must be explicitly added: Internet Gateway route for public subnets, NAT Gateway route or NAT Instance route for private outbound, VPC Peering or TGW routes for inter-VPC traffic.

The Internet Gateway (IGW) is a VPC-level construct — one per VPC, horizontally scaled and highly available, no bandwidth throttle. It provides bi-directional communication for instances that have public IPs. The NAT Gateway is an AZ-scoped construct (deploy one per AZ for HA), provides outbound-only internet access for private instances, and bills on both data processed and hourly run time. A NAT Instance is an EC2-based alternative — cheap but requires source/dest check disabled and manual HA configuration.

---

### 4. Security Groups vs Network ACLs

Security Groups and Network ACLs are both traffic filters but they operate at different layers and with different statefulness models. Confusing the two is the most common source of intermittent connectivity bugs.

Security Groups are workload-level, stateful, and apply to the Elastic Network Interface. Stateful means: if a connection is permitted outbound, the response traffic is automatically permitted inbound without any matching inbound rule. You reference other security groups by ID in SG rules, which enables dynamic allow-listing that survives IP changes (critical in auto-scaling environments). Security Groups have no explicit deny — everything not matching an allow rule is denied. SGs are the first layer of workload defense and should always be configured, even when additional controls exist.

Network ACLs are subnet-level, stateless, and processed in ascending rule number order with an explicit DENY at the end. Stateless means you must write both the inbound rule and the matching ephemeral-port outbound rule or the response traffic will be dropped. NACLs are most useful as a blast-radius control at subnet boundaries — for example, blocking a known-bad IP range at the subnet level without touching hundreds of Security Groups. The default NACL allows all traffic; a custom NACL starts with DENY all.

Azure equivalent: NSGs (stateful, like SGs) + Azure Firewall subnets or route-based inspection. GCP equivalent: VPC Firewall Rules (stateful, similar to SGs) with hierarchical firewall policies at the org level.

---

### 5. Elastic Network Interfaces and Multi-Homing

The Elastic Network Interface (ENI) is the network identity anchor for any resource in a VPC. An EC2 instance gets a primary ENI when launched, which holds the private IP, the public IP association, the security group membership, the source/dest check setting, and the MAC address. ENIs can be detached from stopped instances and reattached to others — this is the mechanism used for highly available Network Virtual Appliances (NVAs) and for moving a static private IP between instances during failover.

An instance can have multiple ENIs from different subnets (multi-homing), enabling separation of management traffic from application traffic or creation of a dual-homed firewall appliance. Each ENI can have its own SG assignment. The source/destination check on an ENI must be disabled when the instance is acting as a router or NAT device — by default AWS drops packets whose source or destination IP does not match the ENI's own IP.

Secondary private IPs on a single ENI enable running multiple SSL certificates on one instance (each cert can bind to a different IP), or running multiple application instances on one EC2 box for cost efficiency. Elastic IPs are allocated to an AWS account, not to an instance, and can be remapped between ENIs, which is the basis for static-IP failover patterns.

---

### 6. IPv6 and Egress-Only Internet Gateway

IPv6 support in VPC changes several assumptions. All IPv6 addresses assigned to instances are public by default (there is no concept of a private IPv6 address in AWS). This means you cannot use an IPv4 NAT Gateway for IPv6 outbound — NAT is not supported for IPv6. Instead, the Egress-Only Internet Gateway (EOIGW) provides outbound-only IPv6 access from private subnets, equivalent in function to a NAT Gateway but for IPv6. It is free and horizontally scaled.

The dual-stack configuration flow: enable IPv6 on the VPC (AWS assigns a /56), assign a /64 to each subnet, configure auto-assign IPv6 addresses on the subnet, add an EOIGW route (::/0 → EOIGW) in private subnet route tables, and add an IGW route (::/0 → IGW) in public subnet route tables. Security Groups must include IPv6 rules separately from IPv4 rules. NACLs must also include IPv6 rules. This doubling of rule sets is the most common oversight when enabling dual-stack.

---

### 7. Cross-Cloud Mental Map

| Concept | AWS | Azure | GCP |
|---|---|---|---|
| Network isolation unit | VPC (regional) | VNet (regional) | VPC (global) |
| Subnet scope | Single AZ | Spans zones | Regional (global VPC) |
| Route table | Per-subnet association | Per-subnet UDR | Per-VPC routes |
| Internet Gateway | VPC-level, free | Auto-provisioned | Cloud Router / routes |
| Outbound NAT | NAT Gateway (per-AZ) | NAT Gateway | Cloud NAT |
| Stateful workload filter | Security Group | NSG | VPC Firewall Rules |
| Stateless subnet filter | NACL | No direct equivalent; use NSG | Ingress/egress firewall rules |
| Network identity unit | ENI | NIC (vNIC) | NIC |

---

## Hands-On Activity Guide

### Prerequisites
- AWS account with permission to create VPCs, subnets, route tables, IGW, NAT Gateway, Security Groups, and EC2 instances.
- AWS CLI configured (`aws configure`) with a profile that has sufficient IAM permissions.
- Two EC2 key pairs available, or use EC2 Instance Connect.

---

### Lab 1: Build a Two-Tier VPC from the AWS CLI

This lab creates a VPC with one public subnet and one private subnet in the same AZ, an Internet Gateway, and the correct route tables.

```bash
# 1. Create VPC
VPC_ID=$(aws ec2 create-vpc --cidr-block 10.0.0.0/16 \
  --tag-specifications 'ResourceType=vpc,Tags=[{Key=Name,Value=lab-vpc}]' \
  --query 'Vpc.VpcId' --output text)
echo "VPC: $VPC_ID"

# 2. Enable DNS hostnames (required for Route 53 and many services)
aws ec2 modify-vpc-attribute --vpc-id $VPC_ID --enable-dns-hostnames

# 3. Create public and private subnets in us-east-1a
PUB_SUBNET=$(aws ec2 create-subnet --vpc-id $VPC_ID \
  --cidr-block 10.0.1.0/24 --availability-zone us-east-1a \
  --tag-specifications 'ResourceType=subnet,Tags=[{Key=Name,Value=public-1a}]' \
  --query 'Subnet.SubnetId' --output text)

PRIV_SUBNET=$(aws ec2 create-subnet --vpc-id $VPC_ID \
  --cidr-block 10.0.2.0/24 --availability-zone us-east-1a \
  --tag-specifications 'ResourceType=subnet,Tags=[{Key=Name,Value=private-1a}]' \
  --query 'Subnet.SubnetId' --output text)

# 4. Enable auto-assign public IP on public subnet
aws ec2 modify-subnet-attribute --subnet-id $PUB_SUBNET \
  --map-public-ip-on-launch

# 5. Create and attach Internet Gateway
IGW_ID=$(aws ec2 create-internet-gateway \
  --tag-specifications 'ResourceType=internet-gateway,Tags=[{Key=Name,Value=lab-igw}]' \
  --query 'InternetGateway.InternetGatewayId' --output text)
aws ec2 attach-internet-gateway --internet-gateway-id $IGW_ID --vpc-id $VPC_ID

# 6. Create public route table with default route to IGW
PUB_RT=$(aws ec2 create-route-table --vpc-id $VPC_ID \
  --tag-specifications 'ResourceType=route-table,Tags=[{Key=Name,Value=public-rt}]' \
  --query 'RouteTable.RouteTableId' --output text)
aws ec2 create-route --route-table-id $PUB_RT \
  --destination-cidr-block 0.0.0.0/0 --gateway-id $IGW_ID
aws ec2 associate-route-table --route-table-id $PUB_RT --subnet-id $PUB_SUBNET

echo "Public subnet $PUB_SUBNET attached to route table with IGW route"
echo "Private subnet $PRIV_SUBNET uses main route table (no internet route yet)"
```

Test: Launch an EC2 instance in `PUB_SUBNET` with a Security Group allowing SSH from your IP. SSH should work. Launch the same in `PRIV_SUBNET` — no public IP, no internet access.

---

### Lab 2: Add a NAT Gateway for Private Subnet Outbound Access

```bash
# 1. Allocate an Elastic IP for the NAT Gateway
EIP=$(aws ec2 allocate-address --domain vpc \
  --query 'AllocationId' --output text)

# 2. Create NAT Gateway in the public subnet
NAT_GW=$(aws ec2 create-nat-gateway \
  --subnet-id $PUB_SUBNET --allocation-id $EIP \
  --tag-specifications 'ResourceType=natgateway,Tags=[{Key=Name,Value=lab-nat}]' \
  --query 'NatGateway.NatGatewayId' --output text)

# Wait for NAT GW to become available
aws ec2 wait nat-gateway-available --nat-gateway-ids $NAT_GW
echo "NAT Gateway $NAT_GW is available"

# 3. Create private route table with default route to NAT GW
PRIV_RT=$(aws ec2 create-route-table --vpc-id $VPC_ID \
  --tag-specifications 'ResourceType=route-table,Tags=[{Key=Name,Value=private-rt}]' \
  --query 'RouteTable.RouteTableId' --output text)
aws ec2 create-route --route-table-id $PRIV_RT \
  --destination-cidr-block 0.0.0.0/0 --nat-gateway-id $NAT_GW
aws ec2 associate-route-table --route-table-id $PRIV_RT --subnet-id $PRIV_SUBNET
```

Test: SSH into the public instance, then SSH from there into the private instance (via private IP). From the private instance, run `curl -s https://checkip.amazonaws.com` — the returned IP should be the NAT Gateway's Elastic IP.

---

### Lab 3: Test Security Group vs NACL Behavior

```bash
# Create a Security Group that allows SSH from anywhere
SG_ID=$(aws ec2 create-security-group \
  --group-name lab-sg --description "Lab SG" --vpc-id $VPC_ID \
  --query 'GroupId' --output text)
aws ec2 authorize-security-group-ingress --group-id $SG_ID \
  --protocol tcp --port 22 --cidr 0.0.0.0/0

# Create a NACL that blocks all traffic on port 22 inbound
NACL_ID=$(aws ec2 create-network-acl --vpc-id $VPC_ID \
  --tag-specifications 'ResourceType=network-acl,Tags=[{Key=Name,Value=block-ssh}]' \
  --query 'NetworkAcl.NetworkAclId' --output text)

# DENY rule 100: block TCP 22 inbound
aws ec2 create-network-acl-entry --network-acl-id $NACL_ID \
  --ingress --rule-number 100 --protocol tcp \
  --rule-action deny --cidr-block 0.0.0.0/0 \
  --port-range From=22,To=22

# ALLOW rule 200: allow everything else inbound
aws ec2 create-network-acl-entry --network-acl-id $NACL_ID \
  --ingress --rule-number 200 --protocol -1 \
  --rule-action allow --cidr-block 0.0.0.0/0

# Also need outbound rules (NACLs are stateless)
aws ec2 create-network-acl-entry --network-acl-id $NACL_ID \
  --egress --rule-number 100 --protocol -1 \
  --rule-action allow --cidr-block 0.0.0.0/0

# Associate this NACL with the public subnet
aws ec2 get-network-acl-associations --filters Name=subnet-id,Values=$PUB_SUBNET \
  --query 'NetworkAclAssociations[0].NetworkAclAssociationId' --output text
# Then replace the association with your new NACL
```

Observe: Even though the Security Group allows SSH, the NACL DENY causes SSH to fail. This proves NACL evaluation happens at subnet ingress — before the packet reaches the instance and its SG.

---

## Troubleshooting Guide

| Symptom | Most Likely Cause | Diagnostic Step | Fix |
|---|---|---|---|
| Instance in public subnet not reachable via SSH | No IGW attached, no public IP, or SG blocks port 22 | Check `aws ec2 describe-internet-gateways`, confirm public IP assigned, check SG ingress | Attach IGW, assign EIP, add SG rule |
| Private instance cannot reach internet | No NAT Gateway, or private route table missing 0.0.0.0/0 route | `aws ec2 describe-route-tables --filters Name=association.subnet-id,Values=<subnet>` | Add NAT GW route to private route table |
| Traffic blocked despite correct SG rules | NACL DENY rule or missing NACL egress rule (NACLs are stateless) | `aws ec2 describe-network-acls --filters Name=association.subnet-id,Values=<subnet>` | Add NACL allow rule for both inbound and ephemeral-range outbound |
| Instances in same VPC cannot communicate | Source/destination routes missing, or SG rules don't allow VPC CIDR | Verify local VPC route exists in route table; check SG allows VPC CIDR as source | Ensure local route exists; update SG to allow VPC CIDR |
| Connection times out vs connection refused | Timeout = network-level block (SG/NACL/route missing). Refused = port not listening | Use VPC Reachability Analyzer for path analysis | Fix the network layer first, then verify application |
| NAT Gateway charges higher than expected | Single NAT GW across AZs (cross-AZ data transfer fees) | Check CloudWatch `BytesOutToDestination` per NAT GW; count AZs in use | Deploy one NAT GW per AZ |
| IPv6 outbound works but inbound doesn't | EOIGW only allows outbound; no inbound IPv6 from internet | Confirm route table uses EOIGW for ::/0 | Use IGW for public-facing IPv6 instances; EOIGW for private outbound-only |
| ENI detach operation fails | ENI is the primary ENI or instance is running | Check instance state and ENI attachment type (primary vs secondary) | Stop instance before detaching primary ENI; detach secondary ENIs while running |

---

## Quick Revision Sheet

- **VPC** = regional isolation boundary; subnets are per-AZ
- **Public subnet** = subnet whose route table has 0.0.0.0/0 → IGW AND instance has public IP
- **Private subnet** = no internet route, or 0.0.0.0/0 → NAT GW
- **IGW** = VPC-level, free, bidirectional internet for instances with public IPs
- **NAT GW** = AZ-scoped, outbound-only for private instances; costs per hour + per GB
- **SG** = stateful, workload-level (ENI), allow-only, supports SG-ID references
- **NACL** = stateless, subnet-level, numbered rules, explicit DENY at end, must write both directions
- **ENI** = network identity anchor; primary ENI per instance; secondary ENIs can be moved
- **Source/dest check** = must disable on NAT instances and routing appliances
- **Local route** = implicit, covers entire VPC CIDR, always present, cannot be removed
- **CIDR planning** = permanent decision; use /16 per VPC, /24 per subnet as starting point
- **IPv6** = always public; use EOIGW for private outbound-only IPv6; dual-stack needs rules for both families

## How To Use This File
1. Read the theory sections first so the service or platform model is clear before you touch the console.
2. Work through the hands-on modules in order and record what the platform proves versus what you only assumed.
3. Compare the AWS pattern with Azure and GCP when possible so the idea becomes cloud-portable.
4. Use the troubleshooting table when behavior is confusing instead of guessing from one console view.
5. Revisit the quick revision sheet before a design review, exam session, or migration plan.

## Theoretical Notes

### 1. VPC Mental Model

VPC Mental Model sets the boundary for vpc core, because it explains what the platform owns, what the operator owns, and where the first failure usually appears. When that boundary is fuzzy, teams tend to misread symptoms and make design choices in vpc core that solve the wrong problem. In practice, the durable way to learn vpc core is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 2. Core Addressing and Segmentation

Core Addressing and Segmentation matter because they determine how the control plane, data path, and identity or addressing model actually work inside vpc core. Understanding those building blocks makes it easier to compare AWS behavior with Azure and GCP instead of memorizing vendor-specific wording. In practice, the durable way to learn vpc core is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 3. Baseline Traffic Controls

Baseline Traffic Controls are where scale, resilience, and governance turn basic feature knowledge into durable system design for vpc core. This is usually the part of the topic that separates a passing lab from a design that still behaves well under real traffic and operator pressure. In practice, the durable way to learn vpc core is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 4. Observability is part of the network design

Vpc core is only trustworthy when the team can prove what path traffic takes and which layer is allowed to change that path. Without those signals, networking problems inside vpc core often masquerade as random application or infrastructure failures. In practice, the durable way to learn vpc core is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 5. Cross-cloud mapping keeps the boundary clear

Mapping vpc core to Azure and GCP helps separate the underlying networking concept from the AWS product packaging around it. That usually makes both troubleshooting and migration planning easier because the real control surface stays visible. In practice, the durable way to learn vpc core is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 6. Cross-Cloud Mental Map

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Private virtual network boundary | VPC | Virtual Network | VPC Network |
| Address segmentation | Subnets and route tables | Subnets and route tables | Subnets and routes |
| Outbound internet pattern | IGW plus NAT Gateway | Internet plus NAT Gateway | Cloud NAT plus internet gateway path |
| Instance network identity | ENI and Elastic IP | NIC and Public IP | NIC and external IP |
| Traffic boundary enforcement | Security Groups and NACLs | NSG and subnet rules | Firewall rules and policy controls |

## Hands-On Activity Guide

### Prerequisites and Safety Rules
- Use a sandbox account or non-production subscription and set a budget alert before creating resources.
- Keep naming, tagging, and cleanup disciplined so you can remove every lab artifact after practice.
- Prefer the smallest viable instances or service tiers unless the learning goal specifically depends on scale.
- Record both the intended design and the first thing that contradicted your expectation.

### Module 1: VPC Mental Model

**Goal:** Turn vpc mental model for vpc core into one observable and repeatable workflow.

1. Review the vpc mental model section in the curated raw material for VPC Core.
2. Build or diagram one small AWS scenario that proves the core behavior behind vpc mental model.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 2: Core Addressing and Segmentation

**Goal:** Turn core addressing and segmentation for vpc core into one observable and repeatable workflow.

1. Review the core addressing and segmentation section in the curated raw material for VPC Core.
2. Build or diagram one small AWS scenario that proves the core behavior behind core addressing and segmentation.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 3: Baseline Traffic Controls

**Goal:** Turn baseline traffic controls for vpc core into one observable and repeatable workflow.

1. Review the baseline traffic controls section in the curated raw material for VPC Core.
2. Build or diagram one small AWS scenario that proves the core behavior behind baseline traffic controls.
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
| Behavior contradicts the vpc core model | The intended control boundary was never translated into a concrete policy, route, identity path, or recovery signal | Re-check the mental model, then inspect the first control plane, data plane, and evidence source that should prove it |

## Quick Revision Sheet
- Decide what boundary or path vpc core is supposed to control before you add more routes, policies, or services.
- Decide how identity, DNS, and routing assumptions should be documented around vpc core.
- Decide which layer should own reachability, security, and failover behavior in vpc core.
- Decide which telemetry proves that vpc core is working as designed instead of only appearing configured.
- Keep the mental model for vpc core tied to observable signals instead of memorized labels.

## Self-Check Questions
1. What is the primary control boundary in vpc core, and how would you explain it to a teammate?
2. Which failure mode would appear first if the design assumption were wrong?
3. What signal, log, or metric would you inspect before changing the architecture under pressure?
4. Which Azure or GCP equivalent helps confirm that you understand the concept rather than only the product name?
5. What part of this topic would become the hardest to operate at scale if left implicit?
