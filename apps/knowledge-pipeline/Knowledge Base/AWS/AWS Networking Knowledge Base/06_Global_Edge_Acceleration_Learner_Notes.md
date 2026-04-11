# Global Edge Acceleration Learner Notes

This file is a learner-first companion to `06_Global_Edge_Acceleration.md`.
It is structured as topic-specific theory notes, a hands-on activity guide, and closing revision material so the raw knowledge base becomes easier to study and reuse.

Source authority: 22 processed source files, 1148 extracted non-empty transcript lines. The architect-level concepts are drawn directly from the curated primary knowledge base for this topic.

## How To Use This File
1. Read the theory sections to understand why CloudFront and Global Accelerator are complementary, not competing.
2. Work through the lab for CloudFront distribution setup and origin configuration before testing Global Accelerator.
3. Use the decision table in section 3 before choosing an edge service for an architecture question.
4. Use the troubleshooting table when edge traffic is slower than expected or origins are blocked.
5. Revisit the quick revision sheet before design reviews involving global user distribution or DDoS posture.

---

## Theoretical Notes

### 1. The Edge Mental Model: Two Different Problems

AWS has two global edge services built on the same global Point of Presence (PoP) network, but they solve fundamentally different problems. The most common mistake is treating CloudFront and Global Accelerator as interchangeable or assuming one subsumes the other.

**CloudFront** is a Content Delivery Network (CDN) and HTTP proxy. Its primary value is caching — serving content from an edge location close to the user so the origin never has to answer the same request twice. It understands HTTP/HTTPS/HTTP2/WebSocket, can execute code at the edge (CloudFront Functions, Lambda@Edge), applies WAF rules, performs geo-restriction, and integrates with ACM for free TLS certificates. CloudFront is the right choice when: your content is cacheable, your application is HTTP/HTTPS, you need WAF protection at the edge, or you need to serve global users with minimal origin load.

**Global Accelerator** is a TCP/UDP transport optimizer. It does not cache content — it routes traffic over the AWS global backbone (private fiber between AWS PoPs and regions) instead of the public internet, reducing the number of unpredictable public internet hops. It provides two static Anycast IP addresses that work globally; traffic enters the AWS network at the nearest PoP and travels the backbone to the origin region. Global Accelerator is the right choice when: you need static IPs for DNS or firewall whitelisting, your traffic is TCP/UDP (non-HTTP) such as gaming, IoT, or financial applications, you need deterministic sub-second failover between AWS regions, or your application is not cacheable but you still want reduced latency.

Many production architectures use both: CloudFront for the cacheable HTTP layer (static assets, CDN), and Global Accelerator for the non-cacheable API layer or for services requiring static IP.

---

### 2. CloudFront Architecture: Origins, Distributions, and Behaviors

A CloudFront distribution is the unit of configuration. It has one or more origins (the sources of truth for content), one or more cache behaviors (rules that map URL patterns to origin + cache settings), and optional edge function associations.

Origins can be: S3 buckets (ideal for static assets), ALBs or EC2 instances (for dynamic content), API Gateway endpoints, or any HTTP endpoint reachable from the internet (or via OriginShield). For S3 origins, Origin Access Control (OAC) is the current replacement for the older Origin Access Identity (OAI) — it restricts bucket access so that only CloudFront can read objects (the bucket itself is private; direct S3 URL access is blocked). This is the standard security pattern for static site hosting.

Cache behaviors define the cache rule for each URL path pattern. The default behavior matches everything (`*`). Custom behaviors with higher priority match specific paths first (e.g., `/api/*` can bypass cache entirely while `/static/*` uses a long TTL cache). Key settings per behavior: allowed HTTP methods, cache policy (TTL, query string/header/cookie forwarding settings), origin request policy (what context is forwarded to the origin), and viewer protocol policy (redirect HTTP to HTTPS, HTTPS only, or allow both).

Edge computing: **CloudFront Functions** run at all edge PoPs, are lightweight (1ms max runtime), and are ideal for header manipulation, URL rewrites, and request/response modifications at massive scale. **Lambda@Edge** runs in select regional edge locations, supports larger code packages, can access external resources, and is suitable for more complex logic like A/B testing, user authentication, and personalization.

---

