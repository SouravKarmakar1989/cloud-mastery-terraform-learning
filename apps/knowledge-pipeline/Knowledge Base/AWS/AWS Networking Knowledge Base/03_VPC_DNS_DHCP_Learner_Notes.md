# VPC DNS DHCP Learner Notes

This file is a learner-first companion to `03_VPC_DNS_DHCP.md`.
It is structured as topic-specific theory notes, a hands-on activity guide, and closing revision material so the raw knowledge base becomes easier to study and reuse.

Source authority: 16 processed source files, 1193 extracted non-empty transcript lines. The architect-level concepts are drawn directly from the curated primary knowledge base for this topic.

## How To Use This File
1. Read the theory sections first — DNS in VPC is a silent dependency that breaks things in non-obvious ways.
2. Work through the hands-on labs to confirm DNS resolution behavior at each layer before building on top.
3. Test split-horizon deliberately rather than assuming it will work — the VPC attribute settings are easy to misconfigure.
4. Use the troubleshooting table when service endpoints or cross-VPC hostnames suddenly stop resolving.
5. Revisit the quick revision sheet when designing hybrid DNS architecture or private hosted zones.

---

## Theoretical Notes

### 1. DNS as a Control-Plane Dependency

DNS is not a peripheral concern in AWS networking — it is a control-plane dependency. Private EC2 instances use DNS to discover service endpoints, Interface Endpoints override DNS to redirect traffic to private paths, and ECS and EKS service discovery rely on Route 53 for inter-service reachability. If DNS breaks, application traffic breaks, even when every route, SG, and NACL is perfectly configured. This is why DNS must be designed as part of the network architecture, not added afterward.

Every VPC has a built-in DNS resolver provided by AWS at the VPC-base-CIDR-plus-two address. For a VPC with CIDR 10.0.0.0/16, the resolver is at 10.0.0.2. It is also reachable at the link-local address 169.254.169.253. This resolver handles: resolution of private hosted zones associated with the VPC, resolution of public AWS service endpoints, standard internet DNS resolution, and reverse DNS lookup for VPC IP addresses. There is nothing to install, configure, or manage — but there are two VPC attributes that control its behavior.

---

### 2. VPC DNS Attributes: enableDnsSupport and enableDnsHostnames

Two independent boolean flags control DNS behavior in a VPC:

**enableDnsSupport** (default: true) — controls whether the VPC-provided DNS resolver (at VPC+2) is available. When false, instances in the VPC cannot use AWS-managed DNS — they must use custom DNS servers configured in the DHCP option set. Disabling this also breaks Interface Endpoint DNS override, because the endpoint's private DNS depends on the VPC resolver. This should almost never be disabled.

**enableDnsHostnames** (default: false in custom VPCs, true in default VPC) — controls whether EC2 instances launched in the VPC receive a public DNS hostname (e.g., `ec2-x-x-x-x.compute-1.amazonaws.com`) and a private internal DNS hostname. When false, instances only have IP addresses — no DNS names. This must be true for Interface Endpoint private DNS to work, because the endpoint creates DNS records that need a functioning DNS name space. It should be enabled on all VPCs hosting services that are discovered by hostname.

The interaction matters: Interface Endpoints with `privateDnsEnabled=true` require both `enableDnsSupport=true` and `enableDnsHostnames=true`. Forgetting to enable `enableDnsHostnames` on a new VPC is one of the most common Interface Endpoint setup failures.

---

### 3. Route 53 Resolver and Private Hosted Zones

Route 53 Resolver is the managed DNS resolution service built into every VPC. It handles all DNS queries from VPC resources by default. Private Hosted Zones (PHZ) are DNS namespaces that exist only inside AWS — they are not publicly visible and resolve only when queried from VPCs that have the PHZ associated with them.

Creating a PHZ and associating it with a VPC lets you create internal DNS records (A, CNAME, TXT, etc.) that resolve to private IPs. This is how you give application tiers friendly names (`db.internal.myapp.com` → `10.0.3.45`) instead of hardcoded IPs. PHZ association is not limited to the VPC in the same account — you can associate PHZs with VPCs in different accounts using a cross-account PHZ association workflow (share the hosted zone ID, then the VPC owner authorizes the association).

