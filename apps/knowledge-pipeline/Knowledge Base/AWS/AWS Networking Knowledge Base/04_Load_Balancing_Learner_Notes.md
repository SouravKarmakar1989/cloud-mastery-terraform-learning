# Load Balancing Learner Notes

This file is a learner-first companion to `04_Load_Balancing.md`.
It is structured as topic-specific theory notes, a hands-on activity guide, and closing revision material so the raw knowledge base becomes easier to study and reuse.

Source authority: 33 processed source files, 1666 extracted non-empty transcript lines. The architect-level concepts are drawn directly from the curated primary knowledge base for this topic.

## How To Use This File
1. Read the theory sections in order — ALB, NLB, and GWLB solve fundamentally different problems at different OSI layers.
2. Work through the labs paying attention to listener rules, target group health, and TLS configuration.
3. Use the cross-cloud table to translate load balancer patterns when evaluating Azure or GCP deployments.
4. Use the troubleshooting table when traffic is reaching a load balancer but not the targets.
5. Revisit the quick revision sheet when choosing between ALB and NLB for an architecture question.

---

## Theoretical Notes

### 1. The Load Balancer Selection Decision

AWS offers three managed load balancers and one gateway load balancer — each optimized for a specific traffic class and protocol layer. The most common exam and real-world mistake is treating load balancer selection as a minor implementation detail. It is an architecture decision that affects observability, security posture, TLS design, IP behavior, and latency.

The decision tree: (a) do you need HTTP/HTTPS/gRPC routing with content-based rules? Use ALB. (b) do you need TCP/UDP/TLS at extreme throughput, static IP per AZ, or client IP preservation without X-Forwarded-For headers? Use NLB. (c) do you need to transparently route traffic through third-party inspection appliances without changing the traffic path? Use GWLB. (d) are you on EC2 Classic (legacy) or need extremely simple round-robin with no content-based routing? Classic LB (not covered in modern architectures).

The rule of thumb that underpins this decision: ALB terminates connections and forwards, NLB can pass through or terminate, GWLB passes through without termination. Connection termination is the boundary that controls what the load balancer can see and modify.

---

### 2. Application Load Balancer: The L7 Router

ALB operates at OSI Layer 7 and understands HTTP, HTTPS, HTTP/2, WebSocket, and gRPC. It terminates TLS (HTTPS → HTTP to backends), parses HTTP headers, and routes based on sophisticated rules: host header routing (`api.myapp.com` → backend A, `web.myapp.com` → backend B), path-based routing (`/api/*` → backend A, `/static/*` → S3), query string conditions, HTTP method conditions, and source IP conditions. Rules are evaluated in priority order; the first matching rule wins.

Target groups abstract the backend: targets can be EC2 instances (by instance ID), IP addresses (for on-premises or containerized targets not on EC2), Lambda functions, or Application Load Balancers (for complex chaining). Each target group has a health check — if a target fails health checks, it is deregistered from active routing. Cross-zone load balancing is enabled by default on ALBs and distributes traffic evenly across all registered targets in all AZs, regardless of which AZ the request entered.

ALB integrates natively with WAF (attach an ACL to filter L7 attacks before requests reach backends), AWS Cognito (authentication action in listener rules — forces login before accessing protected paths), and IAM-based access with OIDC Authenticates. ALB adds `X-Forwarded-For`, `X-Forwarded-Proto`, and `X-Forwarded-Port` headers to backend requests, which is how backend applications see the original client IP despite the TLS termination.

---

### 3. Network Load Balancer: The L4 Precision Tool

NLB operates at Layer 4 and makes routing decisions based on TCP port, UDP port, and TLS handshake. It does not parse HTTP headers, cannot make content-based routing decisions, and does not modify packet payload. What it gains is extreme performance (millions of requests per second, single-digit millisecond latency), client IP preservation by default (backends see the real client IP in the packet without needing X-Forwarded-For), and static Elastic IP addresses per AZ.