### 3. Global Accelerator: Anycast Entry and Backbone Transport

Global Accelerator assigns two static Anycast IPv4 addresses to an accelerator. Anycast means the same IP is announced from multiple AWS PoPs simultaneously; client packets are routed by BGP to the nearest PoP. Once the packet enters the AWS network at that PoP, it travels over the AWS private backbone to the endpoint in the configured AWS region.

The performance benefit: the public internet has variable routing, congestion, and hop count. AWS backbone has dedicated capacity, predictable routing, and AWS-managed QoS. For users far from your origin region, the difference in sustained throughput and tail latency can be significant.

Endpoint groups are configured per AWS region. Each endpoint group contains one or more endpoints: ALBs, NLBs, EC2 instance IPs, or Elastic IPs. Each endpoint group has a traffic dial (0–100%) for gradual traffic migration — set dial to 0 on a region to drain it, 100 to send full traffic. Health checks run from the Global Accelerator network to each endpoint; unhealthy endpoints are automatically removed.

Failover behavior: when all endpoints in a region fail their health checks, Global Accelerator automatically routes traffic to the next healthiest region — typically within seconds, not minutes. This is faster than DNS-based failover (which requires TTL expiration). The static Anycast IP doesn't change, so clients don't need to re-resolve DNS after failover.

---

### 4. DDoS Posture and Origin Protection

Both CloudFront and Global Accelerator include AWS Shield Standard at no additional cost. Shield Standard provides automatic protection against common network and transport layer DDoS attacks (volumetric attacks, SYN floods, reflection attacks). It is always-on at the edge.

For CloudFront specifically, WAF (Web Application Firewall) can be attached to the distribution to filter at Layer 7: SQL injection, XSS, IP reputation lists, rate limiting, geographic blocking, custom rule sets. WAF rules are evaluated at edge PoPs before the request reaches your origin. This means a DDoS attack generating millions of L7 requests can be absorbed and filtered at the edge without those requests ever touching your ALB or EC2 origin.

Origin shielding is an optional CloudFront feature that routes all origin requests through a single designated region (the origin shield region) before reaching the actual origin. This dramatically reduces the number of origin connections during cache misses (from requests coming from 400+ PoPs simultaneously to requests coming from one shield region), reducing origin load and cost.

Shield Advanced (separate paid service) provides enhanced DDoS defense, dedicated DRT (DDoS Response Team) support, cost protection for scaling events caused by DDoS, and real-time attack visibility. It should be enabled for business-critical or high-revenue applications where DDoS disruption has material impact.

---

### 5. Cache Invalidation and Content Freshness

CloudFront caches objects at edge PoPs based on the `Cache-Control` or `Expires` headers from the origin. When you update content in S3 or on an origin server, the cached version at edge PoPs is served until the TTL expires. To force immediate freshness, you issue a cache invalidation.

Invalidation paths: you can invalidate specific files (`/images/logo.png`), path prefixes (`/images/*`), or the entire cache (`/*`). The first 1,000 paths per month are free; additional paths cost per path. Invalidation propagates to all edge PoPs but is not instantaneous — it typically completes within a few minutes but can take up to 15 minutes for full global propagation.

The production best practice for avoiding cache invalidation complexity: use versioned filenames or content hashes in your asset filenames (e.g., `app.a1b2c3d4.js`). This means each new deployment results in a new path, CloudFront naturally serves the new asset from origin on the first request (cache miss), and old assets expire naturally. This also enables long TTL values (24+ hours) without worrying about stale content.

---

### 6. Cross-Cloud Mental Map

| Concept | AWS | Azure | GCP |
|---|---|---|---|
| CDN / edge cache | CloudFront | Azure CDN / Front Door | Cloud CDN |
| Global TCP/UDP accelerator | Global Accelerator | Azure Traffic Manager (DNS-based) | Premium Network Tier |
| Static Anycast IP | Global Accelerator | Cross-region load balancer (preview) | Premium NE global LB |
| WAF at edge | CloudFront + AWS WAF | Front Door WAF | Cloud Armor (Global HTTP LB) |
| DDoS protection (included) | Shield Standard on CF/GA | Azure DDoS Basic on all resources | HTTP LB included DDoS |
| Edge compute / custom logic | CloudFront Functions, Lambda@Edge | Front Door Rules Engine | Cloud CDN signed URLs; serverless NEG |
| Origin access control (S3) | OAC (Origin Access Control) | Azure CDN + Private Link | Backend bucket with IAM |

