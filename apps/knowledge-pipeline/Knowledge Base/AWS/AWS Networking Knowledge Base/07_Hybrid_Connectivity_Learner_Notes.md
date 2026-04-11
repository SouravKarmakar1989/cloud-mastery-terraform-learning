# Hybrid Connectivity Learner Notes

This file is a learner-first companion to `07_Hybrid_Connectivity.md`.
It is structured as topic-specific theory notes, a hands-on activity guide, and closing revision material so the raw knowledge base becomes easier to study and reuse.

Source authority: 55 processed source files, 4453 extracted non-empty transcript lines. The architect-level concepts are drawn directly from the curated primary knowledge base for this topic.

## How To Use This File
1. Read the theory sections in order — hybrid connectivity requires understanding BGP before Direct Connect patterns make sense.
2. Work through the labs paying attention to the CGW, VGW, and tunnel pre-shared key configuration steps.
3. Use the routing control section to understand how BGP attributes manipulate path selection in hybrid scenarios.
4. Use the troubleshooting table when VPN tunnels come up but traffic doesn't flow, or when DX failover doesn't work.
5. Revisit the quick revision sheet before designing multi-site or large-scale enterprise connectivity architectures.

---

## Theoretical Notes

### 1. Hybrid Networking is a Routing-Governance Problem

A hybrid network is any architecture where AWS VPCs must exchange traffic with environments not owned by AWS — on-premises data centers, branch offices, remote users, or co-location facilities. The challenge is not technical feasibility (multiple connectivity options exist) but governance: who controls the routing, how is path selection determined in failure states, and how is encryption handled in transit.

The mental model for hybrid connectivity has three dimensions: (a) connectivity class — encrypted tunnel (VPN), dedicated private link (Direct Connect), or user-agent access (Client VPN); (b) routing model — static routes (simple, fragile at scale) or dynamic BGP (adaptive, scalable, complex to configure correctly); (c) resilience design — what is the active path configuration and what happens under each failure mode. All three dimensions must be explicitly designed before provisioning begins.

---

### 2. BGP: The Policy Engine Behind Scalable Hybrid Routing

BGP (Border Gateway Protocol) is the routing protocol that enables dynamic route exchange between AWS and on-premises environments. Understanding BGP is prerequisite knowledge for Direct Connect and for understanding why complex hybrid routing fails in unexpected ways.

BGP uses Autonomous System Numbers (ASNs). Each BGP peer has an ASN. AWS has its own ASN (7224 for VGW by default, but configurable with TGW); your on-premises router must have an ASN. BGP peers exchange reachability information (NLRI — Network Layer Reachability Information) and select best paths using a series of attribute comparisons.

Key BGP path selection attributes relevant to AWS hybrid routing:

**LOCAL_PREF** — higher value is preferred. Set on the receiving side. Used to influence which path outbound traffic (leaving on-premises to AWS) takes. To prefer Direct Connect over VPN: set LOCAL_PREF higher for DX-learned routes. AWS cannot set LOCAL_PREF for traffic entering AWS from on-premises.

**AS_PATH** — shorter path is preferred. Prepend AS numbers to make a path look longer and less attractive. Used by AWS (and by on-premises) to influence inbound traffic direction. To make on-premises prefer sending traffic via DX instead of VPN: prepend extra ASNs in the VPN route advertisements so the AS_PATH is longer.

**MED (Multi-Exit Discriminator)** — lower value is preferred. Used between the same two AS neighbors to suggest a preferred entry point. AWS uses MED to signal preferred entry for traffic returning from on-premises.

**BGP communities** on Direct Connect allow AWS to signal propagation scope: whether a route advertised from on-premises should propagate to a single region, all AWS regions, or all AWS global infrastructure.

---

### 3. Site-to-Site VPN: Encrypted Tunnel Establishment

AWS Site-to-Site VPN creates encrypted IPsec tunnels between an on-premises Customer Gateway (CGW) and an AWS Virtual Private Gateway (VGW) or Transit Gateway (TGW). Each VPN connection creates two tunnels for redundancy — both tunnels are active simultaneously (active-active with BGP, or active-passive with static routing).