Multiple VPCs can be associated with the same PHZ, which means all those VPCs share the same internal namespace. This is a common pattern for shared-services VPCs: the shared-services VPC hosts the PHZ with records for AD, monitoring, CI/CD, etc., and all spoke VPCs are associated with that PHZ via TGW connectivity.

---

### 4. Split-Horizon DNS Design

Split-horizon DNS means different DNS answers for the same hostname depending on who is asking. The classic pattern: you own `api.mycompany.com`. From the public internet, that name resolves to an ALB public IP (or CloudFront). From inside your VPC, the same name should resolve to the ALB's private IP or to an internal endpoint — this avoids hairpinning traffic out through the internet and back in, and keeps communication private.

In AWS, split-horizon is implemented by creating a Private Hosted Zone with the same name as your public zone. The PHZ record for `api.mycompany.com` returns a private IP. The public Route 53 zone returns the public IP. When a VPC instance queries `api.mycompany.com`, the PHZ (which is associated with the VPC) responds first and wins. Queries from the internet go to the public zone.

The rule to remember: PHZ records shadow public records for any VPC that has the PHZ associated. Ensure the private records accurately reflect where private traffic should go — a stale private record after a failover event can silently redirect VPC traffic to the wrong target while public traffic works fine.

---

### 5. Hybrid DNS with Route 53 Resolver Endpoints

When a hybrid architecture connects on-premises environments to AWS VPCs, DNS resolution becomes bidirectional: on-premises systems need to resolve AWS private hostnames, and AWS workloads may need to resolve on-premises hostnames. Neither the AWS resolver nor the on-premises resolver can handle both domains natively without intervention.

Route 53 Resolver endpoints address this in both directions:

**Inbound Resolver Endpoint** — AWS provisions ENIs in specified VPC subnets. On-premises DNS servers send DNS queries for AWS private domains to these ENI IP addresses. The queries are forwarded to the VPC resolver, which returns answers from PHZs or the VPC DNS namespace. The on-premises DNS server must be configured with a conditional forwarder pointing `internal.myapp.com` → inbound endpoint IP.

**Outbound Resolver Endpoint** — when VPC workloads need to resolve on-premises hostnames (e.g., `server.corp.example.com`), an outbound endpoint is configured with a forwarding rule pointing that domain → on-premises DNS server IP. The VPC resolver intercepts queries matching the rule and forwards them out through the outbound endpoint ENIs to the on-premises DNS.

Both endpoint types are deployed per-AZ for high availability (two or more ENIs recommended). The route between the endpoint ENI subnets and on-premises must exist (VPN or Direct Connect) before the endpoints will work.

---

### 6. DHCP Option Sets

DHCP Option Sets configure how EC2 instances receive network parameters when they boot. Every VPC uses a DHCP option set, and the default one provides: `domain-name` (AWS-internal domain like `ec2.internal`), `domain-name-servers` (AmazonProvidedDNS, which is the VPC+2 resolver), and optionally `ntp-servers`.

Custom DHCP option sets let you override these parameters. Common use cases: (a) point `domain-name-servers` to on-premises DNS servers or AD DNS instead of the VPC resolver, (b) set `domain-name` to your internal domain so short hostname lookups work, (c) specify NTP servers for consistent time synchronization.

Limitations to understand: DHCP option sets are immutable after creation — you cannot edit an existing set; you create a new one and associate it. DHCP lease renewal is not instant — changing the DHCP option set on a VPC does not immediately affect running instances. Instances pick up the new settings at their next DHCP lease renewal (typically within an hour, or you can renew manually with `sudo dhclient -r && sudo dhclient` on Linux).

---

## Hands-On Activity Guide

### Prerequisites
- A VPC with `enableDnsSupport=true` and `enableDnsHostnames=true`.
- Route 53 Hosted Zone access (console or CLI).
- At least one EC2 instance to test DNS resolution.
- For the hybrid DNS lab: a simulated on-premises environment (a second VPC can serve as a stand-in).