Static Elastic IPs per AZ are NLB's defining operational advantage for use cases requiring firewall rules. ALB FQDN-based addressing means the IP can change; NLB allows you to assign a fixed EIP that never changes. This is critical for partner integrations where the partner needs to whitelist your IP at their firewall, or for regulatory requirements specifying a fixed IP.

TLS termination on NLB provides a TCP pass-through alternative: you can either terminate TLS at the NLB (NLB presents the cert, decrypts, forwards plain TCP to backend) or pass TLS through to the backend instance (backend sees the full TLS handshake). Pass-through is used when end-to-end encryption to the instance is required, or when the backend must see the full TLS details for mutual TLS (mTLS).

Cross-zone load balancing on NLB is disabled by default (unlike ALB). When disabled, an NLB in AZ-A only routes to targets in AZ-A — this creates AZ-affine routing that is predictable and avoids cross-AZ data transfer charges. Enable cross-zone if you need to balance load across AZs regardless of where the request enters.

---

### 4. Gateway Load Balancer: The Transparent Inline Inspector

GWLB operates at OSI Layer 3 and is designed to insert third-party virtual network appliances (firewalls, IDS/IPS, deep packet inspection) into your traffic flow transparently. The key word is transparent: traffic goes into GWLB, gets forwarded to an appliance target via GENEVE encapsulation (port 6081), the appliance inspects and either drops or returns the packet, and GWLB forwards it to the original destination. The source and destination IPs are preserved through the entire inspection chain.

GWLB replaced the older manual approach of building appliance VPCs with route tables and ensuring asymmetric routing didn't break inspection. GWLB with GENEVE handles flow symmetry: the same appliance instance sees both the forward and return flow for a connection. Combined with Transit Gateway and GWLB Endpoints, you can create a centralized inspection architecture where all VPC egress traffic passes through an inspection tier before reaching the internet.

GWLB Endpoints (GWLBe) are the consumer side: you deploy a GWLBe in your application VPC, add a route in the route table sending egress traffic to the GWLBe, and GWLB handles the rest. The appliance VPC (containing GWLB and appliance instances) is separate, and traffic is bridged between the two via PrivateLink-style mechanics internally.

---

### 5. TLS Termination, ACM, and Trust Design

How TLS is handled at the load balancer determines the security posture of the entire path. Three patterns:

**Terminate at LB (most common)** — ALB or NLB terminates TLS. The ACM certificate is attached to the listener. Traffic between LB and backend is plain HTTP (or plain TCP). Simpler backend configuration, centralized certificate management. Backend does not see the TLS handshake or client certificate.

**Re-encrypt** — ALB terminates client TLS and establishes a new TLS connection to the backend. Backend has its own certificate. Provides encryption in transit end-to-end inside the VPC. Adds CPU overhead at the ALB for double encryption.

**Pass-through** — NLB TCP listener forwards the TLS bytes without decryption. Backend terminates TLS. Used for mTLS, when backends need to validate client certificates, or for regulatory end-to-end encryption requirements. ALB cannot do pass-through (it always terminates).

ACM (AWS Certificate Manager) provisions, renews, and deploys certificates automatically. Public ACM certificates are free and auto-renew. Importing custom certificates requires managing renewal manually. ACM certificates cannot be exported (private key never leaves AWS). For mTLS on ALB, you configure a trust store with the CA certificates that must sign client certificates — ALB validates the client cert against the trust store for each request.

---

### 6. Connection Behavior: Stickiness and Draining

**Sticky sessions** keep a client bound to the same target for the duration of a session. ALB supports two types: LB-generated cookies (AWSALB cookie, duration-based) and application-based cookies (app sets the cookie name, LB honors it). Stickiness is a workload requirement, not an LB preference — stateless applications should never enable stickiness. Stickiness increases imbalance risk when one target gets long-running sessions while others are idle.

**Connection draining / deregistration delay** controls what happens to in-flight connections when a target is deregistered (e.g., during a deployment or auto-scaling termination). With draining enabled (default 300 seconds), the LB stops sending new connections to the deregistering target but keeps existing connections alive for up to the configured timeout. When all connections complete (or timeout), the target is removed. Setting this too short breaks long-lived API calls; setting it too long slows deployments and scale-in events. For short-request APIs, 30 seconds is typically sufficient.

