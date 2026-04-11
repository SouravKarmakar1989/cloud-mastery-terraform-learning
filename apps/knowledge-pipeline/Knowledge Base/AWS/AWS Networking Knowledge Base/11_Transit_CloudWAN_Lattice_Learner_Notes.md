# Transit CloudWAN Lattice Learner Notes

This file is a learner-first companion to `11_Transit_CloudWAN_Lattice.md`.
It is structured as topic-specific theory notes, a hands-on activity guide, and closing revision material so the raw knowledge base becomes easier to study and reuse.

Source authority: 31 processed source files, 2912 extracted non-empty transcript lines. The architect-level concepts are drawn directly from the curated primary knowledge base for this topic.

## How To Use This File
1. Read TGW concepts first — Cloud WAN and Lattice are both extensions of the transit concept but at different scope.
2. Focus on TGW route table design as the foundation for all segmentation patterns.
3. Use the cross-cloud table to map transit patterns to Azure Virtual WAN and GCP Network Connectivity Center.
4. Use the troubleshooting table when TGW routes are not propagating or Lattice services are unreachable.
5. Revisit the quick revision sheet before landing zone or multi-account network architecture design sessions.

---

## Theoretical Notes

### 1. The Case for Managed Transit

When an AWS environment grows beyond a handful of VPCs, the n*(n-1)/2 cost of maintaining full-mesh VPC peering becomes unmanageable — both in terms of connection count and route table complexity. A 20-VPC environment would require up to 190 peering connections and 190 route table entries per VPC. Transit Gateway eliminates this by introducing a centralized router that all VPCs connect to, reducing connection count to n and route management to a single hub.

The shift from full-mesh peering to Transit Gateway is not just an operational convenience — it changes the governance model. With full-mesh peering, every team who needs connectivity negotiates bilateral agreements with every other team. With TGW, the networking team owns a single router with explicit routing domains, and other teams request attachment to the appropriate domain. Centralized control enables consistent policy, easier audit, and cleaner segmentation.

The critical design question for TGW: what is the segmentation model? A single TGW with all VPCs in the same route table provides full connectivity but no isolation. Multiple route tables with selective propagation enable complex segmentation: shared-services VPCs reachable from all domains, production and dev isolated from each other, hub-and-spoke with centralized inspection.

---

### 2. Transit Gateway Route Tables: The Segmentation Mechanism

Every TGW has a default route table. Attachments (VPC attachments, VPN connections, DX Gateway associations) are associated with one route table (determines which routes they can route TO) and may propagate routes into one or more route tables (determines which routing domains can route TOWARD this attachment).

**Segmentation example — prod/dev isolation with shared services:**
- Create three route tables: `shared-rt`, `prod-rt`, `dev-rt`
- Shared Services VPC attachment: propagates routes into `prod-rt` AND `dev-rt`; associated with `shared-rt` (can reach everyone)
- Prod VPC attachments: propagate into `prod-rt` and `shared-rt`; associated with `prod-rt` (can only reach prod and shared-services, not dev)
- Dev VPC attachments: propagate into `dev-rt` and `shared-rt`; associated with `dev-rt` (can only reach dev and shared-services, not prod)

This three-route-table design lets all VPCs reach shared services but prevents prod and dev from reaching each other — without any instance-level controls needed.

**Appliance mode:** when a TGW attachment has appliance mode enabled, the TGW ensures that both forward and return flows of a TCP connection go through the same AZ in the appliance VPC. Without appliance mode, return traffic may take a different AZ path than forward traffic, causing stateful inspection appliances to see only one direction of a flow and misidentify it as an attack.

---

### 3. Advanced TGW Patterns

**Centralized Egress:** all VPCs send default route traffic (0.0.0.0/0) to TGW, which routes it to a central Egress VPC that contains the NAT Gateways and (optionally) a Network Firewall inspection tier. Benefit: single NAT Gateway pool, centralized egress policy, reduced per-VPC costs. Tradeoff: the Egress VPC becomes a critical path — failure there affects all VPC outbound internet access.