---

### Lab 1: Create a Private Hosted Zone and Test Resolution

```bash
# 1. Verify VPC DNS attributes
aws ec2 describe-vpc-attribute --vpc-id $VPC_ID --attribute enableDnsSupport
aws ec2 describe-vpc-attribute --vpc-id $VPC_ID --attribute enableDnsHostnames

# 2. Create a Private Hosted Zone
PHZ_ID=$(aws route53 create-hosted-zone \
  --name "internal.myapp.com" \
  --vpc VPCRegion=us-east-1,VPCId=$VPC_ID \
  --caller-reference $(date +%s) \
  --hosted-zone-config PrivateZone=true \
  --query 'HostedZone.Id' --output text)
echo "PHZ ID: $PHZ_ID"

# 3. Create an A record in the PHZ
aws route53 change-resource-record-sets \
  --hosted-zone-id $PHZ_ID \
  --change-batch '{
    "Changes": [{
      "Action": "UPSERT",
      "ResourceRecordSet": {
        "Name": "db.internal.myapp.com",
        "Type": "A",
        "TTL": 60,
        "ResourceRecords": [{"Value": "10.0.2.10"}]
      }
    }]
  }'

# 4. Test from EC2 in the same VPC
# SSH to EC2, then:
# nslookup db.internal.myapp.com
# dig db.internal.myapp.com
# Expected: returns 10.0.2.10
```

---

### Lab 2: Split-Horizon DNS — Same Name, Different Answer

```bash
# Assume public Route 53 zone exists for myapp.com with record:
# api.myapp.com → 203.0.113.10 (public ALB)

# Create a PHZ for myapp.com associated with the VPC
SPLIT_PHZ_ID=$(aws route53 create-hosted-zone \
  --name "myapp.com" \
  --vpc VPCRegion=us-east-1,VPCId=$VPC_ID \
  --caller-reference $(date +%s)-split \
  --hosted-zone-config PrivateZone=true \
  --query 'HostedZone.Id' --output text)

# Add a private record for api.myapp.com pointing to internal IP
aws route53 change-resource-record-sets \
  --hosted-zone-id $SPLIT_PHZ_ID \
  --change-batch '{
    "Changes": [{
      "Action": "UPSERT",
      "ResourceRecordSet": {
        "Name": "api.myapp.com",
        "Type": "A",
        "TTL": 60,
        "ResourceRecords": [{"Value": "10.0.1.50"}]
      }
    }]
  }'

# From EC2 inside VPC:
# nslookup api.myapp.com → should return 10.0.1.50 (private)
# From external machine:
# nslookup api.myapp.com → should return 203.0.113.10 (public)
```

---

### Lab 3: Route 53 Resolver Inbound Endpoint for Hybrid DNS

```bash
# Create a security group for the Resolver endpoints
RESOLVER_SG=$(aws ec2 create-security-group \
  --group-name resolver-sg --description "Route 53 Resolver Endpoint" \
  --vpc-id $VPC_ID --query 'GroupId' --output text)
aws ec2 authorize-security-group-ingress --group-id $RESOLVER_SG \
  --protocol udp --port 53 --cidr 192.168.0.0/16  # on-premises CIDR

# Create inbound resolver endpoint (2 ENIs for HA)
aws route53resolver create-resolver-endpoint \
  --creator-request-id "inbound-ep-$(date +%s)" \
  --name "inbound-from-onprem" \
  --security-group-ids $RESOLVER_SG \
  --direction INBOUND \
  --ip-addresses SubnetId=$PRIV_SUBNET_AZ1,Ip=10.0.2.10 \
               SubnetId=$PRIV_SUBNET_AZ2,Ip=10.0.3.10

# On-premises DNS server: add conditional forwarder
# Domain: internal.myapp.com
# Forwarder IPs: 10.0.2.10 and 10.0.3.10
# Now on-prem machines can resolve internal.myapp.com hostnames
```