---

### 7. Cross-Cloud Mental Map

| Concept | AWS | Azure | GCP |
|---|---|---|---|
| L7 HTTP/S load balancer | ALB | Application Gateway | HTTP(S) Load Balancer |
| L4 TCP/UDP high-perf LB | NLB | Standard Load Balancer | Network Load Balancer (regional) |
| Transparent inline inspection | GWLB + GENEVE | Azure Firewall (managed appliance) | Packet mirroring or Cloud IDS |
| Static IP per zone | NLB + Elastic IP | Standard LB + static public IP | Network LB with static IP |
| Certificate management | ACM | App Service Certificates / Key Vault | Google-managed SSL certificates |
| WAF integration | ALB + AWS WAF | Application Gateway WAF | Cloud Armor on HTTP LB |
| Sticky sessions | ALB duration/app cookie | Application Gateway affinity | HTTP LB session affinity |

---

## Hands-On Activity Guide

### Prerequisites
- VPC with public and private subnets.
- Two EC2 instances in private subnets running a simple HTTP server (e.g., `python3 -m http.server 80`).
- ACM certificate for a test domain (optional for TLS lab).
- AWS CLI configured.

---

### Lab 1: ALB with Host-Based and Path-Based Routing

```bash
# 1. Create target group for web tier
TG_WEB=$(aws elbv2 create-target-group \
  --name tg-web --protocol HTTP --port 80 --vpc-id $VPC_ID \
  --health-check-path "/" --health-check-interval-seconds 30 \
  --query 'TargetGroups[0].TargetGroupArn' --output text)

# 2. Register EC2 instances in target group
aws elbv2 register-targets --target-group-arn $TG_WEB \
  --targets Id=$INSTANCE_1 Id=$INSTANCE_2

# 3. Create ALB in public subnets
ALB_ARN=$(aws elbv2 create-load-balancer \
  --name lab-alb --type application \
  --subnets $PUB_SUBNET_AZ1 $PUB_SUBNET_AZ2 \
  --security-groups $ALB_SG \
  --query 'LoadBalancers[0].LoadBalancerArn' --output text)

# 4. Create HTTPS listener (requires ACM cert)
aws elbv2 create-listener \
  --load-balancer-arn $ALB_ARN \
  --protocol HTTPS --port 443 \
  --certificates CertificateArn=$ACM_CERT_ARN \
  --default-actions Type=forward,TargetGroupArn=$TG_WEB

# 5. Add path-based rule: /api/* → different target group
aws elbv2 create-rule \
  --listener-arn $LISTENER_ARN \
  --conditions Field=path-pattern,Values='/api/*' \
  --priority 10 \
  --actions Type=forward,TargetGroupArn=$TG_API

# Verify rule evaluation
aws elbv2 describe-rules --listener-arn $LISTENER_ARN \
  --query 'Rules[*].[Priority,Conditions,Actions]' --output table
```

---

### Lab 2: NLB with Static Elastic IP

```bash
# 1. Allocate Elastic IPs for each AZ
EIP_AZ1=$(aws ec2 allocate-address --domain vpc --query 'AllocationId' --output text)
EIP_AZ2=$(aws ec2 allocate-address --domain vpc --query 'AllocationId' --output text)

# 2. Create NLB assigning EIPs per AZ
NLB_ARN=$(aws elbv2 create-load-balancer \
  --name lab-nlb --type network --scheme internet-facing \
  --subnet-mappings SubnetId=$PUB_SUBNET_AZ1,AllocationId=$EIP_AZ1 \
                   SubnetId=$PUB_SUBNET_AZ2,AllocationId=$EIP_AZ2 \
  --query 'LoadBalancers[0].LoadBalancerArn' --output text)

# 3. Create TCP target group
TG_TCP=$(aws elbv2 create-target-group \
  --name tg-tcp --protocol TCP --port 80 --vpc-id $VPC_ID \
  --query 'TargetGroups[0].TargetGroupArn' --output text)

# 4. Create TCP listener
aws elbv2 create-listener \
  --load-balancer-arn $NLB_ARN \
  --protocol TCP --port 80 \
  --default-actions Type=forward,TargetGroupArn=$TG_TCP

# Note the static IPs assigned to the NLB
aws ec2 describe-addresses --allocation-ids $EIP_AZ1 $EIP_AZ2
```

