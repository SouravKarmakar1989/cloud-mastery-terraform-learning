# Network Security Controls Learner Notes

This file is a learner-first companion to `09_Network_Security_Controls.md`.
It is structured as topic-specific theory notes, a hands-on activity guide, and closing revision material so the raw knowledge base becomes easier to study and reuse.

Source authority: 21 processed source files, 1912 extracted non-empty transcript lines. The architect-level concepts are drawn directly from the curated primary knowledge base for this topic.

## How To Use This File
1. Read the theory sections to understand the different threat classes each control is designed to address.
2. Do not conflate controls — SG and NACL are not AWS WAF alternatives; WAF is not a firewall substitute.
3. Work through the labs to simulate an attack and observe the defense layer that stops it.
4. Use the troubleshooting table when a security control is blocking legitimate traffic or failing to block threats.
5. Revisit the quick revision sheet before security architecture reviews or AWS Security Specialty exam prep.

---

## Theoretical Notes

### 1. Network Security Requires Defense in Depth

A single network security control is a single point of failure. AWS provides controls at multiple layers and OSI levels, and the architecture challenge is placing each control where it has the best signal and the most enforcement leverage. The mental model: (a) keep workloads protected at the instance/ENI level with Security Groups; (b) add subnet-boundary controls with NACLs for blast-radius containment; (c) add L7 web application protection with WAF; (d) add DDoS resistance with Shield; (e) add stateful L3/L4/L7 inspection across a broader network boundary with Network Firewall; (f) manage certificates and transport trust with ACM; (g) centralize multi-account governance with Firewall Manager.