Configuration components: (a) **Customer Gateway (CGW)** — an AWS resource that represents the on-premises VPN device. Contains the device's public IP and optionally its BGP ASN. (b) **Virtual Private Gateway (VGW)** — an AWS-managed VPN endpoint attached to a single VPC. Supports static and dynamic (BGP) routing. (c) **Transit Gateway attachment** — for connecting VPN to TGW instead of a single VPC; allows VPN to reach multiple VPCs.

VPN tunnel parameters: IKE version (IKEv1 or IKEv2 preferred), encryption algorithm (AES-256-GCM recommended), DH group, pre-shared key. AWS generates the configuration automatically and provides downloadable config files for major vendor devices. The two tunnels have different endpoints on the AWS side — the on-premises device must have routes to both for full redundancy.

**Accelerated Site-to-Site VPN** uses Global Accelerator technology to route VPN traffic over the AWS backbone from the nearest edge PoP, reducing latency and jitter compared to standard VPN (which traverses the public internet fully). Enabled at VPN connection creation time and costs more per hour. Useful when VPN is the primary (not just backup) hybrid path.

---

### 4. Direct Connect: Dedicated Private Transport

Direct Connect (DX) is a dedicated physical network connection from an on-premises data center to an AWS Direct Connect location (colocation facility). Unlike VPN, DX does not traverse the public internet — it uses a dedicated cross-connect from your router to an AWS router in the DX facility, providing consistent bandwidth, predictable latency, and lower per-GB transfer cost for high-volume workloads.

Connection types: **Dedicated connection** (1G or 10G, 100G at some locations) — physical port on an AWS router, ordered through the console, typically takes weeks to provision as the physical cross-connect must be installed. **Hosted connection** — a sub-1G or variable-capacity connection provisioned by a DX partner, available faster and in smaller increments (50Mbps, 100Mbps, etc.).

Virtual Interfaces (VIFs) are configured on top of a DX connection. Each VIF is an 802.1Q VLAN:
- **Private VIF** — connects to a VPC via VGW or TGW. Traffic stays private. Limit of 50 private VIFs per DX connection.
- **Public VIF** — connects to AWS public service endpoints (S3, EC2 API, CloudFront origins). Announces all AWS public IP ranges (not just a specific region). No encryption by default.
- **Transit VIF** — connects to a Direct Connect Gateway (DXGW), which then connects to multiple TGWs (and therefore multiple VPCs across regions).

Direct Connect Gateway (DXGW) decouples the DX connection from a specific VPC or region. One DXGW can connect to TGWs in up to six AWS regions, enabling a single DX connection to provide connectivity to a global AWS footprint.

---

### 5. Direct Connect Resilience Patterns

DX is a physical link with physical failure modes. AWS recommends specific resilience patterns depending on SLA requirements:

**Maximum Resiliency** — two DX connections from two separate DX locations (different DX facility buildings), with each connection terminating on a different AWS device. Protects against device failure, network failure, and facility failure. Best practice for SLA-critical workloads.

**High Resiliency** — two DX connections from the same DX location (different devices). Protects against device failure but not facility failure. Suitable for most enterprise workloads.

**Development/Test** — single DX connection with VPN as backup. The VPN is always running; BGP attributes are configured so DX-learned routes have preference over VPN routes. When DX fails, BGP on-premises automatically prefers the VPN routes.

**DX + VPN encryption** — DX Public VIF naturally provides low-latency private transport, but it is not encrypted (traffic could be inspected in the DX facility). For encrypted DX, two options: (a) run IPsec VPN over a Public VIF (VPN over DX) — provides encryption with DX latency characteristics; (b) **MACsec** — Layer 2 link encryption at the physical port level; supported on dedicated 10G and 100G DX connections; provides wire-speed encryption without the TCP overhead of IPsec.

---

### 6. AWS Client VPN: Workforce Remote Access

AWS Client VPN is a managed OpenVPN-compatible service for remote user access to VPCs. Unlike Site-to-Site VPN (which connects network segments), Client VPN connects individual user devices to a VPC using the OpenVPN client.

Authentication options: AWS IAM Identity Center (SSO), Active Directory (Microsoft AD), or certificate-based mutual TLS. Each connected user gets an IP address from a client IP CIDR range that you define. Client VPN endpoint attachments specify which VPC subnets are reachable.