---

## Troubleshooting Guide

| Symptom | Most Likely Cause | Diagnostic Step | Fix |
|---|---|---|---|
| ALB 502 Bad Gateway | Backend instance not listening on health check port, or SG blocks port | Check target health: `aws elbv2 describe-target-health --target-group-arn <arn>` | Fix backend listening port; update SG to allow ALB SG on target port |
| ALB 503 Service Unavailable | All targets unhealthy or target group empty | Same as above — check target health and count | Register healthy targets; fix health check path |
| Requests not matching expected path rule | Rules evaluated in wrong priority order, or rule condition syntax wrong | `aws elbv2 describe-rules --listener-arn <arn>` — check priority numbers | Fix rule priorities; verify condition syntax uses correct field name |
| Backend sees wrong client IP | Using ALB (X-Forwarded-For needed) and backend not reading the header | Check backend application reads `X-Forwarded-For`; for NLB, client IP is in actual source | Update backend to use `X-Forwarded-For` header for client IP |
| NLB intermittent connection failures | Security group blocking new connections after cross-zone traffic | NLB passes real client IP; SG must allow client IP ranges, not just NLB IPs | Update target SG to allow the client CIDR or NLB subnet CIDRs |
| Stickiness not holding sessions | Cookie domain mismatch, or sticky session not enabled on target group | Check `aws elbv2 describe-target-group-attributes` for stickiness settings | Enable stickiness and ensure correct cookie domain |
| GWLB traffic not reaching appliance | GWLB endpoint route missing in spoke VPC route table | Check route table: 0.0.0.0/0 should point to GWLBe | Add route for internet-bound traffic to GWLBe |
| Deregistration takes too long | Deregistration delay (connection draining) set too high | Check attribute `deregistration_delay.timeout_seconds` on target group | Reduce timeout for APIs with short request durations |

---

## Quick Revision Sheet

- **ALB** = L7, HTTP/HTTPS/gRPC, content-based rules, WAF integration, X-Forwarded-For for client IP
- **NLB** = L4, TCP/UDP/TLS, static EIP per AZ, client IP preserved in packet, extreme throughput
- **GWLB** = L3, transparent inline inspection via GENEVE 6081, used with third-party appliances
- **Cross-zone LB** = ALB default ON; NLB default OFF
- **Target group** = pool of backends (EC2, IP, Lambda, ECS); health check per target group
- **Listener rule** = priority-ordered conditions → actions; default rule is last resort
- **TLS terminate** = at ALB/NLB, ACM manages certs, backend gets plain traffic
- **TLS pass-through** = NLB TCP listener only; backend terminates TLS
- **mTLS on ALB** = configure trust store with CA cert; ALB validates client certificate
- **Connection draining** = keeps existing connections alive during target deregistration; default 300s
- **Sticky sessions** = LB or app-cookie based; avoid for stateless apps; creates imbalance risk
- **ALB access log** = bucket-level logging with full request details; not real-time

## How To Use This File
1. Read the theory sections first so the service or platform model is clear before you touch the console.
2. Work through the hands-on modules in order and record what the platform proves versus what you only assumed.
3. Compare the AWS pattern with Azure and GCP when possible so the idea becomes cloud-portable.
4. Use the troubleshooting table when behavior is confusing instead of guessing from one console view.
5. Revisit the quick revision sheet before a design review, exam session, or migration plan.

## Theoretical Notes

### 1. Load Balancing Mental Model

Load Balancing Mental Model sets the boundary for load balancing, because it explains what the platform owns, what the operator owns, and where the first failure usually appears. When that boundary is fuzzy, teams tend to misread symptoms and make design choices in load balancing that solve the wrong problem. In practice, the durable way to learn load balancing is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 2. Layer Choice Matters