---

## Troubleshooting Guide

| Symptom | Most Likely Cause | Diagnostic Step | Fix |
|---|---|---|---|
| Interface Endpoint private DNS not working | `enableDnsHostnames` false on VPC | `aws ec2 describe-vpc-attribute --attribute enableDnsHostnames` | Enable the attribute on the VPC |
| Private Hosted Zone records don't resolve from EC2 | PHZ not associated with the VPC | `aws route53 list-vpc-association-authorizations` or check in console | Associate the PHZ with the VPC |
| Split-horizon returning public IP from inside VPC | PHZ for the domain isn't associated with VPC | `aws route53 list-hosted-zones-by-vpc --vpc-id $VPC_ID` | Associate the private hosted zone with the VPC |
| DHCP option set change not picked up by instances | DHCP lease not renewed yet | Check instance using `resolvectl status` or `cat /etc/resolv.conf` | Wait for lease expiry or run `dhclient -r && dhclient` on instance |
| On-premises can't resolve AWS private hostnames | Inbound Resolver Endpoint not reachable | Verify VPN/DX connectivity to endpoint ENI IPs; check security group allows port 53 UDP | Fix network path; open SG on UDP/53 from on-prem CIDR |
| AWS resources can't resolve on-premises hostnames | Outbound Resolver Endpoint or forwarding rule missing | Check Resolver rules with `aws route53resolver list-resolver-rules` | Create outbound endpoint and forwarding rule for on-prem domain |
| PHZ A record update not visible immediately | DNS caching at instance level, TTL not expired | Use `dig +nocache` or reduce TTL before testing | Flush local DNS cache or wait for TTL to expire |
| Multiple VPCs share a PHZ but one VPC can't resolve | PHZ only associated with one VPC | Confirm all VPCs are associated with the PHZ | Associate PHZ with each VPC that needs resolution |

---

## Quick Revision Sheet

- **enableDnsSupport** = controls whether VPC+2 resolver is available; default true; must be true for Interface Endpoints
- **enableDnsHostnames** = controls whether EC2 gets DNS hostnames; must be true for Interface Endpoint private DNS
- **VPC resolver** = at VPC+2 address (e.g., 10.0.0.2) and 169.254.169.253
- **Private Hosted Zone** = internal-only DNS namespace; must be associated with VPC; supports cross-account association
- **Split-horizon** = same name resolves differently inside vs outside VPC; PHZ record shadows public record within the VPC
- **Inbound Resolver Endpoint** = ENIs in VPC; on-prem sends DNS queries here for AWS internal domains
- **Outbound Resolver Endpoint** = ENIs in VPC; AWS workloads send queries for on-prem domains through here
- **Forwarding Rule** = maps a DNS domain to a target IP (on-prem DNS server); attached to outbound endpoint
- **DHCP Option Set** = configures DNS server, domain name, NTP for instances; immutable after creation; not instantly effective

## How To Use This File
1. Read the theory sections first so the service or platform model is clear before you touch the console.
2. Work through the hands-on modules in order and record what the platform proves versus what you only assumed.
3. Compare the AWS pattern with Azure and GCP when possible so the idea becomes cloud-portable.
4. Use the troubleshooting table when behavior is confusing instead of guessing from one console view.
5. Revisit the quick revision sheet before a design review, exam session, or migration plan.

## Theoretical Notes

### 1. DNS Mental Model

DNS Mental Model sets the boundary for vpc dns dhcp, because it explains what the platform owns, what the operator owns, and where the first failure usually appears. When that boundary is fuzzy, teams tend to misread symptoms and make design choices in vpc dns dhcp that solve the wrong problem. In practice, the durable way to learn vpc dns dhcp is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 2. Namespace and Resolution Design

Namespace and Resolution Design matter because they determine how the control plane, data path, and identity or addressing model actually work inside vpc dns dhcp. Understanding those building blocks makes it easier to compare AWS behavior with Azure and GCP instead of memorizing vendor-specific wording. In practice, the durable way to learn vpc dns dhcp is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 3. Host Configuration Baseline