---

## Hands-On Activity Guide

### Prerequisites
- S3 bucket with public access blocked and a few test files.
- AWS CLI configured with CloudFront and Global Accelerator permissions.
- A domain in Route 53 (optional, for custom CNAME to distribution).
- An ALB or EC2 instance as an application origin (for Global Accelerator lab).

---

### Lab 1: CloudFront Distribution with S3 Origin (OAC)

```bash
# 1. Create OAC (Origin Access Control) for S3
OAC_ID=$(aws cloudfront create-origin-access-control \
  --origin-access-control-config '{
    "Name": "s3-oac",
    "Description": "OAC for S3 origin",
    "SigningProtocol": "sigv4",
    "SigningBehavior": "always",
    "OriginAccessControlOriginType": "s3"
  }' \
  --query 'OriginAccessControl.Id' --output text)

# 2. Create CloudFront distribution
DIST_ID=$(aws cloudfront create-distribution \
  --distribution-config '{
    "Origins": {
      "Quantity": 1,
      "Items": [{
        "Id": "s3-origin",
        "DomainName": "my-bucket.s3.us-east-1.amazonaws.com",
        "S3OriginConfig": {"OriginAccessIdentity": ""},
        "OriginAccessControlId": "'"$OAC_ID"'"
      }]
    },
    "DefaultCacheBehavior": {
      "TargetOriginId": "s3-origin",
      "ViewerProtocolPolicy": "redirect-to-https",
      "CachePolicyId": "658327ea-f89d-4fab-a63d-7e88639e58f6",
      "Compress": true
    },
    "Comment": "Lab distribution",
    "DefaultRootObject": "index.html",
    "Enabled": true,
    "CallerReference": "lab-dist-'"$(date +%s)"'"
  }' \
  --query 'Distribution.Id' --output text)

echo "Distribution: $DIST_ID"

# 3. Update S3 bucket policy to allow CloudFront OAC
# Replace DIST_ARN and BUCKET_NAME with actual values
aws s3api put-bucket-policy --bucket my-bucket --policy '{
  "Statement": [{
    "Effect": "Allow",
    "Principal": {"Service": "cloudfront.amazonaws.com"},
    "Action": "s3:GetObject",
    "Resource": "arn:aws:s3:::my-bucket/*",
    "Condition": {
      "StringEquals": {
        "AWS:SourceArn": "arn:aws:cloudfront::123456789:distribution/'"$DIST_ID"'"
      }
    }
  }]
}'

# 4. Test distribution (wait for Deployed state)
aws cloudfront get-distribution --id $DIST_ID \
  --query 'Distribution.Status' --output text
```

---

### Lab 2: Cache Invalidation

```bash
# Invalidate specific path
aws cloudfront create-invalidation \
  --distribution-id $DIST_ID \
  --paths '/images/*' '/index.html'

# Invalidate entire cache
aws cloudfront create-invalidation \
  --distribution-id $DIST_ID \
  --paths '/*'

# Check invalidation status
aws cloudfront list-invalidations --distribution-id $DIST_ID \
  --query 'InvalidationList.Items[*].[Id,Status,CreateTime]' --output table
```

---

### Lab 3: Global Accelerator with ALB Endpoint

```bash
# 1. Create Global Accelerator
GA_ARN=$(aws globalaccelerator create-accelerator \
  --name lab-ga \
  --ip-address-type IPV4 \
  --enabled \
  --query 'Accelerator.AcceleratorArn' --output text)

# Note the two static Anycast IPs
aws globalaccelerator describe-accelerator --accelerator-arn $GA_ARN \
  --query 'Accelerator.IpSets'

# 2. Create listener on port 443
LISTENER_ARN=$(aws globalaccelerator create-listener \
  --accelerator-arn $GA_ARN \
  --protocol TCP \
  --port-ranges '[{"FromPort": 443, "ToPort": 443}]' \
  --query 'Listener.ListenerArn' --output text)

# 3. Create endpoint group in us-east-1 with ALB
aws globalaccelerator create-endpoint-group \
  --listener-arn $LISTENER_ARN \
  --endpoint-group-region us-east-1 \
  --traffic-dial-percentage 100 \
  --endpoint-configurations '[{
    "EndpointId": "'"$ALB_ARN"'",
    "Weight": 100,
    "ClientIPPreservationEnabled": true
  }]'
```