Split tunneling controls whether all user internet traffic goes through the VPN (full tunnel — more control, more bandwidth, more cost) or only traffic destined for VPC resources (split tunnel — VPC traffic via VPN, internet traffic via local connection directly). Split tunneling is recommended for cost and performance unless compliance requires full tunneling.

Client VPN is charged per endpoint per hour plus per connection hour — it scales to thousands of users but becomes expensive as connection hours accumulate. For large deployments, evaluate whether AWS CloudFront + ALB with Cognito authentication serves the use case instead.

---

### 7. Cross-Cloud Mental Map

| Concept | AWS | Azure | GCP |
|---|---|---|---|
| Site-to-site encrypted VPN | Site-to-Site VPN (IPsec) | VPN Gateway (IPsec) | Cloud VPN (IPsec) |
| Dedicated private connection | Direct Connect | ExpressRoute | Cloud Interconnect |
| Dedicated partner connection | DX Hosted Connection | ExpressRoute Partner | Partner Interconnect |
| BGP dynamic routing | BGP on VGW/TGW | BGP on VPN/ER GW | BGP on Cloud Router |
| Remote user VPN | AWS Client VPN (OpenVPN) | Azure VPN Gateway P2S | Cloud VPN (no managed client) |
| Multi-region connectivity | DX Gateway + TGW | Global ExpressRoute + Virtual WAN | Cloud Interconnect multi-region |

---

## Hands-On Activity Guide

### Prerequisites
- AWS account with permissions for VGW, CGW, VPN connections.
- An on-premises (or simulated) VPN device or strongSwan/OpenVPN on EC2.
- AWS CLI configured.

---

### Lab 1: Configure Site-to-Site VPN with BGP

```bash
# 1. Create Customer Gateway representing on-premises VPN device
CGW_ID=$(aws ec2 create-customer-gateway \
  --type ipsec.1 \
  --bgp-asn 65000 \
  --ip-address 203.0.113.1 \
  --tag-specifications 'ResourceType=customer-gateway,Tags=[{Key=Name,Value=onprem-cgw}]' \
  --query 'CustomerGateway.CustomerGatewayId' --output text)

# 2. Create Virtual Private Gateway and attach to VPC
VGW_ID=$(aws ec2 create-vpn-gateway \
  --type ipsec.1 \
  --amazon-side-asn 64512 \
  --query 'VpnGateway.VpnGatewayId' --output text)
aws ec2 attach-vpn-gateway --vpn-gateway-id $VGW_ID --vpc-id $VPC_ID

# 3. Enable route propagation from VGW to VPC route table
aws ec2 enable-vgw-route-propagation \
  --route-table-id $PRIV_RT \
  --gateway-id $VGW_ID

# 4. Create VPN connection
VPN_ID=$(aws ec2 create-vpn-connection \
  --type ipsec.1 \
  --customer-gateway-id $CGW_ID \
  --vpn-gateway-id $VGW_ID \
  --options StaticRoutesOnly=false \
  --query 'VpnConnection.VpnConnectionId' --output text)

# 5. Download configuration for your VPN device type
aws ec2 describe-vpn-connections --vpn-connection-ids $VPN_ID \
  --query 'VpnConnections[0].CustomerGatewayConfiguration' --output text
# (Parse the XML for tunnel IPs, pre-shared keys, and IKE settings)

# Monitor tunnel status
aws ec2 describe-vpn-connections --vpn-connection-ids $VPN_ID \
  --query 'VpnConnections[0].VgwTelemetry[*].[OutsideIpAddress,Status,StatusMessage]' \
  --output table
```

---

### Lab 2: Verify BGP Route Exchange over VPN

```bash
# After VPN tunnels come UP (both should be UP after on-premises config):
# On-premises router should advertise its local CIDR via BGP

# View routes propagated from VGW into VPC route table
aws ec2 describe-route-tables --route-table-ids $PRIV_RT \
  --query 'RouteTables[0].Routes[?Origin==`EnableVgwRoutePropagation`]'

# If routes appear with origin=EnableVgwRoutePropagation, BGP is working
# Test connectivity: ping an on-premises IP from a private EC2 instance
```