Host Configuration Baseline are where scale, resilience, and governance turn basic feature knowledge into durable system design for vpc dns dhcp. This is usually the part of the topic that separates a passing lab from a design that still behaves well under real traffic and operator pressure. In practice, the durable way to learn vpc dns dhcp is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 4. Observability is part of the network design

Vpc dns dhcp is only trustworthy when the team can prove what path traffic takes and which layer is allowed to change that path. Without those signals, networking problems inside vpc dns dhcp often masquerade as random application or infrastructure failures. In practice, the durable way to learn vpc dns dhcp is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 5. Cross-cloud mapping keeps the boundary clear

Mapping vpc dns dhcp to Azure and GCP helps separate the underlying networking concept from the AWS product packaging around it. That usually makes both troubleshooting and migration planning easier because the real control surface stays visible. In practice, the durable way to learn vpc dns dhcp is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 6. Cross-Cloud Mental Map

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| VPC-local resolver | Route 53 Resolver | Azure-provided DNS plus Private DNS Resolver | Cloud DNS plus metadata resolver |
| Private namespace hosting | Private hosted zones | Private DNS zones | Private Cloud DNS zones |
| Hybrid DNS forwarding | Resolver inbound and outbound endpoints | DNS forwarding rulesets | Cloud DNS inbound and outbound forwarding |
| Host bootstrap parameters | DHCP option sets | VNet DNS settings and DHCP defaults | Project or VPC DNS policy defaults |
| Split-horizon naming | Public and private Route 53 views | Public and private DNS zones | Public and private Cloud DNS zones |

## Hands-On Activity Guide

### Prerequisites and Safety Rules
- Use a sandbox account or non-production subscription and set a budget alert before creating resources.
- Keep naming, tagging, and cleanup disciplined so you can remove every lab artifact after practice.
- Prefer the smallest viable instances or service tiers unless the learning goal specifically depends on scale.
- Record both the intended design and the first thing that contradicted your expectation.

### Module 1: DNS Mental Model

**Goal:** Turn dns mental model for vpc dns dhcp into one observable and repeatable workflow.

1. Review the dns mental model section in the curated raw material for VPC DNS DHCP.
2. Build or diagram one small AWS scenario that proves the core behavior behind dns mental model.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 2: Namespace and Resolution Design

**Goal:** Turn namespace and resolution design for vpc dns dhcp into one observable and repeatable workflow.

1. Review the namespace and resolution design section in the curated raw material for VPC DNS DHCP.
2. Build or diagram one small AWS scenario that proves the core behavior behind namespace and resolution design.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 3: Host Configuration Baseline

**Goal:** Turn host configuration baseline for vpc dns dhcp into one observable and repeatable workflow.

1. Review the host configuration baseline section in the curated raw material for VPC DNS DHCP.
2. Build or diagram one small AWS scenario that proves the core behavior behind host configuration baseline.
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
| Behavior contradicts the vpc dns dhcp model | The intended control boundary was never translated into a concrete policy, route, identity path, or recovery signal | Re-check the mental model, then inspect the first control plane, data plane, and evidence source that should prove it |

## Quick Revision Sheet
- Decide what boundary or path vpc dns dhcp is supposed to control before you add more routes, policies, or services.
- Decide how identity, DNS, and routing assumptions should be documented around vpc dns dhcp.
- Decide which layer should own reachability, security, and failover behavior in vpc dns dhcp.
- Decide which telemetry proves that vpc dns dhcp is working as designed instead of only appearing configured.
- Keep the mental model for vpc dns dhcp tied to observable signals instead of memorized labels.

## Self-Check Questions
1. What is the primary control boundary in vpc dns dhcp, and how would you explain it to a teammate?
2. Which failure mode would appear first if the design assumption were wrong?
3. What signal, log, or metric would you inspect before changing the architecture under pressure?
4. Which Azure or GCP equivalent helps confirm that you understand the concept rather than only the product name?
5. What part of this topic would become the hardest to operate at scale if left implicit?