---

## Troubleshooting Guide

| Symptom | Most Likely Cause | Diagnostic Step | Fix |
|---|---|---|---|
| CloudFront returns 403 Forbidden on S3 files | OAC/OAI not configured or bucket policy missing | Check bucket policy for CloudFront principal; verify OAC ID in distribution | Add correct bucket policy allowing CloudFront OAC |
| Content not updating after origin change | Cache TTL not expired; invalidation not issued | Check `Cache-Control` headers from origin; check last invalidation run time | Issue invalidation or use versioned file names |
| Origin receiving too many requests | CloudFront cache miss rate high (query strings not normalized) | Check CloudFront cache hit rate metric in CloudWatch | Adjust cache policy to normalize or exclude query strings; enable origin shield |
| Global Accelerator endpoint marked unhealthy | Health check failing or SG blocking GA health check IPs | Check ALB/EC2 health; review SG to allow Global Accelerator IP ranges | Allow Global Accelerator health check IPs (consult AWS IP ranges) in SG |
| Higher latency than expected with CloudFront | Origin requests from far PoPs (no origin shield), or behavior has no caching | Enable origin shield; check cache policy (should not be all-pass) | Enable origin shield for the distribution |
| WAF blocking legitimate traffic | WAF rule too broad or IP reputation list false positive | Check WAF logs in CloudWatch; review blocked request samples | Create allow rule for false-positive traffic pattern; tune rule sensitivity |
| Global Accelerator not failing over during test | Traffic dial still at 100% on failing region, or health checks passing | Check GA endpoint group health and traffic dial values | Set traffic dial to 0 on failed region; verify health checks are configured |
| CloudFront geo-restriction blocking unexpected users | IP geo-mapping mismatch | Check user's actual IP classification with CloudFront geo-headers | Adjust allowlist/blocklist; use Route 53 Geolocation for more precise control |

---

## Quick Revision Sheet

- **CloudFront** = CDN + HTTP proxy + caching; understand HTTP; integrates with WAF and ACM; edge compute via Functions/Lambda@Edge
- **Global Accelerator** = TCP/UDP transport optimizer; static Anycast IPs; AWS backbone routing; NOT HTTP-aware; NOT a CDN
- **Origin Access Control (OAC)** = restricts S3 bucket to CloudFront-only access; current best practice (replaces OAI)
- **Cache behavior** = URL-pattern-to-origin mapping with TTL and forwarding rules; evaluated in priority order
- **CloudFront Functions** = ultra-lightweight (1ms), at all PoPs; for header/URL manipulation
- **Lambda@Edge** = heavier compute at regional PoPs; can call external APIs; for auth, personalization
- **Origin Shield** = single intermediate caching tier to reduce origin load; optional
- **Invalidation** = forces cache refresh; first 1,000 paths/month free; use versioned filenames to avoid it
- **Shield Standard** = included with CloudFront and GA; protects L3/L4 DDoS automatically
- **Shield Advanced** = paid; adds DRT support, cost protection, real-time visibility
- **Traffic dial** = per-endpoint-group setting in GA; 0–100% for gradual migration
- **Anycast** = same IP announced from multiple PoPs; BGP routes client to nearest PoP automatically

## How To Use This File
1. Read the theory sections first so the service or platform model is clear before you touch the console.
2. Work through the hands-on modules in order and record what the platform proves versus what you only assumed.
3. Compare the AWS pattern with Azure and GCP when possible so the idea becomes cloud-portable.
4. Use the troubleshooting table when behavior is confusing instead of guessing from one console view.
5. Revisit the quick revision sheet before a design review, exam session, or migration plan.

## Theoretical Notes

### 1. Edge Mental Model

Edge Mental Model sets the boundary for global edge acceleration, because it explains what the platform owns, what the operator owns, and where the first failure usually appears. When that boundary is fuzzy, teams tend to misread symptoms and make design choices in global edge acceleration that solve the wrong problem. In practice, the durable way to learn global edge acceleration is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 2. Caching vs Transport Optimization