Layer Choice Matters matter because they determine how the control plane, data path, and identity or addressing model actually work inside load balancing. Understanding those building blocks makes it easier to compare AWS behavior with Azure and GCP instead of memorizing vendor-specific wording. In practice, the durable way to learn load balancing is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 3. Trust and Session Behavior

Trust and Session Behavior are where scale, resilience, and governance turn basic feature knowledge into durable system design for load balancing. This is usually the part of the topic that separates a passing lab from a design that still behaves well under real traffic and operator pressure. In practice, the durable way to learn load balancing is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 4. Observability is part of the network design

Load balancing is only trustworthy when the team can prove what path traffic takes and which layer is allowed to change that path. Without those signals, networking problems inside load balancing often masquerade as random application or infrastructure failures. In practice, the durable way to learn load balancing is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 5. Cross-cloud mapping keeps the boundary clear

Mapping load balancing to Azure and GCP helps separate the underlying networking concept from the AWS product packaging around it. That usually makes both troubleshooting and migration planning easier because the real control surface stays visible. In practice, the durable way to learn load balancing is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 6. Cross-Cloud Mental Map

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Layer 7 entry | Application Load Balancer | Application Gateway | External HTTP(S) Load Balancer |
| Layer 4 entry | Network Load Balancer | Azure Load Balancer | Passthrough TCP/UDP load balancing |
| Appliance insertion | Gateway Load Balancer | NVA chaining patterns | Service chaining patterns |
| Health-aware backend pool | Target groups | Backend pools | Backend services |
| Edge acceleration | CloudFront in front of ALB | Front Door in front of App Gateway | Global edge balancing plus Cloud Armor |

## Hands-On Activity Guide

### Prerequisites and Safety Rules
- Use a sandbox account or non-production subscription and set a budget alert before creating resources.
- Keep naming, tagging, and cleanup disciplined so you can remove every lab artifact after practice.
- Prefer the smallest viable instances or service tiers unless the learning goal specifically depends on scale.
- Record both the intended design and the first thing that contradicted your expectation.

### Module 1: Load Balancing Mental Model

**Goal:** Turn load balancing mental model for load balancing into one observable and repeatable workflow.

1. Review the load balancing mental model section in the curated raw material for Load Balancing.
2. Build or diagram one small AWS scenario that proves the core behavior behind load balancing mental model.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 2: Layer Choice Matters

**Goal:** Turn layer choice matters for load balancing into one observable and repeatable workflow.

1. Review the layer choice matters section in the curated raw material for Load Balancing.
2. Build or diagram one small AWS scenario that proves the core behavior behind layer choice matters.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 3: Trust and Session Behavior

**Goal:** Turn trust and session behavior for load balancing into one observable and repeatable workflow.

1. Review the trust and session behavior section in the curated raw material for Load Balancing.
2. Build or diagram one small AWS scenario that proves the core behavior behind trust and session behavior.
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
| Behavior contradicts the load balancing model | The intended control boundary was never translated into a concrete policy, route, identity path, or recovery signal | Re-check the mental model, then inspect the first control plane, data plane, and evidence source that should prove it |

## Quick Revision Sheet
- Decide what boundary or path load balancing is supposed to control before you add more routes, policies, or services.
- Decide how identity, DNS, and routing assumptions should be documented around load balancing.
- Decide which layer should own reachability, security, and failover behavior in load balancing.
- Decide which telemetry proves that load balancing is working as designed instead of only appearing configured.
- Keep the mental model for load balancing tied to observable signals instead of memorized labels.

## Self-Check Questions
1. What is the primary control boundary in load balancing, and how would you explain it to a teammate?
2. Which failure mode would appear first if the design assumption were wrong?
3. What signal, log, or metric would you inspect before changing the architecture under pressure?
4. Which Azure or GCP equivalent helps confirm that you understand the concept rather than only the product name?
5. What part of this topic would become the hardest to operate at scale if left implicit?