---

## Troubleshooting Guide

| Symptom | Most Likely Cause | Diagnostic Step | Fix |
|---|---|---|---|
| VPN tunnel DOWN (first time) | Firewall on-premises blocking IKE UDP 500/4500, or wrong PSK | Check on-premises firewall allows UDP 500 and 4500 to/from AWS tunnel endpoint IPs | Open firewall ports; verify PSK matches downloaded config |
| VPN tunnel UP but traffic fails | No route propagation, or SG not allowing on-premises CIDR | Check route table for propagated routes; check SG allows on-prem CIDR | Enable VGW route propagation; update SG to allow on-prem CIDR |
| Only one VPN tunnel UP | On-premises VPN device only supports one active tunnel | Both AWS tunnels should be configured; second is standby | Configure both tunnels on on-premises device |
| DX link UP but no VPC connectivity | No Private VIF, or VIF not associated with correct VGW/DXGW | `aws directconnect describe-virtual-interfaces` — check VIF state and association | Create Private VIF; associate to correct VGW |
| Routes not propagating from DX | BGP session not established or on-premises not advertising CIDR | Check DX VIF BGP status; verify on-premises BGP configuration | Fix BGP config; enable correct CIDR advertisement |
| DX fails over to VPN too slowly | BGP hold-down timer too long, or MED/LOCAL_PREF not configured | Check BGP timers; review BGP attribute configuration for failover path | Reduce BGP hold timers; pre-configure BGP attributes for immediate failover |
| Client VPN connected but can't reach VPC | Route table not added for VPC subnet, or SG blocking client CIDR | Check Client VPN routes in `aws ec2 describe-client-vpn-routes`; check SG | Add authorization rule and route to VPC CIDR in Client VPN |
| Accelerated VPN not reducing latency | Accelerated VPN not enabled (must be set at creation) | Check VPN connection option `EnableAcceleration` | Recreate VPN connection with acceleration enabled |

---

## Quick Revision Sheet

- **Site-to-Site VPN** = IPsec tunnels over internet; two tunnels per connection; active-active (BGP) or active-passive (static)
- **CGW** = AWS resource representing on-premises VPN device (IP + BGP ASN)
- **VGW** = AWS-managed VPN endpoint; attaches to one VPC; enables route propagation
- **TGW** = alternative VPN termination; connects VPN to multiple VPCs
- **Direct Connect** = dedicated physical link; no internet path; consistent bandwidth and latency
- **Private VIF** = DX → VPC; requires VLAN + VGW/DXGW
- **Public VIF** = DX → AWS public endpoints (S3, API); announces all AWS public IPs
- **Transit VIF** = DX → Direct Connect Gateway → TGW (multi-region/multi-VPC)
- **DX Gateway** = decouples DX from specific region; connects to TGWs in up to 6 regions
- **VPN over DX** = run IPsec over Public VIF for encryption on DX path
- **MACsec** = Layer 2 encryption on DX dedicated connection; wire-speed; 10G/100G only
- **BGP LOCAL_PREF** = prefer higher value; influences outbound path selection from on-premises
- **BGP AS_PATH prepend** = makes path look longer (less preferred); used to influence inbound direction
- **Client VPN** = OpenVPN for remote users; supports split tunneling to reduce bandwidth cost

## How To Use This File
1. Read the theory sections first so the service or platform model is clear before you touch the console.
2. Work through the hands-on modules in order and record what the platform proves versus what you only assumed.
3. Compare the AWS pattern with Azure and GCP when possible so the idea becomes cloud-portable.
4. Use the troubleshooting table when behavior is confusing instead of guessing from one console view.
5. Revisit the quick revision sheet before a design review, exam session, or migration plan.

## Theoretical Notes

### 1. Hybrid Mental Model

Hybrid Mental Model sets the boundary for hybrid connectivity, because it explains what the platform owns, what the operator owns, and where the first failure usually appears. When that boundary is fuzzy, teams tend to misread symptoms and make design choices in hybrid connectivity that solve the wrong problem. In practice, the durable way to learn hybrid connectivity is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 2. Routing and BGP Basics