**Centralized Interface Endpoints:** create Interface Endpoints for common AWS services (SQS, S3, etc.) in a single shared-services VPC, and route all VPC DNS queries through a Resolver endpoint in that VPC. With TGW, all spoke VPCs can reach the shared Interface Endpoints without each VPC paying for its own per-AZ endpoint ENIs.

**TGW Connect:** supports GRE (Generic Routing Encapsulation) with BGP, enabling SD-WAN appliances and network appliances to connect to TGW with dynamic routing and multiple BGP sessions. Bandwidth up to 20 Gbps per Connect peer. Connect attachments sit on top of an underlying VPC or DX attachment.

**Inter-region TGW peering:** TGWs in different regions can be peered, creating a global transit backbone. Traffic between regions travels over AWS backbone via the inter-region TGW peering attachment. Static routes are required (no BGP on inter-region TGW peering, unlike TGW Connect).

---

### 4. AWS Cloud WAN: Global Network Fabric

Cloud WAN is an AWS-managed global network service that extends the TGW concept into a global, policy-driven fabric. Where TGW is a regional construct (single region), Cloud WAN creates a global network manager that spans multiple regions and can incorporate TGW attachments, Direct Connect locations, and VPCs directly.

Cloud WAN segments are route domains — analogous to TGW route tables but defined in a global network policy document (JSON). Segment routing defines which segments can communicate. The policy is versioned and can be updated atomically — a network change is a policy version bump, enabling review-and-apply governance of global network changes.

Key concepts: **Core Network** = the global backbone managed by Cloud WAN; **Network Policy** = JSON document defining segments, attachment rules, and routing; **Core Network Edge** = per-region presence of the core network; **Attachments** = VPCs, TGWs, DX GW associations connected to the core network.

Use Cloud WAN when: you have VPCs and connectivity across 3+ regions that need consistent segmentation policy, you're managing a large enterprise network that needs policy-version control, or you want to replace a per-region TGW mesh with a unified global fabric.

---

### 5. VPC Lattice: Service-to-Service Networking