Caching vs Transport Optimization matter because they determine how the control plane, data path, and identity or addressing model actually work inside global edge acceleration. Understanding those building blocks makes it easier to compare AWS behavior with Azure and GCP instead of memorizing vendor-specific wording. In practice, the durable way to learn global edge acceleration is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 3. Global Entry Constraints

Global Entry Constraints are where scale, resilience, and governance turn basic feature knowledge into durable system design for global edge acceleration. This is usually the part of the topic that separates a passing lab from a design that still behaves well under real traffic and operator pressure. In practice, the durable way to learn global edge acceleration is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 4. Observability is part of the network design

Global edge acceleration is only trustworthy when the team can prove what path traffic takes and which layer is allowed to change that path. Without those signals, networking problems inside global edge acceleration often masquerade as random application or infrastructure failures. In practice, the durable way to learn global edge acceleration is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 5. Cross-cloud mapping keeps the boundary clear

Mapping global edge acceleration to Azure and GCP helps separate the underlying networking concept from the AWS product packaging around it. That usually makes both troubleshooting and migration planning easier because the real control surface stays visible. In practice, the durable way to learn global edge acceleration is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 6. Cross-Cloud Mental Map

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| CDN edge cache | CloudFront | Azure Front Door | Cloud CDN |
| Static anycast acceleration | Global Accelerator | Front Door and Traffic Manager patterns | Global load balancing plus Premium Tier |
| Origin protection | OAC, origin shielding, WAF layering | Private origins and WAF | Cloud Armor plus private origin patterns |
| TLS at the edge | ACM plus CloudFront | Managed certificates on Front Door | Managed certificates on external HTTPS load balancing |
| Global routing control | Edge POP selection and accelerator endpoints | Front Door global routing | Google edge routing and global balancing |

## Hands-On Activity Guide

### Prerequisites and Safety Rules
- Use a sandbox account or non-production subscription and set a budget alert before creating resources.
- Keep naming, tagging, and cleanup disciplined so you can remove every lab artifact after practice.
- Prefer the smallest viable instances or service tiers unless the learning goal specifically depends on scale.
- Record both the intended design and the first thing that contradicted your expectation.

### Module 1: Edge Mental Model

**Goal:** Turn edge mental model for global edge acceleration into one observable and repeatable workflow.

1. Review the edge mental model section in the curated raw material for Global Edge Acceleration.
2. Build or diagram one small AWS scenario that proves the core behavior behind edge mental model.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 2: Caching vs Transport Optimization

**Goal:** Turn caching vs transport optimization for global edge acceleration into one observable and repeatable workflow.

1. Review the caching vs transport optimization section in the curated raw material for Global Edge Acceleration.
2. Build or diagram one small AWS scenario that proves the core behavior behind caching vs transport optimization.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 3: Global Entry Constraints

**Goal:** Turn global entry constraints for global edge acceleration into one observable and repeatable workflow.

1. Review the global entry constraints section in the curated raw material for Global Edge Acceleration.
2. Build or diagram one small AWS scenario that proves the core behavior behind global entry constraints.
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
| Behavior contradicts the global edge acceleration model | The intended control boundary was never translated into a concrete policy, route, identity path, or recovery signal | Re-check the mental model, then inspect the first control plane, data plane, and evidence source that should prove it |

## Quick Revision Sheet
- Decide what boundary or path global edge acceleration is supposed to control before you add more routes, policies, or services.
- Decide how identity, DNS, and routing assumptions should be documented around global edge acceleration.
- Decide which layer should own reachability, security, and failover behavior in global edge acceleration.
- Decide which telemetry proves that global edge acceleration is working as designed instead of only appearing configured.
- Keep the mental model for global edge acceleration tied to observable signals instead of memorized labels.

## Self-Check Questions
1. What is the primary control boundary in global edge acceleration, and how would you explain it to a teammate?
2. Which failure mode would appear first if the design assumption were wrong?
3. What signal, log, or metric would you inspect before changing the architecture under pressure?
4. Which Azure or GCP equivalent helps confirm that you understand the concept rather than only the product name?
5. What part of this topic would become the hardest to operate at scale if left implicit?