Routing and BGP Basics matter because they determine how the control plane, data path, and identity or addressing model actually work inside hybrid connectivity. Understanding those building blocks makes it easier to compare AWS behavior with Azure and GCP instead of memorizing vendor-specific wording. In practice, the durable way to learn hybrid connectivity is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 3. Connectivity Classes

Connectivity Classes are where scale, resilience, and governance turn basic feature knowledge into durable system design for hybrid connectivity. This is usually the part of the topic that separates a passing lab from a design that still behaves well under real traffic and operator pressure. In practice, the durable way to learn hybrid connectivity is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 4. Observability is part of the network design

Hybrid connectivity is only trustworthy when the team can prove what path traffic takes and which layer is allowed to change that path. Without those signals, networking problems inside hybrid connectivity often masquerade as random application or infrastructure failures. In practice, the durable way to learn hybrid connectivity is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 5. Cross-cloud mapping keeps the boundary clear

Mapping hybrid connectivity to Azure and GCP helps separate the underlying networking concept from the AWS product packaging around it. That usually makes both troubleshooting and migration planning easier because the real control surface stays visible. In practice, the durable way to learn hybrid connectivity is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 6. Cross-Cloud Mental Map

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Encrypted hybrid path | Site-to-Site VPN | VPN Gateway | Cloud VPN |
| Dedicated circuit | Direct Connect | ExpressRoute | Dedicated or Partner Interconnect |
| Routing exchange | BGP over VGW or TGW attachments | BGP over VPN or ExpressRoute | Cloud Router and BGP |
| Branch and multi-site design | TGW-based hybrid fan-out | Virtual WAN hubs | NCC and hub-and-spoke patterns |
| Private service reachback | Interface endpoints and resolver forwarding | Private Endpoints and DNS forwarding | Private Service Connect and DNS policy |

## Hands-On Activity Guide

### Prerequisites and Safety Rules
- Use a sandbox account or non-production subscription and set a budget alert before creating resources.
- Keep naming, tagging, and cleanup disciplined so you can remove every lab artifact after practice.
- Prefer the smallest viable instances or service tiers unless the learning goal specifically depends on scale.
- Record both the intended design and the first thing that contradicted your expectation.

### Module 1: Hybrid Mental Model

**Goal:** Turn hybrid mental model for hybrid connectivity into one observable and repeatable workflow.

1. Review the hybrid mental model section in the curated raw material for Hybrid Connectivity.
2. Build or diagram one small AWS scenario that proves the core behavior behind hybrid mental model.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 2: Routing and BGP Basics

**Goal:** Turn routing and bgp basics for hybrid connectivity into one observable and repeatable workflow.

1. Review the routing and bgp basics section in the curated raw material for Hybrid Connectivity.
2. Build or diagram one small AWS scenario that proves the core behavior behind routing and bgp basics.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 3: Connectivity Classes

**Goal:** Turn connectivity classes for hybrid connectivity into one observable and repeatable workflow.

1. Review the connectivity classes section in the curated raw material for Hybrid Connectivity.
2. Build or diagram one small AWS scenario that proves the core behavior behind connectivity classes.
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
| Behavior contradicts the hybrid connectivity model | The intended control boundary was never translated into a concrete policy, route, identity path, or recovery signal | Re-check the mental model, then inspect the first control plane, data plane, and evidence source that should prove it |

## Quick Revision Sheet
- Decide what boundary or path hybrid connectivity is supposed to control before you add more routes, policies, or services.
- Decide how identity, DNS, and routing assumptions should be documented around hybrid connectivity.
- Decide which layer should own reachability, security, and failover behavior in hybrid connectivity.
- Decide which telemetry proves that hybrid connectivity is working as designed instead of only appearing configured.
- Keep the mental model for hybrid connectivity tied to observable signals instead of memorized labels.

## Self-Check Questions
1. What is the primary control boundary in hybrid connectivity, and how would you explain it to a teammate?
2. Which failure mode would appear first if the design assumption were wrong?
3. What signal, log, or metric would you inspect before changing the architecture under pressure?
4. Which Azure or GCP equivalent helps confirm that you understand the concept rather than only the product name?
5. What part of this topic would become the hardest to operate at scale if left implicit?