Placing all enforcement in one control (e.g., "just use WAF for everything") creates both gap risks (WAF doesn't stop a compromised internal instance from lateral movement) and operational brittleness (WAF misconfiguration blocks legitimate traffic with no fallback). Layered controls are both more secure and more operationally resilient.

---

### 2. Security Groups and NACLs: The Foundation Layer

These two controls were covered in depth in the VPC Core module but are repeated here in security-architecture context.

**Security Groups** are the closest control to the workload — they enforce at the ENI level, statefully, and can reference other SG IDs as source/destination. From a security standpoint, their most powerful property is that reference to SG ID rather than CIDR — an allow rule that says "allow TCP 5432 from the app-tier SG" works regardless of what IP the app instance has, survives auto-scaling events, and is immune to CIDR spoofing within the VPC. Always use SG ID references for intra-VPC rules.

**NACLs** are the subnet-boundary control. Their primary security use case is blast-radius control: isolating a compromised subnet, quickly blocking a known-malicious IP range across all instances in a subnet, or enforcing subnet-level perimeters in environments where SG sprawl makes instance-level enforcement inconsistent. A deny NACL rule at subnet ingress stops traffic before any instance in that subnet processes it — useful for emergency isolation.

The stateless nature of NACLs creates a security gap awareness need: if you write an inbound DENY rule but not an outbound rule, return traffic may still flow (or the connection silently fails for legitimate traffic). When using NACLs for security, always review both inbound and outbound rule pairs.

---

### 3. AWS WAF: Layer 7 Threat Protection

AWS WAF is a web application firewall that operates at Layer 7 and understands HTTP/HTTPS request structure: URI, headers, cookies, query strings, and request body. WAF is attached to a supported front-end resource: ALB, CloudFront distribution, API Gateway stage, or App Runner service. It evaluates each matching request against a rule set and either allows, blocks, counts, or challenges it.

WAF rule types: **Managed Rule Groups** — pre-configured rule sets maintained by AWS or third-party managed rule providers (e.g., AWS Managed Rules: Common Rule Set for OWASP Top 10, SQL injection protection, XSS protection, known bad inputs). **Custom Rules** — your own match conditions (IP reputation, rate-based, geographic restriction, specific header values). **IP Sets** — lists of IP addresses to allow or block.

Rate-based rules are WAF's mechanism for automated request flood defense. You can count how many requests a specific IP has made in a 5-minute window and block it if it exceeds a threshold. This is useful for brute-force protection on login endpoints or for reducing scraping activity.

WAF operates on a default allow (whitelist mode) or default block (blacklist mode) basis — you set the default action on the Web ACL and individual rules override per match. WAF logs (full request details including matched rule information) can be sent to CloudWatch Logs, S3, or Kinesis Firehose.

WAF is not a substitute for network-layer controls — it operates only on matched HTTP/HTTPS requests and does not help with non-HTTP traffic, lateral movement, or infrastructure-level attacks.

---

### 4. AWS Shield: DDoS Resilience

AWS Shield Standard is included at no charge for all AWS customers. It provides automatic protection against common volumetric DDoS attacks at Layers 3 and 4: SYN floods, UDP reflection attacks, DNS query floods, ICMP floods. Shield Standard is always-on for CloudFront, Route 53, ALB, NLB, ELB, and Global Accelerator.

AWS Shield Advanced is a paid service ($3,000/month per organization plus data transfer fees, on an annual commitment). It adds: enhanced detection of more sophisticated and application-layer DDoS attacks, real-time attack visibility in the Shield console and CloudWatch, access to the DDoS Response Team (DRT) who can write custom WAF rules and provide operational support during active attacks, automatic application layer mitigation via WAF, and DDoS cost protection (AWS credits any scaling charges attributable to a DDoS event).

Shield Advanced protects: EC2, ELB, CloudFront, Route 53, Global Accelerator. It must be explicitly enabled per account and per resource type to be effective. The correct design principle: for revenue-generating or high-visibility public services, Shield Advanced + WAF rate-based rules + CloudFront or Global Accelerator provides strong DDoS posture.

---

### 5. AWS Network Firewall: Stateful Inline Inspection

AWS Network Firewall is a managed stateful Layer 3/4/7 inspection service deployed inside a VPC. It inspects traffic flowing through it — unlike WAF (which only processes matched HTTP requests) or SG/NACL (which are allow/deny policy engines), Network Firewall can do: stateful TCP flow tracking, TLS SNI inspection, domain-based filtering (allow/block specific FQDNs), intrusion prevention using Suricata-compatible rules, and stateless packet filter rules.

Architecture: Network Firewall is deployed in dedicated firewall subnets (one per AZ). Route tables are modified so that traffic passing between the internet and application subnets (or between VPCs and the internet) traverses the firewall subnets. The typical pattern: internet traffic goes IGW → firewall subnet (Network Firewall inspection) → application subnet. Return traffic goes application subnet → firewall subnet → IGW.

Rule groups in Network Firewall: stateless rules (simpler, high-performance pass/drop/forward logic), stateful rules (Suricata IPS rules or managed threat intelligence rule groups from AWS). Stateful rules can block specific domains, detect known malware patterns, or enforce egress FQDN allowlisting (only allow outbound traffic to approved domains).

Network Firewall is more operationally complex and expensive than WAF or SG/NACL. It is appropriate for: centralized egress inspection in a hub VPC (combined with TGW), environments with regulatory requirements for network-level IPS, or organizations that need FQDN-based egress policy rather than IP-based policy.

---

### 6. ACM, Transport Security, and Firewall Manager

**AWS Certificate Manager (ACM)** provisions and manages TLS/SSL certificates. Public certificates (for HTTPS on ALBs, CloudFront, API GW) are free, auto-renew, and cannot be exported. Private CAs (ACM Private CA) issue certificates for internal services, mTLS, and IoT device identity. ACM certificates are deployed directly to AWS services — you never handle the private key.

**Firewall Manager** is a central management plane for WAF rules, Security Group policies, Network Firewall policies, and Shield Advanced across an AWS Organization. It ensures that new accounts automatically get baseline security policies applied, and that policy drift or missing protections are flagged. Firewall Manager requires AWS Organizations and AWS Config to be enabled. It is the right tool when you need consistent security control enforcement at scale across many accounts.

---

### 7. Cross-Cloud Mental Map

| Concept | AWS | Azure | GCP |
|---|---|---|---|
| Stateful workload filter | Security Groups | NSG | VPC Firewall Rules |
| Stateless subnet filter | NACL | NSG (subnet scope) | No direct equivalent |
| L7 WAF | AWS WAF | Azure WAF (App GW / Front Door) | Cloud Armor |
| DDoS protection | Shield Standard / Advanced | DDoS Basic / Standard | Cloud Armor Standard / Plus |
| Network-level IPS/IDS | Network Firewall (Suricata) | Azure Firewall Premium (IDPS) | Cloud IDS |
| Certificate management | ACM | Azure Key Vault + App Service Certs | Google-managed SSL certs |
| Multi-account policy governance | Firewall Manager | Azure Policy + Blueprints | Organization Policy + Security Command Center |

---

## Hands-On Activity Guide

### Prerequisites
- VPC with an ALB or CloudFront distribution.
- AWS CLI configured with WAF and Network Firewall permissions.
- AWS Organizations with AWS Config enabled (for Firewall Manager lab).

---

### Lab 1: AWS WAF with Rate-Based Rule to Block Brute Force

```bash
# 1. Create WAF IP set (optional - to allow trusted IPs)
IP_SET_ARN=$(aws wafv2 create-ip-set \
  --name trusted-ips \
  --scope REGIONAL \
  --ip-address-version IPV4 \
  --addresses 203.0.113.0/24 \
  --query 'Summary.ARN' --output text)

# 2. Create Web ACL with rate-based rule
WEBACL_ARN=$(aws wafv2 create-web-acl \
  --name lab-webacl \
  --scope REGIONAL \
  --default-action Allow={} \
  --rules '[
    {
      "Name": "RateLimitRule",
      "Priority": 1,
      "Action": {"Block": {}},
      "Statement": {
        "RateBasedStatement": {
          "Limit": 100,
          "AggregateKeyType": "IP"
        }
      },
      "VisibilityConfig": {
        "SampledRequestsEnabled": true,
        "CloudWatchMetricsEnabled": true,
        "MetricName": "RateLimitRule"
      }
    },
    {
      "Name": "AWSManagedRulesCommonRuleSet",
      "Priority": 2,
      "OverrideAction": {"None": {}},
      "Statement": {
        "ManagedRuleGroupStatement": {
          "VendorName": "AWS",
          "Name": "AWSManagedRulesCommonRuleSet"
        }
      },
      "VisibilityConfig": {
        "SampledRequestsEnabled": true,
        "CloudWatchMetricsEnabled": true,
        "MetricName": "AWSCommonRules"
      }
    }
  ]' \
  --visibility-config SampledRequestsEnabled=true,CloudWatchMetricsEnabled=true,MetricName=labWebACL \
  --query 'Summary.ARN' --output text)

# 3. Associate Web ACL with ALB
aws wafv2 associate-web-acl \
  --web-acl-arn $WEBACL_ARN \
  --resource-arn $ALB_ARN
```

---

### Lab 2: Simulate XSS Attack and Observe WAF Block

```bash
# The AWSManagedRulesCommonRuleSet should block XSS attempts
# Test by sending a request with an XSS payload in the query string

# This simulates an XSS attack (from your own test instance, not against unauthorized targets)
curl -s "https://your-alb-dns.us-east-1.elb.amazonaws.com/page?input=<script>alert(1)</script>"
# Expected: 403 Forbidden from WAF

# Check WAF sampled requests
aws wafv2 get-sampled-requests \
  --web-acl-arn $WEBACL_ARN \
  --rule-metric-name AWSCommonRules \
  --scope REGIONAL \
  --time-window StartTime=$(date -v-1H +%s),EndTime=$(date +%s) \
  --max-items 10
```

---

## Troubleshooting Guide

| Symptom | Most Likely Cause | Diagnostic Step | Fix |
|---|---|---|---|
| WAF blocking legitimate traffic | Managed rule group false positive or rate limit too low | Check WAF sampled requests — find which rule matched | Switch matched rule to Count mode; tune rule or add exception |
| WAF not blocking known attack | Rule group not enabled, or Web ACL not associated with resource | `aws wafv2 get-web-acl-for-resource --resource-arn <arn>` | Associate WAF with resource; enable correct managed rule group |
| Network Firewall dropping outbound traffic | Stateful rule or stateless rule blocking the FQDN or IP | Check Network Firewall CloudWatch metrics `DroppedPackets`; review rule groups | Add allow rule for blocked destination; check FQDN allowlist |
| Shield Advanced attack notification with no WAF mitigation | Shield Advanced auto-remediation not enabled | Check Shield console — "Enable automatic application layer DDos mitigation" | Enable automatic mitigation; review and attach WAF ACL |
| Security Group rules correct but traffic still blocked | NACL DENY, Network Firewall policy, or WAF rule upstream | Work through the layers: check NACL first, then firewall, then WAF | Identify blocking layer via flow logs and Reachability Analyzer |
| ACM certificate not attaching to ALB | Certificate status not ISSUED, or wrong region | `aws acm describe-certificate --certificate-arn <arn>` — check `Status` | Complete DNS or email validation; ensure cert is in same region as ALB |
| Firewall Manager policy not applying to new accounts | AWS Config not enabled in new account, or org SCP blocking Config | Check Config status in new account; check Firewall Manager — Policy Scope | Enable Config in member account; remove conflicting SCP |
| TLS connection failing despite cert present | Cipher mismatch, protocol version too old, or cert chain incomplete | Check ALB access logs for TLS negotiation errors | Update listener policy to TLS 1.2+ security policy; ensure full cert chain |

---

## Quick Revision Sheet

- **SG** = workload-level, stateful, allow-only, supports SG-ID references — first line of workload defense
- **NACL** = subnet-level, stateless, numbered rules, explicit DENY — use for blast-radius control
- **WAF** = L7 HTTP/HTTPS rules; attaches to ALB/CloudFront/API GW; managed + custom rules; rate-based rules
- **Shield Standard** = free, always-on L3/L4 DDoS protection for CloudFront, Route 53, ALB, NLB, GA
- **Shield Advanced** = paid; DRT support; auto WAF mitigation; cost protection; per-account enrollment
- **Network Firewall** = stateful L3/L4/L7 inline inspection; Suricata rules; domain filtering; deployed per-AZ
- **ACM** = managed TLS cert lifecycle; public = free + auto-renew; Private CA for internal/mTLS
- **Firewall Manager** = central WAF/SG/NF/Shield policy management across AWS Organization
- **Defense in depth** = SG (workload) + NACL (subnet) + WAF (L7 edge) + Shield (DDoS) + Network Firewall (stateful IPS)
- **OWASP protection** = AWSManagedRulesCommonRuleSet covers OWASP Top 10 without custom rules

## How To Use This File
1. Read the theory sections first so the service or platform model is clear before you touch the console.
2. Work through the hands-on modules in order and record what the platform proves versus what you only assumed.
3. Compare the AWS pattern with Azure and GCP when possible so the idea becomes cloud-portable.
4. Use the troubleshooting table when behavior is confusing instead of guessing from one console view.
5. Revisit the quick revision sheet before a design review, exam session, or migration plan.

## Theoretical Notes

### 1. Network Security Mental Model

Network Security Mental Model sets the boundary for network security controls, because it explains what the platform owns, what the operator owns, and where the first failure usually appears. When that boundary is fuzzy, teams tend to misread symptoms and make design choices in network security controls that solve the wrong problem. In practice, the durable way to learn network security controls is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 2. Boundary Layers

Boundary Layers matter because they determine how the control plane, data path, and identity or addressing model actually work inside network security controls. Understanding those building blocks makes it easier to compare AWS behavior with Azure and GCP instead of memorizing vendor-specific wording. In practice, the durable way to learn network security controls is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 3. Trust and Governance

Trust and Governance are where scale, resilience, and governance turn basic feature knowledge into durable system design for network security controls. This is usually the part of the topic that separates a passing lab from a design that still behaves well under real traffic and operator pressure. In practice, the durable way to learn network security controls is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 4. Observability is part of the network design

Network security controls is only trustworthy when the team can prove what path traffic takes and which layer is allowed to change that path. Without those signals, networking problems inside network security controls often masquerade as random application or infrastructure failures. In practice, the durable way to learn network security controls is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 5. Cross-cloud mapping keeps the boundary clear

Mapping network security controls to Azure and GCP helps separate the underlying networking concept from the AWS product packaging around it. That usually makes both troubleshooting and migration planning easier because the real control surface stays visible. In practice, the durable way to learn network security controls is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 6. Cross-Cloud Mental Map

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Stateful workload firewall | Security Groups | NSGs | VPC firewall rules |
| Subnet-level coarse filtering | NACLs | Subnet-level NSG patterns | Hierarchical firewall and subnet tagging patterns |
| Managed network firewall | AWS Network Firewall | Azure Firewall | Cloud Firewall and policy layers |
| Private exposure reduction | PrivateLink and endpoint policies | Private Endpoint and service endpoints | Private Service Connect |
| DDoS and edge protection | Shield, WAF, and CloudFront | DDoS Protection and WAF | Cloud Armor and edge security |

## Hands-On Activity Guide

### Prerequisites and Safety Rules
- Use a sandbox account or non-production subscription and set a budget alert before creating resources.
- Keep naming, tagging, and cleanup disciplined so you can remove every lab artifact after practice.
- Prefer the smallest viable instances or service tiers unless the learning goal specifically depends on scale.
- Record both the intended design and the first thing that contradicted your expectation.

### Module 1: Network Security Mental Model

**Goal:** Turn network security mental model for network security controls into one observable and repeatable workflow.

1. Review the network security mental model section in the curated raw material for Network Security Controls.
2. Build or diagram one small AWS scenario that proves the core behavior behind network security mental model.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 2: Boundary Layers

**Goal:** Turn boundary layers for network security controls into one observable and repeatable workflow.

1. Review the boundary layers section in the curated raw material for Network Security Controls.
2. Build or diagram one small AWS scenario that proves the core behavior behind boundary layers.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 3: Trust and Governance

**Goal:** Turn trust and governance for network security controls into one observable and repeatable workflow.

1. Review the trust and governance section in the curated raw material for Network Security Controls.
2. Build or diagram one small AWS scenario that proves the core behavior behind trust and governance.
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
| Behavior contradicts the network security controls model | The intended control boundary was never translated into a concrete policy, route, identity path, or recovery signal | Re-check the mental model, then inspect the first control plane, data plane, and evidence source that should prove it |

## Quick Revision Sheet
- Decide what boundary or path network security controls is supposed to control before you add more routes, policies, or services.
- Decide how identity, DNS, and routing assumptions should be documented around network security controls.
- Decide which layer should own reachability, security, and failover behavior in network security controls.
- Decide which telemetry proves that network security controls is working as designed instead of only appearing configured.
- Keep the mental model for network security controls tied to observable signals instead of memorized labels.

## Self-Check Questions
1. What is the primary control boundary in network security controls, and how would you explain it to a teammate?
2. Which failure mode would appear first if the design assumption were wrong?
3. What signal, log, or metric would you inspect before changing the architecture under pressure?
4. Which Azure or GCP equivalent helps confirm that you understand the concept rather than only the product name?
5. What part of this topic would become the hardest to operate at scale if left implicit?