VPC Lattice solves a different problem than TGW or Cloud WAN. TGW and Cloud WAN handle network-level routing (IP packets between VPCs). VPC Lattice handles service-level connectivity (service A calls service B's API) across VPCs and accounts — with built-in authentication, authorization, observability, and discovery — without requiring teams to manage network routes, security groups, or DNS for inter-service communication.

VPC Lattice components:
- **Service Network** — a logical grouping of services and VPCs. A VPC that is associated with a service network can reach all services published to that network.
- **Service** — represents a deployed application (backed by EC2, Lambda, or container targets). Each service has a stable DNS name (lattice-managed FQDN). Services are published to service networks.
- **Service Directory** — the catalog of published services.
- **Auth Policy** — IAM-style policy on a service defining which principals (IAM roles, AWS accounts) can call the service. Enables zero-trust access control without network-level rules.

The key shift: instead of "can VPC A route to VPC B's subnet?", the question becomes "can service A's Lambda execution role call service B's read API?" Network plumbing (routing, DNS, endpoints) is abstracted away. This is what enables platform teams to provide service connectivity as a managed capability without involving network engineers in every cross-team API integration.

---

### 6. Cross-Cloud Mental Map

| Concept | AWS | Azure | GCP |
|---|---|---|---|
| Regional hub router | Transit Gateway | Azure VPN Gateway / Virtual Hub | Cloud Router (NCC Hub) |
| Global managed WAN | Cloud WAN | Azure Virtual WAN | Network Connectivity Center |
| Segmented routing domains | TGW route tables | VNet Hub segments | NCC route groups |
| Service-to-service networking | VPC Lattice | Azure Service Fabric / API Management | Anthos Service Mesh / Apigee |
| Centralized IPS/egress | TGW + Inspection VPC + GWLB | Azure Firewall Hub | Cloud intrusion detection (IDS/IPS) |
| SD-WAN integration | TGW Connect (GRE/BGP) | vWAN SD-WAN Partners | SD-WAN Partner Interconnect |

---

## Hands-On Activity Guide

### Prerequisites
- Two or more VPCs in the same region.
- AWS CLI configured with EC2 and TGW permissions.
- Optionally: a third VPC to serve as shared services hub.

---

### Lab 1: Create TGW and Attach Two VPCs with Full Connectivity

```bash
# 1. Create Transit Gateway
TGW_ID=$(aws ec2 create-transit-gateway \
  --description "Lab TGW" \
  --options DefaultRouteTableAssociation=enable,DefaultRouteTablePropagation=enable \
  --tag-specifications 'ResourceType=transit-gateway,Tags=[{Key=Name,Value=lab-tgw}]' \
  --query 'TransitGateway.TransitGatewayId' --output text)

echo "TGW: $TGW_ID"
aws ec2 wait transit-gateway-available --transit-gateway-ids $TGW_ID

# 2. Create VPC attachment for VPC A
ATTACH_A=$(aws ec2 create-transit-gateway-vpc-attachment \
  --transit-gateway-id $TGW_ID \
  --vpc-id $VPC_A_ID \
  --subnet-ids $VPC_A_SUBNET_AZ1 $VPC_A_SUBNET_AZ2 \
  --query 'TransitGatewayVpcAttachment.TransitGatewayAttachmentId' --output text)

# 3. Create VPC attachment for VPC B
ATTACH_B=$(aws ec2 create-transit-gateway-vpc-attachment \
  --transit-gateway-id $TGW_ID \
  --vpc-id $VPC_B_ID \
  --subnet-ids $VPC_B_SUBNET_AZ1 \
  --query 'TransitGatewayVpcAttachment.TransitGatewayAttachmentId' --output text)

# 4. Add routes in each VPC's route table pointing to TGW
aws ec2 create-route --route-table-id $VPC_A_RT \
  --destination-cidr-block 10.1.0.0/16 \
  --transit-gateway-id $TGW_ID

aws ec2 create-route --route-table-id $VPC_B_RT \
  --destination-cidr-block 10.0.0.0/16 \
  --transit-gateway-id $TGW_ID

# 5. Verify route propagation in TGW default route table
aws ec2 describe-transit-gateway-route-tables \
  --filters Name=transit-gateway-id,Values=$TGW_ID
```

---

### Lab 2: Create Isolated Route Tables for Segmentation

```bash
# 1. Create custom route tables for prod and dev segmentation
PROD_RT=$(aws ec2 create-transit-gateway-route-table \
  --transit-gateway-id $TGW_ID \
  --tag-specifications 'ResourceType=transit-gateway-route-table,Tags=[{Key=Name,Value=prod-rt}]' \
  --query 'TransitGatewayRouteTable.TransitGatewayRouteTableId' --output text)

DEV_RT=$(aws ec2 create-transit-gateway-route-table \
  --transit-gateway-id $TGW_ID \
  --tag-specifications 'ResourceType=transit-gateway-route-table,Tags=[{Key=Name,Value=dev-rt}]' \
  --query 'TransitGatewayRouteTable.TransitGatewayRouteTableId' --output text)

# 2. Associate prod VPC attachment with prod-rt
aws ec2 associate-transit-gateway-route-table \
  --transit-gateway-route-table-id $PROD_RT \
  --transit-gateway-attachment-id $ATTACH_PROD

# 3. Enable propagation so prod VPC routes appear in prod-rt
aws ec2 enable-transit-gateway-route-table-propagation \
  --transit-gateway-route-table-id $PROD_RT \
  --transit-gateway-attachment-id $ATTACH_PROD

# Dev VPC routes should NOT propagate into prod-rt = isolation
# Prod VPC routes should NOT propagate into dev-rt = isolation
# Shared Services VPC propagates into BOTH prod-rt and dev-rt

# 4. Verify route tables
aws ec2 search-transit-gateway-routes \
  --transit-gateway-route-table-id $PROD_RT \
  --filters Name=type,Values=propagated
```

---

## Troubleshooting Guide

| Symptom | Most Likely Cause | Diagnostic Step | Fix |
|---|---|---|---|
| TGW attachment created but cross-VPC traffic fails | VPC route tables missing a route to TGW, or TGW route table missing propagated route | Check VPC route table for TGW entry; check TGW route table for destination CIDR | Add missing routes in VPC RT; enable propagation in TGW RT |
| TGW route shows but traffic still drops | SG on destination instances not allowing source VPC CIDR | Run Reachability Analyzer; check SG rules on target | Add SG rule allowing source VPC CIDR |
| Appliance inspection showing only one-direction traffic | Appliance mode not enabled on TGW attachment | `aws ec2 describe-transit-gateway-vpc-attachments` — check `ApplianceModeSupport` | Modify attachment to enable appliance mode |
| Lattice service returns 403 | Auth policy on Lattice service blocking caller principal | Check Lattice service auth policy for calling IAM role/account | Add the calling principal to the Lattice auth policy |
| Lattice service DNS not resolving | VPC not associated with the Service Network | Check Service Network associations | Associate the calling VPC with the Service Network |
| Cloud WAN segment isolation not working | Policy not applied or attachment in wrong segment | Check Cloud WAN policy version and attachment segment assignment | Update policy to assign attachment to correct segment |
| ECMP on TGW not balancing across multiple paths | Flows hash to same path due to 5-tuple alignment | Check `aws ec2 describe-transit-gateway-route-tables` for equal-cost routes | ECMP is per-flow; uneven balance is normal for small flow counts |
| DX attachment routes not propagating to TGW RT | Transit VIF not associated with DXGW, or DXGW not associated with TGW | Check DXGW association with TGW: `aws directconnect describe-direct-connect-gateway-attachments` | Complete DXGW → TGW association; check BGP session |

---

## Quick Revision Sheet

- **TGW** = regional hub router; replaces n*(n-1)/2 peering with n attachments
- **TGW route table** = segmentation mechanism; one TGW can have multiple route tables
- **Association** = attachment looks up routes in this table (outbound routing)
- **Propagation** = attachment injects its CIDR into this table (makes it reachable)
- **Appliance mode** = ensures symmetric forward/return flows through same-AZ appliance
- **TGW Connect** = GRE + BGP for SD-WAN; up to 20 Gbps per peer
- **Inter-region TGW peering** = static routes; backbone transport; no BGP between regions
- **Cloud WAN** = global, policy-versioned network fabric; extends TGW concept globally
- **Cloud WAN segment** = global routing domain equivalent to TGW route table
- **VPC Lattice** = service-level networking; abstracted DNS + auth policy + observability
- **Lattice Service Network** = scope of services and VPCs that can reach each other
- **Lattice Auth Policy** = IAM-style policy controlling who can call a service
- **Centralized egress** = all VPCs send 0.0.0.0/0 to TGW → Egress VPC → NAT GW + inspection

## How To Use This File
1. Read the theory sections first so the service or platform model is clear before you touch the console.
2. Work through the hands-on modules in order and record what the platform proves versus what you only assumed.
3. Compare the AWS pattern with Azure and GCP when possible so the idea becomes cloud-portable.
4. Use the troubleshooting table when behavior is confusing instead of guessing from one console view.
5. Revisit the quick revision sheet before a design review, exam session, or migration plan.

## Theoretical Notes

### 1. Transit Mental Model

Transit Mental Model sets the boundary for transit cloudwan lattice, because it explains what the platform owns, what the operator owns, and where the first failure usually appears. When that boundary is fuzzy, teams tend to misread symptoms and make design choices in transit cloudwan lattice that solve the wrong problem. In practice, the durable way to learn transit cloudwan lattice is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 2. Global Network Control

Global Network Control matter because they determine how the control plane, data path, and identity or addressing model actually work inside transit cloudwan lattice. Understanding those building blocks makes it easier to compare AWS behavior with Azure and GCP instead of memorizing vendor-specific wording. In practice, the durable way to learn transit cloudwan lattice is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 3. Service-Network Abstraction

Service-Network Abstraction are where scale, resilience, and governance turn basic feature knowledge into durable system design for transit cloudwan lattice. This is usually the part of the topic that separates a passing lab from a design that still behaves well under real traffic and operator pressure. In practice, the durable way to learn transit cloudwan lattice is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 4. Observability is part of the network design

Transit cloudwan lattice is only trustworthy when the team can prove what path traffic takes and which layer is allowed to change that path. Without those signals, networking problems inside transit cloudwan lattice often masquerade as random application or infrastructure failures. In practice, the durable way to learn transit cloudwan lattice is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 5. Cross-cloud mapping keeps the boundary clear

Mapping transit cloudwan lattice to Azure and GCP helps separate the underlying networking concept from the AWS product packaging around it. That usually makes both troubleshooting and migration planning easier because the real control surface stays visible. In practice, the durable way to learn transit cloudwan lattice is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 6. Cross-Cloud Mental Map

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Regional transit core | Transit Gateway | Virtual WAN hub | Network Connectivity Center |
| Global WAN policy layer | Cloud WAN | Virtual WAN global routing | Global network management via NCC patterns |
| Service-to-service network | VPC Lattice | Application routing meshes and private link patterns | Service directory plus PSC and mesh patterns |
| Segmented route domains | TGW route tables and Cloud WAN segments | Hub route domains and secured virtual hubs | Segmented hub and spoke policies |
| Application-network decoupling | Lattice auth and service discovery | Private app access patterns | Managed service networking plus service mesh |

## Hands-On Activity Guide

### Prerequisites and Safety Rules
- Use a sandbox account or non-production subscription and set a budget alert before creating resources.
- Keep naming, tagging, and cleanup disciplined so you can remove every lab artifact after practice.
- Prefer the smallest viable instances or service tiers unless the learning goal specifically depends on scale.
- Record both the intended design and the first thing that contradicted your expectation.

### Module 1: Transit Mental Model

**Goal:** Turn transit mental model for transit cloudwan lattice into one observable and repeatable workflow.

1. Review the transit mental model section in the curated raw material for Transit CloudWAN Lattice.
2. Build or diagram one small AWS scenario that proves the core behavior behind transit mental model.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 2: Global Network Control

**Goal:** Turn global network control for transit cloudwan lattice into one observable and repeatable workflow.

1. Review the global network control section in the curated raw material for Transit CloudWAN Lattice.
2. Build or diagram one small AWS scenario that proves the core behavior behind global network control.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 3: Service-Network Abstraction

**Goal:** Turn service-network abstraction for transit cloudwan lattice into one observable and repeatable workflow.

1. Review the service-network abstraction section in the curated raw material for Transit CloudWAN Lattice.
2. Build or diagram one small AWS scenario that proves the core behavior behind service-network abstraction.
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
| Behavior contradicts the transit cloudwan lattice model | The intended control boundary was never translated into a concrete policy, route, identity path, or recovery signal | Re-check the mental model, then inspect the first control plane, data plane, and evidence source that should prove it |

## Quick Revision Sheet
- Decide what boundary or path transit cloudwan lattice is supposed to control before you add more routes, policies, or services.
- Decide how identity, DNS, and routing assumptions should be documented around transit cloudwan lattice.
- Decide which layer should own reachability, security, and failover behavior in transit cloudwan lattice.
- Decide which telemetry proves that transit cloudwan lattice is working as designed instead of only appearing configured.
- Keep the mental model for transit cloudwan lattice tied to observable signals instead of memorized labels.

## Self-Check Questions
1. What is the primary control boundary in transit cloudwan lattice, and how would you explain it to a teammate?
2. Which failure mode would appear first if the design assumption were wrong?
3. What signal, log, or metric would you inspect before changing the architecture under pressure?
4. Which Azure or GCP equivalent helps confirm that you understand the concept rather than only the product name?
5. What part of this topic would become the hardest to operate at scale if left implicit?
