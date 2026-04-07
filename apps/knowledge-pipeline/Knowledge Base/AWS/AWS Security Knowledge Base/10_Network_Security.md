# 10_Network_Security.md

## Scope
- Source set: Specialty Domain 3 network security + SAA WAF/Shield + SAP Security network files
- Files processed: 40
- Extracted non-empty transcript lines: 1719
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 3 Topic 1: Network Security)

This section converts transcript signals into production-focused learning for perimeter, edge, and network-layer defense design.

### Phase 1 - Foundations

#### Module 1: Defense Layers in Cloud Networking
- Edge layer: CDN and application-entry controls.
- Web/application layer: HTTP/S inspection and threat filtering.
- Network layer: stateful/stateless packet and flow controls.
- Governance layer: centralized policy rollout and compliance tracking.


##### Source Transcript Details
- Module focus: Defense Layers in Cloud Networking
- Primary transcript files:
- outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt
- outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/108_CloudFront - Other.txt
- outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/106_[DVA] CloudFront - Field Level Encryption.txt
- outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt
- outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/102_[SAA_DVA_SOA] CloudFront - ALB_EC2 as an Origin.txt
- outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/107_CloudFront - Origin Access Control and Origin Access Identity (OAC & OAI).txt
- outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt
- outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/104_[DVA] CloudFront - Signed URL & Cookies.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/032_AWS WAF - Web Application Firewall.txt
- outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/115_[SAA] DDoS Attack Protection.txt
- Top concept clusters from transcript metadata:
- Network Security Operational Context
- Edge Security
- Perimeter Defense
- Policy Enforcement
- Traffic Filtering
- DDoS Resilience
- Network Segmentation
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 40
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1719
- Key insights inside selected files: 426
- Unique concept tags in selected files: 7

##### Transcript-Enriched Learning Notes
- Now let's talk about CloudFront.
- CloudFront is a content delivery network or CDN.
- So anytime you see CDN in the exam, think CloudFront.
- CloudFront is made of hundreds of points of presence globally and that includes edge locations and caches across the world.
- We'll see this later on in this course, and the idea is that CloudFront, because your application is worldwide, then you're protected against these attacks also using something called Shield and Web Application Firewa...
- Then what the user will do is that it will request the content from an American edge location using CloudFront and CloudFront will be able to fetch the content from Australia.
- CloudFront has several origins, which are basically backends that you want CloudFront to connect to.
- Or to upload files directly into Amazon S3 through Amazon CloudFront.
- And the access between CloudFront and Amazon S3 is secured using something called origin access control or OAC.
- You can also connect CloudFront to anything within your VPC.
- For example, if you have a public load balancer, you can connect it directly into CloudFront.
- So at a high level, how does CloudFront work?
- So if we have S3 as an origin, then if we look at the cloud, your S3 bucket is your origin in some region, and then you have edge locations all around the world, for example, at Los Angeles, and your users accessing t...
- So using CloudFront and the edge locations, we can see that the content of our S3 bucket in one region can be distributed all around the world through the edge locations or points of presence.
- So one question that's common is what is the difference between CloudFront and something like S3 replication?
- Well, if you have CloudFront, you're using the Global Edge network.
- CloudFront is a CDN, which is to cache content all around the world, whereas S3 cross region replication is to really replicate an entire bucket into another region.
- So hopefully that makes sense about CloudFront.

##### Polished Architect Notes
- Transcript signals that let's talk about CloudFront.
- Transcript signals that cloudFront is a content delivery network or CDN.
- Transcript signals that anytime you see CDN in the exam, think CloudFront.
- Transcript signals that cloudFront is made of hundreds of points of presence globally and that includes edge locations and caches across the world.
- Transcript signals that we'll see this later on in this course, and the idea is that CloudFront, because your application is worldwide, then you're protected against these attacks also using something called Shield and Web Application Fi...
- Transcript signals that what the user will do is that it will request the content from an American edge location using CloudFront and CloudFront will be able to fetch the content from Australia.
- Transcript signals that cloudFront has several origins, which are basically backends that you want CloudFront to connect to.
- Transcript signals that or to upload files directly into Amazon S3 through Amazon CloudFront.
- Transcript signals that the access between CloudFront and Amazon S3 is secured using something called origin access control or OAC.
- Transcript signals that you can also connect CloudFront to anything within your VPC.
- Transcript signals that for example, if you have a public load balancer, you can connect it directly into CloudFront.
- Transcript signals that at a high level, how does CloudFront work?

##### Architect Synthesis (Transcript-Derived)
- Treat Network Security Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Edge Security as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Perimeter Defense as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Policy Enforcement as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Traffic Filtering as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: let's talk about CloudFront.
- Design implication: cloudFront is a content delivery network or CDN.
- Design implication: anytime you see CDN in the exam, think CloudFront.
#### Module 2: Threat Classes Covered
- Volumetric and protocol abuse (DDoS families).
- Application abuse and known web exploit vectors.
- Origin exposure and bypass attempts.
- Misconfigured network boundaries and policy drift.


##### Source Transcript Details
- Module focus: Threat Classes Covered
- Primary transcript files:
- outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/117_[SAA_DVA] API Gateway - Hands On.txt
- outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/093_[SAA_SOA] NACL & Security Groups.txt
- outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/113_WAF - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/032_AWS WAF - Web Application Firewall.txt
- outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/109_WAF - Web Application Firewall.txt
- outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/094_[SAA_SOA] NACL & Security Groups - Hands On.txt
- outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/120_Route 53 - DNSSEC.txt
- outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/116_[SAA_DVA] API Gateway.txt
- outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt
- outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt
- Top concept clusters from transcript metadata:
- Network Security Operational Context
- Edge Security
- Policy Enforcement
- Network Segmentation
- Perimeter Defense
- Traffic Filtering
- DDoS Resilience
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 40
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1719
- Key insights inside selected files: 796
- Unique concept tags in selected files: 7

##### Transcript-Enriched Learning Notes
- So we know that everything is done from a security perspective.
- Okay, so let's go for a very long lecture on Security Groups and Network ACLs or NACLs.
- So let's take an example of a subnet and we know when you have an EC2 instance that we attach a security group to it.
- So the first request goes through the NACL and then it reaches inside the subnets and it goes through the security group inbound rules, okay.
- Now something about security group is that they are stateful.
- So remember NACLs are stateless and security groups are stateful.
- That means that if the request makes it through the inbound rules of the security group and makes it to the EC2 instance, the EC2 instance will then reply with whatever reply there is to do for the application perspec...
- And then the outbound is automatically going to be accepted at the security group level.
- This is because the security group is stateful.
- And the security group outbound rules are not mattering in this example.
- So now that we know that the outbound at the security group level is always allowed because it's stateful, what happens still?
- So the security group this time, so the EC2 instance is making an outbound request.
- And so the EC2 instance will first maybe use, for example, connect to www.google.com, and so therefore the first rules that are going to be evaluated are the security group outbound rules.
- And finally, while the inbound within the subnet at the security level is also going to be allowed no matter what, because of the statefulness of your security group rules.
- So here the inbound rules of your security group do not make a difference because the admin roles was already accepted and your security group is stateful.
- So to summarize, what is the difference between a security group and a NACL?
- Well the security group operates at the instance level, whereas the NACL is at the subnet level.
- The security group supports allow rules only, whereas NACL supports allow and deny rules, this is why you can deny a specific IP address in a NACL.

##### Polished Architect Notes
- Transcript signals that we know that everything is done from a security perspective.
- Transcript signals that so let's go for a very long lecture on Security Groups and Network ACLs or NACLs.
- Transcript signals that let's take an example of a subnet and we know when you have an EC2 instance that we attach a security group to it.
- Transcript signals that the first request goes through the NACL and then it reaches inside the subnets and it goes through the security group inbound rules, okay.
- Transcript signals that something about security group is that they are stateful.
- Transcript signals that remember NACLs are stateless and security groups are stateful.
- Transcript signals that that means that if the request makes it through the inbound rules of the security group and makes it to the EC2 instance, the EC2 instance will then reply with whatever reply there is to do for the application per...
- Transcript signals that then the outbound is automatically going to be accepted at the security group level.
- Transcript signals that this is because the security group is stateful.
- Transcript signals that the security group outbound rules are not mattering in this example.
- Transcript signals that now that we know that the outbound at the security group level is always allowed because it's stateful, what happens still?
- Transcript signals that the security group this time, so the EC2 instance is making an outbound request.

##### Architect Synthesis (Transcript-Derived)
- Treat Network Security Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Edge Security as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Policy Enforcement as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Network Segmentation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Perimeter Defense as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: we know that everything is done from a security perspective.
- Design implication: so let's go for a very long lecture on Security Groups and Network ACLs or NACLs.
- Design implication: let's take an example of a subnet and we know when you have an EC2 instance that we attach a security group to it.
### Phase 2 - Core Services

#### AWS WAF
- Web ACL model with managed and custom rules.
- Actions: allow, block, count, and challenge patterns.
- Design objective: reduce application-layer attack surface before requests reach origins.

#### AWS Shield
- Baseline DDoS protection plus advanced operational controls in enhanced modes.
- Practical use: protect internet-facing resources while preserving service continuity.

#### AWS Firewall Manager
- Centralized enforcement of security policies across organization scope.
- Governance use: consistent WAF/Shield/related policy posture and drift control.

#### AWS Network Firewall
- VPC traffic inspection path for network-layer filtering.
- Design use: enforce segmentation and egress/ingress inspection boundaries.

#### CloudFront Security Controls
- OAC/OAI for origin protection.
- Signed URLs/cookies, geo restriction, and optional field-level encryption patterns.
- Design objective: secure content delivery while limiting origin direct exposure.

### Phase 3 - Advanced Patterns

#### Pattern 1: Layered Perimeter Strategy
- Edge controls (CloudFront + WAF) plus upstream DDoS protections.
- Network firewalling for internal control points.
- Service-level policy governance through central manager account patterns.

#### Pattern 2: Adaptive Traffic Control
- Rate-based and reputation-style filtering for bursty abuse.
- Progressive enforcement workflows: count -> challenge -> block.
- Ensure deterministic rollback for aggressive policies.

#### Pattern 3: Organization-Scale Policy Lifecycle
- Baseline global policy sets with environment-specific exceptions.
- Evidence-driven tuning based on observed false positive rates.

### Phase 4 - System Design (Production)

#### Reference Architecture: Global Edge + Regional Inspection
- Global edge distribution receives traffic and applies web controls.
- DDoS protection absorbs large-scale attacks before origin path overload.
- Regional network inspection enforces deeper policy on selected traffic paths.
- Central governance account controls policy consistency and reporting.

#### Scaling Considerations
- Rule-set growth and policy conflict management.
- Latency impact from over-aggressive deep inspection.
- Multi-region consistency for policy and threat-intel updates.
- Operational overhead of false-positive handling.

#### Cost Considerations
- Protected-resource and inspection-volume-driven spend.
- Cost trade-off between strict filtering and operational troubleshooting overhead.
- Central governance reduces duplicate effort but needs mature ownership model.

### Cross-Cloud Concept Mapping (Network Security)

#### Underlying Concept: Web Application Firewalling
- AWS: WAF
- Azure: Web Application Firewall
- GCP: Cloud Armor WAF controls
- Trade-off: rule semantics vary; preserve common intent and cloud-specific implementation details.

#### Underlying Concept: DDoS Mitigation
- AWS: Shield
- Azure: DDoS Protection
- GCP: Cloud Armor DDoS controls
- Trade-off: protection depth and visibility tooling differ by platform and service attachment model.

#### Underlying Concept: Centralized Security Policy Governance
- AWS: Firewall Manager
- Azure: Policy plus landing-zone governance models
- GCP: Org/folder policy structures and firewall governance patterns
- Trade-off: governance hierarchy differs; map controls to org model early.

### Real-World Use Cases from Transcript Signals
- Defend public application entrypoints from web and DDoS abuse.
- Prevent direct origin access by enforcing edge-origin trust boundaries.
- Standardize security posture across multi-account estates.
- Isolate malicious traffic while maintaining service availability.

### Constraints and Exam-Relevant Traps Captured
- Over-broad blocking rules can self-inflict outages.
- Partial-layer protection creates bypass paths.
- Governance tools enforce consistency but do not replace detection/triage discipline.
## Step 1 â€” Line-by-Line Extraction

Every non-empty line from every source transcript is preserved below with extraction fields.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/031_DDoS and AWS Shield.txt

Line 1:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: Next, we're getting into DDoS attacks.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 2:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: So DDoS stands for Distributed Denial of Service.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It's a way to basically shut down an instance by making it sure it cannot accept any new traffic effectively making it useless and so your users cannot access your application anymore.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the way it works that you have an attacker and you have the application server, and the attacker through some various techniques, that we'll not get into, will be able to have a bunch of computers that are going to be masters and they're going to create bots and the bots will be a lot of them and all the bots are going to get into requesting stuff from our application server in very bad ways, non-conventional ways, and so the application server is overwhelmed, it doesn't know how to respond to this request.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It's going to try as best as it can, but it's gonna be very soon overwhelmed and then it will be just done and so there will be a denial of service.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so your normal users cannot access your application server because it does not respond anymore to normal requests.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It's very dangerous, but it's very common on the internet.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so there are different types of attacks on your infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 9:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: There is DDoS and so it's when your service isn't available because it's receiving too many requests at a high level.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So there's different ones.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: There's SYN Flood, which is a layer four type of attack when there's too many TCP connection requests happening.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: There's UDP Reflection where other servers can send a big UDP request to our server.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: DNS flood attack, where we overwhelm a DNS so that users cannot query our DNS service and then can't find our website, which is bad.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then the Slow Loris attack, where a lot of HTTP connections, so it's layer seven, are opened and maintained and our server is trying to maintain all of them.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The threads are being overwhelmed and the server is useless.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then there's application level attacks which is more complex, more specific and you need to understand how the target application works to make it an application level attack.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 17:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so before it was network based attack, now it's application level.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 18:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so you have some things such as case bursting strategy to overload the backend database with a request to invalidate the cache or you request too many things or you send too many big packets.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 19:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It just depends on your application and the kind of security holes your developers may have introduced while programming your application.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 20:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: Okay, so how do we get protected from DDoS and these application level attacks on AWS?
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 21:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: Well, first for DDoS, there is AWS Shield Standard, and it's to protect against DDoS attacks for your websites, applications, for all customers at no additional cost.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 22:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: So by using AWS, you are somewhat protected, thanks to Shield Standard enabled by default against some DDoS attacks.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 23:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: Then you have Shield Advanced, which gives you 24/7 premium DDoS protection and we'll see in details what that means in the next slide.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 24:
- Concepts: DDoS Resilience, Perimeter Defense, Traffic Filtering
- Services: AWS Shield, AWS WAF
- Key Insights: You have WAF or Web Application Firewall, and this is not specifically for DDoS but it can help you filter specific requests based on rules.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So for example, you can say if the request is more than five megabytes, then drop it right away because it looks like a bad request.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 26:
- Concepts: DDoS Resilience, Traffic Filtering
- Services: AWS Shield, AWS WAF
- Key Insights: So WAF is more against application level protections but it can still help you filter some specific requests based on rules and helps you survive a DDoS attack.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 27:
- Concepts: DDoS Resilience, Edge Security, Perimeter Defense
- Services: AWS Shield, Amazon CloudFront
- Key Insights: We have CloudFront and Route 53 which by default have Shield enabled and they will give you availability protection by using a global edge network.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 28:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So attacking CloudFront and Route 53 is a lot of work.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 29:
- Concepts: DDoS Resilience, Perimeter Defense
- Services: AWS Shield
- Key Insights: And combined with Shield, it provides DDoS attack mitigation directly at the edge of your network.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the traffic never really makes it through to your core application in one region.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 31:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And finally, in case the traffic does reach your applications, then a very good way to protect yourself is to be ready to scale.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 32:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you need to leverage AWS Auto Scaling, such as if some of your servers are overwhelmed that means your at least CPU is skyrocketing close to 100%, then Auto Scaling will kick in and create more instances and so it's going to become more expensive for your attacker to attack these new instances.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 33:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Obviously it's gonna be more expensive for you but you're having some kind of protection against these attacks.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 34:
- Concepts: DDoS Resilience, Edge Security
- Services: AWS Shield, Amazon CloudFront, Elastic Load Balancing
- Key Insights: And then finally, it's a very good idea to separate static resources and distribute them through S3 in CloudFront which is visually very very safe and stable from a DDoS, from dynamic request which are going to be usually smaller requests and that you can handle for your REST API on EC2 and ALB.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 35:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: If you're more interested into DDoS protection as a whole, I'd recommend this white paper right here.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 36:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: Okay, so as a sample architecture to protect yourself against DDoS, you have the DNS service Route 53 that is protected by Shield by default.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 37:
- Concepts: DDoS Resilience, Edge Security, Perimeter Defense
- Services: AWS Shield, AWS WAF, Amazon CloudFront
- Key Insights: Then you have your application distributed by CloudFront where Shield is again enabled by default and you can set up a Web Application Firewall on your CloudFront distribution to protect yourself.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 38:
- Concepts: DDoS Resilience
- Services: AWS Shield, Elastic Load Balancing
- Key Insights: Finally, if the traffic does make it through, then on your load balancer you also have Shield.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 39:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: And then if your application makes you through to your Auto Scaling group, then it's able to scale over there and make sure it can handle the extra bits of traffic from the DDoS attack.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 40:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: Now let's get into Shield.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 41:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: So Shield has two level of service.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 42:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: Shield Standard is free and it's activated for every customer and ON by default.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 43:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And it will provide you protection from SYN attacks, UDP Floods, Reflection attacks and other layer three or four type of attacks.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 44:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Very very good.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 45:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: Shield Advanced is for more enterprise customers.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 46:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: It's an optional DDoS mitigation service.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 47:
- Concepts: Centralized Security Governance, Edge Security
- Services: Amazon CloudFront, Elastic Load Balancing
- Key Insights: It's going to cost you $3,000 per month per organization and you're going to be protected against more sophisticated attacks on your EC2 instance, ELB, CloudFront, AWS Global Accelerator and Route 53.
- Hidden/Implicit Meaning: Edge-distribution security signal; Centralized governance signal.

Line 48:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: On top of it, if you do experience a DDoS, then you have 24/7 access to the AWS DDoS response team, the DRP.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 49:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: And on top of it, if you incur higher fees because you are scaled up with Auto Scaling because you have more requests going into your network, more bandwidth, then you are protected against these higher fees, thanks to the Shield Advanced sort of insurance that you took.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 50:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it's very important for you to understand the difference between these two and understand which one to use in the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 51:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 52:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/032_AWS WAF - Web Application Firewall.txt

Line 1:
- Concepts: Perimeter Defense
- Services: AWS WAF
- Key Insights: Next we have WAF, the Web Application Firewall, which allows you to protect your web applications from common web exploits at the layer seven.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 2:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is the HTTP layer.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 3:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: You can deploy it on the application load balancer to get localized rules.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 4:
- Concepts: Perimeter Defense
- Services: API Gateway
- Key Insights: You can deploy it on the API Gateway to get rules running at the regional or edge level.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 5:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: You can deploy it on CloudFront.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 6:
- Concepts: Edge Security, Perimeter Defense
- Services: AWS WAF, Amazon CloudFront, Elastic Load Balancing
- Key Insights: And these rules are going to be running globally on all edge locations where CloudFront is, and this could be used for example, if you wanted to have a web application firewall for your classic load balancer, your EC2 instances, custom origins, or S3 websites, you would have CloudFront then deploy WAF on CloudFront.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 7:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: You can also deploy it on AppSync, and this is going to allow you to protect your GraphQL APIs directly.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 8:
- Concepts: DDoS Resilience
- Services: AWS Shield, AWS WAF
- Key Insights: So remember that WAF is not used for DDoS protection.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 9:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: For this we have SHIELD.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 10:
- Concepts: Network Security Operational Context
- Services: AWS WAF
- Key Insights: WAF is used for layer seven type of exploits.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 11:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So for this you're going to define web ACL.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 12:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So the Web Access Control List, and the rules can include IP addresses filtering, HTTP headers, HTTP body, URL strings.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can have common attacks protections such as SQL injection, or cross-site scripting, XXS.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 14:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: You can have size constraints to say, "Hey, any request bigger than 20 megabytes I don't want." You can have geomatch to block or allow a specific country, and you can have rate-based rules.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 15:
- Concepts: Policy Enforcement, Traffic Filtering
- Services: (none explicit)
- Key Insights: So to count occurrences of events and say, "Hey, if this happened more than five seconds, five times per second, this looks fishy, block it." And the rule actions can be, allow or block, as we know to allow or to block traffic.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: They could be count, and that's an interesting one.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 17:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: It is to see if a rule would be in effect or not.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 18:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this allows you to detect false positives ahead of time.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 19:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you would just counter occurrences, and analyze the result of a count operation, but the traffic is still allowed through.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 20:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: So you do counts before Block, or CAPTCHA, or silent challenges to make sure that the traffic is not coming from bots but actually from humans.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 21:
- Concepts: Network Security Operational Context
- Services: AWS WAF
- Key Insights: So something super important for you to know is that WAF has managed rules, and you need to know it for the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 22:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So there are over 190 managed rules, and I'll give you some of the most important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 23:
- Concepts: Traffic Filtering
- Services: AWS WAF
- Key Insights: They are ready to use manage rules that will be from AWS, or the marketplace sellers, and they'll allow you to just power up WAF very quickly.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 24:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So you get baseline rule groups, which is general protection from common threats, and this include the managed rule, common rule set, the managed rules admin protection rule set and so on.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So they're just baseline for common protection.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 26:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: Then you have use-case specific rule groups.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 27:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: And they give you protection for many use cases, such as the SQL rule sets, the Windows rule sets.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 28:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: The PHP rule sets, the WordPress rule sets, to protect this kind of application.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 29:
- Concepts: Policy Enforcement, Traffic Filtering
- Services: (none explicit)
- Key Insights: Then you get IP reputation rule groups, and this is to block request based on the source IP.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 30:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So for example, you have a malicious IP, and there is this very important rule called the Managed Rules Amazon IP Reputation List, which is a list of all the IPs that are trusted by AWS, and those that are not trusted by AWS.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 31:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: And this can help you block spams very quickly.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 32:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: You can also get anonymous IP list as a rule, and so on.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 33:
- Concepts: Policy Enforcement, Traffic Filtering
- Services: (none explicit)
- Key Insights: And finally there's block bot control manage rule group to block and manage requests from bots.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 34:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So this includes, for example, the AWS manage rule bots control rule sets.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 35:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So as you can see, we have four kinds of managed rule buckets, baseline use case specific IP reputation and above control.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 36:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And the thing that can come up in exam is one of these, including the Amazon IP Reputation List.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 37:
- Concepts: Network Security Operational Context
- Services: AWS WAF
- Key Insights: Okay, so what about logging for WAF?
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 38:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is also something that can come up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 39:
- Concepts: Network Security Operational Context
- Services: AWS WAF
- Key Insights: So while WAF can send logs to Amazon CloudWatch log groups, and you get a debit of five megabytes per second maximum, you can also send it to Amazon S3 bucket, and the logs will be sent every five minutes.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 40:
- Concepts: Network Security Operational Context
- Services: AWS WAF
- Key Insights: Or if you want to have more control, well you can send it directly from WAF to Kinesis Data Firehose, in which case you are only limited by the Firehose quotas.
- Hidden/Implicit Meaning: Constraint or limitation signal; Preventive control and filtering signal.

Line 41:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Well, why would you do this?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 42:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Well, for example, if you have very high traffic, very high logging capacity requirements, then using KDF could be a very good thing.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 43:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then from Kinesis Data Firehose, you can send it to any destination supported by Kinesis, such as Amazon S3, Redshift, OpenSearch, and so on.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 44:
- Concepts: Edge Security
- Services: AWS WAF, Amazon CloudFront
- Key Insights: So using WAF, there is a solution architecture, you know, which is to enhance CloudFront Origin Security.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 45:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So let's say we have CloudFront in front of an application balancer talking to EC2 instances, and we want to make sure that only the traffic coming from Amazon CloudFront is allowed into the application balancer, and not, for example, site traffic.
- Hidden/Implicit Meaning: Constraint or limitation signal; Edge-distribution security signal.

Line 46:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: If we were to have the URL of the application balancer.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 47:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So how would we do this?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 48:
- Concepts: Edge Security, Perimeter Defense
- Services: AWS WAF, Amazon CloudFront
- Key Insights: Well, using WAF, we can already set up some web ACLs on the CloudFront level.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 49:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is not going to help us with the application balancer, but at least we control some level of security on the clients.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 50:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: Okay, next, what's going to happen is that on Amazon CloudFront, you can create what's called a custom HTP header.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 51:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And you have it for example, set to X Origin Verify and then a secret string.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 52:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: And so this will be added to every request that goes through Amazon CloudFront.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 53:
- Concepts: Policy Enforcement
- Services: AWS WAF, Elastic Load Balancing
- Key Insights: The result of which is that we can also set up WAF on the application load balancer, and we create a filtering rule that says that any traffic that has this header, the X Origin verify and the value will be allowed and anything else will be rejected.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 54:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: So that means that someone, a user trying to access directly the ALB.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 55:
- Concepts: Network Security Operational Context
- Services: AWS WAF, Elastic Load Balancing
- Key Insights: Of course they don't know about the fact you're using custom HTP headers because they're hidden from the users, therefore they cannot access the ALB because they will be blocked by WAF directly on top of it.
- Hidden/Implicit Meaning: Constraint or limitation signal; Preventive control and filtering signal.

Line 56:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can set up other rotation of this HTP header to have maximum security.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 57:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So using Secrets Manager, we can have a secret that is automatically rotated using a Lambda function.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 58:
- Concepts: Edge Security, Policy Enforcement
- Services: AWS WAF, Amazon CloudFront
- Key Insights: And the Lambda function will update once in a while, the custom HTP header value with a new value in CloudFront, and of course update the filtering rule in AWS WAF.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 59:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 60:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/033_AWS Firewall Manager.txt

Line 1:
- Concepts: Centralized Security Governance
- Services: AWS Firewall Manager
- Key Insights: So now let's talk about the AWS Firewall Manager.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 2:
- Concepts: Centralized Security Governance
- Services: (none explicit)
- Key Insights: So this is a service to manage all the firewall rules in all accounts of an AWS organization.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that you can manage rules across many, many accounts at the same time.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 4:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So you can set a security policy, and a security policy is a common set of security rules.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 5:
- Concepts: Perimeter Defense
- Services: AWS WAF, Elastic Load Balancing
- Key Insights: And so this could be Web Application Firewall rules, so they apply it to the ALB, the API gateways, CloudFronts and so on.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 6:
- Concepts: DDoS Resilience, Edge Security
- Services: AWS Shield, Amazon CloudFront, Elastic Load Balancing
- Key Insights: Or it could be Shield Advanced rules, so for your ALB, CLB, NLB, the Elastic IP, and CloudFront.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 7:
- Concepts: Policy Enforcement
- Services: Amazon VPC, Elastic Load Balancing, Security Groups
- Key Insights: It could be security policy to standardize security groups for EC2, your Application Load Balancer, and ENI resources in your VPC.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 8:
- Concepts: Network Security Operational Context
- Services: AWS Network Firewall, Amazon VPC
- Key Insights: And it could be, as well, rules for your AWS Network Firewall at the VPC level.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is something we haven't seen yet or your Amazon Route 53 Resolver DNS Firewall.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 10:
- Concepts: Centralized Security Governance
- Services: AWS Firewall Manager
- Key Insights: So the idea is that Firewall Manager allows you to manage all your firewalls in one place.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The policies are created at the region level, okay?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 12:
- Concepts: Centralized Security Governance
- Services: (none explicit)
- Key Insights: And then they are applied to all the accounts of your organization.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 13:
- Concepts: Centralized Security Governance, Policy Enforcement
- Services: AWS Firewall Manager, AWS WAF, Elastic Load Balancing
- Key Insights: And on top of it, if somehow in your organization, for example, you create a WAF rule for an Application Load Balancer, and somehow there's a new Application Load Balancer being created, then automatically the Firewall Manager is going to apply the same rule to this newly created ALB.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 14:
- Concepts: Centralized Security Governance
- Services: AWS Firewall Manager
- Key Insights: That's a feature of Firewall Manager.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 15:
- Concepts: Centralized Security Governance, DDoS Resilience
- Services: AWS Firewall Manager, AWS Shield, AWS WAF
- Key Insights: So you may ask yourself, "Well, what is the difference between WAF and Firewall Manager and Shield?" Well, WAF, Shield, and Firewall Manager are used together for comprehensive protection of your accounts.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 16:
- Concepts: Perimeter Defense
- Services: AWS WAF
- Key Insights: So first you define your Web ACL rules in WAF.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 17:
- Concepts: Network Security Operational Context
- Services: AWS WAF
- Key Insights: And in case you need one-time protection, then WAF is going to be the right choice for you.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 18:
- Concepts: Centralized Security Governance
- Services: AWS Firewall Manager, AWS WAF
- Key Insights: But if you want to use WAF across multiple accounts and accelerate WAF configuration and automate the protection of new resources, then you would manage your WAF rules within Firewall Manager.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 19:
- Concepts: Centralized Security Governance
- Services: AWS Firewall Manager
- Key Insights: And Firewall Manager will just apply all these rules to all your accounts and all your resources automatically.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 20:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: So now we also have Shield Advanced to help you get protected against DDoS attacks.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 21:
- Concepts: DDoS Resilience
- Services: AWS Shield, AWS WAF
- Key Insights: And it has additional features on top of WAF such as a dedicated support from the Shield Response Team, SRT, advanced reporting, and also, it can automatically create WAF rules for you.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 22:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: And if you're prone to frequent DDoS attacks, then you should definitely consider purchasing Shield Advanced.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 23:
- Concepts: Centralized Security Governance, DDoS Resilience
- Services: AWS Firewall Manager, AWS Shield
- Key Insights: And so Firewall Manager can also help you deploy Shield Advanced across all your accounts So hopefully the distinction is pretty clear for you now.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked this lecture, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/034_Blocking an IP Address.txt

Line 1:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: Okay, so let's talk about a little bit of networking because I want you to understand how it works to block an IP address if you want it to in AWS.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 2:
- Concepts: Network Segmentation
- Services: (none explicit)
- Key Insights: So say for example, we have the architecture of an EC2 instance in a public subnet and a client wants to access it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 3:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: So the first line of defense in your public subnet is going to be your Network ACL, or NACL.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 4:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: And with it you can very cheaply and very simply explicitly write, deny, or allow rules which will allow or block the client if you need to.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 5:
- Concepts: Network Segmentation
- Services: Security Groups
- Key Insights: But say you have a default Network ACL, for example, and everything is allowed through, your second line of defense is going to be your Security Group.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 6:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: And here you have no deny rules, but you can only have allow rules, so if you know in advance the IP of your clients, you can specifically only allow your clients to get to your EC2 instance.
- Hidden/Implicit Meaning: Constraint or limitation signal; Preventive control and filtering signal.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: If the traffic gets all the way through to your EC2 instance, it is possible for you to optionally run a firewall software on your EC2 instance, which is going to inspect all the packets getting to it.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And here you have a lot more control over everything, of course, because this is customized solutions, not AWS dependent, but because you have firewall software running on your EC2 instance, there will be a CPU cost on your instance.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It can slow it down, for example.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So hopefully that makes sense for this first line of defense.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 11:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: Okay, so now let's consider this situation in which we have a Network ACL, a Application Load Balancer, and an EC2 instance.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 12:
- Concepts: Network Segmentation
- Services: Elastic Load Balancing
- Key Insights: So here what's happening is that we have the ability to have the client connect directly into an Application Load Balancer that will be sitting in the public subnet.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 13:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: And that Application Load Balancer will be diverting traffic to the EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 14:
- Concepts: Network Segmentation
- Services: (none explicit)
- Key Insights: That means your EC2 instance can live in a private subnet and it's going to be better for your security of your application, of course.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 15:
- Concepts: Network Segmentation, Traffic Filtering
- Services: Elastic Load Balancing, Security Groups
- Key Insights: And so your EC2 instance has a private IP, and so you need to have a security group around the EC2 instance that will allow only connections from your Application Load Balancer.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We've seen this before.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 17:
- Concepts: Network Segmentation
- Services: Elastic Load Balancing
- Key Insights: So what's happening is that the Application Load Balancer that sits in the public subnet is doing a connection termination.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 18:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: That means that the client connects to the ALB and the ALB will connect to the EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 19:
- Concepts: Network Segmentation
- Services: Elastic Load Balancing, Security Groups
- Key Insights: That also means that you now have the ability to manage security at the Application Load Balancer level with the security group, or with some extra features within the Application Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 20:
- Concepts: Network Segmentation, Traffic Filtering
- Services: (none explicit)
- Key Insights: And if you need to, you can always, as well, leverage the Network ACL to do allow or deny rules at the public subnet level.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 21:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So all of this shouldn't be new and should be mastered by now.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 22:
- Concepts: Network Segmentation
- Services: Elastic Load Balancing, Security Groups
- Key Insights: And the situation is very similar if you are to use a Network Load Balancer that will have a security group that's connected to EC2 instances, okay?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 23:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: So same for ALB and NLB in terms of security.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now we can explore security features around the application balancer.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 25:
- Concepts: Perimeter Defense
- Services: AWS WAF
- Key Insights: So you can pair it with WAF, the Web Application Firewall from AWS.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 26:
- Concepts: Network Security Operational Context
- Services: AWS WAF
- Key Insights: And this allows you, for example, to set IP address filtering from within WAF.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 27:
- Concepts: Network Security Operational Context
- Services: AWS WAF, Elastic Load Balancing
- Key Insights: So obviously, now this has a cost because you have a firewall set up at the Application Load Balancer level, but WAF has more than just the IP address filtering feature.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 28:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: It has a lot more and you will get a lot of control and defenses for your infrastructure if you expose directly your Application Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 29:
- Concepts: Network Security Operational Context
- Services: AWS WAF
- Key Insights: Another place where you can apply AWS WAF is around CloudFronts.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 30:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: So CloudFronts can be set up, for example, on a public infrastructure, for example, using an Application Load Balancer in public mode.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 31:
- Concepts: Edge Security, Perimeter Defense
- Services: Amazon CloudFront, Elastic Load Balancing
- Key Insights: And so what's happening is that CloudFront will send traffic directly from all the edge locations with the public IPs of them directly into your Application Load Balancer.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 32:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: Here your Network ACL is not helpful to filter traffic from the clients because, well, the client does not reach the traffic of AWS, okay?
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 33:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: CloudFront does.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 34:
- Concepts: Edge Security, Network Segmentation, Traffic Filtering
- Services: Amazon CloudFront, Elastic Load Balancing, Security Groups
- Key Insights: And so therefore you must set up security at the ALB level with your Security Group so that you allow all the CloudFront public IPs into your infrastructure only.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Edge-distribution security signal.

Line 35:
- Concepts: Edge Security, Traffic Filtering
- Services: (none explicit)
- Key Insights: Also, you have the ability, for example, if a client was coming from a specific country and was attacking your infrastructure, you could use the Geo Restriction feature to block that specific country and that's one line of defense.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 36:
- Concepts: Edge Security
- Services: AWS WAF, Amazon CloudFront
- Key Insights: Another line of defense, is again to use WAF and all its features to have a firewall at the CloudFront level and, for example, implement IP address filtering.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 37:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So now hopefully that makes sense into how network security is working.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 38:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This kind of diagrams hopefully show you the path that the network traffic is taking and so why it makes sense to apply some rules at some level.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 39:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And if you have any issue understanding what are the specific rules, it's always very helpful to draw what the network is doing.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 40:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then it will make a lot of sense into how to define the rules along the way.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 41:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 42:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/093_[SAA_SOA] NACL & Security Groups.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: Security Groups
- Key Insights: Okay, so let's go for a very long lecture on Security Groups and Network ACLs or NACLs.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 2:
- Concepts: Network Segmentation
- Services: Security Groups
- Key Insights: So let's take an example of a subnet and we know when you have an EC2 instance that we attach a security group to it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 3:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: But there is an extra level of protection on the subnet that we haven't seen yet, which is your network ACL or NACL.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 4:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: And let's take an example to really understand the role of a NACL in an incoming request.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So a request goes to your EC2 instance, now what is happening from a network perspective?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 6:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: Well, first the request is going to make it to the NACL before going into the subnets.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 7:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: And so there are going to be some inbound rules on the NACL that are going to be defined.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And if the request is not allowed, then the request doesn't go in.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And if it is allowed, then it will go in, right?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 10:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: So the NACL is stateless.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we'll see what that means in a second.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 12:
- Concepts: Network Segmentation
- Services: Network ACL, Security Groups
- Key Insights: So the first request goes through the NACL and then it reaches inside the subnets and it goes through the security group inbound rules, okay.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we know how this works.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So again, if the request is not allowed explicitly then it is denied.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 15:
- Concepts: Network Segmentation
- Services: Security Groups
- Key Insights: Now something about security group is that they are stateful.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 16:
- Concepts: Network Security Operational Context
- Services: Security Groups
- Key Insights: So remember NACLs are stateless and security groups are stateful.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 17:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So what does that mean?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 18:
- Concepts: Network Segmentation
- Services: Security Groups
- Key Insights: That means that if the request makes it through the inbound rules of the security group and makes it to the EC2 instance, the EC2 instance will then reply with whatever reply there is to do for the application perspective.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 19:
- Concepts: Network Segmentation
- Services: Security Groups
- Key Insights: And then the outbound is automatically going to be accepted at the security group level.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 20:
- Concepts: Network Segmentation
- Services: Security Groups
- Key Insights: This is because the security group is stateful.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 21:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means whatever is accepted in can go also out.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 22:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So here, there is no rules being evaluated.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 23:
- Concepts: Network Segmentation
- Services: Security Groups
- Key Insights: And the security group outbound rules are not mattering in this example.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 24:
- Concepts: Network Segmentation
- Services: Security Groups
- Key Insights: So now that we know that the outbound at the security group level is always allowed because it's stateful, what happens still?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 25:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: Well the NACL is not stateful, it is stateless, and therefore, because it is stateless then the NACL outbound rules are going to be evaluated.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 26:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And again, if they are not passing, then the request will not make it through.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 27:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is for an incoming request.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 28:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now let's go through the same scenario, but for an outgoing request, and you can try doing this on your own by pausing the video, just to see if you understand the difference between stateful and stateless.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 29:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Did you try?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 31:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, let's go.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 32:
- Concepts: Network Segmentation
- Services: Security Groups
- Key Insights: So the security group this time, so the EC2 instance is making an outbound request.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 33:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it's doing a request to the outside.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 34:
- Concepts: Network Segmentation
- Services: Security Groups
- Key Insights: And so the EC2 instance will first maybe use, for example, connect to www.google.com, and so therefore the first rules that are going to be evaluated are the security group outbound rules.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 35:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So is the traffic allowed out from the EC2 instance to the web?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 36:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: Then if the rules are good and the request is allowed, then the request goes through the NACL outbound rules as well.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 37:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So they're evaluated.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 38:
- Concepts: Network Segmentation, Perimeter Defense
- Services: Network ACL
- Key Insights: Then the request reaches www.google.com, it comes back to Amazon web services, and obviously the NACL is stateless and therefore the NACL inbound rules are going to be evaluated.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 39:
- Concepts: Network Segmentation
- Services: Security Groups
- Key Insights: And finally, while the inbound within the subnet at the security level is also going to be allowed no matter what, because of the statefulness of your security group rules.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 40:
- Concepts: Network Segmentation
- Services: Security Groups
- Key Insights: So here the inbound rules of your security group do not make a difference because the admin roles was already accepted and your security group is stateful.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 41:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So hopefully that is a very clear explanation between stateful and stateless.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 42:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So what are Network Access Control List, NACLs?
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 43:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: Well they're like a firewall that control the traffic to and from the subnet level, and you have one NACL per subnet, and each new subnet will be assigned the default NACL.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 44:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: We'll have a look at the default NACL in the next slide.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 45:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: So you define NACL rules and rules have a number from one to 32,000 and so.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 46:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And there's a higher precedence with a lower number, so one is the highest priority and the latest is 32,000 and so on.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 47:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: And the first rule match will drive the decision, okay.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 48:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: So for example, if you define allow on this CIDR and deny on the same CIDR, so a specific IP, but the allow is 100 and the deny is 200, the IP address will be allowed because 100 as a higher precedence over 200.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 49:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: In that case, the first rule match will drive the decision.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 50:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: The less rule is an asterisk and will deny any request in case of no rules match.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 51:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, AWS recommends adding rules by increments of 100.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 52:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And the reason is that if you want to add rules in between then, you are fine.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 53:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so newly created NACLs will deny everything by default.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 54:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And NACLs have a very, very good use case.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 55:
- Concepts: Network Segmentation
- Services: (none explicit)
- Key Insights: They're great for blocking a specific IP address at the subnet level.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 56:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So NACLs in this diagram, where are they?
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 57:
- Concepts: Network Segmentation
- Services: (none explicit)
- Key Insights: So we have this diagram we know about, but NACLs again are at the subnet level.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 58:
- Concepts: Network Segmentation
- Services: (none explicit)
- Key Insights: And so we can have NACLs at the public subnet, private subnet level and so on.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 59:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: So the default NACL is super important because it can come up in the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 60:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: And the default NACL has this one specificity that it accepts everything inbound and outbound with the subnets it's associated with.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 61:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: So this is what the default NACL looks like for the IPv4.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 62:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It allows everything out and everything in.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 63:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And that makes sense, right?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 64:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: Because if the NACL was not allowing everything in and everything out then we would have do some serious debugging to do when we get started with AWS.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 65:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: But the default NACL is very open.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 66:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: Now my recommendation is to not modify the default NACL.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 67:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Instead, if you want to have some custom Network ACLs, then create a custom one.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 68:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: Okay, but if the exam mentions to you, that there is a default NACL, just know that by default this NACL will disassociate it with subnets.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 69:
- Concepts: Network Segmentation, Traffic Filtering
- Services: Network ACL
- Key Insights: If this NACL is associated with subnets, sorry, then it will allow everything in and everything out.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 70:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now let's go into the important concept of Ephemeral Ports.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 71:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So when you have a client and a server connecting together, they must use port.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 72:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we have IP address and ports, and the clients connect to the server on the defined port.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 73:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we know for example, that the HTTP port is 80, the HTTPS port is four, four, three, the SSH port is 22 and so on.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 74:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So when we have a server that exposes a service, then the client connects to a defined ports, except though that the clients needs a reply back from the server.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 75:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the server also needs to connect to the clients to send a response.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 76:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And the client does not have any open port by default.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 77:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So what it does that when the client is connecting to a server, the client will open a specific ports on itself.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 78:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this port is ephemeral because it's just a port that will be as long lived as the connection is between the clients and the server.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 79:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so what is that ephemeral ports?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 80:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Well, based on the OS you have, the operating system you have, you have different port ranges, for example, if you're using Windows 10, for example, then you get to 49,152 all the way through 65,535, the port ranges that will be chosen for a random ephemeral ports.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 81:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: If you use Linux, then a good range will be 32,768 to 60,999, okay.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 82:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So based on the different OS, you have different port ranges.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 83:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's go through concrete example to understand how that works.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 84:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So the clients connects to a web server, the web server has a fixed IP and a fixed ports.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 85:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the client is saying, hey, here's my IP, and I will open for this one request or this one connection, an ephemeral port of five, zero, one, zero, five.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 86:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the request sent from the client to the server is, Hey, here is the destination IP, here is the destination port of the server that you connect to, here's the payload of my request, so what I'm requesting, and here is my source IP, by the way, for the reply, and here is my source ephemeral ports for the replay as well, which is five, zero, one, zero, five.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 87:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: And then the web server, when connecting back to the client to send back of the response, will send the response and say, Hey, so here's the source IP, here's a source port.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 88:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, the server port, and then the destination IP is 11.22.33.44, here is the response payload.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 89:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And finally, where we'll also need a port it will reuse the ephemeral port that the client has sent.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 90:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this is why it's called ephemeral port it's because it's a random port that is assigned just for the connection life.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 91:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So now, why do I mention ephemeral ports?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 92:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Well, because they're very important in terms of NACLs.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 93:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: So if you consider a client's connecting to a database and we have a private subnet and a public subnet, we have one NACL associated with each subnet.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 94:
- Concepts: Network Segmentation, Perimeter Defense
- Services: Network ACL
- Key Insights: So a web NACL and a DB NACL.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 95:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, when the client initiates a connection to the database instance, what are the rules that need to be allowed when you think about it, right?
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 96:
- Concepts: Network Segmentation, Traffic Filtering
- Services: Network ACL
- Key Insights: Well, if you consider the first NACL we need to allow outbound TCP on port three, three, zero six to the database subnet CIDR, that makes sense.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 97:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Otherwise, the request will not leave the subnets.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 98:
- Concepts: Network Segmentation, Perimeter Defense, Traffic Filtering
- Services: Network ACL
- Key Insights: And then from a database perspective, then the DB NACL says, Hey, I need to allow inbound TCP on port three, three, zero, six from the web submit CIDR.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 99:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: All this makes sense, right?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 100:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, here's the tricky part.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 101:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: When the database sends back the request to the clients, what do you think needs to happen?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 102:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Well, the client has an ephemeral port, right?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 103:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so as such, they will be a random ports being assigned for this request.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 104:
- Concepts: Network Segmentation, Perimeter Defense, Traffic Filtering
- Services: Network ACL
- Key Insights: And so therefore, the DB NACL must allow outbound TCP on ports and, on ephemeral port, so, maybe from 1024 to 65,535 to web subnet CIDR, and then the web NACL also needs to allow inbound TCP on this range of ephemeral ports from the DB subnet CIDR.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 105:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this is why ephemeral ports are super important to configure well.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 106:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So if you want to learn more, there's a link to the documentation.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 107:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: Another thing about NACLs you need to know is that if you have multiple NACLs and multiple subnets, then each NACL combination needs to be allowed within the NACL, because you're using CIDRs and each subnet will have its own CIDR.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 108:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: So it's super important for you to realize that, if you add subnets into a NACL, you need to also update all the NACL rules to make sure that the combination of connections is possible.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 109:
- Concepts: Network Segmentation
- Services: Network ACL, Security Groups
- Key Insights: So to summarize, what is the difference between a security group and a NACL?
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 110:
- Concepts: Network Segmentation
- Services: Network ACL, Security Groups
- Key Insights: Well the security group operates at the instance level, whereas the NACL is at the subnet level.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 111:
- Concepts: Network Segmentation, Traffic Filtering
- Services: Network ACL, Security Groups
- Key Insights: The security group supports allow rules only, whereas NACL supports allow and deny rules, this is why you can deny a specific IP address in a NACL.
- Hidden/Implicit Meaning: Constraint or limitation signal; Preventive control and filtering signal.

Line 112:
- Concepts: Network Segmentation
- Services: Network ACL, Security Groups
- Key Insights: Security groups are stateful, so automatically return traffic is allowed regardless of the rules, whereas NACL is stateless, that means that every time the inbound and outbound rules will be evaluated and think of ephemeral ports as a reminder.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 113:
- Concepts: Network Segmentation, Traffic Filtering
- Services: Network ACL, Security Groups
- Key Insights: Now for security group, all rules are going to be evaluated to decide whether or not to allow traffic, whereas for a NACL, the ones that will be having the highest priority will be evaluated first, and the first match wins.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 114:
- Concepts: Network Segmentation
- Services: Network ACL, Security Groups
- Key Insights: Security group applies to an EC2 instance when specified by someone, whereas NACL applies to all EC2 instances in a subnet that it's associated with.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 115:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that sits for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 116:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Hopefully that makes sense and I will see you in the next lecture for some practice.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/094_[SAA_SOA] NACL & Security Groups - Hands On.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 2:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, let's have a look at our network ACL's.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: To do so, I will go on the left hand side and there's network ACL's.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 4:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: And for our sub for VPC, we have a network ACL here.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 5:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: This is the default, NACL.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, it's very important to notice this.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And currently it's default.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, it's associated with four subnets.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, we have inbound rules and outbound rules.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 10:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: And then if we look at the inbound rules, we allow all traffic on all parts everywhere.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then there's the last row which was denied, but it doesn't ever get to effect because this one goes into effect before.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then for the outbound rules the same.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 13:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: So, remember the default, NACL, always has all traffic, inbound and outbound authorized, and the default is going to be associated with any subnets you're going to create, hence the name default NACL.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, now let's go ahead and have a place or to do so, I'm going to go into my EC2 instances, my NAT instance.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Sorry, my Bastion host.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to start a HTTP server on it to connect to it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 17:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, to do so let's connect into our instance, let's connect, and I'm going to install HTTPD.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 18:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So sudo, yum, install, minus Y, HTTPD.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 19:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: Then we're going to start the web server.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 20:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I will do, system, CTL, sudo, system CTL, enable HTTPD, and then sudo, system CTL, start HTTPD.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 21:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Let's clear the screen.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 22:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then we're going to echo "hello world" into our var/www/html/index.html and we'll have sudo for this command.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 23:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's do sudo, su, echo, hello world into again, this file.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, this should work right now, so let's try it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 26:
- Concepts: Network Segmentation
- Services: Security Groups
- Key Insights: So, now the other thing we have to do is we need to make sure that the Bastion host has this public instance has HTTP enabled for the security group.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 27:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, right now we only have 4 22.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 28:
- Concepts: Network Segmentation, Policy Enforcement
- Services: Security Groups
- Key Insights: So, therefore in the security group rules, I'm going to edit the inbound rules and I'm going to add a rule for HTTP and then from anywhere, save this rule.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 29:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Perfect.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So back into our instance, this is our bastion host, and I can just click on this IP address right here.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 31:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Copy it, open it in a new tab and I get, "hello world." So, this is good.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 32:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We are able to connect into our server and it replies "hello world" to us.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 33:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, let's have a look at network ACL's now.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 34:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: So, if I look into this default NACL, and look at the inbound rules, what I'm going to do is I'm going to edit these rules.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 35:
- Concepts: Policy Enforcement, Traffic Filtering
- Services: (none explicit)
- Key Insights: And currently we allow all traffic from anywhere, okay, but we're going to add a new rule.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 36:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: And the rule number is going to be rule 80 and the type is going to be HTTP, and it's going to come from anywhere and we are going to deny it.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 37:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So, let's save these changes and we can sort them by rule number.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 38:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So, as you can see, this rule has precedence over that rule.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 39:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, what do you think is going to happen?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 40:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: Well, now that we have enabled this inbound rule, that blocks HTTP traffic.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 41:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: If I go back to my EC2 instance and refresh this page, I'm getting, you see, an infinite loading.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 42:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: So, that means that yes, there's a timeout and the NACL acted as a firewall and blocked my request.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 43:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: But if I edit my inbound rules and now the rule number is 140.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 44:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, and save this again.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 45:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: And look again at the inbound rules, as you can see now, rule 140 happens after rule 100 and there's a denial.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 46:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, what do think is going to happen?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 47:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Well, if I go back and refresh, I'm accessing my EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 48:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So, what's happening is that even though there was an explicit deny rule, happening here, because the rule number 100 had higher precedence and allowed that specific traffic in, then it works.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 49:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 50:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So, as we can see, this shows the very important aspects around the rule numbers.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 51:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 52:
- Concepts: Network Segmentation
- Services: Network ACL
- Key Insights: And similarly, I want to show the statelessness of the NACL.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 53:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So, if I go into outbound rules and there's this rule right here, that allows everything right now, if I edit it and instead do deny, well, what is going to happen?
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 54:
- Concepts: Policy Enforcement, Traffic Filtering
- Services: (none explicit)
- Key Insights: The inbound rule is going to allow my traffic, but the outbound rule shouldn't.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 55:
- Concepts: Network Segmentation, Traffic Filtering
- Services: Network ACL
- Key Insights: So, let's go back into my instance, refresh this, and you can see I'm getting this infinite loading, because well, my NACL does not allow return traffic, because it was not explicitly specified in my NACL, that return traffic was allowed.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 56:
- Concepts: Network Segmentation, Traffic Filtering
- Services: Security Groups
- Key Insights: So, what's really important to notice is that this is true, regardless of if the security group of my EC2 instance did, in fact, allow port 80 in, okay.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 57:
- Concepts: Network Segmentation
- Services: Network ACL, Security Groups
- Key Insights: So, NACL's and security groups work hand-in-hand together.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 58:
- Concepts: Network Segmentation
- Services: Security Groups
- Key Insights: And if the security group rules look fine, that doesn't mean that the network ACL's are fine.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 59:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, this is something else to check in case of network issues.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 60:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: So, let me revert this to allow and do another demo.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 61:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so I'm back into my instance.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 62:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is working now.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 63:
- Concepts: Network Segmentation
- Services: Security Groups
- Key Insights: And so if we look at the security group rules here, as we can see, port 80 is allowed on everywhere.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 64:
- Concepts: Network Segmentation, Traffic Filtering
- Services: Security Groups
- Key Insights: And for outbound rules, it says allow from everywhere as well, but let's edit this security group.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 65:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, for the inbound rules, I will not change them.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 66:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So, I will keep HTTP on, but for the outbound rules, I'm going to edit this rule and I'm going to just remove it.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 67:
- Concepts: Network Segmentation, Traffic Filtering
- Services: Security Groups
- Key Insights: And as you can see, now, we don't allow any outbound from the security group, but the security group is stateful.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 68:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means that if the traffic is initiated from the outside and is allowed inbound, then the return traffic will be authorized as well.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 69:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So, let's prove it, even though there is no outbound rule.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 70:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: If I refresh this page, as you can see, this is working, I can access my EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 71:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But if my EC2 instance was trying to initiate a connection, for example, not here.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 72:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: If my EC2 instance was trying to initiate a connection to Google account, for example, it would be denied because, well, there's no outbound rule that specifically allows it.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 73:
- Concepts: Network Segmentation, Traffic Filtering
- Services: Network ACL, Security Groups
- Key Insights: But if it did allow it, then the return traffic would be allowed because again, security groups are stateful, whereas NACL's are stateless.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 74:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, to make things, everything work again.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 75:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And once you have all HTTP from anywhere allowed, and this is going to restore these outbound rules on my EC2 instance, okay.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 76:
- Concepts: Network Security Operational Context
- Services: Security Groups
- Key Insights: So, it's very important for you to notice the difference between EC2 security groups and network ACL's.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 77:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But hopefully this was a good demo.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 78:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 79:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/095_Security Groups Outbound Rules & Managed Prefixes.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: Security Groups
- Key Insights: So let's talk about security groups, outbound rules for a second.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 2:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: By default the outbound rules allow anywhere with this CIDR, but we can remove and just allow specific prefixes.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 3:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So here is an example of an outbound rule, and as you can see, it authorizes the port 443 of a destination to be Amazon S3 in the US East 1.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it looks like from this we have used a prefix destination so that the only amount authorized is to S3.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 5:
- Concepts: Network Security Operational Context
- Services: Managed Prefix Lists
- Key Insights: And so as such, we can introduce the concept of managed prefix lists.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: Security Groups
- Key Insights: So it's one or more CIDR blocks and it makes it easier for you to configure your security groups and your route tables.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 7:
- Concepts: Network Security Operational Context
- Services: Managed Prefix Lists
- Key Insights: So in your account, for example, you can define your custom prefix list.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: For example, this CIDR 1, CIDR 2, and CIDR 3.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 9:
- Concepts: Network Segmentation
- Services: Security Groups
- Key Insights: You can share them to another account such as in the security group, inbound rules.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 10:
- Concepts: Network Security Operational Context
- Services: Managed Prefix Lists
- Key Insights: You can actually reference the prefix list that you've defined in Account A.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 11:
- Concepts: Centralized Security Governance
- Services: Managed Prefix Lists
- Key Insights: So these customer manage prefix lists are a set of CIDR that you define and that you manage yourself, and they can be shared with other accounts or within your organization.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 12:
- Concepts: Network Security Operational Context
- Services: Managed Prefix Lists, Security Groups
- Key Insights: This allows you, for example, that if the Account A wants to modify the prefix list once, it will be applied to many security groups at once.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 13:
- Concepts: Network Security Operational Context
- Services: Managed Prefix Lists
- Key Insights: The other option is to use the AWS managed prefix list.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it's a set of CIDR for AWS services, but you can't create, modify, share, or delete them.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can only use them.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 16:
- Concepts: Edge Security
- Services: Amazon CloudFront, Managed Prefix Lists
- Key Insights: And some of the services that may be important that you can already reference using this managed prefix list are Amazon S3, Amazon CloudFront, DynamoDB, and Ground Station, and they may be others, but those are the most important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Edge-distribution security signal.

Line 17:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 18:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/096_Security Groups - Extras.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: Security Groups
- Key Insights: So now let's learn something about security groups that can come up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 2:
- Concepts: Network Segmentation, Policy Enforcement
- Services: Security Groups
- Key Insights: So it turns out that when you have a security group, if you modify a rule, it will never disrupt the tracked connections.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means that any existing connections are kept until they time out.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let me give you an example so you'll understand it better.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 5:
- Concepts: Network Segmentation
- Services: Amazon VPC, Security Groups
- Key Insights: So say we have an instance and a public subnet and a VPC and we have a security group that allows people to SSH on port 22 from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means that us, as a user from a computer, we can SSH into our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 7:
- Concepts: Network Segmentation, Policy Enforcement
- Services: Security Groups
- Key Insights: Now, say for example that the SSH connection is open but then we remove that rule from the security group, what do you think will happen?
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 8:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: Well, it turns out that yes, the connection will still be working, because it will be opened and it will be allowed at the time the rule was out there.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this connection will only close when it times out.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So how do we proceed for, for example, forcing the closure of that connection?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Well, you can use network ACLs.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 12:
- Concepts: Network Segmentation, Policy Enforcement, Traffic Filtering
- Services: (none explicit)
- Key Insights: So this allow you to block the connections immediately, so you define them at the subnet level and then you would add a rule, the first one, to deny any traffic on port 22.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 13:
- Concepts: Network Security Operational Context
- Services: Security Groups
- Key Insights: Because NACLs are stateless, they are evaluated all the time for all inbound and outbound traffic and therefor, the connection will be closed, but because security groups are stateful at the time when the connection was allowed in, the return traffic is also allowed back and the connection remains open as long as it is not timing out.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 14:
- Concepts: Network Segmentation, Policy Enforcement
- Services: Security Groups
- Key Insights: And so therefore, even if you remove the rule from the security group, the connection will work out.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And that is a scenario that can come up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/097_[SAA_SOA] AWS Transit Gateway.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so if we look at common network topologies in AWS it can become quite complicated.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 2:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: For example, you have many VPC and you want to peer them together, then you want to establish some VPN connections and direct connect, and then you have a direct connect gateway to connect to multiple VPC at a time, and this can become very, very complicated in terms of network topology.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 3:
- Concepts: Network Security Operational Context
- Services: AWS Transit Gateway, Amazon VPC
- Key Insights: So, AWS came up with the transit gateway to solve that problem, and you're going to have a transitive peering connection between thousands of VPC, your on-premises data center, your site-to-site VPN, direct connects in a hub-and-spoke star connection.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's have a diagram.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 5:
- Concepts: Network Security Operational Context
- Services: AWS Transit Gateway
- Key Insights: We have transit gateway in the center and you can connect multiple VPCs through the transit gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: AWS Transit Gateway
- Key Insights: So in this example, we don't need to peer the VPCs together, they are connected transitively through the transit gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So in this example, all the VPCs can talk to each other.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: AWS Transit Gateway, Amazon VPC
- Key Insights: But also, you can connect a direct connect gateway to the transit gateway, so it shows you have a direct connect connection directly in to many different VPC.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 9:
- Concepts: Network Security Operational Context
- Services: AWS Transit Gateway
- Key Insights: Or if you are preferring site-to-site VPN and VPN connections, you can connect your customer gateway and your VPN connection into your transit gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 10:
- Concepts: Network Security Operational Context
- Services: AWS Transit Gateway, Amazon VPC
- Key Insights: Again, one more time, giving you access to all these VPC as part of the transit gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this really solves some network problems.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: AWS Transit Gateway
- Key Insights: It's a regional resource and it can work cross-region, and you can share your transit gateway across accounts by using the resource access manager.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can also peer transit gateways across region.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, how do you define who can talk to what?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 15:
- Concepts: Network Security Operational Context
- Services: AWS Transit Gateway, Amazon VPC
- Key Insights: Well, you need to create route tables for your transit gateway to limit which VPC can talk to another, which connection have access to each other and so on.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 16:
- Concepts: Network Security Operational Context
- Services: AWS Transit Gateway
- Key Insights: So, you get full control over the routing of all the traffic within the transit gateway to give you network security.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 17:
- Concepts: Network Security Operational Context
- Services: AWS Transit Gateway
- Key Insights: So, as I said, it works with direct connect gateway and VPN connections, and it is the only service in AWS that supports IP multicast, so if you see IP multicast at the exam, just know that it is transit gateway you have to use.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Network Security Operational Context
- Services: AWS Transit Gateway
- Key Insights: So, another use case for transit gateway is to increase the bandwidth of your site-to-site VPN connection using ECMP.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 19:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, it's quite technical but the question can come up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 20:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, ECMP means equal-cost multi-path routing.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 21:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: It's a routing strategy to allow to forward a packet over multiple best path.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 22:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And the use case, as I said, is to create multiple site-to-site VPN connections to increase the bandwidth of your connection to AWS using a site-to-site VPN.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 23:
- Concepts: Network Security Operational Context
- Services: AWS Transit Gateway
- Key Insights: So, let's take this example where we have a transit gateway and we have four VPCs attached to our transit gateway, and we have a corporate data center that is connected using site-to-site VPN to a transit gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So when you establish a site-to-site VPN connection there are actually two tunnels, one going forward and one going back.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 25:
- Concepts: Network Security Operational Context
- Services: AWS Transit Gateway, Amazon VPC
- Key Insights: When you are connecting such a VPN into a VPC directly, both of these tunnels are used as part of one connections, but when using the transit gateway two tunnels can be used at a time, so this is why you see two lines in this diagram.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 26:
- Concepts: Network Security Operational Context
- Services: AWS Transit Gateway
- Key Insights: But with transit gateway, you can have multiple site-to-site VPN so you can create a second site-to-site VPN attachment and into your transit gateway, so this creates four tunnels.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 27:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: And so, when you have four tunnels of site-to-site VPN, you are increasing the throughput of your connection which is something you cannot do if you were to connect your corporate data center directly into a VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 28:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: So, if you do a VPN to a virtual private gateway, you get one tunnel, in fact one connection into one VPC, and this connection gives you 1.25 Gbps as the maximum throughput, and you are limited.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 29:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And in this case, a VPN connection is made of two tunnels.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 30:
- Concepts: Network Security Operational Context
- Services: AWS Transit Gateway, Amazon VPC
- Key Insights: But if you are using a VPN into a transit gateway, you get one site-to-site VPN into many VPC because they're all connected transitively to the same transit gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 31:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And also, one site-to-site VPN connection gives you 2.5 Gbps thanks to ECMP, because the two tunnels are going to be used through that strategy.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 32:
- Concepts: Network Security Operational Context
- Services: AWS Transit Gateway
- Key Insights: But also, you can add more site-to-site VPN connections into transit gateway, for example two or three, to double or triple your throughputs through ECMP.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 33:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is an exam question you need to know.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 34:
- Concepts: Network Security Operational Context
- Services: AWS Transit Gateway
- Key Insights: Obviously when you do the setup, you're going to have to pay for each GB of data going through the transit gateway, so there's an added cost to this performance optimization.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 35:
- Concepts: Network Security Operational Context
- Services: AWS Transit Gateway
- Key Insights: Finally, you can share your direct connect connection between multiple accounts, again, using the transit gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 36:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: How do we do this?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 37:
- Concepts: Network Security Operational Context
- Services: AWS Transit Gateway
- Key Insights: Well, we're going to establish a direct connect connection between your corporate data center and a direct connect location, and then we're going to set up a transit gateway into both VPCs in two different accounts, okay?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 38:
- Concepts: Network Security Operational Context
- Services: AWS Transit Gateway
- Key Insights: So this is something we can do with the transit gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 39:
- Concepts: Network Security Operational Context
- Services: AWS Transit Gateway
- Key Insights: And then, we connect the direct connect location into direct connect gateway and connect that gateway into the transit gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 40:
- Concepts: Network Security Operational Context
- Services: AWS Transit Gateway, Amazon VPC
- Key Insights: And what this just allowed us to do is to share a direct connect connection between multiple accounts and multiple VPC, which is very handy thanks to the transit gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 41:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 42:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So all these sort of architectures can come up in the exam so make sure you're familiar with understanding how they work, and that's it for me, I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/098_[SAA_SOA] Direct Connect.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now let's talk about Direct Connect, and you may also see it as DX in the exam.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 2:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: So it provides a dedicated private connection from the remote network into your VPC.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you need to set up that Direct Connect connection and it is using an AWS Direct Connect location.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 4:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: You also need to set up a virtual private gateway on your VPC side to make the connectivity between your on-premise data center and AWS.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The idea is that on the same connection you can access both public resources such as Amazon history and private resources, such as EC2 Instances using the the public VIF and the private VIF.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So what are the use cases for Direct Connect?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Well, you get increased bandwidth throughputs, that means that if you're working with large data sets, is going to be faster because it doesn't go over the public internet, and also you're going to have lower cost because you're using a private connection.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Also, if you have connectivity issues using the public internet, we'll using Direct Connect you get a more consistent network experience, again because it is private.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is especially helpful if you have applications using real time data feeds.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Finally, it supports hybrid environments because you have connectivity between your own premises data center and the cloud.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It supports both IPv4 four and IPv6.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's look at a diagram of Direct Connect.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we have a region and we want to connect it into our corporate data center.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So for this, we're going to commission an AWS Direct Connect location, their physical locations that you have to find but it's all obviously on the website of AWS, and there's going to be a Direct Connect endpoints, and there's going to be a customer or partner router that you have to rent from a customer or partner cage.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you have two cages in this Direct Connect location, and then on your on-premise data center, you're going to set up a customer router with a firewall.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 16:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: Now you're going to set up a private virtual interface, so private VIF first to access your private resources into your VPC.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 17:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So to do so, you set up the private VIF in between all these locations into a virtual private gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 18:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: And this virtual private gateway is attached to your VPC.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 19:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And through the private VIF, you are able to access your private subnets with your EC2 Instances.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 20:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, all these things happen privately, so you need to set up that connection manually, it can take a month to set up, but none of this goes over the public internet, it is all a private connectivity.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 21:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The alternative is to connect to public services within AWS such as Amazon Glacier, Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 22:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And for this, you're going to set up a public virtual interface or public VIF.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 23:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so it goes through the same path but it doesn't connect into a virtual private gateway, it connects directly into AWS.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So what if you want to connect to one or more VPCs in different regions?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: For this, you must use a Direct Connect gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 26:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: So we have an example where we have two regions, and they have two different VPC, we have two different CIDRs and we want to connect our on-premise data center into both VPC.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 27:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we're going to establish a Direct Connect connection, then using the private VIF, you're going to connect it to Direct Connect gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 28:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this gateway will have a private virtual interface into a virtual private gateway in the first region and another one in the second region.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 29:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So using the setup, we can start connecting to multiple VPCs and multiple regions.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, now let's discuss the connection types for Direct Connects.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 31:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We have a dedicated connection, it could be 1, 10 or 100 gigabits per second capacity, and we get a physical ethernet port that is dedicated to us.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 32:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And first we need to make a request to AWS, and then it will be completed by an AWS Direct Connect partner.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 33:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Or we can get a hosted connection, and they come in different flavors such has 15 megabits per second, 500 megabits per second up to 10 gigabits per second.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 34:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And again, we make connection requests via via AWS Direct Connect Partners.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 35:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then we can add capacity on demand, so we can add or remove capacity on demand, so it's a bit more flexible than a dedicated connection.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 36:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so we can get one, two, five 10 gigabits available at select locations.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 37:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And to set up either a dedicated or a hosted connection, the lead times are often longer than one month to establish a new connection.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 38:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So in the exam, they will ask you questions around, hey we want you to transfer some data within a week and we want it to be fast.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 39:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So an answer can not be Direct Connect because Direct Connect takes often more than one month to establish.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 40:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you need to look into question whether or not there's already a Direct Connect established, and whether or not the time to transmit the data is less or greater than one month.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 41:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, when you have a Direct Connect, there is no encryption.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 42:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So data is not encrypted but it is private because it is a private connection.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 43:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so if you want an encryption on top of it, you can set up Direct Connect to be alongside a VPN to provide IPsec encrypted private connection.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 44:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it's good to get an extra level of security but it's slightly more complex to put in place.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 45:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So to set up is to get the Direct Connect location, but then on the connection, you're going to set up a VPN connection on top of it, to have encryption for your Direct Connect and therefore all the traffic between your corporate data sensor to AWS is going to be encrypted.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 46:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, one last thing that can come up in the exam, is around resiliency for Direct Connect.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 47:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we have two modes of resiliency and architectures and you need to know them both because they will be coming up at the exam.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 48:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You have a high resiliency for critical workloads where we set up multiple Direct Connects.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 49:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we have two corporate data centers and we have two different Direct Connect location, and this gives us some redundancy.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 50:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So in the first case, we have a private VIF here and we have a private VIF here.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 51:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so here we get one connection and multiple locations, and so if one of the Direct Connect location goes down, then at least we have some backup Direct Connect location somewhere else and so this gives us high resiliency, and this is good for critical workloads.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 52:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But if you want to get to maximum resiliency for critical workloads and I emphasize the word maximum because it can come up in the exam, then you're going to have to set up again two Direct Connect locations, but this time each Direct Connect location will have two connections independence to give you maximum resiliency.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 53:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So in this use case, we have four connections across two locations, sorry, going into AWS.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 54:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so a maximum resilience is achieved by using separate connections, terminating on separate devices in more than one location.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 55:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it for Direct Connect.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 56:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked this lecture, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/099_[SAA_SOA] Direct Connect + S2S VPN.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Hi, so a very short lecture on an architecture that can come up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 2:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: So the idea is that you have your corporate data center and it's connected to your VPC using Direct Connect.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 3:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: And that's your primary connection and it's expensive, but maybe sometimes you will have an issue with your Direct Connect connection, and of course, you do not want to have no internet connection into your VPC.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Therefore, you can use a Direct Connect as a secondary connection, but that would be quite expensive.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Or you can set up a site to site VPN connection as a backup connection and set it up so that if the primary connection fails, then it kicks in, and now you are connected through the public internet using site to site VPN, which can be a bit more reliable because the internet, public internet, may always be accessible, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is an architecture that can come up in the exam and I just wanted to show it to you once, so that you know what to expect.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt

Line 1:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: Now let's talk about CloudFront.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 2:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: CloudFront is a content delivery network or CDN.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 3:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So anytime you see CDN in the exam, think CloudFront.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 4:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: It improves the read performance by caching the content of your website at the different edge locations.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And because your content is cached all around the world, then your users all around the world will have a lower latency and this will improve the user experience.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 6:
- Concepts: Edge Security, Perimeter Defense
- Services: Amazon CloudFront
- Key Insights: CloudFront is made of hundreds of points of presence globally and that includes edge locations and caches across the world.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 7:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: On top of it, by having the content distributed globally, we are getting DDoS protection.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 8:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: So DDoS is a sort of attack where all your servers around the world are getting attacked at the same time.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 9:
- Concepts: DDoS Resilience, Edge Security, Perimeter Defense
- Services: AWS Shield, AWS WAF, Amazon CloudFront
- Key Insights: We'll see this later on in this course, and the idea is that CloudFront, because your application is worldwide, then you're protected against these attacks also using something called Shield and Web Application Firewall that we will be seeing in the security section.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 10:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So if you wanna look at a map of the world, these are the map and we see some edge locations as well as edge caches.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so say we had created an S3 bucket and a website on our S3 bucket in Australia, but we had a user maybe in America.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 12:
- Concepts: Edge Security, Perimeter Defense
- Services: Amazon CloudFront
- Key Insights: Then what the user will do is that it will request the content from an American edge location using CloudFront and CloudFront will be able to fetch the content from Australia.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 13:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: Now, if another user in the US will be requesting the same content, then it will be served directly from the edge and it will not go all the way to Australia to serve that content.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 14:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: Same if a user is in China, then it'll be talking to a Chinese point of presence and then redirected to the S3 buckets, and then the content will be cached at the edge.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 15:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: CloudFront has several origins, which are basically backends that you want CloudFront to connect to.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: For example, we have an Amazon S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 17:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So this is used for distributing files and caching them at the edge.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 18:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: Or to upload files directly into Amazon S3 through Amazon CloudFront.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 19:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: And the access between CloudFront and Amazon S3 is secured using something called origin access control or OAC.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 20:
- Concepts: Edge Security
- Services: Amazon CloudFront, Amazon VPC
- Key Insights: You can also connect CloudFront to anything within your VPC.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 21:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: So it's called a VPC origin, and it's for applications that are hosted within your network on Amazon, within the private subnets.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 22:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: So it could be a private application balancer, it could be a private network load balancer, or even private EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 23:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can also connect to a custom origin over the HTTP protocol, and it could be, for example, on the S3 website, you first must enable the bucket as a static S3 website, or it could be any public HTTP backend you want.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 24:
- Concepts: Edge Security
- Services: Amazon CloudFront, Elastic Load Balancing
- Key Insights: For example, if you have a public load balancer, you can connect it directly into CloudFront.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 25:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So at a high level, how does CloudFront work?
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 26:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: We have the edge location all around the world, okay?
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 27:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then it will be connecting to your origin.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 28:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So would it be an S3 bucket or an HTTP server.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 29:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: And when the client connects and does an HTTP request into your edge location, then the edge location will see if it has it in the cache.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: If it doesn't have it in the cache, then it will go to the origin to get the request results.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 31:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: And then once it retrieves the results, it will be caching it into a local cache so that if another client requests the same content from the same edge location, then the edge location does not need to go to the origin.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 32:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So if we have S3 as an origin, then if we look at the cloud, your S3 bucket is your origin in some region, and then you have edge locations all around the world, for example, at Los Angeles, and your users accessing the edge location in Los Angeles will get their content directly served through the edge location.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 33:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: But first, the edge location will get it from the origin S3 bucket through the private network.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 34:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: And the S3 bucket will be secured using an origin access control and by modifying the S3 bucket policy on the S3 bucket.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 35:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is the same when we have a user in Sao Paulo, for example, in Brazil.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 36:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: Again, this will be another edge location, which will be serving users close to Brazil, and then it will be a private connection between your edge location and your S3 bucket and so on.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 37:
- Concepts: Edge Security, Perimeter Defense
- Services: Amazon CloudFront
- Key Insights: So using CloudFront and the edge locations, we can see that the content of our S3 bucket in one region can be distributed all around the world through the edge locations or points of presence.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 38:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So one question that's common is what is the difference between CloudFront and something like S3 replication?
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 39:
- Concepts: Edge Security, Perimeter Defense
- Services: Amazon CloudFront
- Key Insights: Well, if you have CloudFront, you're using the Global Edge network.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 40:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is about 216 points of presence.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 41:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: And the files are going to be cached in each edge location maybe for a day.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 42:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is amazing if you have static content that must be able to be available everywhere around the world.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 43:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: S3 cross region replication is different.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 44:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It must be set up for each region you want replication to happen.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 45:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is not for every region in the world.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 46:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then files are going to be updated in near real time so there's no caching that happens.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 47:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And it is only for read only.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 48:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so this is great if you have dynamic content that needs to change all the time and be available at low latency in a few regions.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 49:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So these are very different purposes.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 50:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: CloudFront is a CDN, which is to cache content all around the world, whereas S3 cross region replication is to really replicate an entire bucket into another region.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 51:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So hopefully that makes sense about CloudFront.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 52:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: In the next lecture we'll have a play and see how we can set up a CloudFront distribution on the CloudFront and S3 buckets.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 53:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we'll see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt

Line 1:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So let's go and practice using CloudFront, but first we have to create an S3 bucket to hold our files for our distribution.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 2:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So let's create a bucket, and I'll call this one demo-CloudFront-Stephan-v4, and it will scroll down, leave everything as the default and click on Create Bucket.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so my bucket is now created and I'm going to upload some files in it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let me add files and I will choose my three files, beach, coffee and index.html.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's upload them.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And now that they've been uploaded, so if I go in my bucket, we can see all of them.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And as a reminder, if I go on index.html, I have two ways of open it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The first one is to use the object URL.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But if I try it, I get an access denied because my object is not public.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And if I go and click on open here, this generates a pre-sign.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 11:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: So let's allow popups.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 12:
- Concepts: Edge Security
- Services: (none explicit)
- Key Insights: This generates a pre-signed URL for my S3 objects, which allows me to access the object.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you see "I love coffee" and "hello world" but I still don't see the image because the image itself is not public.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 14:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So let's see how we can instead use CloudFront to make these files accessible without making them public.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 15:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So let's open up the CloudFront console.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And I first have this popup about pricing, so I'm going to click on don't show it again and then close it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 17:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So let's go ahead and create a CloudFront distribution.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 18:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So first we have to do is to select a plan.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 19:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So now there are several plans for CloudFront, and as you can see, they have different features.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 20:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But if we have a look, the free plan is going to be enough for us.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 21:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we have enough requests and allowance per month, we're going to get always on DNS protection, we're going to get geographic traffic blocking and global CDN, DNS, free TL certificates.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal; Edge-distribution security signal.

Line 22:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So all of this is enough for us for what we need for CloudFront.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 23:
- Concepts: DDoS Resilience, Perimeter Defense
- Services: AWS Shield
- Key Insights: But if you needed something such as, for example, edge key-value store or advanced DDoS protection or uptime SLA, or protection for WordPress, these kind of things, then one of these plans will be better for you.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And finally, you have the pay as you go option, which is to pay for based on the traffic you use.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then you're going to have to pay extra for some features.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 26:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But to keep things simple, let's keep as a free because this is going to be enough for our use case.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 27:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So this one is going to be called demo new CloudFront.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 28:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And here we have only the option to use a single site or app.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 29:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We don't need to have a domain, but we could add a domain and provision a TLS certificate for us.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Let's click on next.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 31:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And now we have to say, what is the origin type?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 32:
- Concepts: Network Security Operational Context
- Services: API Gateway, Elastic Load Balancing
- Key Insights: So as you can see right now, we have Amazon S3, elastic load balancer, API gateway, elemental media package or other.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 33:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: And the VPC origin, if you want to connect directly to a private EC2 instance or an application of balancer that are deployed privately, this is only available in the business plan.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 34:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: But still an option of what CloudFront can do.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 35:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we'll use Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 36:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then we have to browse Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 37:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: And we'll use a demo CloudFront stephane v4.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 38:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 39:
- Concepts: Edge Security, Traffic Filtering
- Services: Amazon CloudFront
- Key Insights: Next we're going to allow private S3 bucket access to CloudFront.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 40:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Yes, and we'll use the recommended origin settings and we'll use the recommended cache settings to serve S3 content.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 41:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So now the setup is quite simple.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 42:
- Concepts: Perimeter Defense
- Services: AWS WAF
- Key Insights: If we want to have security, we can enable the web application firewall, but this is not something we need right now.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 43:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And if you want to have protection against layer 7, again, this is available with the business plan.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 44:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So right now, I don't want anything.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 45:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I'll click on- Make sure we have the free plan.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 46:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Yes, that's good.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 47:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The UI is just a little bit counterintuitive in this case, but let's get back into this.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 48:
- Concepts: Perimeter Defense
- Services: AWS WAF
- Key Insights: So web application firewall, we don't need anything.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 49:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We click on next and we can review everything.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 50:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So yes, we are on the free plan and we're going to create our distribution.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 51:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so my distribution is now created.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 52:
- Concepts: Edge Security, Policy Enforcement
- Services: Amazon CloudFront
- Key Insights: Now if I go into S3 and look at the permissions and I look at my bucket policy, I can see that now in my bucket policy, I have a bucket policy allowing access to my bucket from our CloudFront distribution.
- Hidden/Implicit Meaning: Edge-distribution security signal; Centralized governance signal.

Line 53:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: These are two because I had two, one is a test and one is the one I just created for you.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 54:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: As we can see, this allows our CloudFront distribution to privately access our S3 buckets.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 55:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: And so this was entered as a bucket policy by the platform service as it was being deployed.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 56:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So my distribution is now ready and I can click on the domain name, open a new tab, and press enter.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 57:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now I'm gonna get an access denied, but this is fine.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 58:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It's because I need to enter one specific path.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 59:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So /coffee.jpg.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 60:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: As you can see, my coffee image is now loading.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 61:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Or /beach.jpeg.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 62:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And again, my beach image is loading.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 63:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And now if I go to index.html, I have my full image with "I love coffee" and "hello world" and this image.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 64:
- Concepts: Edge Security, Policy Enforcement
- Services: Amazon CloudFront
- Key Insights: So even though all my bucket objects are private, now because we have this bucket policy allowing access from CloudFront, I'm able through CloudFront, to see all that I need to see.
- Hidden/Implicit Meaning: Edge-distribution security signal; Centralized governance signal.

Line 65:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But now the added benefit is that if I go back to beach.jpeg, the image is cached so loading is almost instantaneous.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 66:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So back to here.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 67:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Again, very, very fast loading.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 68:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: And that is the benefit of CloudFront.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 69:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 70:
- Concepts: Edge Security, Policy Enforcement
- Services: Amazon CloudFront
- Key Insights: We've created a CloudFront distribution within the free plan, and we set up S3 as an origin and we saw the bucket policy.
- Hidden/Implicit Meaning: Edge-distribution security signal; Centralized governance signal.

Line 71:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/102_[SAA_DVA_SOA] CloudFront - ALB_EC2 as an Origin.txt

Line 1:
- Concepts: Edge Security
- Services: Amazon CloudFront, Elastic Load Balancing
- Key Insights: So how can we connect CloudFront to an application load balancer or an EC2 instance as an origin?
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 2:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we have two ways, and this is the better way and the newer way.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 3:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: It's called using VPC origins.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 4:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: And it allows you to deliver content directly from applications that are hosted in your private subnets in your VPC.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And everything can remain private.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You don't need to expose any of this to the internet.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that means we can deliver traffic to private application balancers, network load balancers, and EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 9:
- Concepts: Edge Security, Perimeter Defense
- Services: Amazon CloudFront
- Key Insights: Well, we're going to create a CloudFront distribution, which has a bunch of edge locations, and our users are going to access CloudFront this way.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 10:
- Concepts: Edge Security
- Services: Amazon CloudFront, Amazon VPC
- Key Insights: But then from CloudFront, we're going to create a VPC origin and connect this VPC origin to our backend.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 11:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: So it could be, again, an ALB, an NLB or an EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 12:
- Concepts: Edge Security
- Services: Amazon CloudFront, Amazon VPC
- Key Insights: And then CloudFront will do the link through the VPC origin to direct traffic to your private subnets and applications.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 13:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: And from a network perspective, this is one of the most secure way of doing your setup because, well, your applications are still hosted privately, internally, and then you choose what to expose through CloudFront, which is very handy.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 14:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: If you wanted to use a public network, this was the previous method before the VPC origin feature existed.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And I still wanna show it to you because it's good to understand what was done before.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You had to have an EC2 instance that was public.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 17:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: And so therefore you had a list of edge locations with their public IPs.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 18:
- Concepts: Edge Security, Network Segmentation, Perimeter Defense, Traffic Filtering
- Services: Amazon CloudFront, Security Groups
- Key Insights: And you use this link to find the list of all the CloudFront IPs and you would make sure to change the security group to allow all these public IPs of the edge location into your EC2 instance.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 19:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So it would be public, but only restricted to the edge locations.
- Hidden/Implicit Meaning: Constraint or limitation signal; Edge-distribution security signal.

Line 20:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: And the same goes for if you had an application load balancer, again, it should have been public, but your EC2 instances could have been private.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: Network Segmentation
- Services: Elastic Load Balancing, Security Groups
- Key Insights: And then just have private network between your ALB and your EC2 instances through the use of security group.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 22:
- Concepts: Edge Security, Network Segmentation
- Services: Amazon CloudFront, Elastic Load Balancing, Security Groups
- Key Insights: And again, you must make sure that your ALB has a security group that allows all the public IPs coming from CloudFront.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Edge-distribution security signal.

Line 23:
- Concepts: Network Segmentation
- Services: Security Groups
- Key Insights: So it's a bit more tedious because number one, you need to find these public IPs and change the security group.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 24:
- Concepts: Edge Security, Network Segmentation
- Services: Amazon CloudFront, Elastic Load Balancing, Security Groups
- Key Insights: And on top of it, well, there is a risk that if someone changes the security group of your ALB or your EC2 instance, then your instance is public to more than just your CloudFront distribution.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But this was the old way.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 26:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: Now the new better way is to use, of course, VPC origins.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 27:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: All right, so that's it in this lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 28:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/103_[SAA_DVA_SOA] CloudFront - Geo Restriction.txt

Line 1:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: Just a short lecture around CloudFront geo restriction.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 2:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you can restrict who can access your distribution based on the country where they try to access the distribution from.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 3:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: So you can set up an allow list to define a list of approved countries, or you can set up a block list to set up a list of banned countries.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 4:
- Concepts: Edge Security
- Services: (none explicit)
- Key Insights: Now the country is determined by using a third party geo IP database to match the IP of the user to the country it belongs to.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 5:
- Concepts: Edge Security
- Services: (none explicit)
- Key Insights: So the use case for using geo restriction would be copyright laws to control access to content.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So in order to use the geographic protection, somehow I need to change my plan.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So if you look at this plan, the manage free plan and change this plan, as you can see within the list right now, as it says, it says that there is geographic traffic blocking, but this option is not available to me and I need to change to something called the Pay as You Go option, but it's not available to me either here.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it was is a little bit slow and I'm trying to edit my course.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But so what I've done is that I've created another distribution, this one, which is Pay as You Go type of billing.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 10:
- Concepts: Edge Security, Traffic Filtering
- Services: Amazon CloudFront
- Key Insights: And now under security I have the CloudFront geographic restrictions that I can edit and I can have an allow list or block list and then select the countries that I need to block.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 11:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: For example, I wanna block these two countries and then save my changes.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 12:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: I expect over time that CloudFront will have the correct options under security, under the free plan.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But let's see.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Anyways, now you know how to do it at least.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Either you select a paid plan or pay as you go and you'll have access to play with the security options.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 17:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/104_[DVA] CloudFront - Signed URL & Cookies.txt

Line 1:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So say you have a CloudFront distribution and you wanna make it private and you want to give access to people to premium paid shared content all over the world.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 2:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: But you want to be able to see and know who has access to what on your CloudFront distribution.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 3:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: For this, you can use a CloudFront signed URL or a signed cookie and not tell the difference of SAML and cookie at the very end of this slide.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 4:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So first, when we create a URL and a cookie, you need to attach a policy and you need to tell when does the URL or the cookie expire.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: What IP ranges can access this data from?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So if you know the target IP of your clients, then you should definitely use that.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And the trusted signers, so which address accounts can create signed URLs for your users.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then you can ask me, "How long should this URL be valid for?" Well, if you're sharing a content, for example, a movie, or music, you can make it very short, a few minutes.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But if it's content that is private to the user that they will access in a long period of time, you can make that URL or that signed cookie last for years.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So what's the different between a URL and a cookie?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 11:
- Concepts: Edge Security
- Services: (none explicit)
- Key Insights: A signed URL gives access to individual files.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you get one URL per file.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So if you have 100 files to show you'll get 100 URLs.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And if you have a signed cookie, then you give access to multiple files and the cookie can be reused.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this time you have one signed cookie for many files.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So choose whatever you need based on the context.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 17:
- Concepts: Edge Security
- Services: (none explicit)
- Key Insights: Now, how does signed URL work as a diagram?
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 18:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So we have our CloudFront distribution and has a bunch of locations.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 19:
- Concepts: Edge Security
- Services: (none explicit)
- Key Insights: And for example, we seen before that we can access our Amazon S3 bucket through OAC origin access control for maximum security.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 20:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: And so that means that the objects in our S3 buckets cannot be accessed by anything else, but CloudFront.
- Hidden/Implicit Meaning: Constraint or limitation signal; Edge-distribution security signal.

Line 21:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: But we still want to be able to give people access to their objects through CloudFront.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 22:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we have our clients, and our client is going to authorize and authenticate to our application and we have to code that application.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 23:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: And our application will use the AWS SDK to generate a signed URL directly from CloudFront.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 24:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: It will return the signed URL to the clients and then the clients will be able to use that signed URL to get the data and the files and the objects or whatever you need, directly from CloudFront.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 25:
- Concepts: Edge Security
- Services: (none explicit)
- Key Insights: So this works for signed URL, but this also works for signed cookie obviously.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 26:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: But you may be asking yourself, should I use a CloudFront signed URL or an S3 pre-signed URL?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Edge-distribution security signal.

Line 27:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And they have a different purpose.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 28:
- Concepts: Edge Security, Traffic Filtering
- Services: Amazon CloudFront
- Key Insights: So CloudFront signed URL is to allow access to a path, no matter the origin.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 29:
- Concepts: Edge Security
- Services: (none explicit)
- Key Insights: So signed URL works not just for S3 as an origin, but HTTP, backend of whatever you want.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It's an account wide key-pair, so only the root can manage it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 31:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: And you can filter by IP, path, date and expiration.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 32:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: And you can leverage all the caching features out of CloudFront.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 33:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So if you look at the diagram, we have the clients using the signed URL onto your CloudFront distribution and then CloudFront distribution talking to your origin.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 34:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: In this case, I put an EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 35:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we have an idea for this.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 36:
- Concepts: Edge Security
- Services: (none explicit)
- Key Insights: Now for S3 pre-signed URL, it issues a request as the person who pre-signed the URL.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 37:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that if I signed the URL with my own IAM principle and I use my IAM keys to signing this, then the person who has that URL has the same rights as me.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 38:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It has a limited lifetime.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 39:
- Concepts: Edge Security
- Services: (none explicit)
- Key Insights: And so the idea is that now the client can access directly your S3 bucket using that pre-signed URL.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 40:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So the idea is, if you want people to have access to your CloudFront distribution and it's in front of S3.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 41:
- Concepts: Edge Security, Policy Enforcement
- Services: (none explicit)
- Key Insights: You have to use a signed URL because you cannot access your S3 bucket as you should because there is a bucket policy restricting it to the OAI.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Edge-distribution security signal; Centralized governance signal.

Line 42:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: But if your users are using directly against S3 and you want to distribute a thousand S3 directly without using CloudFront, then pre-sign URL will be a great use case for it.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 43:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: All right, that's is for this theoretical lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 44:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt

Line 1:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So now let's discuss how we can generate keys to sign the URLs with CloudFront.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 2:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And there are two types of signers and the new recommended way is to use a trusted key group.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that I'll show you the hands-on in a second.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We can leverage the APIs to create and rotate these keys.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And we can leverage IAM for API security around the management of these key group and the API key, the public keys in this key group.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 6:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: The other method that was originally supported in the first one that existed was to use an account that contains a CloudFront key pair.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But for this, to manage this key pair, we need to use the root account credentials as well as the AWS console, which is not recommended because you shouldn't use the root account for this.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And also you cannot automate anything because there are no APIs to manage this platform key pair.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the recommended way now is users trusted key group.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So just so you know.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 11:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So we can create one or more trusted key group in our CloudFront distribution.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then we generate our own public and private key.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The private key will be used by your applications.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: For example, your EC2 instances to sign your URLs.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 15:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: Whereas the public key that is going to be uploaded by CloudFront will be used to verify the signature of these URLs.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let me just show you in the interface, the console where these options are.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 17:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So let's have a look at key managements for CloudFront.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 18:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And on the left hand side, I have public keys and key groups.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 19:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let me click on public keys.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 20:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So the idea is that we want to generate an RSA key, so a private key and a public key, and the private key will go on my EC2 instances and the public key will go on CloudFront.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 21:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: And this will allow my EC2 instances to use the platform API, to create signed URLs.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 22:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So first we need to generate this key.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 23:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I will type in generates RSA key online, 2,048 bit.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Let's take the first website for example.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I'm going to choose a key size of 2,048 bits.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 26:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is very important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 27:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And generate these new keys.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 28:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And I need to wait about three seconds for me at least.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 29:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so we have a private key part and a public key part.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the private key is what would be used by your EC2 instances to generate this URL.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 31:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is something you want to keep secret and keep private, and you would save it somewhere, securely.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 32:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And that the public key can actually be regenerated from the private key if you ever needed to.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 33:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: But the public key is what we will send into CloudFront.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 34:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So back into CloudFront for my public key, that will create a public key.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 35:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Call this one demo key.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 36:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then for the key itself, I'm going to just paste what I have obtained as a public key from the websites.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 37:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And now the public key has been successfully created.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 38:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: If you get any errors, just make sure that you are using a 2,048 bits.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 39:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And if the first key doesn't work, just click on generate new keys one more time to generate a key of 2,048 bits.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 40:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So now that we have our public key being created, what I can do is I can create a key group.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 41:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so I will create a demo key group.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 42:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And in this group I can add up to five public keys.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 43:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I'll just add the one I just created.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 44:
- Concepts: Edge Security, Traffic Filtering
- Services: Amazon CloudFront
- Key Insights: And that this key group is what will be referenced by CloudFront to allow our users, our CE2 instances, for example, to create signed URLs.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 45:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So something to note is that I'm logged in as the root user of my account, but any IAM user with a sufficient permissions could create public keys and key groups within CloudFront.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 46:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: But I can also show you the old way of doing things for adding keys into CloudFront.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 47:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, I'm logged in as my root account and it's necessary.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 48:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And let me go to the AWS management console and from here, click on my accounts and my security credentials.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 49:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is something you're doing from your root accounts.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 50:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: And as you can see, there's a CloudFront key pair section.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 51:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: And this is how you would use CloudFront to create signed URLs the old way.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 52:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: The new recommended way is definitely to use what we've been showing before, which was using the key groups in CloudFront.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 53:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But if you want to see how the old way was happening, we had to login using the root accounts.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 54:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then we would create a new key pair or upload our own key pair.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 55:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's create a new key pair.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 56:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then we will download the private key file and then download the public key file and click on close.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 57:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now this key would be added and that we could make it active, inactive, or deleted if we wanted to.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 58:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: But this would apply to any CloudFront distributions and we will need to create, and to give these private keys to our EC2 instances.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 59:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But this is not as secure, and this can only be done by the root account.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 60:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So definitely from an exam perspective, the new way of doing things is absolutely to use the CloudFront service and the capability that allows any of the IAM user to do it, which is using public keys and key groups.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 61:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this section.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 62:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/106_[DVA] CloudFront - Field Level Encryption.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Let's talk about field level encryption.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 2:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is to protect sensitive information through the application stack and this adds an additional level of security alongside using encryption in flight using HTTPS.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 3:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So the idea is that anytime sensitive information is sent by the user, the edge location is going to encrypt it and it will only be able to be decrypted if someone has access to a private key, and therefore this will be using asymmetric encryption.
- Hidden/Implicit Meaning: Constraint or limitation signal; Edge-distribution security signal.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So how does it work?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 5:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: Well, in the POST requests being made to Amazon CloudFront, then there will be a set of fields that we want to be encrypted up to 10 fields, for example, a credit card, and then we'll specify the public key to encrypt them with.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's go through an example.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 7:
- Concepts: Edge Security, Perimeter Defense
- Services: Amazon CloudFront
- Key Insights: We have a client talking over HTTPS through edge location, which will be forwarding it to the CloudFront service using HTTPS again and then it will go all the way to the origin using HTTPS to your application balancer, which will forward all the data using HTTPS to your web server.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So everything is encrypted in flight, but we want to specify field level encryption.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So say, for example, that our user is sending us some credit card information, and this is the one in orange right now.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 10:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: We specify that we want to have field level encryption for the credit card information and therefore the edge location will encrypt that field using a public key.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 11:
- Concepts: Edge Security, Perimeter Defense
- Services: Amazon CloudFront
- Key Insights: So now the data being passed from the edge location to Amazon CloudFront to the origin will have the credit card information being encrypted thanks to the public key.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 12:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: And so the information will be passed all along until the web server, and then the web server will have access to the private key and will be able to decrypt that encrypted field using the private key to decrypt and get the credit card number.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 13:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: As we can see, all along the stack, none of the CloudFront's location and application balancer will have the opportunity to decrypt that field.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 14:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: Only the web server will need to have some custom application logic to decrypt that field.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/107_CloudFront - Origin Access Control and Origin Access Identity (OAC & OAI).txt

Line 1:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, now lets talk about Origin Access Control with an S3 Bucket that is server-side encrypted with KMS security.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 2:
- Concepts: Edge Security
- Services: (none explicit)
- Key Insights: So, the benefits of Origin Access Control, which is the newest version of Origin Access Identity, is that OAC supports SSE-KMS natively because all the requests coming from OAC are going to be signed using Sigv4 which is a security mechanism.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 3:
- Concepts: Edge Security, Policy Enforcement
- Services: (none explicit)
- Key Insights: So, all we need to do is add a statement to the KMS Key Policy to authorize its usage by the OAC.
- Hidden/Implicit Meaning: Edge-distribution security signal; Centralized governance signal.

Line 4:
- Concepts: Edge Security, Policy Enforcement
- Services: Amazon CloudFront
- Key Insights: So, you have the KMS Key and you're going to edit the Key Policy, and you're going to add a condition saying that as long as the SourceARN is the ARN of your OAC, your Origin Access Control, then you will be able to do the decrypt encrypt and generate there the key operations and therefore, CloudFront can communicate with your S3 Bucket that is enabled with SSE-KMS.
- Hidden/Implicit Meaning: Edge-distribution security signal; Centralized governance signal.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, this looks very simple because, well, if we were using Origin Access Identity this would be much more difficult.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 6:
- Concepts: Edge Security
- Services: (none explicit)
- Key Insights: So, Origin Access Identity does not support SSE-KMS natively, it only supports SSE-S3, and this is why OAC got released.
- Hidden/Implicit Meaning: Constraint or limitation signal; Edge-distribution security signal.

Line 7:
- Concepts: Edge Security, Perimeter Defense
- Services: Amazon CloudFront
- Key Insights: And so, in the previous case we had to use Lambda@Edge to actually sign requests from CloudFront to S3, and also disable OAI for this to work.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, what's the process?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 9:
- Concepts: Edge Security, Perimeter Defense
- Services: Amazon CloudFront
- Key Insights: Well, we have our users, and they access CloudFront, then a Lambda@Edge is going to modify the origin request, and it is going to actually sign this request using the Sigv4 mechanism, so that CloudFront can access your S3 Bucket with the SSE-KMS security mechanism, which is going to return the file, and then send it back to the user.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 10:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: Now this is an architecture you may find in the exam still, but overall is going to be deprecated over time, and the correct solution is to use an Origin Access Control because we don't need to use any Lambda@Edge function and everything is working as expected with both SSE-S3 and SSE-KMS.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/108_CloudFront - Other.txt

Line 1:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So here are some bits of information about CloudFront that can come up in the exam.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 2:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The first one is around the Authorization Header.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it is desirable for you, to forward the Authorization Header from the users to the origin.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 4:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So say for example your EC2 instance does need this Authorization Header then you define a Cache Policy, and in this Cache Policy you're going to white list the Authorization Header.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Therefore, when the request comes in with the Authorization Header, it is going to be forwarded, back to the origin.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So then the request comes back from the EC2 Instance, and is passed to the users.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, authorization is supported for any kind of origin, but not supported for S3 kind of origins.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 8:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: The second one is a pattern to restrict access to an Application Balancer through CloudFront or a custom origin.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 9:
- Concepts: Edge Security
- Services: Amazon CloudFront, Elastic Load Balancing
- Key Insights: So first, you will configure CloudFront to add a custom HTTP Header to any request that will be sent to the ALB, the origin.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 10:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: And second, you will configure the ALB to only forward request and to respond to request that contain this custom HTTP Header.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now the value of this custom HTTP Header must remain secret, and can rotate over time.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 13:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: You have an ALB or a custom origin, and then EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 14:
- Concepts: Edge Security, Perimeter Defense
- Services: Amazon CloudFront
- Key Insights: Then you access the CloudFront through the Edge Locations.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 15:
- Concepts: Edge Security, Perimeter Defense
- Services: Amazon CloudFront
- Key Insights: This CloudFront Edge Location is going to have a custom header, called the X-Custom-Header and then a random value.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 16:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: And then, there's going to be a filter on the origin, on your Application Balancer, for example.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 17:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Such as, if the custom header is not present with that value, request will be dropped.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 18:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: So in that case, if the filter is correct then it's going to be forwarded to the EC2 Instances, and any other user who's trying to access directly your Application Balancer through its public URL, if somehow they discovered it, will not be able to access it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 19:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: Because they will not know what is the custom header that is needed to actually go through the ALB.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 20:
- Concepts: Edge Security, Network Segmentation
- Services: Amazon CloudFront, Security Groups
- Key Insights: And as an extra security mechanism, you can also decide to leverage the CloudFront prefixes of public IP addresses, to have rules in your security group attached to your Application Balancer, to guarantee that, the request only are coming from CloudFront.
- Hidden/Implicit Meaning: Constraint or limitation signal; Preventive control and filtering signal; Edge-distribution security signal.

Line 21:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: There's also a way to leverage CloudFront alongside Cognito.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 22:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 23:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: Well, say we want our users to be authenticated, before accessing CloudFront and our S3 buckets.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: In that case, what we're going to do, is that we're going to use Cognito to deploy what's called the Cognito Hosted UI.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 25:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: Which is a service offered by Cognito, which will basically give us a username and a password type of login to get back a JWT Token, which is a JSON Web Token.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 26:
- Concepts: Edge Security, Perimeter Defense
- Services: Amazon CloudFront
- Key Insights: Then, this token is going to be passed to CloudFront, alongside the request, and CloudFront is going to be leveraging a Lambda function, the Lambda@Edge function, which is going to look at the viewer request, get back the JWT Token, and verify whether or not that token was issued by Cognito, and is correct.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 27:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: If that is correct, then the Lambda function will say, okay, the request can go on, and then CloudFront is going to talk to the S3 buckets.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 28:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Get back the data, and send it back to the user.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 29:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So very important here, the one thing we are using, is the Cognito hosted UI to create and generate this JWT Token and then we're using Lambda@Edge to verify the validity of this token.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Edge-distribution security signal.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 31:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/109_WAF - Web Application Firewall.txt

Line 1:
- Concepts: Perimeter Defense
- Services: AWS WAF
- Key Insights: So now let's talk about AWS WAF or Web Application Firewall.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 2:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this comes up a lot in the exam.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 3:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So it's used to protect your web application at the layer seven so for HTTP and HTTPS kind of requests and it will protect you against common web exploits such as SQL injection, cross-site scripting or malicious bots.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this can be deployed on the following resources.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 5:
- Concepts: Edge Security
- Services: API Gateway, Amazon CloudFront
- Key Insights: It could be Amazon CloudFront, it could be the API Gateway to protect your REST APIs.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 6:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: It could be your application load balancer, your AppSync for GraphQL APIs, your Cognito User Pool to protect the authentication endpoints, App Runner, Verified Access and Amplify.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 7:
- Concepts: DDoS Resilience, Perimeter Defense
- Services: AWS Shield, AWS WAF
- Key Insights: Now, you should know that even though WAF is for protecting your web application, it's not for DDoS protection.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 8:
- Concepts: DDoS Resilience
- Services: AWS Shield, AWS WAF
- Key Insights: So you can get protection at the layer seven, yes, but for layer three or layer four DDoS protection, WAF is useless and so therefore you should use AWS Shield instead.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 9:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So what are the protection packs for web ACL?
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 10:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So web ACL means Web Access Control List and you should know how they work.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 11:
- Concepts: Perimeter Defense, Policy Enforcement
- Services: AWS WAF
- Key Insights: So the way it works that you're going to associate these web ACLs to your web application firewall and you can have multiple rule per web ACL such as the rules on IP addresses or HTTP headers or the body of the request themselves or URI strings and cookies.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can also have rules to protect against common attacks such as SQL injection or cross-site scripting.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can have size constraints to make sure that a request is not too big.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 14:
- Concepts: Edge Security
- Services: (none explicit)
- Key Insights: You can have geo match to restrict specific countries, ASN match, label match or Regex match.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And you can also have rate-based rules to count the number of occurrences of an event.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 16:
- Concepts: Policy Enforcement, Traffic Filtering
- Services: (none explicit)
- Key Insights: So rules action then based on with the rule defined can be to allow the request, to block it, to count the request, to just get metrics out of it, to have a CAPTCHA, to have the user complete the CAPTCHA before accessing a webpage or a challenge.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 17:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: And it, these web ACLs can be reused across multiple resources as long as they share the same scope.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 18:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So when you create a Web ACL, and that's very important to know at the exam, it could be either regional or global.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 19:
- Concepts: Edge Security, Perimeter Defense
- Services: API Gateway, Amazon CloudFront, Elastic Load Balancing
- Key Insights: So if you have a global type of web SCL, it can only be used for global resources such as CloudFront and if you have a regional type of web ACL, you can use it for any different types of regional resources such as ALB, Cognito or API Gateway as long as of course they are in the same region.
- Hidden/Implicit Meaning: Constraint or limitation signal; Preventive control and filtering signal; Edge-distribution security signal.

Line 20:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, here's a use case.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 21:
- Concepts: Policy Enforcement, Traffic Filtering
- Services: (none explicit)
- Key Insights: We have a rate-based rule to block after 100 requests from the same IP address over a five minutes period because we consider that is too many requests after this.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 22:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So we're going to deploy this rule.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 23:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so as long as the requests are underneath this threshold of 100 requests over five minutes then they're gonna be allowed but then as soon as we hit the threshold, they're going to be blocked.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And what's going to happen is that we can also generate a CloudWatch metric and a CloudWatch alarm to have these types of alerts when this happens.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 25:
- Concepts: Edge Security, Policy Enforcement
- Services: (none explicit)
- Key Insights: You can have a geo match rule for example to only access certain countries to log in with your Cognito User Pool.
- Hidden/Implicit Meaning: Constraint or limitation signal; Preventive control and filtering signal; Edge-distribution security signal.

Line 26:
- Concepts: Edge Security
- Services: AWS WAF
- Key Insights: So while there's no geo restriction feature directly in Cognito, you can combine it with WAF to get the geo match feature.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 27:
- Concepts: Policy Enforcement, Traffic Filtering
- Services: (none explicit)
- Key Insights: Or you can have a match rule to allow only requests from a specific certain type of devices or browser using the User-Agent HTTP header.
- Hidden/Implicit Meaning: Constraint or limitation signal; Preventive control and filtering signal.

Line 28:
- Concepts: Perimeter Defense
- Services: AWS WAF
- Key Insights: The pricing for WAF is important to know, so it's $5 per month for your web ACL.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 29:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: Each rule is going to cost you $1 per month and then the requests are going to be $0.60 per 1 million requests.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 30:
- Concepts: Network Security Operational Context
- Services: AWS WAF
- Key Insights: It may change but it gives you an idea of how WAF pricing works.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 31:
- Concepts: Network Security Operational Context
- Services: AWS WAF
- Key Insights: You also have managed roles within WAF.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 32:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So there are rules that are managed directly by AWS and from also rules, you can buy from the marketplace sellers.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 33:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So you get the baseline rule groups such as the common rule sets, the admin protection rule sets.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 34:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is for common threats.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 35:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: And then you have use-case specific rule groups such as for example, looking at SQL injection rule sets or we look at rules for Windows, rules for PHP, rule for WordPress and so on.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 36:
- Concepts: Policy Enforcement, Traffic Filtering
- Services: (none explicit)
- Key Insights: You can also have IP repetition rule group to block request based on specific sources, for example known malicious IP.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 37:
- Concepts: Policy Enforcement, Traffic Filtering
- Services: (none explicit)
- Key Insights: And also, you have the bot control manage rule group to block and manage requests from bots.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 38:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: Also important to know there's a way to do logging on your web ACL.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 39:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you can send your logs into CloudWatch Logs log group or into an Amazon S3 bucket on which you can analyze logs directly using SQL and Athena or Amazon Data Firehose.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 40:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And from Firehose, you can send it to any types of destination you like such as Amazon S3, Redshift or OpenSearch or anything else that's supported by Amazon Data Firehose.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 41:
- Concepts: Perimeter Defense
- Services: AWS WAF
- Key Insights: All right, so that's it for WAF web ACLs.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 42:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/110_[SAA] Shield.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about AWS Shields.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 2:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: And Shield is a service to protect yourself from DDoS attacks.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 3:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: What is DDoS?
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Well, it's a distributed denial of service.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that your infrastructure is going to suddenly receive many, many requests at the same time from a lot of computers all around the world.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so the goal of it is to overwhelm and overload your infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this way your infrastructure cannot serve your real users and this is what it's called a distributed denial of service.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: So we can protect against it, so we have the AWS Shield Standard service.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It's a free service, it's already activated for every customer of AWS and is going to give you protection from attacks such as the SYN or UDP floods or any reflection attack or other layer 3, or layer 4 attacks.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 10:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: And if you want to get advanced protection, you can use the AWS Shield Advanced service.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 11:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: So this is an optional DDoS mitigation service.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 12:
- Concepts: Centralized Security Governance
- Services: (none explicit)
- Key Insights: It costs around 3,000 per month per organization.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 13:
- Concepts: DDoS Resilience, Edge Security
- Services: AWS Shield, Amazon CloudFront
- Key Insights: And the idea is that you're going to get protected against more sophisticated DDoS attacks on Amazon EC2, Elastic Load Balancing, Amazon CloudFront, the Global Accelerator and Route 53.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 14:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: It also gives you 24/7 access to the AWS DDoS response team.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So in case you get attacked, you will have someone to help you and get you along the way.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 16:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: In case you are incurring higher fees because you are also being attacked, this Shield Advance protects you from these higher fees.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 17:
- Concepts: DDoS Resilience
- Services: AWS Shield, AWS WAF
- Key Insights: And this Shield Advance has an automatic application layer, DDoS mitigation, and it's going to mean that it's automatically going to create and evaluate and deploy WAF rules to mitigate layer 7 attacks.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 18:
- Concepts: DDoS Resilience, Perimeter Defense
- Services: AWS Shield, AWS WAF
- Key Insights: So automatically your web application firewall will have rules to help you mitigate these attacks, DDoS attacks if they happen at the layer 7, which is great.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 19:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's say for this lecture, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/111_[SAA] AWS Firewall Manager.txt

Line 1:
- Concepts: Centralized Security Governance
- Services: AWS Firewall Manager
- Key Insights: So now let's talk about the AWS Firewall Manager.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 2:
- Concepts: Centralized Security Governance
- Services: (none explicit)
- Key Insights: So this is a service to manage all the firewall rules in all accounts of an AWS organization.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that you can manage rules across many, many accounts at the same time.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 4:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So you can set a security policy, and a security policy is a common set of security rules.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 5:
- Concepts: Perimeter Defense
- Services: AWS WAF, Elastic Load Balancing
- Key Insights: And so this could be Web Application Firewall rules, so they apply it to the ALB, the API gateways, CloudFronts and so on.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 6:
- Concepts: DDoS Resilience, Edge Security
- Services: AWS Shield, Amazon CloudFront, Elastic Load Balancing
- Key Insights: Or it could be Shield Advanced rules, so for your ALB, CLB, NLB, the Elastic IP, and CloudFront.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 7:
- Concepts: Policy Enforcement
- Services: Amazon VPC, Elastic Load Balancing, Security Groups
- Key Insights: It could be security policy to standardize security groups for EC2, your Application Load Balancer, and ENI resources in your VPC.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 8:
- Concepts: Network Security Operational Context
- Services: AWS Network Firewall, Amazon VPC
- Key Insights: And it could be, as well, rules for your AWS Network Firewall at the VPC level.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is something we haven't seen yet or your Amazon Route 53 Resolver DNS Firewall.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 10:
- Concepts: Centralized Security Governance
- Services: AWS Firewall Manager
- Key Insights: So the idea is that Firewall Manager allows you to manage all your firewalls in one place.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The policies are created at the region level, okay?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 12:
- Concepts: Centralized Security Governance
- Services: (none explicit)
- Key Insights: And then they are applied to all the accounts of your organization.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 13:
- Concepts: Centralized Security Governance, Policy Enforcement
- Services: AWS Firewall Manager, AWS WAF, Elastic Load Balancing
- Key Insights: And on top of it, if somehow in your organization, for example, you create a WAF rule for an Application Load Balancer, and somehow there's a new Application Load Balancer being created, then automatically the Firewall Manager is going to apply the same rule to this newly created ALB.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 14:
- Concepts: Centralized Security Governance
- Services: AWS Firewall Manager
- Key Insights: That's a feature of Firewall Manager.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 15:
- Concepts: Centralized Security Governance, DDoS Resilience
- Services: AWS Firewall Manager, AWS Shield, AWS WAF
- Key Insights: So you may ask yourself, "Well, what is the difference between WAF and Firewall Manager and Shield?" Well, WAF, Shield, and Firewall Manager are used together for comprehensive protection of your accounts.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 16:
- Concepts: Perimeter Defense
- Services: AWS WAF
- Key Insights: So first you define your Web ACL rules in WAF.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 17:
- Concepts: Network Security Operational Context
- Services: AWS WAF
- Key Insights: And in case you need one-time protection, then WAF is going to be the right choice for you.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 18:
- Concepts: Centralized Security Governance
- Services: AWS Firewall Manager, AWS WAF
- Key Insights: But if you want to use WAF across multiple accounts and accelerate WAF configuration and automate the protection of new resources, then you would manage your WAF rules within Firewall Manager.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 19:
- Concepts: Centralized Security Governance
- Services: AWS Firewall Manager
- Key Insights: And Firewall Manager will just apply all these rules to all your accounts and all your resources automatically.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 20:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: So now we also have Shield Advanced to help you get protected against DDoS attacks.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 21:
- Concepts: DDoS Resilience
- Services: AWS Shield, AWS WAF
- Key Insights: And it has additional features on top of WAF such as a dedicated support from the Shield Response Team, SRT, advanced reporting, and also, it can automatically create WAF rules for you.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 22:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: And if you're prone to frequent DDoS attacks, then you should definitely consider purchasing Shield Advanced.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 23:
- Concepts: Centralized Security Governance, DDoS Resilience
- Services: AWS Firewall Manager, AWS Shield
- Key Insights: And so Firewall Manager can also help you deploy Shield Advanced across all your accounts So hopefully the distinction is pretty clear for you now.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked this lecture, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/112_[SAA] WAF & Shield - Hands On.txt

Line 1:
- Concepts: Centralized Security Governance, DDoS Resilience
- Services: AWS Firewall Manager, AWS Shield, AWS WAF
- Key Insights: So, let me show you quickly WAF, Shield and Firewall Manager.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 2:
- Concepts: DDoS Resilience
- Services: AWS Shield, AWS WAF
- Key Insights: So, if you go into the console and you type WAF and Shield, you arrive in this UI.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 3:
- Concepts: Centralized Security Governance, DDoS Resilience
- Services: AWS Firewall Manager, AWS Shield, AWS WAF
- Key Insights: So we have WAF on the left hand side, Shield in here and we have Firewall Manager in here.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 4:
- Concepts: Edge Security, Perimeter Defense
- Services: API Gateway, AWS WAF, Amazon CloudFront, Elastic Load Balancing
- Key Insights: So WAF helps you protect your web applications from common web exploits at the layer seven So it's for your Amazon API gateway, your CloudFront distributions or an Application Load Balancer.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 5:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So then what you would do is that you would create a web ACL out of it.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 6:
- Concepts: Edge Security, Perimeter Defense
- Services: API Gateway, Amazon CloudFront, Elastic Load Balancing
- Key Insights: So we'll give it a name, 'Demo Web ACL', and then whether or not it's for a regional resource, such as your ALB, API gateway or others, or if it's a CloudFront distribution, in which case it is going to be global for CloudFront and only in U.S.
- Hidden/Implicit Meaning: Constraint or limitation signal; Preventive control and filtering signal; Edge-distribution security signal.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: East one.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 8:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So, let's go back to regional resource and then I'm going to say, this is going to go into say for example the Ireland region of Europe, and this is again my 'Demo Web ACL.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, we can associate resources with it, so which resources do we want to protect with this?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 11:
- Concepts: Perimeter Defense
- Services: Elastic Load Balancing
- Key Insights: So I don't have any ALB right now but this is where you would add AWS resources to it by just clicking on this button and finding the right resource to protect with your web ACL.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Next, you need to add some rules.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 13:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So, you can add many rules into your web ACL.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 14:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So, we can add managed rule groups or create your own rules.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, what about managed rules?
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Well, you can have a look at the categories.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 17:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You have some coming from AWS but also some coming from partners.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 18:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: And if you look at AWS, we can have, for example, a bot control rule to prevent bots from accessing our application.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 19:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Or we can have a look at the Amazon IP reputation list to only have access to IP that are reputable into our application.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 20:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: Or we can block for example, anonymous IPs, so let's add this one.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 21:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: Here, we're going to block IPs coming from VPNs, from proxies and so on.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 22:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: And let's have known bad inputs so we know that like some inputs are bad so let's block them as well.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 23:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, we add all these rules, okay?
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 24:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: And as you can see, each rule has a capacity.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 25:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So, the maximum capacity is 1500, this is so that you don't have too many rules on the web ACL.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 26:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, now I'm protected against anonymous IPs and bad inputs.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 27:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 28:
- Concepts: Policy Enforcement, Traffic Filtering
- Services: (none explicit)
- Key Insights: So what happens if it doesn't match any rule then the default action is to allow, else it will be blocked.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 29:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, let's click on next.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 30:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: Here, we can set up the rule priorities.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 31:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So, do you want to have first the bad inputs rule set or the anonymous IP list, so you can change this.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 32:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then you would have metrics associated with it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 33:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: And finally, you could go ahead and create this web ACL.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 34:
- Concepts: Network Security Operational Context
- Services: API Gateway, Elastic Load Balancing
- Key Insights: So, this is a created, and if you wanted to you could associate it with your ALB, your API gateway and so on.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 35:
- Concepts: Network Security Operational Context
- Services: AWS WAF
- Key Insights: So, this is for WAF and next.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 36:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And also in here, you could set up IP sets and this is where you would set up your IP addresses, okay?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 37:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: One per line inside your format, run what to block or what to allow in.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 38:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: Okay, so next we have Shield.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 39:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: So, Shield is to get DDoS protection and if I click on subscribe to Shield Advanced, I'm going to pay $3,000 per month, which I will not do.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 40:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: So, the idea is that you just know that Shield is for DDoS protection and we just don't experiment with it otherwise we're gonna have a bad surprise.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 41:
- Concepts: Centralized Security Governance
- Services: AWS Firewall Manager
- Key Insights: So, I'm going to scroll down and go to Firewall Manager.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 42:
- Concepts: Centralized Security Governance
- Services: AWS Firewall Manager
- Key Insights: So, Firewall Manager is to have centralized security management of your rules.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 43:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So, you can create a policy, but again a policy will cost you $100 per month.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 44:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 45:
- Concepts: Centralized Security Governance
- Services: (none explicit)
- Key Insights: I will not display this but the idea is that all these policies will be applied to all accounts across your organization.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 46:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So if you wanted to just go through policy, you can have it look quickly, the options.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 47:
- Concepts: DDoS Resilience, Policy Enforcement
- Services: AWS Shield, AWS WAF, Security Groups
- Key Insights: So you can apply a policy for WAF, for Shield Advanced, for security groups, network firewalls, or more.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 48:
- Concepts: Network Security Operational Context
- Services: AWS WAF
- Key Insights: And so this is WAF, let's apply to, for example the Ireland region.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 49:
- Concepts: Policy Enforcement
- Services: AWS WAF
- Key Insights: And if I were to do so then I would be able to define a WAF policy for all my accounts for the Ireland region.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 50:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you could configure the rules here and then you could have more configuration and so on.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 51:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So hopefully you get the idea of these three services and you understand how they compliment each other.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 52:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/113_WAF - Hands On.txt

Line 1:
- Concepts: Perimeter Defense
- Services: AWS WAF
- Key Insights: So let's go and practice a little bit more in depth the web application firewall.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 2:
- Concepts: Perimeter Defense
- Services: AWS WAF
- Key Insights: So on AWS WAF, you will have the option to create Web ACLs, and this is where you're going to create your rules that will prevent people from exploiting or accessing your API in way that you think are abusive.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And the other thing I want to show you is IP sets.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 4:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: And I will start with IP sets just to go all the way with creating a Web ACLs, so.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: An IP set is a set of IPs, and in this UI right now you have to select the region, so I will choose, for example, Frankfurt.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And you create an IP set, and this IP set, I'll call this MyCorporateIPS.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You will define what is a set of IP that you consider to be in this IP set.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it's either IPv4 or IPv6 formats and then you define a CIDR, so 10 0 0 0/32, or you can define your own IP, for example, 165 and 44 and 35 and 32/32 and maybe this is a whole CIDR here, so /24, whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: They can be public and private IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You enter one CIDR per line and you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We will use this IP set very soon, but right now, as you can see we've created MyCorporateIPS in Frankfurt.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 12:
- Concepts: Perimeter Defense
- Services: AWS WAF
- Key Insights: Okay, so next let's go into the Web ACLs of WAF.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And again, you need to choose the region you're in.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, we'll choose Europe, Frankfurt.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I'm not sure why this is not on the right hand side, but here we go.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 16:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: Let's create a Web ACL.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 17:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, now we'll call this my demo protections and this is associated with the CloudWatch metrics, so, here it is.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 18:
- Concepts: Edge Security
- Services: API Gateway, Amazon CloudFront
- Key Insights: And the resource type we can attach it to is either a CloudFront distribution, in which case, well you define this in US East-1, otherwise it's for regional resources such as, your Application balancers, your AppsSync GraphQL API, your Amazon API Gateway REST APIs, or your Cognito user pools, whatever you want to protect.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 19:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So right now, I want to protect regional resources, so, here I choose the region.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 20:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: And optionally, if you had created, for example an ALB, you could go ahead and add it directly from this UI or whatever you want to protect.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 21:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, I can just add this as a test, but you don't need to have an application about instead you go with this hands-on.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 22:
- Concepts: Network Security Operational Context
- Services: AWS WAF
- Key Insights: I just want to show you the rules of creation of things in WAF.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 23:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: Okay, so now that we have created an associated ACLs, we need to add rules and rule groups.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 24:
- Concepts: Perimeter Defense, Policy Enforcement
- Services: (none explicit)
- Key Insights: So, we have what's called WCUs, which is the Web ACL rule capacity units.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that you cannot exceed 5,500 units in this.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 26:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is because otherwise it requests, it requests too much processing power and cannot go through all the rules in enough time to actually serve the request.
- Hidden/Implicit Meaning: Constraint or limitation signal; Preventive control and filtering signal.

Line 27:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So obviously, now we need to add some rules.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 28:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So, let's add a rule and we have two options, we can add managed rules, and this is where you can have AWS manage rules, and you can have a look at them, for example, bot control or for free rule groups.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 29:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So these one cost you money, but these ones are free.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And one of them, for example, is like Known bad inputs, or SQL database protection, but it says full on, so this is 200 credits that it costs you or how to protect a WordPress application and so on.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 31:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But you can also create your own customer rules, and this is what I want to explore in this hands-on.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 32:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: So, here we have three options, we can work with an IP set, in which case we can choose an IP set, for example, the one we've created, and say, okay for this IP set simply allow or block or count or have a CAPTCHA, to have like a challenge, or a challenge, either CAPTCHA or challenge.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 33:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this is quite simple.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 34:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: So if you wanted to allow them, you could choose allow, if you want to block anything from this IP set, you could block them as well.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 35:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: But what if you wanted to block anything but the IP set?
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 36:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So there is not the option in this UI.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 37:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So you would have to go through a rule builder.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 38:
- Concepts: Policy Enforcement, Traffic Filtering
- Services: (none explicit)
- Key Insights: And if you use a rule builder, I will say block anything but IP sets.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 39:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: And so this is a regular rule, and the condition is, if a request does not match the statement, and the statement is that the, originates from an IP address in my IP sets.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 40:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: So we're saying, "Hey, if this request does not come from an IP in my IP sets, then block." And in this case we block anything but the IP sets.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 41:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it's something you need to know, in case you have to reproduce this.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 42:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The IP address to use as the originating address is best practice to put it as a source IP address.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 43:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can also have it as an IP address in the header and you specify the header, but headers can be modified, and so this is more risky.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 44:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So, we'll use the source IP address, and we'll add this rule and we're good.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 45:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: So now we block all the IP address except the one from the IP sets.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 46:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: Next, we can add another rule, so, we can add my own rules.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 47:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: And the next rule maybe a rate limiting, so rate limiting, and we create a rate based rule.
- Hidden/Implicit Meaning: Constraint or limitation signal; Preventive control and filtering signal.

Line 48:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this time we're saying, "Hey, I want a single IP address to be allowed 100 requests within a five minute period, and if it's going to reach this limit then it's going to be blocked but after five minutes it will be unblocked." So you can set between anything from 100 to 20 million, but we'll use 100.
- Hidden/Implicit Meaning: Constraint or limitation signal; Preventive control and filtering signal.

Line 49:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And we're saying, "Okay, look at the source IP address again to figure out where this request is coming from." And then do you want to count all requests or just a request that match a specific subset of request?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 50:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And it could be matching the statement and you have like, all the information such as, for example, the country or the cookies or the query parameters or the path, and the body, and the method, and so on.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 51:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you can say, "Hey, you can read all you want, but you can post only a 100 times every five minutes." This is the kind of things that you would have in this statement.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 52:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: But we'll consider all requests, and we're saying, "Okay, hey, do this and then block." But you can also say, "Okay, let's make sure it's not a bot, so we can instead we can do a CAPTCHA or a challenge, but we'll do the block." So now we're saying we'll block anything by this IP set, and by the way, they cannot do more than 100 requests in a five minute period.
- Hidden/Implicit Meaning: Constraint or limitation signal; Preventive control and filtering signal.

Line 53:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Finally, let's say that we know that we are using a database and we're very concerned about SQL injections.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 54:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So, we can of course use the manageable group from AWS, but you can also add your own rule.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 55:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So, let's go under the rule builder again.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 56:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: And we're saying, "Hey, block SQL injections from body." And you'll see why I say from body.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 57:
- Concepts: Policy Enforcement, Traffic Filtering
- Services: (none explicit)
- Key Insights: So, we're doing a regular rule and we're saying, "Hey, if a request matches the statement and the statement is," and you scroll all the way down and you go for "body," and then the body, the match type we want is and you scroll down, "contains SQL injection attack." So it's saying, "Hey, if in the body it looks like there's a SQL injection attach, attack then block." And the sensitivity level is to detect whether or not you want to have more false positive or less false positive, so, low is a better choice, if you have protection against SQL injections and you have a low tolerance for false positives, but if you want the highest level of protection against SQL attacks, you need to set the sensitivity level to high, but it's possible that valid request will be considered as being SQL injection attack, so.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 58:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It's up to you for for testing and so on, so please test it, but the recommended way is to set it as high.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 59:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And again you can add text transformations, for example, to modify the content before it is being evaluated for a SQL injection attack.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 60:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So we're saying, "Hey let's add this rule," an oversize link, so what happens if the request is too big?
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 61:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Maybe continue to inspect the content within the size limitation, and that's a good, that's a good start or a match or no match if you wanted to just, wanted to get a result right away.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 62:
- Concepts: Policy Enforcement, Traffic Filtering
- Services: (none explicit)
- Key Insights: So we'll add this rule, and now we block SQL injection from the body, and you can actually add your own rule, and again, you can block SQL injections from query strings.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 63:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: And again, you would select, "Hey, if the query string parameters all of them match a SQL injection attack then have a sensitive high, then block it.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 64:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And again, you can have as many rules as you want, and I really invite you to explore in your own way all the request components and all the statements and possibilities because you will learn a lot, okay?
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 65:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Once you have these rules, you see how much capacity you're using, so, 73 out of 1500 WCUs.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 66:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: And what is happening for requests that don't match any rule?
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 67:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: Then I want to block them maybe, or I want to allow them, it's up to you.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 68:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: Next, you click on next, you can set the rule priority, so, which rule will be evaluated first for whatever reason, but I can keep this order right now.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 69:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Say next.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 70:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then we have CloudWatch metrics to see which rules are being matched and how much, and then do we want request sampling?
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 71:
- Concepts: Perimeter Defense
- Services: AWS WAF
- Key Insights: So we can view the request and sample them and view how they're being treated by the web application firewall.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 72:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Next.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 73:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: And then create Web ACL.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 74:
- Concepts: Perimeter Defense
- Services: AWS WAF
- Key Insights: And there you go, you have created your first set of protection on your web application firewall.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 75:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: Another thing you can look at is rule groups.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 76:
- Concepts: Perimeter Defense, Policy Enforcement, Traffic Filtering
- Services: (none explicit)
- Key Insights: So, rule groups allow you to actually create these rules as a group, and then you can just assign a group to a Web ACL, so it's a little bit faster to create Web ACLs by using rule groups, but I want to show you, how to create a Web ACL directly.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 77:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So my Web ACL is now created, and I absolutely want to actually delete it because it's going to cost me money even if it's not associated with any resource.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 78:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So first, if you did associate it with any resource but you didn't have to, you need to disassociate it from your Load Balancers, for example.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 79:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: And then you can go ahead, and you can take the Web ACL itself and you can delete it.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 80:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So type in, delete, and you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 81:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And finally, your IP set as well, you can go ahead and delete it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 82:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, that's it for this lecture, I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 83:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/114_AWS Shield Advanced - Metrics.txt

Line 1:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: So here is a very short lecture about Shield Advanced because you can get CloudWatch metrics out of it and they're going to help you figure out, if there is a DDoS attack happening right now on your infrastructure.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 2:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: So there is a metric called DDoSDetected which indicates whether there's a DDoS event happening for a specific resource.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: There is a DDoSAttackBitsPerSecond, which gives you the number of bits attacking a specific resource.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: There is the DDoSAttackPacketsPerSecond which gives you the number of packets being sent for a specific resource.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then the DDoSAttackRequestsPerSecond, which gives you an idea of how many requests are happening on a specific resource.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And all these things combined is, basically, allowing you to understand what is happening and how the attack is being conducted.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it, short lecture I promised, but I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/115_[SAA] DDoS Attack Protection.txt

Line 1:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: So here is a lecture that is more focused on the solution architecture, and this is around DDoS protection and best practices.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 2:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's assume that you have this kind of architecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We have an auto scaling group with EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 4:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: It's fronted by a Elastic Load Balancer, and then your load balancer can be either exposed by a Global Accelerator as fixed IPs, or it could be fronted, for example, by CloudFronts.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 5:
- Concepts: Perimeter Defense
- Services: AWS WAF
- Key Insights: CloudFronts can be linked to WAF, a web application firewall, and so on.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can have Route 53 for DNS routing.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 7:
- Concepts: Edge Security
- Services: API Gateway, Amazon CloudFront
- Key Insights: And finally you could also have another architecture where you have CloudFront and the API gateway.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is just to represent the kind of combinations you can do.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 9:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: Obviously there are more than one, but the idea's that we're going to discuss thanks to the letter BP1, best practice one, best practice two, et cetera, what the implications are in terms of DDoS resiliency, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 10:
- Concepts: Edge Security, Perimeter Defense
- Services: Amazon CloudFront
- Key Insights: So by using CloudFront, we are actually at the Edge.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 11:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So this slide is all about Edge location mitigation.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 12:
- Concepts: DDoS Resilience, Perimeter Defense
- Services: AWS Shield
- Key Insights: That means that your web application delivery is at the Edge, and so you're going to be protected against DDoS common attacks by using Shield, just a normal setup of Shield's, so SYN floods and UDB reflection.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 13:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: If you use the Global Accelerator, this is going to be able to access your application around the world, again at the Edge.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 14:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: And again, it's fully integrated with Shield for DDoS protection.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it's very helpful if your backend is somehow not compatible with CloudFronts.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 16:
- Concepts: DDoS Resilience, Edge Security, Perimeter Defense
- Services: AWS Shield, Amazon CloudFront
- Key Insights: In this case, you would have Global Accelerator in front of it, and so that means that no matter what backend you have, either using CloudFront or the Global Accelerator, you will be fully distributed at the Edge of AWS and the Edge location will be DDoS protected.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 17:
- Concepts: DDoS Resilience, Perimeter Defense
- Services: AWS Shield
- Key Insights: Also, if you use Route 53, then the domain name resolution is global, it's at the Edge, and you also have a DDoS protection mechanism on your DNS.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 18:
- Concepts: DDoS Resilience, Perimeter Defense
- Services: AWS Shield
- Key Insights: So we understand that if we're at the Edge, we can have a better DDoS protection.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 19:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: Next, we can have the best practices for DDoS mitigation.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 20:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So first, let's look at the infrastructure layer defense.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 21:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is BP1, BP3, and BP6.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 22:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So the idea is that by using CloudFront, Global Accelerator, Route 53 and the Elastic Load Balancing, we protect our Amazon EC2 instances against high traffic.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 23:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this is the idea that by using all these services, the traffic is going to be handled by most of them before ever reaching our EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if we enable our EC2 instances with auto-scaling, that means that in case the traffic does indeed reach our auto scaling group, we can scale automatically to accommodate for a greater load on our application.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 25:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: And if we use Elastic Load Balancing, then the ELB is going to automatically spread the traffic across many EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 26:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so that means that each EC2 instances will have a manageable amount of traffic onto them, provided the fact that the auto-scaling group of course has scaled as well.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 27:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: Now at the application layer defense, we can detect and filter malicious requests at BP1 and BP2.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 28:
- Concepts: Edge Security, Perimeter Defense
- Services: Amazon CloudFront
- Key Insights: So the idea is that CloudFront is going to serve static content, and serve it from Edge locations, therefore protecting your backend.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 29:
- Concepts: Edge Security, Traffic Filtering
- Services: AWS WAF, Amazon CloudFront
- Key Insights: And then you can use WAF on top of CloudFront, or your application load balancers to filter and block requests based on request signatures, for example, you can block specific IPs, specific request types and so on.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 30:
- Concepts: Traffic Filtering
- Services: AWS WAF
- Key Insights: And if you use the WAF rate based rules, you can automatically block the IPs of bad actors.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 31:
- Concepts: Traffic Filtering
- Services: AWS WAF
- Key Insights: So you can use a bunch of managed rules on WAF to block IPs based on reputation or block anonymous IPs and so on.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 32:
- Concepts: Edge Security, Traffic Filtering
- Services: Amazon CloudFront
- Key Insights: And using CloudFront, you can block specific geographies.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 33:
- Concepts: DDoS Resilience, Edge Security
- Services: AWS Shield, AWS WAF, Amazon CloudFront
- Key Insights: The idea is that CloudFront and WAF are managed services, and so they will take care of filtering some requests for you, so you can be protected against DDoS attack.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 34:
- Concepts: DDoS Resilience
- Services: AWS Shield, AWS WAF
- Key Insights: And of course using Shield Advanced, so in case you enable it, then it will automatically create WAF rules for you to mitigate layer seven attacks.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 35:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is good for the application layer defense, again to protect your EC2 instances from getting any bad request or at least minimize them.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 36:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And also, how do we reduce our attack surface?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 37:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the idea with this architecture is that the backend AWS resources are used to serve our application, are hidden.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 38:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we have BP1, BP4, and BP6.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 39:
- Concepts: Edge Security
- Services: API Gateway, Amazon CloudFront
- Key Insights: So if we use CloudFront, the API Gateway, or Elastic Load Balancing, we can hide our backend resources.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 40:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The attacker will never know if it's a lambda function or EC2 instances or ECS tasks, and so on, because we have used other things in front of them.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 41:
- Concepts: DDoS Resilience, Traffic Filtering
- Services: AWS Shield, Security Groups
- Key Insights: Also, we can set up security groups and network ACLs to filter traffic based on specific IPs, and elastic IPs, if we use them, they can be protected by AWS Shield Advanced as well.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 42:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: And then you can protect API endpoints themselves, so if you use the API gateway, then you can hide whatever backend it is, whether it be EC2, lambda or something else.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 43:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: And if you use the Edge optimized mode, you're already global.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 44:
- Concepts: DDoS Resilience, Edge Security
- Services: AWS Shield, Amazon CloudFront
- Key Insights: Otherwise you can use CloudFront plus the regional mode, which gives you more control for DDoS protection.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 45:
- Concepts: Network Security Operational Context
- Services: API Gateway, AWS WAF
- Key Insights: And if you use WAF on top of the API gateway, then you can get filtering of any HTTP request.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 46:
- Concepts: DDoS Resilience
- Services: API Gateway, AWS Shield
- Key Insights: And if you set up the API gateway correctly, you can have burst limits, you can do headers filtering, and you can use and force API keys for your users, therefore protecting yourself from a DDoS attack.
- Hidden/Implicit Meaning: Constraint or limitation signal; Preventive control and filtering signal.

Line 47:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: So hopefully this kind of architecture makes sense and you understand the different ways you can protect against DDoS, because the exam will ask you to think just like that, okay?
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 48:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 49:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/116_[SAA_DVA] API Gateway.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, so far in our serverless journey, we've seen how to create Lambda functions and we've seen how to use DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 2:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so the functions can use DynamoDB as a database for our API, and we can do create, read, update, delete on our tables, but we'd like our clients to be able to invoke this Lambda function in some way.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So there are multiple of doing it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 4:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: We can have the client directly invoke the Lambda function, but that means that the client would need IAM permissions, or we've seen we can use an application load balancer to have it in between the client and the Lambda function and that would expose our Lambda function as an HTTP endpoint.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: There's one last thing we can use.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: It's called the API Gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this is a serverless offering from AWS which allows us to create REST APIs that are going to be public and accessible for our clients.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So the client will talk to the API Gateway and the beautiful things that the API Gateway will then proxy the request to our Lambda functions.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 9:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So it would use an API Gateway because it provides us more than just an HTTP endpoint.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It will provide us a lot of features as we'll see in this section, such as authentication, such as usage plans, development stages and all that kind of things.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 11:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So the API Gateway has a lot of features and this is just an overview, but we can integrate the API Gateway and Lambda and that gives us a full serverless application.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So no infrastructure to manage.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 13:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: We have support for the WebSocket Protocol so we can do real-time streaming through the API Gateway in two different ways.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: The API Gateway handle API versioning.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we can go from version one to version two and version three and not break our clients.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We can handle multiple environments that includes a dev, a test and the prod environment.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 17:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: There is a whole thing about API Gateway and security.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 18:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So there's a tons of way to enable security on your API Gateway for both authentication and authorization.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 19:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: We have the ability to create API keys, do request throttling in case some clients are doing too many requests on our API Gateway, and we can also use some common standards such as Swagger or Open API 3.0 to import quickly defined APIs, and also we can export them as Swagger and Open API.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 20:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: We can transform and validate request and response in the API Gateway level to ensure that the invocation are correct, and we can generate SDK and API specifications and cache API responses.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 21:
- Concepts: Network Security Operational Context
- Services: API Gateway, Elastic Load Balancing
- Key Insights: So lots of features that come with the API Gateway that are not necessarily included when you use something as simple as an application load balancer.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 22:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So what is the API Gateway integrate with?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 23:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Well, there is a Lambda function and we've seen this from the previous diagram, so it can invoke a Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And with this integration, it is the most common way and a very easy way to expose REST a API backed by a Lambda function to do a full serverless application.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But also HTTP.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 26:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we can expose any HTTP endpoints in the backend.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 27:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: So it could be, for example, an HTTP API you have on premises, or it could be an application load balancer you have on your cloud environment.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 28:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And why would you do this?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 29:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: Well, you would use an API Gateway to leverage the rate limiting features, the caching, the user authentication, the API keys, et cetera.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 30:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So it's definitely used full to have a layer of API Gateway on top of your HTTP endpoint.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 31:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: And finally, we can use an evidence service so we can expose any AWS API through the API Gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 32:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So which ones, for example, where we can start a Step Function workflow, we can post a message to SQS directly from an API Gateway API.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 33:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Why would you do this?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 34:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Well, because maybe you want to add authentication, deploy some APIs publicly or do some rate control on some AWS services.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 35:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So here is an example of the API Gateway used with an AWS service.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 36:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So example, Kinesis Data Streams.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 37:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we want to have people send data into a Kinesis Data Streams but in a secure way, without giving them access to AWS credentials.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 38:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So what we do is that's in between our clients and our Kinesis Data Streams, we're going to have the API Gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 39:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: And the clients will send HTTP request into the API Gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 40:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And it's been configured to then send the messages into a Kinesis Data Streams.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 41:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And as you see in this setting, we don't manage any servers.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 42:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then Kinesis Data Stream from there, we can, for example, send the records into a Kinesis Data Firehose and eventually put them into an Amazon S3 bucket in the JSON format.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 43:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So you start to see the power of API Gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 44:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: You can actually expose any AWS service to the outside through an API Gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 45:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: There are three ways to deploy your API Gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 46:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is called endpoint types.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 47:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So the first type, which is the default one is called Edge-Optimized.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 48:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is for your global clients.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 49:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So that means that your API Gateway is going to be accessible from anywhere in the world.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 50:
- Concepts: Edge Security, Perimeter Defense
- Services: Amazon CloudFront
- Key Insights: And to be efficient, the request are going to be routed through all the CloudFront Edge locations, which will improve the latency.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 51:
- Concepts: Perimeter Defense
- Services: API Gateway
- Key Insights: Your API Gateway is still only in one region where you created it, but it's accessible efficiently from every CloudFormation Edge location.
- Hidden/Implicit Meaning: Constraint or limitation signal; Edge-distribution security signal.

Line 52:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then there's a regional deployment.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 53:
- Concepts: Edge Security, Perimeter Defense
- Services: Amazon CloudFront
- Key Insights: So this is when we don't want to use CloudFront Edge locations.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 54:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So it's when we expect all our users to be within the same region where we created our API Gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 55:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: And if you wanted to, you could create your own platform distribution, and this will give you the same result as an Edge-Optimized distribution, but this time you have more control over location strategies and the platform settings themselves.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 56:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: And then finally, the last kind of API Gateway you can do is a private API Gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 57:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this time it's not public.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 58:
- Concepts: Network Security Operational Context
- Services: API Gateway, Amazon VPC
- Key Insights: So a private API Gateway can only be accessed from within your VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 59:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: And it will use interface VPC endpoints for your ENIs.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 60:
- Concepts: Policy Enforcement
- Services: API Gateway
- Key Insights: And to define access to your API Gateway, you can use a resource policy.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 61:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: Now, a few comments about the security on top of the API Gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 62:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So you can identify users on the API Gateway in multiple ways.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 63:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The first way is through IAM roles.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 64:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So this is very helpful if you have internal applications, for example, running on EC2 instances, and they want to access an API on API Gateway, they can just use IAM roles.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 65:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: If you wanted to have external users, for example, for mobile applications or web applications, then you would use something called Amazon Cognito.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 66:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Or if you wanted to implement your own logic, you could do do so with a custom authorizer.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 67:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is a Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 68:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Also, you can have HTTPS security through your own custom domain name by integration with a service called the AWS Certificate Manager or ACM.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 69:
- Concepts: Perimeter Defense
- Services: API Gateway
- Key Insights: And so that certificate, if you're using an Edge-Optimized endpoint must be in us-east-1 but if you're using a regional endpoint then that certificate may be in the same region as the API Gateway stage.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Edge-distribution security signal.

Line 70:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: Finally, you must set up, of course, a CNAME or an A-alias record in Route 53 to point to your domain and API Gateway.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 71:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 72:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 73:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/117_[SAA_DVA] API Gateway - Hands On.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So let's open API Gateway and we are in the API Gateway console.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 2:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So as you can see in here, I have option of choosing an API type.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we have HTTP, APIs, we have WebSocket API, REST API, which are public or private, and so as such, we will only deal with a REST API for now.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we can try out new console by clicking on this and this is going to be the default very soon.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So please make sure to have that.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then you choose REST API, and then you build it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So when you build an API, a REST API you have several options.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can create a new API, you can import one from an open API definition file.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So where it's says file and just import and API's created for you.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can clone an existing API or you can start from the example API.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: For us, we were going to start from a new API and the name is going to be MyFirstAPI.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now as you see for the API endpoint type, we have three options.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 13:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: We have Regional, Edge-optimized, or Private.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So Regional is going to be deployed in one region.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 15:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: Edge-optimized is going to be deployed in many different regions, but it's at the edge that is going to be deployed.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then one, the API will still live in one region.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 17:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: Or private is just private not exposed to the web.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 18:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: To keep things simple right now I'm going to choose regional API type.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 19:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let me create the API.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 20:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And here we are.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 21:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So now we are here, we are going to create our first method in this API.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 22:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So for this, you click on create method here and then we choose the method type.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 23:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it could be any of these HTTP verbs but we're going to do a GET just to get a page.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then you have to choose the integration type.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you can see we have five options.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 26:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: We have Lambda function, HTTP, Mock, AWS service and VPC link.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 27:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And the one we'll be testing is Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 28:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But I want to show you that we can also integrate with any service in any region.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 29:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we choose a region and then we choose a service.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 30:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: And what it does that you can expose some of your AWS services as an API through API Gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 31:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we're going to keep things simple and use Lambda functions in this one.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 32:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so we need to choose a Lambda function but for this of course we need to create it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 33:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So let's go in Lambda and create our function that is going to react to this API gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 34:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So create a function and I call this one api-gateway-route-gets.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 35:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this is perfect.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 36:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then the framework I'll use at the runtime is going to be Python 3.11 but whatever Python 3 or Python should work.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 37:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is perfect.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 38:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Let's go and create this function.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 39:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And while this is creating, I wanna show you the code we're going to use.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 40:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I am in my code, in my folder and there's lambda-code.py.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 41:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this is the entire code we're going to copy to Lambda.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 42:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so the idea is that this is a very simple in the function which responds to an event with some context and says, "Hey, the body's going to be hello from Lambda.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 43:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It's going to be returned as the body." The status code is 200.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 44:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: And then the headers is Content-Type application/json, to let our web browser know that we get back a JSON response.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 45:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to copy this entire code.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 46:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Scroll down and paste it here.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 47:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we're going to deploy this function.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 48:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to click on Deploy to deploy this function, and we can also test it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 49:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So for example, I can create a test event called DemoTest.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 50:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then we just send this event, we save it and then we click on Test.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 51:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, the result is hello from Lambda with status code 200.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 52:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So everything is working fine right now and this is perfect.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 53:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: And what I'm going to do now is to integrate, this Lambda function to my API gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 54:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So back in here, I'm going to copy the function ARN, go to my API gateway, and then just click and paste the ARN.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 55:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Perfect.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 56:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So now we have the Lambda function integrated and because we want to see the full requests being passed to Lambda and being sent back from Lambda, you're going to take Lambda proxy integration.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 57:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: Now for timeout, as you can see, even though a Lambda function can have a long timeout, for example, five minutes or 15 minutes, API Gateway has a limited timeout and the default is 29 seconds.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 58:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can customize it and have it less than 29 seconds but the default timeout is 29 seconds regardless of how long your Lambda function takes to execute.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 59:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So let's create this method and this is going to automatically grant API gateway, the right to invoke our Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 60:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So if I go back here and refresh this page, as you can see now our API gateway can invoke our Lambda function and we can verify this by going into the configuration and then permissions.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 61:
- Concepts: Policy Enforcement
- Services: API Gateway
- Key Insights: And if we have a look at the resource-based policy statement, this one, and we click on View policy, it turns out that my API gateway is allowed to invoke my Lambda function if the source API is the one from my API gateway being route GET.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 62:
- Concepts: Traffic Filtering
- Services: API Gateway
- Key Insights: So this is the stuff that happens behind the scenes on AWS to allow the API gateway to invoke our Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 63:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we know that everything is done from a security perspective.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 64:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So now we can have a look at our API gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 65:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the client for this one method sends a request and we can have a look at the request itself here.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 66:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So all the settings are here, it's done integration with Lambda, and so it's a Lambda type of integration with proxy enabled.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 67:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then the Lambda itself is this function.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 68:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We can click on it and get back to our function.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 69:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then the response is proxy integration.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 70:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: That means that it will, the API gateway will parse what is being sent by the Lambda and interpret it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 71:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then the method response is what we have here.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 72:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We could modify it if you wanted to, but we're looking for application/json.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 73:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's test out this API.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 74:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So for this on the bottom right there is a test and you can specify some query strings or some headers but we don't specify anything.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 75:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Just click on Test.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 76:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And the test is, hey, the response body is hello from Lambda.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 77:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So you can see from the API gateway, the status is 200.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 78:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That comes right from our code right here which says status is 200.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 79:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We also have the response body, hello from Lambda, again, was defined in our code right here, body equals json.dumps.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 80:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then hello from Lambda.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 81:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And finally the content type is JSON, and that is retrieved as part of the response headers being content type JSON.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 82:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: On top of it from the test, we can have a look at the execution log from the API gateway, which is really nice, which is also when you wanna debug and see what's happening.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 83:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: A very nice way of doing so.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 84:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So we have done our first execution of an API gateway on top of a Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 85:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So now let's actually debug this and see what is being sent to our Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 86:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So I'm going to do print event, and then I'm going to deploy this, and we are going to invoke now our Lambda function again from our API gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 87:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we're going to run a new test, which still says hello from Lambda, but this time we are printing the events.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 88:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So if we go to the CloudWatch logs we should be able to find it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 89:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's go into monitoring and then look at CloudWatch logs.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 90:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We're going to find the latest log stream, this one.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 91:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And here we have our log.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 92:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: And we can see here that this was the printed event that was received from API Gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 93:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So some information you have in here, for example, the resource which is slash, the path slash, the method which is GET, and then you get headers and then you get query string parameters and so on.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 94:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So a lot of information is passed on by the API gateway to our Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 95:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: And our Lambda function can use this information to forge a response and send it back to the API gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 96:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So now we can go ahead and actually create a new resource.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 97:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this time we're going to have the resource by doing this and the resource name is going to be houses.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 98:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's create this resource.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 99:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And now we have the /houses path that I just opened.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 100:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And in /houses, I'm going to create a method.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 101:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It's going to be a GET again for Lambda function of proxy integration.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 102:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And I need to create my Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 103:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's do this quickly, I'm going to copy this and then create a function.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 104:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And it's not root yet, it's houses yet now.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 105:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The runtime is still going to be Python.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 106:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And let's create this function.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 107:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Yet again, I'm going to just copy this code.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 108:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so instead of hello from Lambda, we're going to change the message to be hello from, and then something with houses.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 109:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So my function is now created.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 110:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We're going to copy this and it's going to be hello from my pretty house.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 111:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, we're going to deploy this.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 112:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So now we have deployed the function.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 113:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I'm going to copy the function ARN and paste it in here.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 114:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And create this method.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 115:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so now we have /houses that has the GET method.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 116:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I can test this.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 117:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's test it and click on Test.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 118:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, I get a 200 hello from my pretty house.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 119:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so far it's pretty cool.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 120:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We have the root, GET and we have the houses, GET, which invoke two different Lambda functions.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 121:
- Concepts: Perimeter Defense
- Services: API Gateway
- Key Insights: But we want to be able to access this from a web browser, not just testing it from the API Gateway UI.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 122:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's click on Deploy API, and we need to select a stage.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 123:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it's going to be a new stage, and the name is dev, we'll have a look at it later.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 124:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Let's deploy this.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 125:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And now that we've deployed this API, there's an invoke URL.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 126:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So I'm going to copy this URL and then I'm going to paste it in my web browser.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 127:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And as you can see when I go to /dev, it says hello from Lambda.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 128:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is just Firefox doing a pretty print but you get hello from Lambda.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 129:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And if I go to /houses then I get hello from my pretty house.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 130:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this API has two Lambda functions replying to me.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 131:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And if I do something wrong, if I do /wrong then I'm getting error message such as message missing authentication token.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 132:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So here we go.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 133:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: We have deployed our API to API Gateway and this is pretty cool because, well, we have two Lambda functions behind the scenes actually replying to it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 134:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: And that's it for our basics role on API Gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 135:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/118_API Gateway - Advanced.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So let's look at the security of the API Gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 2:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So if we have a public rest API we can define a resource policy.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 3:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: In this resource policy, the first part is allowing anyone to execute an API on their public rest API, but then we have a deny statement.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And that deny statement is saying that we deny anyone who doesn't have a source IP that is specified in there.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So effectively we restricted access from specific public IP addresses to our public rest API.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That's the number one way to do security.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 7:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: The second way of course as I told you, is that if you have a private API then you must use a VPC interface endpoint to access it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Policy Enforcement
- Services: Amazon VPC
- Key Insights: You can not access it without a VPC interface endpoint and here using a resource policy we can define that the private API must only be accessed through a specific VPC interface endpoint.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Centralized governance signal.

Line 9:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: Another question you may have is how to access an API Gateway, private API that sits in another account from..
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 10:
- Concepts: Network Segmentation
- Services: (none explicit)
- Key Insights: For example, an account A with an EC2 instance in a private subnet.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the question is, how can we do it?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And you may think of ideas but actually the answer is very simple.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 13:
- Concepts: Network Segmentation
- Services: Amazon VPC
- Key Insights: All you have to do is you create a VPC interface endpoint in the private subnet of account A.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: API Gateway, Amazon VPC
- Key Insights: So that's number one and this allows the EC2 instance to access the API Gateway service over all and for this, no VPC peering is needed what so ever.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That's the pretty cool part about it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 16:
- Concepts: Policy Enforcement
- Services: API Gateway, Amazon VPC
- Key Insights: Thanks to the VPC endpoint we just accessed directly the API Gateway service and then we define a resource policy on our private API.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 17:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: So that we're saying, Hey, the only way to access it is through the VPC endpoint that is deployed in account A.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Policy Enforcement
- Services: Amazon VPC
- Key Insights: Therefore we can deploy a private API in account B and then thanks to the resource policy, only guarantee that the account A through the VPC endpoint of account A can access it.
- Hidden/Implicit Meaning: Constraint or limitation signal; Centralized governance signal.

Line 19:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: And the cool thing about it again, no VPC peering is needed.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 20:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That is a common exam question.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 21:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: Let's also look at throttling on the API Gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 22:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: So you have account limits and the idea is that the API Gateway is going to throttle your request at 10,000 request per second across all your API's.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 23:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can increase these sub limits upon request but in case you see some throttling, you're going to get a retriable error of HTP code 429 called; too many requests.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can also decide to set stage limits and method limits to improve the performance and spread out the request across all your API's.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: Or if you wanted to you can define a usage plan in the API Gateway to give API keys to your customer and have some throttling mechanism on the per customer basis.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 26:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: Just remember, that one API Gateway that is overloaded and not limited can cause all the other API's deployed within the API Gateway to be throttled.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 27:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that's something to take note of.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 28:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 29:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/119_[CCP_SOA] AWS Artifact.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now let's talk about AWS Artifact, which is not really a service, but presented as one.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 2:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is a portal that will provide you with on-demand access to compliance documentation from AWS, as well as AWS agreement.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So these reports are allowing you to download security and compliance documents, such as the AWS ISO certifications, the PCI reports, and the SOC reports from AWS.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Also, you can get agreements so you can get access such to agreements, such as the Business Associate Addendum, or BAA document.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: These documents can be helpful if you have an internal audit or need to show the compliance of your IT department.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So if you go into Artifact for AWS.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: As we can see, this is a global service, and we can get started with Artifact.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We can view the reports, or view the agreements.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So if I click on reports, I can see 61 reports right now that I can download.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: For example, I can say, "Oh, I really want to get this report right now.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I'm going to download it." And I say, "Okay, I accept the NDA," and then I download this report.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And here I am.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I have a report that I can use for compliance internally.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Or also, I can go into Agreements and find different agreements.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 15:
- Concepts: Centralized Security Governance
- Services: (none explicit)
- Key Insights: For example, three account agreements, and we don't have any organization agreements.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So I can take one of these agreement, for example, this one, the BAA agreement, accept the agreement, and then download it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 17:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I'll scroll down, I accept it, and then I download it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 18:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it's very, very simple.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 19:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It's not really a service, it's a way for you to download compliance document.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 20:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I just wanted to show you once, then you have to remember it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 21:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And that will be it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 22:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/120_Route 53 - DNSSEC.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: Route 53 DNSSEC
- Key Insights: Let's talk about Route 53 DNSSEC.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 2:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But before I introduce a solution, let me expose in a simplified version the problem.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we have DNS poisoning or spoofing.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It's a type of attack.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 5:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So for example say we have our web server, it's hosting the website we want, for example.com.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And it is at a specific IP 9.10.11.12.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 7:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So the web browser of a client is going to ask the local DNS server for example.com.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then the local DNS server needs to actually get the record for it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it's going to figure out that Route 53 has, on its DNS, the solution for where example.com is located.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it's going to ask, for example.com and Route 53 is going to return well, it's the IP 9.10.11.12.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Fair enough.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But then a hacker through some process manages to inject the value example.com equals 21.22.23.24 in our local DNS server.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: Route 53 DNSSEC
- Key Insights: And this is because, to very much simplify it, the DNS works on the UDP protocol which makes it somewhat easy to hack and also when we don't have a DNSSEC there is no cryptographic DNS verification process.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 15:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So therefore our local DNS server has been spoofed and now is going to return to our web browser, the wrong IP.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So 21.22.23.24.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 17:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: And therefore the web browser is going to think it accesses the correct server but actually it accesses a malicious website at a different IP.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 18:
- Concepts: Network Security Operational Context
- Services: Route 53 DNSSEC
- Key Insights: So that's call DNS poisoning and spoofing and DNSSEC actually is going to help mitigate that issue.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 19:
- Concepts: Network Security Operational Context
- Services: Route 53 DNSSEC
- Key Insights: So DNSSEC is for DNS Security Extension and it's a protocol that helps you secure DNS traffic to verify the DNS data integrity as well at its origin.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 20:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It only works when the hosted zones are public, so for public domain names.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 21:
- Concepts: Network Security Operational Context
- Services: Route 53 DNSSEC
- Key Insights: So Route 53 is going to support DNSSEC both for domain registration and signing of the DNS records.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 22:
- Concepts: Network Security Operational Context
- Services: Route 53 DNSSEC
- Key Insights: So the DNSSEC signing is the ability to validate that a DNS response actually came from Route 53 and has not been tempered with.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 23:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So no record has been injected.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And how does it work?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Well, Route 53 is going to sign each record in the hosted zone using a private key.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 26:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then the clients can verify with a public key that the signature is correct.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 27:
- Concepts: Network Security Operational Context
- Services: Route 53 DNSSEC
- Key Insights: So the client needs to have some sort of logic to understand the DNSSEC process.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 28:
- Concepts: Network Security Operational Context
- Services: Route 53 DNSSEC
- Key Insights: So we have two keys happening within the DNSSEC process.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 29:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And the first one is managed by you and you must remember it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It is the key signing key, the KSK, and it's based on an asymmetric CMK that you create in KMS.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 31:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this key is managed by you and then you have another one managed by AWS which is call the ZSK, the zone signing key.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 32:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And you must know which one is yours.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 33:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the one we manage is the KSK.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 34:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The ZSK is managed by Route 53 directly.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 35:
- Concepts: Network Security Operational Context
- Services: Route 53 DNSSEC
- Key Insights: So when you enable Route 53 there's going to be some DNS signing in DNSSEC and so therefore you can verify cryptographically your records.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 36:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And there's also a second measure of security which is that the TTL becomes at most one week for all records in the hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 37:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And if you have a TTL of less than one week, then they're not affected, of course.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 38:
- Concepts: Network Security Operational Context
- Services: Route 53 DNSSEC
- Key Insights: So the exam may ask you, "How do you enable DNSSEC on a hosted zone?" So first one you need to prepare for DNSSEC signing that needs make sure that the zone availability is working good.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 39:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: That means that the DNS is responding correctly.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 40:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this is done through customer feedback.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 41:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then you lower the TTL for all your records to, for example, one hour and you lower the TTL of the SOA to, the SOA minimum, sorry, to five minutes.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 42:
- Concepts: Network Security Operational Context
- Services: Route 53 DNSSEC
- Key Insights: So this is to prepare for DNSSEC signing.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 43:
- Concepts: Network Security Operational Context
- Services: Route 53 DNSSEC
- Key Insights: Then you are going to enable DNSSEC signing on your hosted zone and you're going to create a key signing key, a KSK.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 44:
- Concepts: Network Security Operational Context
- Services: Route 53 DNSSEC
- Key Insights: So to enable DNSSEC you can use the console or the CLI.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 45:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then Route 53 is going to create a KSK for us and we link it to a customer managed CMK from KMS.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 46:
- Concepts: Network Security Operational Context
- Services: Route 53 DNSSEC
- Key Insights: So once this is done, we have enabled DNSSEC signing but that's not all.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 47:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You need to establish a chain of trust.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 48:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And I will show you in the next slide what that means, visually.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 49:
- Concepts: Network Security Operational Context
- Services: Route 53 DNSSEC
- Key Insights: So chain of trust means that the hosted zone, where we enable DNSSEC, is going to tell the parent hosted zone to trust it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 50:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this is done by creating a delegation signer, DS, record in the parent zone.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 51:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it's very important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 52:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The parent zone must have a record to trust the child zone.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 53:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the DS record contains a hash of the public key that's used to sign DNS records and that's how the trust is established.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 54:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So your registrar that needs to trust your child zone could be, for example, Route 53, or it could be a third party registrar.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 55:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So once we've done that, we are signing all the records using the key from step two.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 56:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And from step three, the parent hosted zone knows to trust that signing key thanks to the delegation signer, DS, record that we insert in the parent zone.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 57:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then finally, a very good to have in this setup is to monitor for errors using CloudWatch Alarms so you can create CloudWatch Alarms for two specific type of metrics and they can come in the exam.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 58:
- Concepts: Network Security Operational Context
- Services: Route 53 DNSSEC
- Key Insights: We have the DNSSEC internal failure and the DNSSEC key signing key needing action.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 59:
- Concepts: Traffic Filtering
- Services: Route 53 DNSSEC
- Key Insights: Okay, so all these things allow you to enable DNSSEC.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 60:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: To remember them, okay: step one, step two, three, and four.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 61:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And what is a chain of trust just to understand?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 62:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So in a DNS way, when we, for example, query for a specific record, we're first going to go to the root DNS server which is going to point to the TLD DNS server's .com.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 63:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then the registrar, for example, for example.com on Route 53, then the hosted zone, which contains the records.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 64:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And maybe if we have a second hosted zone in there that is a sub.example.com, then we may have children of children of hosted zones.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 65:
- Concepts: Network Security Operational Context
- Services: Route 53 DNSSEC
- Key Insights: So the chain of trust can only work if all of these DNS servers along the way are DNSSEC aware.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 66:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So what's happening is that the root DNS server is going to have a trust on the TLD DNS server.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 67:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then the TLD DNS server is going to trust the registrar.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 68:
- Concepts: Network Security Operational Context
- Services: Route 53 DNSSEC
- Key Insights: And then we set up DNSSEC on the hosted zone and we insert a DS record so that the registrar trusts the hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 69:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then if we have a sub hosted zone, we insert, again in the parent hosted zone, we insert a DNS DS record to trust the sub hosted zone and so on.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 70:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so that means that your client when it does its queries, is going to query every DNS server all at once.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 71:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then all along the way, thanks to this chain of trust, we can verify each DNS response and we can make sure, and this is of course some logic implemented in the libraries you're already using, we can verify that all these units responses have been encrypted correctly and signed correctly, thanks to the associated public key.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 72:
- Concepts: Network Security Operational Context
- Services: Route 53 DNSSEC
- Key Insights: And this is how DNSSEC works.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 73:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that was a pretty long lecture but hopefully now you understand how this works.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 74:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 75:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/121_[SAA_SOA] AWS Network Firewall.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's summarize the kind of ways you can protect your network on AWS that we know about so far.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 2:
- Concepts: Network Security Operational Context
- Services: AWS WAF, Amazon VPC, Security Groups
- Key Insights: So we've seen Network Access Control Lists, we've seen Amazon VPC security groups, we've seen AWS WAF.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It protect against malicious requests made through HTP on specific services that we have.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 4:
- Concepts: Centralized Security Governance, DDoS Resilience
- Services: AWS Firewall Manager, AWS Shield, AWS WAF
- Key Insights: We've seen AWS Shield and Shield Advance to protect against DDoS, and we've seen AWS Firewall Manager to manage them all, your rules for WAF and Shield and so on, across multiple accounts.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 5:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: Okay, so we know about this, but what if we want to protect our entire VPC in a sophisticated way?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: AWS Network Firewall
- Key Insights: Introducing the AWS Network Firewall.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 7:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: So this is used to protect your entire VPC with a firewall.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 8:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: So here's my VPC and the firewall is going to be all around it.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 9:
- Concepts: Network Security Operational Context
- Services: AWS Network Firewall
- Key Insights: And so this AWS Network Firewall protects it from the layer 3 to the layer 7 protection.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you can inspect any kind of traffic in any direction.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 11:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: So you can expect VPC to VPC traffic, outbound to internet, inbound from internet, and to and from Direct Connect and Site-to-Site VPN connections.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: So every representative there, so here we protect anything coming in and out of the internet, in and out of a peered VPC and in and out of Direct Connect or a Site-to-Site VPN connection.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we define rules and then we can control anything that happens.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 14:
- Concepts: Network Security Operational Context
- Services: AWS Network Firewall, Elastic Load Balancing
- Key Insights: So internally, the network firewall uses the AWS Gateway Load Balancer, but instead of us setting up a third party appliance to inspect the traffic, we just have AWS manage it with its own appliances.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so therefore, we have our own rules on the firewall.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 16:
- Concepts: Centralized Security Governance
- Services: AWS Firewall Manager
- Key Insights: And these rules can be centrally managed as well across multiple accounts and many VPCs on the AWS Firewall Manager service.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 17:
- Concepts: Network Security Operational Context
- Services: AWS Network Firewall
- Key Insights: So with the network firewall, we have fine grained controls over all kind of network traffic.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 18:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: So we support thousands of rules at our VPC level.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 19:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: We can filter by IP and by port with tens of thousands of IPs.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 20:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: We can filter by protocol.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 21:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: For example, we can disable the SMB protocol for outbound communication.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 22:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: We can filter at the domain level.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 23:
- Concepts: Traffic Filtering
- Services: Amazon VPC
- Key Insights: So we say, hey, you only allow outbound traffic from our VPC into our mycorp domain or any third party software repository that we only allow.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We can do general pattern matching with regex and so on.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 25:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: And we can choose to allow, drop or get alerted on the traffic that will match the rules that we've set up.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 26:
- Concepts: Traffic Filtering
- Services: Elastic Load Balancing
- Key Insights: And we also have active flow inspection, so we can actually have an intrusion prevention capability just like we have with the Gateway Load Balancer, but all managed by AWS.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 27:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: And all the rule matches can also be sent to Amazon S3, CloudWatch Logs, and Kinesis Data Firehose for analysis.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 28:
- Concepts: Network Security Operational Context
- Services: AWS Network Firewall
- Key Insights: So that's it for the network firewall.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 29:
- Concepts: Network Security Operational Context
- Services: Amazon VPC
- Key Insights: This is a firewall that you do at the VPC level.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Remember this.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 31:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: And you can do traffic filtering and flow inspection.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 32:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/122_AWS Network Firewall - Advanced.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: AWS Network Firewall
- Key Insights: So let's discuss a few deployment architectures for network firewall.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 2:
- Concepts: Network Segmentation
- Services: AWS Network Firewall, Amazon VPC
- Key Insights: So let's take an example where you have a protected VPC and we have a firewall subnet that will contain a firewall endpoint connected to the network firewall service.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 3:
- Concepts: Network Segmentation
- Services: (none explicit)
- Key Insights: We'll also have a protected subnet and a private subnet.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And we also have an internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 5:
- Concepts: Network Segmentation
- Services: (none explicit)
- Key Insights: Okay, so then in the protected subnet we're going to deploy an application balancer and a NAT gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 6:
- Concepts: Network Segmentation
- Services: (none explicit)
- Key Insights: And in the private subnet we're going to deploy EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 7:
- Concepts: Network Segmentation
- Services: Amazon VPC
- Key Insights: And we're going to define root table, so we have the private subnet root table that links to the net gateway, the protected subnet root table that links to the VPC endpoints of the firewall.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 8:
- Concepts: Network Segmentation
- Services: (none explicit)
- Key Insights: We have this firewall subnet route table that is just normal, and the ingress root table of the internet gateway to link back to the firewall endpoints.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now I'm going to represent in blue the traffic outbound route.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 10:
- Concepts: Network Security Operational Context
- Services: AWS Network Firewall
- Key Insights: So the EC2 instances go to the NAT gateway, and then the NAT gateway goes to the firewall endpoint which is going to interact with the AWS network firewall service.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And once that traffic is inspected or authorized, then it can go to the internet gateway, and then to the internet.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: AWS Network Firewall
- Key Insights: In terms of inbound, it goes into the internet gateway, through the firewall endpoint, which is going to verify the traffic with the network firewall service.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then send it, for example, to an application balancer, which will forward it to your EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: AWS Network Firewall, Elastic Load Balancing
- Key Insights: And then EC2 instances reply back to the ALB, the traffic goes back to the firewall endpoint, which is again going to be analyzed by the network firewall.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then the traffic is sent back to the internet gateway.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And back to the internet.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 17:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this really shows the two kind of traffics that the firewall endpoints can analyze.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 18:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It could be either inbound traffic or outbound traffic.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 19:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, it's a combination of route tables to make it work.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 20:
- Concepts: Network Security Operational Context
- Services: AWS Network Firewall
- Key Insights: Now there are different ways to deploy a network firewall.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 21:
- Concepts: Network Segmentation
- Services: Amazon VPC
- Key Insights: So here we have a VPC with a firewall subnet and public subnet.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 22:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: And we define a firewall policy, which contain rule groups.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 23:
- Concepts: Network Security Operational Context
- Services: AWS Network Firewall
- Key Insights: And these will define how the network firewall is going to behave.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 24:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: Now, if you wanted to automate adding rules to this rule group, you could use GuardDuty to automatically generate findings.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 25:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: These will happen and be generated and stored in the security hub.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 26:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then we can use the event bridge integration to take these findings.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 27:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And from these findings we can trigger a step function to, for example, to check whether or not the IP that is attacking us is in a database.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 28:
- Concepts: Policy Enforcement, Traffic Filtering
- Services: AWS Network Firewall
- Key Insights: And if it is not, then block the traffic by making an API call into network firewall so that we know that we should add this IP to the rule group and therefore effectively block this IP from our network.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 29:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, and then once you've done this you can always send the success or the failure of this to different SNS topics.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 30:
- Concepts: Network Security Operational Context
- Services: AWS Network Firewall
- Key Insights: The AWS network firewall also supports encrypted traffic.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 31:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: So for this, you can do deep packet inspection, DPI, for encrypted traffic with a TLS security.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 32:
- Concepts: Traffic Filtering
- Services: AWS Network Firewall
- Key Insights: So the idea is that, for example, users are sending encrypted packets to your network firewall, and then the network firewall itself is going to decrypt the TLS traffic, inspect and block any malicious content within, and then re-encrypt the traffic for the destination.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 33:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: The way it works regarding encryption is that it has integration with the AWS certificate manager, ACM, to get the certificates that allow it to actually encrypt and decrypt the data.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 34:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: So once done, then the data is inspected as deep packet inspection, and then finally sent to your final destination.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 35:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 36:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/123_Amazon SES.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: Amazon SES
- Key Insights: So here is a quick lecture about Amazon SES also called Simple Email Service.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 2:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: So it's a fully managed service as the name indicates that will allow you to send email securely, globally, and at scale.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 3:
- Concepts: Network Security Operational Context
- Services: Amazon SES
- Key Insights: So the idea is that your application will use the SES API, or SMTP server, and Amazon SES will then send bulk emails to users.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this allows for outbound and inbound emails, so you can receive replies, and it gives you a reputation dashboard if your emails are open or not, performance insights, as well as anti-spam feedback, so if people write your emails as spam or not.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It provides email statistics such as deliveries, bounces, feedback loop results, and whether or not the email was open.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And it supports the standard security for email sending of today, so you have DKIAM and you have SPF.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: There is a flexible deployment, so you can use a shared IP a dedicated IP, or your own customer owned IP, this is to send emails from a specific IP address.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then the APIs are accessible from the console specific AWS APIs, or the SMTP protocol.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 9:
- Concepts: Network Security Operational Context
- Services: Amazon SES
- Key Insights: So the use cases for Amazon SES will be transactional emails, marketing email, and bulk emails communications.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 10:
- Concepts: Network Security Operational Context
- Services: Amazon SES
- Key Insights: The next feature you need to know about for Amazon SES is configuration sets.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 11:
- Concepts: Network Security Operational Context
- Services: Amazon SES
- Key Insights: So it's a way for you to customize and analyze your email send events on Amazon SES.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So there are two things you can set, you can set number one, the event destinations and you have two of them, you have Kinesis Data Firehose, so that Firehose receives metrics, such as the number of sends, deliveries, opens, clicks, bounces, and complaints for each email.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 13:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Or SNS which gives you immediate feedback on bounce and complaint information.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the first part of configuration sets, and the second part if you want to is IP pool management to use IP pools to send particular types of emails, therefore, for example, that you have one IP set for the transactional emails, and one IP set for your marketing emails, therefore creating two types of email reputations.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 15:
- Concepts: Network Security Operational Context
- Services: Amazon SES
- Key Insights: So Amazon and SES can have config sets, as I said, so when you send emails to users, then the analytics will be sent in real time or at least the data behind the analytics will be sent in near real time to Kinesis Data Firehose.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And then you will have near real time analytics using Kinesis Data Analytics if you wanted to, or you can set it to Amazon S3, so that you can run queries on it with Amazon Athena.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 17:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And finally, if you want to have immediate feedback on bounce and complaint information, you could set up an Amazon SNS topic to receive this kind of notifications.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 18:
- Concepts: Network Security Operational Context
- Services: Amazon SES
- Key Insights: Okay, So that's it for Amazon SES, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/308_Web Application Firewall (WAF).txt

Line 1:
- Concepts: Perimeter Defense
- Services: AWS WAF
- Key Insights: So now let's talk about AWS WAF, the Web Application Firewall.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 2:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: It's used to protect your web application from common web exploits at the Layer 7.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Just a reminder Layer 7 is HTTP, so it protects you against HTTP exploits.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Whereas as comparison Layer 4 is for TCP or UDP protocol.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 5:
- Concepts: Edge Security, Perimeter Defense
- Services: API Gateway, AWS WAF, Amazon CloudFront
- Key Insights: So this WAF, this Web Application Firewall can be deployed on the Application Balancer, and API gateway, CloudFront, the AppSync GraphQL API, or Cognito user pools.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So remember, this is very important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 7:
- Concepts: Network Security Operational Context
- Services: AWS WAF, Elastic Load Balancing
- Key Insights: You remember the targets of WAF because the exam will try to trick you, and for example, make you deploy WAF on an NLB but this is not possible.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 8:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So once you've deployed a firewall on these services, you can define web ACL, they're web access control lists, and their rules.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 9:
- Concepts: Policy Enforcement, Traffic Filtering
- Services: (none explicit)
- Key Insights: And so you can set a rule, for example, to filter based on IP addresses.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you can define an IP sets.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Each IP set can be up to 10,000 IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And if you need more IP addresses, you can use multiple rules for more IPs.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 13:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: You can also filter based on HTTP headers, body.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 14:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can use URI strings to protect from the most common attacks, such as SQL injection and cross-site scripting.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 15:
- Concepts: Edge Security, Traffic Filtering
- Services: (none explicit)
- Key Insights: You can have size constraints to make sure that the request are only up to, for example, two megabytes or geo match to allow or block specific countries.
- Hidden/Implicit Meaning: Constraint or limitation signal; Preventive control and filtering signal; Edge-distribution security signal.

Line 16:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: And you can even have rate-based rules to count the occurrences of requests per IP for DDoS protection, for example, to prevent a specific IP from sending more than 10 requests per second.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 17:
- Concepts: Edge Security, Perimeter Defense
- Services: Amazon CloudFront
- Key Insights: So these web ACLs, they're regional, except for CloudFront, where they are defined globally.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 18:
- Concepts: Perimeter Defense, Policy Enforcement
- Services: (none explicit)
- Key Insights: And if you see the term rule group, well, it's a set, it's a reasonable set of rules that you can add it to many web ACL.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 19:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is just to organize them.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 20:
- Concepts: Network Security Operational Context
- Services: AWS WAF
- Key Insights: So WAF has a really good use case.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 21:
- Concepts: Network Security Operational Context
- Services: AWS WAF, Elastic Load Balancing
- Key Insights: So what if you want to get a fixed IP on our application while using WAF with an application load balancer?
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 22:
- Concepts: Network Security Operational Context
- Services: AWS WAF, Elastic Load Balancing
- Key Insights: So WAF does not support the Network Load Balancer because the NLB operates on Layer 4 and WAF is for Layer 7.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 23:
- Concepts: Network Security Operational Context
- Services: AWS WAF, Elastic Load Balancing
- Key Insights: So therefore, to provide WAF, you need to have an application load balancer.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: But we know that an application balancer does not have fixed IPs.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 25:
- Concepts: Network Security Operational Context
- Services: AWS WAF, Elastic Load Balancing
- Key Insights: So to solve a problem, we can use a Global Accelerator to get fixed IP for application, and then enable WAF on our ALB.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 26:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the architecture looks like this.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 27:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: We have one region with an ALB and EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 28:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: We're going to front our ALB with a Global Accelerator to get a fixed IP for our application.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 29:
- Concepts: Perimeter Defense
- Services: AWS WAF
- Key Insights: And we're going to attach a Web Application Firewall with a WebACL on the same region as where our application low balancer is located.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 30:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And therefore, we have achieved our target architecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 31:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 32:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 33:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/309_Shield - DDoS Protection.txt

Line 1:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about AWS Shields.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 2:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: And Shield is a service to protect yourself from DDoS attacks.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 3:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: What is DDoS?
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 4:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Well, it's a distributed denial of service.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 5:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that your infrastructure is going to suddenly receive many, many requests at the same time from a lot of computers all around the world.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so the goal of it is to overwhelm and overload your infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this way your infrastructure cannot serve your real users and this is what it's called a distributed denial of service.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: So we can protect against it, so we have the AWS Shield Standard service.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: It's a free service, it's already activated for every customer of AWS and is going to give you protection from attacks such as the SYN or UDP floods or any reflection attack or other layer 3, or layer 4 attacks.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 10:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: And if you want to get advanced protection, you can use the AWS Shield Advanced service.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 11:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: So this is an optional DDoS mitigation service.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 12:
- Concepts: Centralized Security Governance
- Services: (none explicit)
- Key Insights: It costs around 3,000 per month per organization.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 13:
- Concepts: DDoS Resilience, Edge Security
- Services: AWS Shield, Amazon CloudFront
- Key Insights: And the idea is that you're going to get protected against more sophisticated DDoS attacks on Amazon EC2, Elastic Load Balancing, Amazon CloudFront, the Global Accelerator and Route 53.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 14:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: It also gives you 24/7 access to the AWS DDoS response team.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So in case you get attacked, you will have someone to help you and get you along the way.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 16:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: In case you are incurring higher fees because you are also being attacked, this Shield Advance protects you from these higher fees.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 17:
- Concepts: DDoS Resilience
- Services: AWS Shield, AWS WAF
- Key Insights: And this Shield Advance has an automatic application layer, DDoS mitigation, and it's going to mean that it's automatically going to create and evaluate and deploy WAF rules to mitigate layer 7 attacks.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 18:
- Concepts: DDoS Resilience, Perimeter Defense
- Services: AWS Shield, AWS WAF
- Key Insights: So automatically your web application firewall will have rules to help you mitigate these attacks, DDoS attacks if they happen at the layer 7, which is great.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 19:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's say for this lecture, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/310_Firewall Manager.txt

Line 1:
- Concepts: Centralized Security Governance
- Services: AWS Firewall Manager
- Key Insights: So now let's talk about the AWS Firewall Manager.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 2:
- Concepts: Centralized Security Governance
- Services: (none explicit)
- Key Insights: So this is a service to manage all the firewall rules in all accounts of an AWS organization.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that you can manage rules across many, many accounts at the same time.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 4:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So you can set a security policy, and a security policy is a common set of security rules.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 5:
- Concepts: Perimeter Defense
- Services: AWS WAF, Elastic Load Balancing
- Key Insights: And so this could be Web Application Firewall rules, so they apply it to the ALB, the API gateways, CloudFronts and so on.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 6:
- Concepts: DDoS Resilience, Edge Security
- Services: AWS Shield, Amazon CloudFront, Elastic Load Balancing
- Key Insights: Or it could be Shield Advanced rules, so for your ALB, CLB, NLB, the Elastic IP, and CloudFront.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 7:
- Concepts: Policy Enforcement
- Services: Amazon VPC, Elastic Load Balancing, Security Groups
- Key Insights: It could be security policy to standardize security groups for EC2, your Application Load Balancer, and ENI resources in your VPC.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 8:
- Concepts: Network Security Operational Context
- Services: AWS Network Firewall, Amazon VPC
- Key Insights: And it could be, as well, rules for your AWS Network Firewall at the VPC level.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is something we haven't seen yet or your Amazon Route 53 Resolver DNS Firewall.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 10:
- Concepts: Centralized Security Governance
- Services: AWS Firewall Manager
- Key Insights: So the idea is that Firewall Manager allows you to manage all your firewalls in one place.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 11:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The policies are created at the region level, okay?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 12:
- Concepts: Centralized Security Governance
- Services: (none explicit)
- Key Insights: And then they are applied to all the accounts of your organization.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 13:
- Concepts: Centralized Security Governance, Policy Enforcement
- Services: AWS Firewall Manager, AWS WAF, Elastic Load Balancing
- Key Insights: And on top of it, if somehow in your organization, for example, you create a WAF rule for an Application Load Balancer, and somehow there's a new Application Load Balancer being created, then automatically the Firewall Manager is going to apply the same rule to this newly created ALB.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 14:
- Concepts: Centralized Security Governance
- Services: AWS Firewall Manager
- Key Insights: That's a feature of Firewall Manager.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 15:
- Concepts: Centralized Security Governance, DDoS Resilience
- Services: AWS Firewall Manager, AWS Shield, AWS WAF
- Key Insights: So you may ask yourself, "Well, what is the difference between WAF and Firewall Manager and Shield?" Well, WAF, Shield, and Firewall Manager are used together for comprehensive protection of your accounts.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 16:
- Concepts: Perimeter Defense
- Services: AWS WAF
- Key Insights: So first you define your Web ACL rules in WAF.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 17:
- Concepts: Network Security Operational Context
- Services: AWS WAF
- Key Insights: And in case you need one-time protection, then WAF is going to be the right choice for you.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 18:
- Concepts: Centralized Security Governance
- Services: AWS Firewall Manager, AWS WAF
- Key Insights: But if you want to use WAF across multiple accounts and accelerate WAF configuration and automate the protection of new resources, then you would manage your WAF rules within Firewall Manager.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 19:
- Concepts: Centralized Security Governance
- Services: AWS Firewall Manager
- Key Insights: And Firewall Manager will just apply all these rules to all your accounts and all your resources automatically.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 20:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: So now we also have Shield Advanced to help you get protected against DDoS attacks.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 21:
- Concepts: DDoS Resilience
- Services: AWS Shield, AWS WAF
- Key Insights: And it has additional features on top of WAF such as a dedicated support from the Shield Response Team, SRT, advanced reporting, and also, it can automatically create WAF rules for you.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 22:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: And if you're prone to frequent DDoS attacks, then you should definitely consider purchasing Shield Advanced.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 23:
- Concepts: Centralized Security Governance, DDoS Resilience
- Services: AWS Firewall Manager, AWS Shield
- Key Insights: And so Firewall Manager can also help you deploy Shield Advanced across all your accounts So hopefully the distinction is pretty clear for you now.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked this lecture, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/311_WAF & Shield - Hands On.txt

Line 1:
- Concepts: Centralized Security Governance, DDoS Resilience
- Services: AWS Firewall Manager, AWS Shield, AWS WAF
- Key Insights: So, let me show you quickly WAF, Shield and Firewall Manager.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 2:
- Concepts: DDoS Resilience
- Services: AWS Shield, AWS WAF
- Key Insights: So, if you go into the console and you type WAF and Shield, you arrive in this UI.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 3:
- Concepts: Centralized Security Governance, DDoS Resilience
- Services: AWS Firewall Manager, AWS Shield, AWS WAF
- Key Insights: So we have WAF on the left hand side, Shield in here and we have Firewall Manager in here.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 4:
- Concepts: Edge Security, Perimeter Defense
- Services: API Gateway, AWS WAF, Amazon CloudFront, Elastic Load Balancing
- Key Insights: So WAF helps you protect your web applications from common web exploits at the layer seven So it's for your Amazon API gateway, your CloudFront distributions or an Application Load Balancer.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 5:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So then what you would do is that you would create a web ACL out of it.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 6:
- Concepts: Edge Security, Perimeter Defense
- Services: API Gateway, Amazon CloudFront, Elastic Load Balancing
- Key Insights: So we'll give it a name, 'Demo Web ACL', and then whether or not it's for a regional resource, such as your ALB, API gateway or others, or if it's a CloudFront distribution, in which case it is going to be global for CloudFront and only in U.S.
- Hidden/Implicit Meaning: Constraint or limitation signal; Preventive control and filtering signal; Edge-distribution security signal.

Line 7:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: East one.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 8:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So, let's go back to regional resource and then I'm going to say, this is going to go into say for example the Ireland region of Europe, and this is again my 'Demo Web ACL.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 9:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 10:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, we can associate resources with it, so which resources do we want to protect with this?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 11:
- Concepts: Perimeter Defense
- Services: Elastic Load Balancing
- Key Insights: So I don't have any ALB right now but this is where you would add AWS resources to it by just clicking on this button and finding the right resource to protect with your web ACL.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 12:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Next, you need to add some rules.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 13:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So, you can add many rules into your web ACL.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 14:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So, we can add managed rule groups or create your own rules.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, what about managed rules?
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 16:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Well, you can have a look at the categories.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 17:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You have some coming from AWS but also some coming from partners.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 18:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: And if you look at AWS, we can have, for example, a bot control rule to prevent bots from accessing our application.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 19:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Or we can have a look at the Amazon IP reputation list to only have access to IP that are reputable into our application.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 20:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: Or we can block for example, anonymous IPs, so let's add this one.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 21:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: Here, we're going to block IPs coming from VPNs, from proxies and so on.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 22:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: And let's have known bad inputs so we know that like some inputs are bad so let's block them as well.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 23:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, we add all these rules, okay?
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 24:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: And as you can see, each rule has a capacity.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 25:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So, the maximum capacity is 1500, this is so that you don't have too many rules on the web ACL.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 26:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, now I'm protected against anonymous IPs and bad inputs.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 27:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 28:
- Concepts: Policy Enforcement, Traffic Filtering
- Services: (none explicit)
- Key Insights: So what happens if it doesn't match any rule then the default action is to allow, else it will be blocked.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 29:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So, let's click on next.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 30:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: Here, we can set up the rule priorities.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 31:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So, do you want to have first the bad inputs rule set or the anonymous IP list, so you can change this.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 32:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Then you would have metrics associated with it.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 33:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: And finally, you could go ahead and create this web ACL.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 34:
- Concepts: Network Security Operational Context
- Services: API Gateway, Elastic Load Balancing
- Key Insights: So, this is a created, and if you wanted to you could associate it with your ALB, your API gateway and so on.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 35:
- Concepts: Network Security Operational Context
- Services: AWS WAF
- Key Insights: So, this is for WAF and next.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 36:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And also in here, you could set up IP sets and this is where you would set up your IP addresses, okay?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 37:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: One per line inside your format, run what to block or what to allow in.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 38:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: Okay, so next we have Shield.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 39:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: So, Shield is to get DDoS protection and if I click on subscribe to Shield Advanced, I'm going to pay $3,000 per month, which I will not do.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 40:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: So, the idea is that you just know that Shield is for DDoS protection and we just don't experiment with it otherwise we're gonna have a bad surprise.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 41:
- Concepts: Centralized Security Governance
- Services: AWS Firewall Manager
- Key Insights: So, I'm going to scroll down and go to Firewall Manager.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 42:
- Concepts: Centralized Security Governance
- Services: AWS Firewall Manager
- Key Insights: So, Firewall Manager is to have centralized security management of your rules.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 43:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So, you can create a policy, but again a policy will cost you $100 per month.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 44:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 45:
- Concepts: Centralized Security Governance
- Services: (none explicit)
- Key Insights: I will not display this but the idea is that all these policies will be applied to all accounts across your organization.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 46:
- Concepts: Policy Enforcement
- Services: (none explicit)
- Key Insights: So if you wanted to just go through policy, you can have it look quickly, the options.
- Hidden/Implicit Meaning: Centralized governance signal.

Line 47:
- Concepts: DDoS Resilience, Policy Enforcement
- Services: AWS Shield, AWS WAF, Security Groups
- Key Insights: So you can apply a policy for WAF, for Shield Advanced, for security groups, network firewalls, or more.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 48:
- Concepts: Network Security Operational Context
- Services: AWS WAF
- Key Insights: And so this is WAF, let's apply to, for example the Ireland region.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 49:
- Concepts: Policy Enforcement
- Services: AWS WAF
- Key Insights: And if I were to do so then I would be able to define a WAF policy for all my accounts for the Ireland region.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Centralized governance signal.

Line 50:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So you could configure the rules here and then you could have more configuration and so on.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 51:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So hopefully you get the idea of these three services and you understand how they compliment each other.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 52:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/312_DDoS Protection Best Practices.txt

Line 1:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: So here is a lecture that is more focused on the solution architecture, and this is around DDoS protection and best practices.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 2:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So let's assume that you have this kind of architecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 3:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: We have an auto scaling group with EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 4:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: It's fronted by a Elastic Load Balancer, and then your load balancer can be either exposed by a Global Accelerator as fixed IPs, or it could be fronted, for example, by CloudFronts.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 5:
- Concepts: Perimeter Defense
- Services: AWS WAF
- Key Insights: CloudFronts can be linked to WAF, a web application firewall, and so on.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 6:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: You can have Route 53 for DNS routing.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 7:
- Concepts: Edge Security
- Services: API Gateway, Amazon CloudFront
- Key Insights: And finally you could also have another architecture where you have CloudFront and the API gateway.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 8:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is just to represent the kind of combinations you can do.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 9:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: Obviously there are more than one, but the idea's that we're going to discuss thanks to the letter BP1, best practice one, best practice two, et cetera, what the implications are in terms of DDoS resiliency, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 10:
- Concepts: Edge Security, Perimeter Defense
- Services: Amazon CloudFront
- Key Insights: So by using CloudFront, we are actually at the Edge.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 11:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: So this slide is all about Edge location mitigation.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 12:
- Concepts: DDoS Resilience, Perimeter Defense
- Services: AWS Shield
- Key Insights: That means that your web application delivery is at the Edge, and so you're going to be protected against DDoS common attacks by using Shield, just a normal setup of Shield's, so SYN floods and UDB reflection.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 13:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: If you use the Global Accelerator, this is going to be able to access your application around the world, again at the Edge.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 14:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: And again, it's fully integrated with Shield for DDoS protection.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 15:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So it's very helpful if your backend is somehow not compatible with CloudFronts.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 16:
- Concepts: DDoS Resilience, Edge Security, Perimeter Defense
- Services: AWS Shield, Amazon CloudFront
- Key Insights: In this case, you would have Global Accelerator in front of it, and so that means that no matter what backend you have, either using CloudFront or the Global Accelerator, you will be fully distributed at the Edge of AWS and the Edge location will be DDoS protected.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 17:
- Concepts: DDoS Resilience, Perimeter Defense
- Services: AWS Shield
- Key Insights: Also, if you use Route 53, then the domain name resolution is global, it's at the Edge, and you also have a DDoS protection mechanism on your DNS.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 18:
- Concepts: DDoS Resilience, Perimeter Defense
- Services: AWS Shield
- Key Insights: So we understand that if we're at the Edge, we can have a better DDoS protection.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 19:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: Next, we can have the best practices for DDoS mitigation.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Preventive control and filtering signal.

Line 20:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So first, let's look at the infrastructure layer defense.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 21:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: This is BP1, BP3, and BP6.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 22:
- Concepts: Edge Security
- Services: Amazon CloudFront
- Key Insights: So the idea is that by using CloudFront, Global Accelerator, Route 53 and the Elastic Load Balancing, we protect our Amazon EC2 instances against high traffic.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 23:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And this is the idea that by using all these services, the traffic is going to be handled by most of them before ever reaching our EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 24:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: Now, if we enable our EC2 instances with auto-scaling, that means that in case the traffic does indeed reach our auto scaling group, we can scale automatically to accommodate for a greater load on our application.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 25:
- Concepts: Network Security Operational Context
- Services: Elastic Load Balancing
- Key Insights: And if we use Elastic Load Balancing, then the ELB is going to automatically spread the traffic across many EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 26:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And so that means that each EC2 instances will have a manageable amount of traffic onto them, provided the fact that the auto-scaling group of course has scaled as well.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 27:
- Concepts: Traffic Filtering
- Services: (none explicit)
- Key Insights: Now at the application layer defense, we can detect and filter malicious requests at BP1 and BP2.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 28:
- Concepts: Edge Security, Perimeter Defense
- Services: Amazon CloudFront
- Key Insights: So the idea is that CloudFront is going to serve static content, and serve it from Edge locations, therefore protecting your backend.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 29:
- Concepts: Edge Security, Traffic Filtering
- Services: AWS WAF, Amazon CloudFront
- Key Insights: And then you can use WAF on top of CloudFront, or your application load balancers to filter and block requests based on request signatures, for example, you can block specific IPs, specific request types and so on.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 30:
- Concepts: Traffic Filtering
- Services: AWS WAF
- Key Insights: And if you use the WAF rate based rules, you can automatically block the IPs of bad actors.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 31:
- Concepts: Traffic Filtering
- Services: AWS WAF
- Key Insights: So you can use a bunch of managed rules on WAF to block IPs based on reputation or block anonymous IPs and so on.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 32:
- Concepts: Edge Security, Traffic Filtering
- Services: Amazon CloudFront
- Key Insights: And using CloudFront, you can block specific geographies.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 33:
- Concepts: DDoS Resilience, Edge Security
- Services: AWS Shield, AWS WAF, Amazon CloudFront
- Key Insights: The idea is that CloudFront and WAF are managed services, and so they will take care of filtering some requests for you, so you can be protected against DDoS attack.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 34:
- Concepts: DDoS Resilience
- Services: AWS Shield, AWS WAF
- Key Insights: And of course using Shield Advanced, so in case you enable it, then it will automatically create WAF rules for you to mitigate layer seven attacks.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 35:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So this is good for the application layer defense, again to protect your EC2 instances from getting any bad request or at least minimize them.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 36:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: And also, how do we reduce our attack surface?
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 37:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So the idea with this architecture is that the backend AWS resources are used to serve our application, are hidden.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 38:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So we have BP1, BP4, and BP6.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 39:
- Concepts: Edge Security
- Services: API Gateway, Amazon CloudFront
- Key Insights: So if we use CloudFront, the API Gateway, or Elastic Load Balancing, we can hide our backend resources.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 40:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: The attacker will never know if it's a lambda function or EC2 instances or ECS tasks, and so on, because we have used other things in front of them.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 41:
- Concepts: DDoS Resilience, Traffic Filtering
- Services: AWS Shield, Security Groups
- Key Insights: Also, we can set up security groups and network ACLs to filter traffic based on specific IPs, and elastic IPs, if we use them, they can be protected by AWS Shield Advanced as well.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 42:
- Concepts: Network Security Operational Context
- Services: API Gateway
- Key Insights: And then you can protect API endpoints themselves, so if you use the API gateway, then you can hide whatever backend it is, whether it be EC2, lambda or something else.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 43:
- Concepts: Perimeter Defense
- Services: (none explicit)
- Key Insights: And if you use the Edge optimized mode, you're already global.
- Hidden/Implicit Meaning: Edge-distribution security signal.

Line 44:
- Concepts: DDoS Resilience, Edge Security
- Services: AWS Shield, Amazon CloudFront
- Key Insights: Otherwise you can use CloudFront plus the regional mode, which gives you more control for DDoS protection.
- Hidden/Implicit Meaning: Preventive control and filtering signal; Edge-distribution security signal.

Line 45:
- Concepts: Network Security Operational Context
- Services: API Gateway, AWS WAF
- Key Insights: And if you use WAF on top of the API gateway, then you can get filtering of any HTTP request.
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 46:
- Concepts: DDoS Resilience
- Services: API Gateway, AWS Shield
- Key Insights: And if you set up the API gateway correctly, you can have burst limits, you can do headers filtering, and you can use and force API keys for your users, therefore protecting yourself from a DDoS attack.
- Hidden/Implicit Meaning: Constraint or limitation signal; Preventive control and filtering signal.

Line 47:
- Concepts: DDoS Resilience
- Services: AWS Shield
- Key Insights: So hopefully this kind of architecture makes sense and you understand the different ways you can protect against DDoS, because the exam will ask you to think just like that, okay?
- Hidden/Implicit Meaning: Preventive control and filtering signal.

Line 48:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

Line 49:
- Concepts: Network Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes network security behavior detail.

## Step 2 â€” Consolidation

### 1. Concepts List
- Centralized Security Governance
- DDoS Resilience
- Edge Security
- Network Security Operational Context
- Network Segmentation
- Perimeter Defense
- Policy Enforcement
- Traffic Filtering

### 2. Services List
- API Gateway
- AWS Firewall Manager
- AWS Network Firewall
- AWS Shield
- AWS Transit Gateway
- AWS WAF
- Amazon CloudFront
- Amazon SES
- Amazon VPC
- Elastic Load Balancing
- Managed Prefix Lists
- Network ACL
- Route 53 DNSSEC
- Security Groups

### 3. Features List
- bot
- captcha
- dnssec
- field level encryption
- geo
- integration
- managed rule
- mitigation
- oac
- oai
- rate-based
- rule group
- signed

### 4. Use Cases
- 031_DDoS and AWS Shield.txt:9: There is DDoS and so it's when your service isn't available because it's receiving too many requests at a high level.
- 031_DDoS and AWS Shield.txt:11: There's SYN Flood, which is a layer four type of attack when there's too many TCP connection requests happening.
- 031_DDoS and AWS Shield.txt:21: Well, first for DDoS, there is AWS Shield Standard, and it's to protect against DDoS attacks for your websites, applications, for all customers at no additional cost.
- 031_DDoS and AWS Shield.txt:25: So for example, you can say if the request is more than five megabytes, then drop it right away because it looks like a bad request.
- 031_DDoS and AWS Shield.txt:31: And finally, in case the traffic does reach your applications, then a very good way to protect yourself is to be ready to scale.
- 031_DDoS and AWS Shield.txt:36: Okay, so as a sample architecture to protect yourself against DDoS, you have the DNS service Route 53 that is protected by Shield by default.
- 031_DDoS and AWS Shield.txt:37: Then you have your application distributed by CloudFront where Shield is again enabled by default and you can set up a Web Application Firewall on your CloudFront distribution to protect yourself.
- 032_AWS WAF - Web Application Firewall.txt:1: Next we have WAF, the Web Application Firewall, which allows you to protect your web applications from common web exploits at the layer seven.
- 032_AWS WAF - Web Application Firewall.txt:6: And these rules are going to be running globally on all edge locations where CloudFront is, and this could be used for example, if you wanted to have a web application firewall for your classic load balancer, your EC2 instances, custom origins, or S3 websites, you would have CloudFront then deploy WAF on CloudFront.
- 032_AWS WAF - Web Application Firewall.txt:7: You can also deploy it on AppSync, and this is going to allow you to protect your GraphQL APIs directly.
- 032_AWS WAF - Web Application Firewall.txt:14: You can have size constraints to say, "Hey, any request bigger than 20 megabytes I don't want." You can have geomatch to block or allow a specific country, and you can have rate-based rules.
- 032_AWS WAF - Web Application Firewall.txt:15: So to count occurrences of events and say, "Hey, if this happened more than five seconds, five times per second, this looks fishy, block it." And the rule actions can be, allow or block, as we know to allow or to block traffic.
- 032_AWS WAF - Web Application Firewall.txt:27: And they give you protection for many use cases, such as the SQL rule sets, the Windows rule sets.
- 032_AWS WAF - Web Application Firewall.txt:28: The PHP rule sets, the WordPress rule sets, to protect this kind of application.
- 032_AWS WAF - Web Application Firewall.txt:29: Then you get IP reputation rule groups, and this is to block request based on the source IP.
- 032_AWS WAF - Web Application Firewall.txt:30: So for example, you have a malicious IP, and there is this very important rule called the Managed Rules Amazon IP Reputation List, which is a list of all the IPs that are trusted by AWS, and those that are not trusted by AWS.
- 032_AWS WAF - Web Application Firewall.txt:33: And finally there's block bot control manage rule group to block and manage requests from bots.
- 032_AWS WAF - Web Application Firewall.txt:34: So this includes, for example, the AWS manage rule bots control rule sets.
- 032_AWS WAF - Web Application Firewall.txt:35: So as you can see, we have four kinds of managed rule buckets, baseline use case specific IP reputation and above control.
- 032_AWS WAF - Web Application Firewall.txt:42: Well, for example, if you have very high traffic, very high logging capacity requirements, then using KDF could be a very good thing.
- 032_AWS WAF - Web Application Firewall.txt:45: So let's say we have CloudFront in front of an application balancer talking to EC2 instances, and we want to make sure that only the traffic coming from Amazon CloudFront is allowed into the application balancer, and not, for example, site traffic.
- 032_AWS WAF - Web Application Firewall.txt:51: And you have it for example, set to X Origin Verify and then a secret string.
- 033_AWS Firewall Manager.txt:13: And on top of it, if somehow in your organization, for example, you create a WAF rule for an Application Load Balancer, and somehow there's a new Application Load Balancer being created, then automatically the Firewall Manager is going to apply the same rule to this newly created ALB.
- 034_Blocking an IP Address.txt:1: Okay, so let's talk about a little bit of networking because I want you to understand how it works to block an IP address if you want it to in AWS.
- 034_Blocking an IP Address.txt:2: So say for example, we have the architecture of an EC2 instance in a public subnet and a client wants to access it.
- 034_Blocking an IP Address.txt:5: But say you have a default Network ACL, for example, and everything is allowed through, your second line of defense is going to be your Security Group.
- 034_Blocking an IP Address.txt:9: It can slow it down, for example.
- 034_Blocking an IP Address.txt:26: And this allows you, for example, to set IP address filtering from within WAF.
- 034_Blocking an IP Address.txt:30: So CloudFronts can be set up, for example, on a public infrastructure, for example, using an Application Load Balancer in public mode.
- 034_Blocking an IP Address.txt:32: Here your Network ACL is not helpful to filter traffic from the clients because, well, the client does not reach the traffic of AWS, okay?
- 034_Blocking an IP Address.txt:35: Also, you have the ability, for example, if a client was coming from a specific country and was attacking your infrastructure, you could use the Geo Restriction feature to block that specific country and that's one line of defense.
- 034_Blocking an IP Address.txt:36: Another line of defense, is again to use WAF and all its features to have a firewall at the CloudFront level and, for example, implement IP address filtering.
- 093_[SAA_SOA] NACL & Security Groups.txt:2: So let's take an example of a subnet and we know when you have an EC2 instance that we attach a security group to it.
- 093_[SAA_SOA] NACL & Security Groups.txt:34: And so the EC2 instance will first maybe use, for example, connect to www.google.com, and so therefore the first rules that are going to be evaluated are the security group outbound rules.
- 093_[SAA_SOA] NACL & Security Groups.txt:48: So for example, if you define allow on this CIDR and deny on the same CIDR, so a specific IP, but the allow is 100 and the deny is 200, the IP address will be allowed because 100 as a higher precedence over 200.
- 093_[SAA_SOA] NACL & Security Groups.txt:54: And NACLs have a very, very good use case.
- 093_[SAA_SOA] NACL & Security Groups.txt:64: Because if the NACL was not allowing everything in and everything out then we would have do some serious debugging to do when we get started with AWS.
- 093_[SAA_SOA] NACL & Security Groups.txt:71: So when you have a client and a server connecting together, they must use port.
- 093_[SAA_SOA] NACL & Security Groups.txt:73: So we know for example, that the HTTP port is 80, the HTTPS port is four, four, three, the SSH port is 22 and so on.
- 093_[SAA_SOA] NACL & Security Groups.txt:74: So when we have a server that exposes a service, then the client connects to a defined ports, except though that the clients needs a reply back from the server.
- 093_[SAA_SOA] NACL & Security Groups.txt:77: So what it does that when the client is connecting to a server, the client will open a specific ports on itself.
- 093_[SAA_SOA] NACL & Security Groups.txt:80: Well, based on the OS you have, the operating system you have, you have different port ranges, for example, if you're using Windows 10, for example, then you get to 49,152 all the way through 65,535, the port ranges that will be chosen for a random ephemeral ports.
- 093_[SAA_SOA] NACL & Security Groups.txt:87: And then the web server, when connecting back to the client to send back of the response, will send the response and say, Hey, so here's the source IP, here's a source port.
- 093_[SAA_SOA] NACL & Security Groups.txt:95: Now, when the client initiates a connection to the database instance, what are the rules that need to be allowed when you think about it, right?
- 093_[SAA_SOA] NACL & Security Groups.txt:101: When the database sends back the request to the clients, what do you think needs to happen?
- 093_[SAA_SOA] NACL & Security Groups.txt:114: Security group applies to an EC2 instance when specified by someone, whereas NACL applies to all EC2 instances in a subnet that it's associated with.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:71: But if my EC2 instance was trying to initiate a connection, for example, not here.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:72: If my EC2 instance was trying to initiate a connection to Google account, for example, it would be denied because, well, there's no outbound rule that specifically allows it.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:7: So in your account, for example, you can define your custom prefix list.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:8: For example, this CIDR 1, CIDR 2, and CIDR 3.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:12: This allows you, for example, that if the Account A wants to modify the prefix list once, it will be applied to many security groups at once.
- 096_Security Groups - Extras.txt:2: So it turns out that when you have a security group, if you modify a rule, it will never disrupt the tracked connections.
- 096_Security Groups - Extras.txt:7: Now, say for example that the SSH connection is open but then we remove that rule from the security group, what do you think will happen?
- 096_Security Groups - Extras.txt:9: So this connection will only close when it times out.
- 096_Security Groups - Extras.txt:10: So how do we proceed for, for example, forcing the closure of that connection?
- 096_Security Groups - Extras.txt:12: So this allow you to block the connections immediately, so you define them at the subnet level and then you would add a rule, the first one, to deny any traffic on port 22.
- 096_Security Groups - Extras.txt:13: Because NACLs are stateless, they are evaluated all the time for all inbound and outbound traffic and therefor, the connection will be closed, but because security groups are stateful at the time when the connection was allowed in, the return traffic is also allowed back and the connection remains open as long as it is not timing out.
- 097_[SAA_SOA] AWS Transit Gateway.txt:2: For example, you have many VPC and you want to peer them together, then you want to establish some VPN connections and direct connect, and then you have a direct connect gateway to connect to multiple VPC at a time, and this can become very, very complicated in terms of network topology.
- 097_[SAA_SOA] AWS Transit Gateway.txt:18: So, another use case for transit gateway is to increase the bandwidth of your site-to-site VPN connection using ECMP.
- 097_[SAA_SOA] AWS Transit Gateway.txt:22: And the use case, as I said, is to create multiple site-to-site VPN connections to increase the bandwidth of your connection to AWS using a site-to-site VPN.
- 097_[SAA_SOA] AWS Transit Gateway.txt:24: So when you establish a site-to-site VPN connection there are actually two tunnels, one going forward and one going back.
- 097_[SAA_SOA] AWS Transit Gateway.txt:25: When you are connecting such a VPN into a VPC directly, both of these tunnels are used as part of one connections, but when using the transit gateway two tunnels can be used at a time, so this is why you see two lines in this diagram.
- 097_[SAA_SOA] AWS Transit Gateway.txt:27: And so, when you have four tunnels of site-to-site VPN, you are increasing the throughput of your connection which is something you cannot do if you were to connect your corporate data center directly into a VPC.
- 097_[SAA_SOA] AWS Transit Gateway.txt:32: But also, you can add more site-to-site VPN connections into transit gateway, for example two or three, to double or triple your throughputs through ECMP.
- 097_[SAA_SOA] AWS Transit Gateway.txt:34: Obviously when you do the setup, you're going to have to pay for each GB of data going through the transit gateway, so there's an added cost to this performance optimization.
- 098_[SAA_SOA] Direct Connect.txt:6: So what are the use cases for Direct Connect?
- 098_[SAA_SOA] Direct Connect.txt:41: Now, when you have a Direct Connect, there is no encryption.
- 098_[SAA_SOA] Direct Connect.txt:53: So in this use case, we have four connections across two locations, sorry, going into AWS.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:16: For example, we have an Amazon S3 bucket.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:23: You can also connect to a custom origin over the HTTP protocol, and it could be, for example, on the S3 website, you first must enable the bucket as a static S3 website, or it could be any public HTTP backend you want.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:24: For example, if you have a public load balancer, you can connect it directly into CloudFront.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:29: And when the client connects and does an HTTP request into your edge location, then the edge location will see if it has it in the cache.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:32: So if we have S3 as an origin, then if we look at the cloud, your S3 bucket is your origin in some region, and then you have edge locations all around the world, for example, at Los Angeles, and your users accessing the edge location in Los Angeles will get their content directly served through the edge location.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:35: So this is the same when we have a user in Sao Paulo, for example, in Brazil.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:23: But if you needed something such as, for example, edge key-value store or advanced DDoS protection or uptime SLA, or protection for WordPress, these kind of things, then one of these plans will be better for you.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:26: But to keep things simple, let's keep as a free because this is going to be enough for our use case.
- 103_[SAA_DVA_SOA] CloudFront - Geo Restriction.txt:5: So the use case for using geo restriction would be copyright laws to control access to content.
- 103_[SAA_DVA_SOA] CloudFront - Geo Restriction.txt:10: And now under security I have the CloudFront geographic restrictions that I can edit and I can have an allow list or block list and then select the countries that I need to block.
- 103_[SAA_DVA_SOA] CloudFront - Geo Restriction.txt:11: For example, I wanna block these two countries and then save my changes.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:4: So first, when we create a URL and a cookie, you need to attach a policy and you need to tell when does the URL or the cookie expire.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:8: Then you can ask me, "How long should this URL be valid for?" Well, if you're sharing a content, for example, a movie, or music, you can make it very short, a few minutes.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:19: And for example, we seen before that we can access our Amazon S3 bucket through OAC origin access control for maximum security.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:42: But if your users are using directly against S3 and you want to distribute a thousand S3 directly without using CloudFront, then pre-sign URL will be a great use case for it.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:14: For example, your EC2 instances to sign your URLs.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:24: Let's take the first website for example.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:44: And that this key group is what will be referenced by CloudFront to allow our users, our CE2 instances, for example, to create signed URLs.
- 106_[DVA] CloudFront - Field Level Encryption.txt:2: So this is to protect sensitive information through the application stack and this adds an additional level of security alongside using encryption in flight using HTTPS.
- 106_[DVA] CloudFront - Field Level Encryption.txt:5: Well, in the POST requests being made to Amazon CloudFront, then there will be a set of fields that we want to be encrypted up to 10 fields, for example, a credit card, and then we'll specify the public key to encrypt them with.
- 106_[DVA] CloudFront - Field Level Encryption.txt:9: So say, for example, that our user is sending us some credit card information, and this is the one in orange right now.
- 108_CloudFront - Other.txt:4: So say for example your EC2 instance does need this Authorization Header then you define a Cache Policy, and in this Cache Policy you're going to white list the Authorization Header.
- 108_CloudFront - Other.txt:5: Therefore, when the request comes in with the Authorization Header, it is going to be forwarded, back to the origin.
- 108_CloudFront - Other.txt:16: And then, there's going to be a filter on the origin, on your Application Balancer, for example.
- 109_WAF - Web Application Firewall.txt:3: So it's used to protect your web application at the layer seven so for HTTP and HTTPS kind of requests and it will protect you against common web exploits such as SQL injection, cross-site scripting or malicious bots.
- 109_WAF - Web Application Firewall.txt:5: It could be Amazon CloudFront, it could be the API Gateway to protect your REST APIs.
- 109_WAF - Web Application Firewall.txt:6: It could be your application load balancer, your AppSync for GraphQL APIs, your Cognito User Pool to protect the authentication endpoints, App Runner, Verified Access and Amplify.
- 109_WAF - Web Application Firewall.txt:12: You can also have rules to protect against common attacks such as SQL injection or cross-site scripting.
- 109_WAF - Web Application Firewall.txt:16: So rules action then based on with the rule defined can be to allow the request, to block it, to count the request, to just get metrics out of it, to have a CAPTCHA, to have the user complete the CAPTCHA before accessing a webpage or a challenge.
- 109_WAF - Web Application Firewall.txt:18: So when you create a Web ACL, and that's very important to know at the exam, it could be either regional or global.
- 109_WAF - Web Application Firewall.txt:20: Now, here's a use case.
- 109_WAF - Web Application Firewall.txt:21: We have a rate-based rule to block after 100 requests from the same IP address over a five minutes period because we consider that is too many requests after this.
- 109_WAF - Web Application Firewall.txt:24: And what's going to happen is that we can also generate a CloudWatch metric and a CloudWatch alarm to have these types of alerts when this happens.
- 109_WAF - Web Application Firewall.txt:25: You can have a geo match rule for example to only access certain countries to log in with your Cognito User Pool.
- 109_WAF - Web Application Firewall.txt:35: And then you have use-case specific rule groups such as for example, looking at SQL injection rule sets or we look at rules for Windows, rules for PHP, rule for WordPress and so on.
- 109_WAF - Web Application Firewall.txt:36: You can also have IP repetition rule group to block request based on specific sources, for example known malicious IP.
- 109_WAF - Web Application Firewall.txt:37: And also, you have the bot control manage rule group to block and manage requests from bots.
- 110_[SAA] Shield.txt:2: And Shield is a service to protect yourself from DDoS attacks.
- 110_[SAA] Shield.txt:17: And this Shield Advance has an automatic application layer, DDoS mitigation, and it's going to mean that it's automatically going to create and evaluate and deploy WAF rules to mitigate layer 7 attacks.
- 111_[SAA] AWS Firewall Manager.txt:13: And on top of it, if somehow in your organization, for example, you create a WAF rule for an Application Load Balancer, and somehow there's a new Application Load Balancer being created, then automatically the Firewall Manager is going to apply the same rule to this newly created ALB.
- 112_[SAA] WAF & Shield - Hands On.txt:8: So, let's go back to regional resource and then I'm going to say, this is going to go into say for example the Ireland region of Europe, and this is again my 'Demo Web ACL.
- 112_[SAA] WAF & Shield - Hands On.txt:10: So, we can associate resources with it, so which resources do we want to protect with this?
- 112_[SAA] WAF & Shield - Hands On.txt:11: So I don't have any ALB right now but this is where you would add AWS resources to it by just clicking on this button and finding the right resource to protect with your web ACL.
- 112_[SAA] WAF & Shield - Hands On.txt:18: And if you look at AWS, we can have, for example, a bot control rule to prevent bots from accessing our application.
- 112_[SAA] WAF & Shield - Hands On.txt:20: Or we can block for example, anonymous IPs, so let's add this one.
- 112_[SAA] WAF & Shield - Hands On.txt:21: Here, we're going to block IPs coming from VPNs, from proxies and so on.
- 112_[SAA] WAF & Shield - Hands On.txt:37: One per line inside your format, run what to block or what to allow in.
- 112_[SAA] WAF & Shield - Hands On.txt:48: And so this is WAF, let's apply to, for example the Ireland region.
- 113_WAF - Hands On.txt:5: An IP set is a set of IPs, and in this UI right now you have to select the region, so I will choose, for example, Frankfurt.
- 113_WAF - Hands On.txt:8: So it's either IPv4 or IPv6 formats and then you define a CIDR, so 10 0 0 0/32, or you can define your own IP, for example, 165 and 44 and 35 and 32/32 and maybe this is a whole CIDR here, so /24, whatever you want.
- 113_WAF - Hands On.txt:18: And the resource type we can attach it to is either a CloudFront distribution, in which case, well you define this in US East-1, otherwise it's for regional resources such as, your Application balancers, your AppsSync GraphQL API, your Amazon API Gateway REST APIs, or your Cognito user pools, whatever you want to protect.
- 113_WAF - Hands On.txt:19: So right now, I want to protect regional resources, so, here I choose the region.
- 113_WAF - Hands On.txt:20: And optionally, if you had created, for example an ALB, you could go ahead and add it directly from this UI or whatever you want to protect.
- 113_WAF - Hands On.txt:28: So, let's add a rule and we have two options, we can add managed rules, and this is where you can have AWS manage rules, and you can have a look at them, for example, bot control or for free rule groups.
- 113_WAF - Hands On.txt:30: And one of them, for example, is like Known bad inputs, or SQL database protection, but it says full on, so this is 200 credits that it costs you or how to protect a WordPress application and so on.
- 113_WAF - Hands On.txt:32: So, here we have three options, we can work with an IP set, in which case we can choose an IP set, for example, the one we've created, and say, okay for this IP set simply allow or block or count or have a CAPTCHA, to have like a challenge, or a challenge, either CAPTCHA or challenge.
- 113_WAF - Hands On.txt:34: So if you wanted to allow them, you could choose allow, if you want to block anything from this IP set, you could block them as well.
- 113_WAF - Hands On.txt:35: But what if you wanted to block anything but the IP set?
- 113_WAF - Hands On.txt:50: And it could be matching the statement and you have like, all the information such as, for example, the country or the cookies or the query parameters or the path, and the body, and the method, and so on.
- 113_WAF - Hands On.txt:59: And again you can add text transformations, for example, to modify the content before it is being evaluated for a SQL injection attack.
- 113_WAF - Hands On.txt:67: Then I want to block them maybe, or I want to allow them, it's up to you.
- 113_WAF - Hands On.txt:78: So first, if you did associate it with any resource but you didn't have to, you need to disassociate it from your Load Balancers, for example.
- 115_[SAA] DDoS Attack Protection.txt:4: It's fronted by a Elastic Load Balancer, and then your load balancer can be either exposed by a Global Accelerator as fixed IPs, or it could be fronted, for example, by CloudFronts.
- 115_[SAA] DDoS Attack Protection.txt:29: And then you can use WAF on top of CloudFront, or your application load balancers to filter and block requests based on request signatures, for example, you can block specific IPs, specific request types and so on.
- 115_[SAA] DDoS Attack Protection.txt:31: So you can use a bunch of managed rules on WAF to block IPs based on reputation or block anonymous IPs and so on.
- 115_[SAA] DDoS Attack Protection.txt:34: And of course using Shield Advanced, so in case you enable it, then it will automatically create WAF rules for you to mitigate layer seven attacks.
- 115_[SAA] DDoS Attack Protection.txt:35: So this is good for the application layer defense, again to protect your EC2 instances from getting any bad request or at least minimize them.
- 115_[SAA] DDoS Attack Protection.txt:41: Also, we can set up security groups and network ACLs to filter traffic based on specific IPs, and elastic IPs, if we use them, they can be protected by AWS Shield Advanced as well.
- 116_[SAA_DVA] API Gateway.txt:21: So lots of features that come with the API Gateway that are not necessarily included when you use something as simple as an application load balancer.
- 116_[SAA_DVA] API Gateway.txt:27: So it could be, for example, an HTTP API you have on premises, or it could be an application load balancer you have on your cloud environment.
- 116_[SAA_DVA] API Gateway.txt:32: So which ones, for example, where we can start a Step Function workflow, we can post a message to SQS directly from an API Gateway API.
- 116_[SAA_DVA] API Gateway.txt:42: Then Kinesis Data Stream from there, we can, for example, send the records into a Kinesis Data Firehose and eventually put them into an Amazon S3 bucket in the JSON format.
- 116_[SAA_DVA] API Gateway.txt:53: So this is when we don't want to use CloudFront Edge locations.
- 116_[SAA_DVA] API Gateway.txt:54: So it's when we expect all our users to be within the same region where we created our API Gateway.
- 116_[SAA_DVA] API Gateway.txt:64: So this is very helpful if you have internal applications, for example, running on EC2 instances, and they want to access an API on API Gateway, they can just use IAM roles.
- 116_[SAA_DVA] API Gateway.txt:65: If you wanted to have external users, for example, for mobile applications or web applications, then you would use something called Amazon Cognito.
- 117_[SAA_DVA] API Gateway - Hands On.txt:7: So when you build an API, a REST API you have several options.
- 117_[SAA_DVA] API Gateway - Hands On.txt:49: So for example, I can create a test event called DemoTest.
- 117_[SAA_DVA] API Gateway - Hands On.txt:57: Now for timeout, as you can see, even though a Lambda function can have a long timeout, for example, five minutes or 15 minutes, API Gateway has a limited timeout and the default is 29 seconds.
- 117_[SAA_DVA] API Gateway - Hands On.txt:82: On top of it from the test, we can have a look at the execution log from the API gateway, which is really nice, which is also when you wanna debug and see what's happening.
- 117_[SAA_DVA] API Gateway - Hands On.txt:93: So some information you have in here, for example, the resource which is slash, the path slash, the method which is GET, and then you get headers and then you get query string parameters and so on.
- 117_[SAA_DVA] API Gateway - Hands On.txt:127: And as you can see when I go to /dev, it says hello from Lambda.
- 118_API Gateway - Advanced.txt:10: For example, an account A with an EC2 instance in a private subnet.
- 119_[CCP_SOA] AWS Artifact.txt:10: For example, I can say, "Oh, I really want to get this report right now.
- 119_[CCP_SOA] AWS Artifact.txt:15: For example, three account agreements, and we don't have any organization agreements.
- 119_[CCP_SOA] AWS Artifact.txt:16: So I can take one of these agreement, for example, this one, the BAA agreement, accept the agreement, and then download it.
- 120_Route 53 - DNSSEC.txt:5: So for example say we have our web server, it's hosting the website we want, for example.com.
- 120_Route 53 - DNSSEC.txt:7: So the web browser of a client is going to ask the local DNS server for example.com.
- 120_Route 53 - DNSSEC.txt:10: So it's going to ask, for example.com and Route 53 is going to return well, it's the IP 9.10.11.12.
- 120_Route 53 - DNSSEC.txt:14: And this is because, to very much simplify it, the DNS works on the UDP protocol which makes it somewhat easy to hack and also when we don't have a DNSSEC there is no cryptographic DNS verification process.
- 120_Route 53 - DNSSEC.txt:20: It only works when the hosted zones are public, so for public domain names.
- 120_Route 53 - DNSSEC.txt:35: So when you enable Route 53 there's going to be some DNS signing in DNSSEC and so therefore you can verify cryptographically your records.
- 120_Route 53 - DNSSEC.txt:41: Then you lower the TTL for all your records to, for example, one hour and you lower the TTL of the SOA to, the SOA minimum, sorry, to five minutes.
- 120_Route 53 - DNSSEC.txt:54: So your registrar that needs to trust your child zone could be, for example, Route 53, or it could be a third party registrar.
- 120_Route 53 - DNSSEC.txt:62: So in a DNS way, when we, for example, query for a specific record, we're first going to go to the root DNS server which is going to point to the TLD DNS server's .com.
- 120_Route 53 - DNSSEC.txt:63: Then the registrar, for example, for example.com on Route 53, then the hosted zone, which contains the records.
- 120_Route 53 - DNSSEC.txt:70: And so that means that your client when it does its queries, is going to query every DNS server all at once.
- 121_[SAA_SOA] AWS Network Firewall.txt:4: We've seen AWS Shield and Shield Advance to protect against DDoS, and we've seen AWS Firewall Manager to manage them all, your rules for WAF and Shield and so on, across multiple accounts.
- 121_[SAA_SOA] AWS Network Firewall.txt:5: Okay, so we know about this, but what if we want to protect our entire VPC in a sophisticated way?
- 121_[SAA_SOA] AWS Network Firewall.txt:7: So this is used to protect your entire VPC with a firewall.
- 121_[SAA_SOA] AWS Network Firewall.txt:21: For example, we can disable the SMB protocol for outbound communication.
- 122_AWS Network Firewall - Advanced.txt:13: Then send it, for example, to an application balancer, which will forward it to your EC2 instances.
- 122_AWS Network Firewall - Advanced.txt:27: And from these findings we can trigger a step function to, for example, to check whether or not the IP that is attacking us is in a database.
- 122_AWS Network Firewall - Advanced.txt:32: So the idea is that, for example, users are sending encrypted packets to your network firewall, and then the network firewall itself is going to decrypt the TLS traffic, inspect and block any malicious content within, and then re-encrypt the traffic for the destination.
- 123_Amazon SES.txt:9: So the use cases for Amazon SES will be transactional emails, marketing email, and bulk emails communications.
- 123_Amazon SES.txt:14: So the first part of configuration sets, and the second part if you want to is IP pool management to use IP pools to send particular types of emails, therefore, for example, that you have one IP set for the transactional emails, and one IP set for your marketing emails, therefore creating two types of email reputations.
- 123_Amazon SES.txt:15: So Amazon and SES can have config sets, as I said, so when you send emails to users, then the analytics will be sent in real time or at least the data behind the analytics will be sent in near real time to Kinesis Data Firehose.
- 308_Web Application Firewall (WAF).txt:2: It's used to protect your web application from common web exploits at the Layer 7.
- 308_Web Application Firewall (WAF).txt:7: You remember the targets of WAF because the exam will try to trick you, and for example, make you deploy WAF on an NLB but this is not possible.
- 308_Web Application Firewall (WAF).txt:9: And so you can set a rule, for example, to filter based on IP addresses.
- 308_Web Application Firewall (WAF).txt:14: You can use URI strings to protect from the most common attacks, such as SQL injection and cross-site scripting.
- 308_Web Application Firewall (WAF).txt:15: You can have size constraints to make sure that the request are only up to, for example, two megabytes or geo match to allow or block specific countries.
- 308_Web Application Firewall (WAF).txt:16: And you can even have rate-based rules to count the occurrences of requests per IP for DDoS protection, for example, to prevent a specific IP from sending more than 10 requests per second.
- 308_Web Application Firewall (WAF).txt:20: So WAF has a really good use case.
- 309_Shield - DDoS Protection.txt:2: And Shield is a service to protect yourself from DDoS attacks.
- 309_Shield - DDoS Protection.txt:17: And this Shield Advance has an automatic application layer, DDoS mitigation, and it's going to mean that it's automatically going to create and evaluate and deploy WAF rules to mitigate layer 7 attacks.
- 310_Firewall Manager.txt:13: And on top of it, if somehow in your organization, for example, you create a WAF rule for an Application Load Balancer, and somehow there's a new Application Load Balancer being created, then automatically the Firewall Manager is going to apply the same rule to this newly created ALB.
- 311_WAF & Shield - Hands On.txt:8: So, let's go back to regional resource and then I'm going to say, this is going to go into say for example the Ireland region of Europe, and this is again my 'Demo Web ACL.
- 311_WAF & Shield - Hands On.txt:10: So, we can associate resources with it, so which resources do we want to protect with this?
- 311_WAF & Shield - Hands On.txt:11: So I don't have any ALB right now but this is where you would add AWS resources to it by just clicking on this button and finding the right resource to protect with your web ACL.
- 311_WAF & Shield - Hands On.txt:18: And if you look at AWS, we can have, for example, a bot control rule to prevent bots from accessing our application.
- 311_WAF & Shield - Hands On.txt:20: Or we can block for example, anonymous IPs, so let's add this one.
- 311_WAF & Shield - Hands On.txt:21: Here, we're going to block IPs coming from VPNs, from proxies and so on.
- 311_WAF & Shield - Hands On.txt:37: One per line inside your format, run what to block or what to allow in.
- 311_WAF & Shield - Hands On.txt:48: And so this is WAF, let's apply to, for example the Ireland region.
- 312_DDoS Protection Best Practices.txt:4: It's fronted by a Elastic Load Balancer, and then your load balancer can be either exposed by a Global Accelerator as fixed IPs, or it could be fronted, for example, by CloudFronts.
- 312_DDoS Protection Best Practices.txt:29: And then you can use WAF on top of CloudFront, or your application load balancers to filter and block requests based on request signatures, for example, you can block specific IPs, specific request types and so on.
- 312_DDoS Protection Best Practices.txt:31: So you can use a bunch of managed rules on WAF to block IPs based on reputation or block anonymous IPs and so on.
- 312_DDoS Protection Best Practices.txt:34: And of course using Shield Advanced, so in case you enable it, then it will automatically create WAF rules for you to mitigate layer seven attacks.
- 312_DDoS Protection Best Practices.txt:35: So this is good for the application layer defense, again to protect your EC2 instances from getting any bad request or at least minimize them.
- 312_DDoS Protection Best Practices.txt:41: Also, we can set up security groups and network ACLs to filter traffic based on specific IPs, and elastic IPs, if we use them, they can be protected by AWS Shield Advanced as well.

### 5. Constraints / Limitations
- 031_DDoS and AWS Shield.txt:3: It's a way to basically shut down an instance by making it sure it cannot accept any new traffic effectively making it useless and so your users cannot access your application anymore.
- 031_DDoS and AWS Shield.txt:6: And so your normal users cannot access your application server because it does not respond anymore to normal requests.
- 031_DDoS and AWS Shield.txt:13: DNS flood attack, where we overwhelm a DNS so that users cannot query our DNS service and then can't find our website, which is bad.
- 031_DDoS and AWS Shield.txt:50: So it's very important for you to understand the difference between these two and understand which one to use in the exam.
- 032_AWS WAF - Web Application Firewall.txt:21: So something super important for you to know is that WAF has managed rules, and you need to know it for the exam.
- 032_AWS WAF - Web Application Firewall.txt:22: So there are over 190 managed rules, and I'll give you some of the most important.
- 032_AWS WAF - Web Application Firewall.txt:30: So for example, you have a malicious IP, and there is this very important rule called the Managed Rules Amazon IP Reputation List, which is a list of all the IPs that are trusted by AWS, and those that are not trusted by AWS.
- 032_AWS WAF - Web Application Firewall.txt:40: Or if you want to have more control, well you can send it directly from WAF to Kinesis Data Firehose, in which case you are only limited by the Firehose quotas.
- 032_AWS WAF - Web Application Firewall.txt:45: So let's say we have CloudFront in front of an application balancer talking to EC2 instances, and we want to make sure that only the traffic coming from Amazon CloudFront is allowed into the application balancer, and not, for example, site traffic.
- 032_AWS WAF - Web Application Firewall.txt:55: Of course they don't know about the fact you're using custom HTP headers because they're hidden from the users, therefore they cannot access the ALB because they will be blocked by WAF directly on top of it.
- 033_AWS Firewall Manager.txt:22: And if you're prone to frequent DDoS attacks, then you should definitely consider purchasing Shield Advanced.
- 034_Blocking an IP Address.txt:6: And here you have no deny rules, but you can only have allow rules, so if you know in advance the IP of your clients, you can specifically only allow your clients to get to your EC2 instance.
- 034_Blocking an IP Address.txt:15: And so your EC2 instance has a private IP, and so you need to have a security group around the EC2 instance that will allow only connections from your Application Load Balancer.
- 034_Blocking an IP Address.txt:21: So all of this shouldn't be new and should be mastered by now.
- 034_Blocking an IP Address.txt:34: And so therefore you must set up security at the ALB level with your Security Group so that you allow all the CloudFront public IPs into your infrastructure only.
- 093_[SAA_SOA] NACL & Security Groups.txt:59: So the default NACL is super important because it can come up in the exam.
- 093_[SAA_SOA] NACL & Security Groups.txt:70: Okay, so now let's go into the important concept of Ephemeral Ports.
- 093_[SAA_SOA] NACL & Security Groups.txt:71: So when you have a client and a server connecting together, they must use port.
- 093_[SAA_SOA] NACL & Security Groups.txt:92: Well, because they're very important in terms of NACLs.
- 093_[SAA_SOA] NACL & Security Groups.txt:104: And so therefore, the DB NACL must allow outbound TCP on ports and, on ephemeral port, so, maybe from 1024 to 65,535 to web subnet CIDR, and then the web NACL also needs to allow inbound TCP on this range of ephemeral ports from the DB subnet CIDR.
- 093_[SAA_SOA] NACL & Security Groups.txt:105: And this is why ephemeral ports are super important to configure well.
- 093_[SAA_SOA] NACL & Security Groups.txt:108: So it's super important for you to realize that, if you add subnets into a NACL, you need to also update all the NACL rules to make sure that the combination of connections is possible.
- 093_[SAA_SOA] NACL & Security Groups.txt:111: The security group supports allow rules only, whereas NACL supports allow and deny rules, this is why you can deny a specific IP address in a NACL.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:6: So, it's very important to notice this.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:24: So, this should work right now, so let's try it.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:27: So, right now we only have 4 22.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:50: So, as we can see, this shows the very important aspects around the rule numbers.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:54: The inbound rule is going to allow my traffic, but the outbound rule shouldn't.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:56: So, what's really important to notice is that this is true, regardless of if the security group of my EC2 instance did, in fact, allow port 80 in, okay.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:76: So, it's very important for you to notice the difference between EC2 security groups and network ACL's.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:4: So it looks like from this we have used a prefix destination so that the only amount authorized is to S3.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:14: So it's a set of CIDR for AWS services, but you can't create, modify, share, or delete them.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:15: You can only use them.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:16: And some of the services that may be important that you can already reference using this managed prefix list are Amazon S3, Amazon CloudFront, DynamoDB, and Ground Station, and they may be others, but those are the most important.
- 096_Security Groups - Extras.txt:9: So this connection will only close when it times out.
- 097_[SAA_SOA] AWS Transit Gateway.txt:15: Well, you need to create route tables for your transit gateway to limit which VPC can talk to another, which connection have access to each other and so on.
- 097_[SAA_SOA] AWS Transit Gateway.txt:17: So, as I said, it works with direct connect gateway and VPN connections, and it is the only service in AWS that supports IP multicast, so if you see IP multicast at the exam, just know that it is transit gateway you have to use.
- 097_[SAA_SOA] AWS Transit Gateway.txt:27: And so, when you have four tunnels of site-to-site VPN, you are increasing the throughput of your connection which is something you cannot do if you were to connect your corporate data center directly into a VPC.
- 097_[SAA_SOA] AWS Transit Gateway.txt:28: So, if you do a VPN to a virtual private gateway, you get one tunnel, in fact one connection into one VPC, and this connection gives you 1.25 Gbps as the maximum throughput, and you are limited.
- 098_[SAA_SOA] Direct Connect.txt:25: For this, you must use a Direct Connect gateway.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:23: You can also connect to a custom origin over the HTTP protocol, and it could be, for example, on the S3 website, you first must enable the bucket as a static S3 website, or it could be any public HTTP backend you want.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:42: So this is amazing if you have static content that must be able to be available everywhere around the world.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:44: It must be set up for each region you want replication to happen.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:47: And it is only for read only.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:28: And here we have only the option to use a single site or app.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:33: And the VPC origin, if you want to connect directly to a private EC2 instance or an application of balancer that are deployed privately, this is only available in the business plan.
- 102_[SAA_DVA_SOA] CloudFront - ALB_EC2 as an Origin.txt:19: So it would be public, but only restricted to the edge locations.
- 102_[SAA_DVA_SOA] CloudFront - ALB_EC2 as an Origin.txt:20: And the same goes for if you had an application load balancer, again, it should have been public, but your EC2 instances could have been private.
- 102_[SAA_DVA_SOA] CloudFront - ALB_EC2 as an Origin.txt:22: And again, you must make sure that your ALB has a security group that allows all the public IPs coming from CloudFront.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:6: So if you know the target IP of your clients, then you should definitely use that.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:8: Then you can ask me, "How long should this URL be valid for?" Well, if you're sharing a content, for example, a movie, or music, you can make it very short, a few minutes.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:20: And so that means that the objects in our S3 buckets cannot be accessed by anything else, but CloudFront.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:26: But you may be asking yourself, should I use a CloudFront signed URL or an S3 pre-signed URL?
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:30: It's an account wide key-pair, so only the root can manage it.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:38: It has a limited lifetime.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:41: You have to use a signed URL because you cannot access your S3 bucket as you should because there is a bucket policy restricting it to the OAI.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:7: But for this, to manage this key pair, we need to use the root account credentials as well as the AWS console, which is not recommended because you shouldn't use the root account for this.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:8: And also you cannot automate anything because there are no APIs to manage this platform key pair.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:26: This is very important.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:59: But this is not as secure, and this can only be done by the root account.
- 106_[DVA] CloudFront - Field Level Encryption.txt:3: So the idea is that anytime sensitive information is sent by the user, the edge location is going to encrypt it and it will only be able to be decrypted if someone has access to a private key, and therefore this will be using asymmetric encryption.
- 106_[DVA] CloudFront - Field Level Encryption.txt:14: Only the web server will need to have some custom application logic to decrypt that field.
- 107_CloudFront - Origin Access Control and Origin Access Identity (OAC & OAI).txt:6: So, Origin Access Identity does not support SSE-KMS natively, it only supports SSE-S3, and this is why OAC got released.
- 108_CloudFront - Other.txt:10: And second, you will configure the ALB to only forward request and to respond to request that contain this custom HTTP Header.
- 108_CloudFront - Other.txt:11: Now the value of this custom HTTP Header must remain secret, and can rotate over time.
- 108_CloudFront - Other.txt:20: And as an extra security mechanism, you can also decide to leverage the CloudFront prefixes of public IP addresses, to have rules in your security group attached to your Application Balancer, to guarantee that, the request only are coming from CloudFront.
- 108_CloudFront - Other.txt:29: So very important here, the one thing we are using, is the Cognito hosted UI to create and generate this JWT Token and then we're using Lambda@Edge to verify the validity of this token.
- 109_WAF - Web Application Firewall.txt:7: Now, you should know that even though WAF is for protecting your web application, it's not for DDoS protection.
- 109_WAF - Web Application Firewall.txt:8: So you can get protection at the layer seven, yes, but for layer three or layer four DDoS protection, WAF is useless and so therefore you should use AWS Shield instead.
- 109_WAF - Web Application Firewall.txt:10: So web ACL means Web Access Control List and you should know how they work.
- 109_WAF - Web Application Firewall.txt:18: So when you create a Web ACL, and that's very important to know at the exam, it could be either regional or global.
- 109_WAF - Web Application Firewall.txt:19: So if you have a global type of web SCL, it can only be used for global resources such as CloudFront and if you have a regional type of web ACL, you can use it for any different types of regional resources such as ALB, Cognito or API Gateway as long as of course they are in the same region.
- 109_WAF - Web Application Firewall.txt:25: You can have a geo match rule for example to only access certain countries to log in with your Cognito User Pool.
- 109_WAF - Web Application Firewall.txt:27: Or you can have a match rule to allow only requests from a specific certain type of devices or browser using the User-Agent HTTP header.
- 109_WAF - Web Application Firewall.txt:28: The pricing for WAF is important to know, so it's $5 per month for your web ACL.
- 109_WAF - Web Application Firewall.txt:38: Also important to know there's a way to do logging on your web ACL.
- 110_[SAA] Shield.txt:7: And this way your infrastructure cannot serve your real users and this is what it's called a distributed denial of service.
- 111_[SAA] AWS Firewall Manager.txt:22: And if you're prone to frequent DDoS attacks, then you should definitely consider purchasing Shield Advanced.
- 112_[SAA] WAF & Shield - Hands On.txt:6: So we'll give it a name, 'Demo Web ACL', and then whether or not it's for a regional resource, such as your ALB, API gateway or others, or if it's a CloudFront distribution, in which case it is going to be global for CloudFront and only in U.S.
- 112_[SAA] WAF & Shield - Hands On.txt:19: Or we can have a look at the Amazon IP reputation list to only have access to IP that are reputable into our application.
- 113_WAF - Hands On.txt:25: And the idea is that you cannot exceed 5,500 units in this.
- 113_WAF - Hands On.txt:26: This is because otherwise it requests, it requests too much processing power and cannot go through all the rules in enough time to actually serve the request.
- 113_WAF - Hands On.txt:42: The IP address to use as the originating address is best practice to put it as a source IP address.
- 113_WAF - Hands On.txt:47: And the next rule maybe a rate limiting, so rate limiting, and we create a rate based rule.
- 113_WAF - Hands On.txt:48: And this time we're saying, "Hey, I want a single IP address to be allowed 100 requests within a five minute period, and if it's going to reach this limit then it's going to be blocked but after five minutes it will be unblocked." So you can set between anything from 100 to 20 million, but we'll use 100.
- 113_WAF - Hands On.txt:51: So you can say, "Hey, you can read all you want, but you can post only a 100 times every five minutes." This is the kind of things that you would have in this statement.
- 113_WAF - Hands On.txt:52: But we'll consider all requests, and we're saying, "Okay, hey, do this and then block." But you can also say, "Okay, let's make sure it's not a bot, so we can instead we can do a CAPTCHA or a challenge, but we'll do the block." So now we're saying we'll block anything by this IP set, and by the way, they cannot do more than 100 requests in a five minute period.
- 113_WAF - Hands On.txt:61: Maybe continue to inspect the content within the size limitation, and that's a good, that's a good start or a match or no match if you wanted to just, wanted to get a result right away.
- 115_[SAA] DDoS Attack Protection.txt:1: So here is a lecture that is more focused on the solution architecture, and this is around DDoS protection and best practices.
- 115_[SAA] DDoS Attack Protection.txt:9: Obviously there are more than one, but the idea's that we're going to discuss thanks to the letter BP1, best practice one, best practice two, et cetera, what the implications are in terms of DDoS resiliency, okay?
- 115_[SAA] DDoS Attack Protection.txt:19: Next, we can have the best practices for DDoS mitigation.
- 115_[SAA] DDoS Attack Protection.txt:46: And if you set up the API gateway correctly, you can have burst limits, you can do headers filtering, and you can use and force API keys for your users, therefore protecting yourself from a DDoS attack.
- 116_[SAA_DVA] API Gateway.txt:29: Well, you would use an API Gateway to leverage the rate limiting features, the caching, the user authentication, the API keys, et cetera.
- 116_[SAA_DVA] API Gateway.txt:51: Your API Gateway is still only in one region where you created it, but it's accessible efficiently from every CloudFormation Edge location.
- 116_[SAA_DVA] API Gateway.txt:58: So a private API Gateway can only be accessed from within your VPC.
- 116_[SAA_DVA] API Gateway.txt:69: And so that certificate, if you're using an Edge-Optimized endpoint must be in us-east-1 but if you're using a regional endpoint then that certificate may be in the same region as the API Gateway stage.
- 116_[SAA_DVA] API Gateway.txt:70: Finally, you must set up, of course, a CNAME or an A-alias record in Route 53 to point to your domain and API Gateway.
- 117_[SAA_DVA] API Gateway - Hands On.txt:3: So we have HTTP, APIs, we have WebSocket API, REST API, which are public or private, and so as such, we will only deal with a REST API for now.
- 117_[SAA_DVA] API Gateway - Hands On.txt:36: And then the framework I'll use at the runtime is going to be Python 3.11 but whatever Python 3 or Python should work.
- 117_[SAA_DVA] API Gateway - Hands On.txt:57: Now for timeout, as you can see, even though a Lambda function can have a long timeout, for example, five minutes or 15 minutes, API Gateway has a limited timeout and the default is 29 seconds.
- 117_[SAA_DVA] API Gateway - Hands On.txt:88: So if we go to the CloudWatch logs we should be able to find it.
- 118_API Gateway - Advanced.txt:7: The second way of course as I told you, is that if you have a private API then you must use a VPC interface endpoint to access it.
- 118_API Gateway - Advanced.txt:8: You can not access it without a VPC interface endpoint and here using a resource policy we can define that the private API must only be accessed through a specific VPC interface endpoint.
- 118_API Gateway - Advanced.txt:17: So that we're saying, Hey, the only way to access it is through the VPC endpoint that is deployed in account A.
- 118_API Gateway - Advanced.txt:18: Therefore we can deploy a private API in account B and then thanks to the resource policy, only guarantee that the account A through the VPC endpoint of account A can access it.
- 118_API Gateway - Advanced.txt:22: So you have account limits and the idea is that the API Gateway is going to throttle your request at 10,000 request per second across all your API's.
- 118_API Gateway - Advanced.txt:23: You can increase these sub limits upon request but in case you see some throttling, you're going to get a retriable error of HTP code 429 called; too many requests.
- 118_API Gateway - Advanced.txt:24: You can also decide to set stage limits and method limits to improve the performance and spread out the request across all your API's.
- 118_API Gateway - Advanced.txt:26: Just remember, that one API Gateway that is overloaded and not limited can cause all the other API's deployed within the API Gateway to be throttled.
- 120_Route 53 - DNSSEC.txt:20: It only works when the hosted zones are public, so for public domain names.
- 120_Route 53 - DNSSEC.txt:29: And the first one is managed by you and you must remember it.
- 120_Route 53 - DNSSEC.txt:32: And you must know which one is yours.
- 120_Route 53 - DNSSEC.txt:51: So it's very important.
- 120_Route 53 - DNSSEC.txt:52: The parent zone must have a record to trust the child zone.
- 120_Route 53 - DNSSEC.txt:65: So the chain of trust can only work if all of these DNS servers along the way are DNSSEC aware.
- 121_[SAA_SOA] AWS Network Firewall.txt:23: So we say, hey, you only allow outbound traffic from our VPC into our mycorp domain or any third party software repository that we only allow.
- 122_AWS Network Firewall - Advanced.txt:28: And if it is not, then block the traffic by making an API call into network firewall so that we know that we should add this IP to the rule group and therefore effectively block this IP from our network.
- 308_Web Application Firewall (WAF).txt:6: So remember, this is very important.
- 308_Web Application Firewall (WAF).txt:15: You can have size constraints to make sure that the request are only up to, for example, two megabytes or geo match to allow or block specific countries.
- 309_Shield - DDoS Protection.txt:7: And this way your infrastructure cannot serve your real users and this is what it's called a distributed denial of service.
- 310_Firewall Manager.txt:22: And if you're prone to frequent DDoS attacks, then you should definitely consider purchasing Shield Advanced.
- 311_WAF & Shield - Hands On.txt:6: So we'll give it a name, 'Demo Web ACL', and then whether or not it's for a regional resource, such as your ALB, API gateway or others, or if it's a CloudFront distribution, in which case it is going to be global for CloudFront and only in U.S.
- 311_WAF & Shield - Hands On.txt:19: Or we can have a look at the Amazon IP reputation list to only have access to IP that are reputable into our application.
- 312_DDoS Protection Best Practices.txt:1: So here is a lecture that is more focused on the solution architecture, and this is around DDoS protection and best practices.
- 312_DDoS Protection Best Practices.txt:9: Obviously there are more than one, but the idea's that we're going to discuss thanks to the letter BP1, best practice one, best practice two, et cetera, what the implications are in terms of DDoS resiliency, okay?
- 312_DDoS Protection Best Practices.txt:19: Next, we can have the best practices for DDoS mitigation.
- 312_DDoS Protection Best Practices.txt:46: And if you set up the API gateway correctly, you can have burst limits, you can do headers filtering, and you can use and force API keys for your users, therefore protecting yourself from a DDoS attack.

### 6. Patterns / Architectures
- 031_DDoS and AWS Shield.txt:21: Well, first for DDoS, there is AWS Shield Standard, and it's to protect against DDoS attacks for your websites, applications, for all customers at no additional cost.
- 031_DDoS and AWS Shield.txt:22: So by using AWS, you are somewhat protected, thanks to Shield Standard enabled by default against some DDoS attacks.
- 031_DDoS and AWS Shield.txt:23: Then you have Shield Advanced, which gives you 24/7 premium DDoS protection and we'll see in details what that means in the next slide.
- 031_DDoS and AWS Shield.txt:24: You have WAF or Web Application Firewall, and this is not specifically for DDoS but it can help you filter specific requests based on rules.
- 031_DDoS and AWS Shield.txt:26: So WAF is more against application level protections but it can still help you filter some specific requests based on rules and helps you survive a DDoS attack.
- 031_DDoS and AWS Shield.txt:27: We have CloudFront and Route 53 which by default have Shield enabled and they will give you availability protection by using a global edge network.
- 031_DDoS and AWS Shield.txt:28: So attacking CloudFront and Route 53 is a lot of work.
- 031_DDoS and AWS Shield.txt:29: And combined with Shield, it provides DDoS attack mitigation directly at the edge of your network.
- 031_DDoS and AWS Shield.txt:34: And then finally, it's a very good idea to separate static resources and distribute them through S3 in CloudFront which is visually very very safe and stable from a DDoS, from dynamic request which are going to be usually smaller requests and that you can handle for your REST API on EC2 and ALB.
- 031_DDoS and AWS Shield.txt:36: Okay, so as a sample architecture to protect yourself against DDoS, you have the DNS service Route 53 that is protected by Shield by default.
- 031_DDoS and AWS Shield.txt:37: Then you have your application distributed by CloudFront where Shield is again enabled by default and you can set up a Web Application Firewall on your CloudFront distribution to protect yourself.
- 031_DDoS and AWS Shield.txt:38: Finally, if the traffic does make it through, then on your load balancer you also have Shield.
- 031_DDoS and AWS Shield.txt:40: Now let's get into Shield.
- 031_DDoS and AWS Shield.txt:41: So Shield has two level of service.
- 031_DDoS and AWS Shield.txt:42: Shield Standard is free and it's activated for every customer and ON by default.
- 031_DDoS and AWS Shield.txt:45: Shield Advanced is for more enterprise customers.
- 031_DDoS and AWS Shield.txt:47: It's going to cost you $3,000 per month per organization and you're going to be protected against more sophisticated attacks on your EC2 instance, ELB, CloudFront, AWS Global Accelerator and Route 53.
- 031_DDoS and AWS Shield.txt:49: And on top of it, if you incur higher fees because you are scaled up with Auto Scaling because you have more requests going into your network, more bandwidth, then you are protected against these higher fees, thanks to the Shield Advanced sort of insurance that you took.
- 032_AWS WAF - Web Application Firewall.txt:1: Next we have WAF, the Web Application Firewall, which allows you to protect your web applications from common web exploits at the layer seven.
- 032_AWS WAF - Web Application Firewall.txt:5: You can deploy it on CloudFront.
- 032_AWS WAF - Web Application Firewall.txt:6: And these rules are going to be running globally on all edge locations where CloudFront is, and this could be used for example, if you wanted to have a web application firewall for your classic load balancer, your EC2 instances, custom origins, or S3 websites, you would have CloudFront then deploy WAF on CloudFront.
- 032_AWS WAF - Web Application Firewall.txt:8: So remember that WAF is not used for DDoS protection.
- 032_AWS WAF - Web Application Firewall.txt:9: For this we have SHIELD.
- 032_AWS WAF - Web Application Firewall.txt:10: WAF is used for layer seven type of exploits.
- 032_AWS WAF - Web Application Firewall.txt:21: So something super important for you to know is that WAF has managed rules, and you need to know it for the exam.
- 032_AWS WAF - Web Application Firewall.txt:23: They are ready to use manage rules that will be from AWS, or the marketplace sellers, and they'll allow you to just power up WAF very quickly.
- 032_AWS WAF - Web Application Firewall.txt:37: Okay, so what about logging for WAF?
- 032_AWS WAF - Web Application Firewall.txt:39: So while WAF can send logs to Amazon CloudWatch log groups, and you get a debit of five megabytes per second maximum, you can also send it to Amazon S3 bucket, and the logs will be sent every five minutes.
- 032_AWS WAF - Web Application Firewall.txt:40: Or if you want to have more control, well you can send it directly from WAF to Kinesis Data Firehose, in which case you are only limited by the Firehose quotas.
- 032_AWS WAF - Web Application Firewall.txt:44: So using WAF, there is a solution architecture, you know, which is to enhance CloudFront Origin Security.
- 032_AWS WAF - Web Application Firewall.txt:45: So let's say we have CloudFront in front of an application balancer talking to EC2 instances, and we want to make sure that only the traffic coming from Amazon CloudFront is allowed into the application balancer, and not, for example, site traffic.
- 032_AWS WAF - Web Application Firewall.txt:48: Well, using WAF, we can already set up some web ACLs on the CloudFront level.
- 032_AWS WAF - Web Application Firewall.txt:50: Okay, next, what's going to happen is that on Amazon CloudFront, you can create what's called a custom HTP header.
- 032_AWS WAF - Web Application Firewall.txt:52: And so this will be added to every request that goes through Amazon CloudFront.
- 032_AWS WAF - Web Application Firewall.txt:53: The result of which is that we can also set up WAF on the application load balancer, and we create a filtering rule that says that any traffic that has this header, the X Origin verify and the value will be allowed and anything else will be rejected.
- 032_AWS WAF - Web Application Firewall.txt:55: Of course they don't know about the fact you're using custom HTP headers because they're hidden from the users, therefore they cannot access the ALB because they will be blocked by WAF directly on top of it.
- 032_AWS WAF - Web Application Firewall.txt:58: And the Lambda function will update once in a while, the custom HTP header value with a new value in CloudFront, and of course update the filtering rule in AWS WAF.
- 033_AWS Firewall Manager.txt:1: So now let's talk about the AWS Firewall Manager.
- 033_AWS Firewall Manager.txt:2: So this is a service to manage all the firewall rules in all accounts of an AWS organization.
- 033_AWS Firewall Manager.txt:5: And so this could be Web Application Firewall rules, so they apply it to the ALB, the API gateways, CloudFronts and so on.
- 033_AWS Firewall Manager.txt:6: Or it could be Shield Advanced rules, so for your ALB, CLB, NLB, the Elastic IP, and CloudFront.
- 033_AWS Firewall Manager.txt:8: And it could be, as well, rules for your AWS Network Firewall at the VPC level.
- 033_AWS Firewall Manager.txt:10: So the idea is that Firewall Manager allows you to manage all your firewalls in one place.
- 033_AWS Firewall Manager.txt:12: And then they are applied to all the accounts of your organization.
- 033_AWS Firewall Manager.txt:13: And on top of it, if somehow in your organization, for example, you create a WAF rule for an Application Load Balancer, and somehow there's a new Application Load Balancer being created, then automatically the Firewall Manager is going to apply the same rule to this newly created ALB.
- 033_AWS Firewall Manager.txt:14: That's a feature of Firewall Manager.
- 033_AWS Firewall Manager.txt:15: So you may ask yourself, "Well, what is the difference between WAF and Firewall Manager and Shield?" Well, WAF, Shield, and Firewall Manager are used together for comprehensive protection of your accounts.
- 033_AWS Firewall Manager.txt:16: So first you define your Web ACL rules in WAF.
- 033_AWS Firewall Manager.txt:17: And in case you need one-time protection, then WAF is going to be the right choice for you.
- 033_AWS Firewall Manager.txt:18: But if you want to use WAF across multiple accounts and accelerate WAF configuration and automate the protection of new resources, then you would manage your WAF rules within Firewall Manager.
- 033_AWS Firewall Manager.txt:19: And Firewall Manager will just apply all these rules to all your accounts and all your resources automatically.
- 033_AWS Firewall Manager.txt:20: So now we also have Shield Advanced to help you get protected against DDoS attacks.
- 033_AWS Firewall Manager.txt:21: And it has additional features on top of WAF such as a dedicated support from the Shield Response Team, SRT, advanced reporting, and also, it can automatically create WAF rules for you.
- 033_AWS Firewall Manager.txt:22: And if you're prone to frequent DDoS attacks, then you should definitely consider purchasing Shield Advanced.
- 033_AWS Firewall Manager.txt:23: And so Firewall Manager can also help you deploy Shield Advanced across all your accounts So hopefully the distinction is pretty clear for you now.
- 034_Blocking an IP Address.txt:2: So say for example, we have the architecture of an EC2 instance in a public subnet and a client wants to access it.
- 034_Blocking an IP Address.txt:25: So you can pair it with WAF, the Web Application Firewall from AWS.
- 034_Blocking an IP Address.txt:26: And this allows you, for example, to set IP address filtering from within WAF.
- 034_Blocking an IP Address.txt:27: So obviously, now this has a cost because you have a firewall set up at the Application Load Balancer level, but WAF has more than just the IP address filtering feature.
- 034_Blocking an IP Address.txt:29: Another place where you can apply AWS WAF is around CloudFronts.
- 034_Blocking an IP Address.txt:30: So CloudFronts can be set up, for example, on a public infrastructure, for example, using an Application Load Balancer in public mode.
- 034_Blocking an IP Address.txt:31: And so what's happening is that CloudFront will send traffic directly from all the edge locations with the public IPs of them directly into your Application Load Balancer.
- 034_Blocking an IP Address.txt:33: CloudFront does.
- 034_Blocking an IP Address.txt:34: And so therefore you must set up security at the ALB level with your Security Group so that you allow all the CloudFront public IPs into your infrastructure only.
- 034_Blocking an IP Address.txt:36: Another line of defense, is again to use WAF and all its features to have a firewall at the CloudFront level and, for example, implement IP address filtering.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:11: So these customer manage prefix lists are a set of CIDR that you define and that you manage yourself, and they can be shared with other accounts or within your organization.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:16: And some of the services that may be important that you can already reference using this managed prefix list are Amazon S3, Amazon CloudFront, DynamoDB, and Ground Station, and they may be others, but those are the most important.
- 097_[SAA_SOA] AWS Transit Gateway.txt:42: So all these sort of architectures can come up in the exam so make sure you're familiar with understanding how they work, and that's it for me, I will see you in the next lecture.
- 098_[SAA_SOA] Direct Connect.txt:47: So we have two modes of resiliency and architectures and you need to know them both because they will be coming up at the exam.
- 099_[SAA_SOA] Direct Connect + S2S VPN.txt:1: Hi, so a very short lecture on an architecture that can come up in the exam.
- 099_[SAA_SOA] Direct Connect + S2S VPN.txt:6: So this is an architecture that can come up in the exam and I just wanted to show it to you once, so that you know what to expect.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:1: Now let's talk about CloudFront.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:2: CloudFront is a content delivery network or CDN.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:3: So anytime you see CDN in the exam, think CloudFront.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:6: CloudFront is made of hundreds of points of presence globally and that includes edge locations and caches across the world.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:9: We'll see this later on in this course, and the idea is that CloudFront, because your application is worldwide, then you're protected against these attacks also using something called Shield and Web Application Firewall that we will be seeing in the security section.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:12: Then what the user will do is that it will request the content from an American edge location using CloudFront and CloudFront will be able to fetch the content from Australia.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:15: CloudFront has several origins, which are basically backends that you want CloudFront to connect to.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:18: Or to upload files directly into Amazon S3 through Amazon CloudFront.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:19: And the access between CloudFront and Amazon S3 is secured using something called origin access control or OAC.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:20: You can also connect CloudFront to anything within your VPC.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:24: For example, if you have a public load balancer, you can connect it directly into CloudFront.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:25: So at a high level, how does CloudFront work?
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:37: So using CloudFront and the edge locations, we can see that the content of our S3 bucket in one region can be distributed all around the world through the edge locations or points of presence.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:38: So one question that's common is what is the difference between CloudFront and something like S3 replication?
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:39: Well, if you have CloudFront, you're using the Global Edge network.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:50: CloudFront is a CDN, which is to cache content all around the world, whereas S3 cross region replication is to really replicate an entire bucket into another region.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:51: So hopefully that makes sense about CloudFront.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:52: In the next lecture we'll have a play and see how we can set up a CloudFront distribution on the CloudFront and S3 buckets.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:1: So let's go and practice using CloudFront, but first we have to create an S3 bucket to hold our files for our distribution.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:2: So let's create a bucket, and I'll call this one demo-CloudFront-Stephan-v4, and it will scroll down, leave everything as the default and click on Create Bucket.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:14: So let's see how we can instead use CloudFront to make these files accessible without making them public.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:15: So let's open up the CloudFront console.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:17: So let's go ahead and create a CloudFront distribution.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:19: So now there are several plans for CloudFront, and as you can see, they have different features.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:22: So all of this is enough for us for what we need for CloudFront.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:27: So this one is going to be called demo new CloudFront.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:34: But still an option of what CloudFront can do.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:37: And we'll use a demo CloudFront stephane v4.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:39: Next we're going to allow private S3 bucket access to CloudFront.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:52: Now if I go into S3 and look at the permissions and I look at my bucket policy, I can see that now in my bucket policy, I have a bucket policy allowing access to my bucket from our CloudFront distribution.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:54: As we can see, this allows our CloudFront distribution to privately access our S3 buckets.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:64: So even though all my bucket objects are private, now because we have this bucket policy allowing access from CloudFront, I'm able through CloudFront, to see all that I need to see.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:68: And that is the benefit of CloudFront.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:70: We've created a CloudFront distribution within the free plan, and we set up S3 as an origin and we saw the bucket policy.
- 102_[SAA_DVA_SOA] CloudFront - ALB_EC2 as an Origin.txt:1: So how can we connect CloudFront to an application load balancer or an EC2 instance as an origin?
- 102_[SAA_DVA_SOA] CloudFront - ALB_EC2 as an Origin.txt:9: Well, we're going to create a CloudFront distribution, which has a bunch of edge locations, and our users are going to access CloudFront this way.
- 102_[SAA_DVA_SOA] CloudFront - ALB_EC2 as an Origin.txt:10: But then from CloudFront, we're going to create a VPC origin and connect this VPC origin to our backend.
- 102_[SAA_DVA_SOA] CloudFront - ALB_EC2 as an Origin.txt:12: And then CloudFront will do the link through the VPC origin to direct traffic to your private subnets and applications.
- 102_[SAA_DVA_SOA] CloudFront - ALB_EC2 as an Origin.txt:13: And from a network perspective, this is one of the most secure way of doing your setup because, well, your applications are still hosted privately, internally, and then you choose what to expose through CloudFront, which is very handy.
- 102_[SAA_DVA_SOA] CloudFront - ALB_EC2 as an Origin.txt:18: And you use this link to find the list of all the CloudFront IPs and you would make sure to change the security group to allow all these public IPs of the edge location into your EC2 instance.
- 102_[SAA_DVA_SOA] CloudFront - ALB_EC2 as an Origin.txt:22: And again, you must make sure that your ALB has a security group that allows all the public IPs coming from CloudFront.
- 102_[SAA_DVA_SOA] CloudFront - ALB_EC2 as an Origin.txt:24: And on top of it, well, there is a risk that if someone changes the security group of your ALB or your EC2 instance, then your instance is public to more than just your CloudFront distribution.
- 103_[SAA_DVA_SOA] CloudFront - Geo Restriction.txt:1: Just a short lecture around CloudFront geo restriction.
- 103_[SAA_DVA_SOA] CloudFront - Geo Restriction.txt:10: And now under security I have the CloudFront geographic restrictions that I can edit and I can have an allow list or block list and then select the countries that I need to block.
- 103_[SAA_DVA_SOA] CloudFront - Geo Restriction.txt:12: I expect over time that CloudFront will have the correct options under security, under the free plan.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:1: So say you have a CloudFront distribution and you wanna make it private and you want to give access to people to premium paid shared content all over the world.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:2: But you want to be able to see and know who has access to what on your CloudFront distribution.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:3: For this, you can use a CloudFront signed URL or a signed cookie and not tell the difference of SAML and cookie at the very end of this slide.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:18: So we have our CloudFront distribution and has a bunch of locations.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:20: And so that means that the objects in our S3 buckets cannot be accessed by anything else, but CloudFront.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:21: But we still want to be able to give people access to their objects through CloudFront.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:23: And our application will use the AWS SDK to generate a signed URL directly from CloudFront.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:24: It will return the signed URL to the clients and then the clients will be able to use that signed URL to get the data and the files and the objects or whatever you need, directly from CloudFront.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:26: But you may be asking yourself, should I use a CloudFront signed URL or an S3 pre-signed URL?
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:28: So CloudFront signed URL is to allow access to a path, no matter the origin.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:32: And you can leverage all the caching features out of CloudFront.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:33: So if you look at the diagram, we have the clients using the signed URL onto your CloudFront distribution and then CloudFront distribution talking to your origin.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:40: So the idea is, if you want people to have access to your CloudFront distribution and it's in front of S3.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:42: But if your users are using directly against S3 and you want to distribute a thousand S3 directly without using CloudFront, then pre-sign URL will be a great use case for it.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:1: So now let's discuss how we can generate keys to sign the URLs with CloudFront.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:6: The other method that was originally supported in the first one that existed was to use an account that contains a CloudFront key pair.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:11: So we can create one or more trusted key group in our CloudFront distribution.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:15: Whereas the public key that is going to be uploaded by CloudFront will be used to verify the signature of these URLs.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:17: So let's have a look at key managements for CloudFront.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:20: So the idea is that we want to generate an RSA key, so a private key and a public key, and the private key will go on my EC2 instances and the public key will go on CloudFront.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:33: But the public key is what we will send into CloudFront.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:34: So back into CloudFront for my public key, that will create a public key.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:44: And that this key group is what will be referenced by CloudFront to allow our users, our CE2 instances, for example, to create signed URLs.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:45: So something to note is that I'm logged in as the root user of my account, but any IAM user with a sufficient permissions could create public keys and key groups within CloudFront.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:46: But I can also show you the old way of doing things for adding keys into CloudFront.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:50: And as you can see, there's a CloudFront key pair section.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:51: And this is how you would use CloudFront to create signed URLs the old way.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:52: The new recommended way is definitely to use what we've been showing before, which was using the key groups in CloudFront.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:58: But this would apply to any CloudFront distributions and we will need to create, and to give these private keys to our EC2 instances.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:60: So definitely from an exam perspective, the new way of doing things is absolutely to use the CloudFront service and the capability that allows any of the IAM user to do it, which is using public keys and key groups.
- 106_[DVA] CloudFront - Field Level Encryption.txt:5: Well, in the POST requests being made to Amazon CloudFront, then there will be a set of fields that we want to be encrypted up to 10 fields, for example, a credit card, and then we'll specify the public key to encrypt them with.
- 106_[DVA] CloudFront - Field Level Encryption.txt:7: We have a client talking over HTTPS through edge location, which will be forwarding it to the CloudFront service using HTTPS again and then it will go all the way to the origin using HTTPS to your application balancer, which will forward all the data using HTTPS to your web server.
- 106_[DVA] CloudFront - Field Level Encryption.txt:11: So now the data being passed from the edge location to Amazon CloudFront to the origin will have the credit card information being encrypted thanks to the public key.
- 106_[DVA] CloudFront - Field Level Encryption.txt:13: As we can see, all along the stack, none of the CloudFront's location and application balancer will have the opportunity to decrypt that field.
- 107_CloudFront - Origin Access Control and Origin Access Identity (OAC & OAI).txt:4: So, you have the KMS Key and you're going to edit the Key Policy, and you're going to add a condition saying that as long as the SourceARN is the ARN of your OAC, your Origin Access Control, then you will be able to do the decrypt encrypt and generate there the key operations and therefore, CloudFront can communicate with your S3 Bucket that is enabled with SSE-KMS.
- 107_CloudFront - Origin Access Control and Origin Access Identity (OAC & OAI).txt:7: And so, in the previous case we had to use Lambda@Edge to actually sign requests from CloudFront to S3, and also disable OAI for this to work.
- 107_CloudFront - Origin Access Control and Origin Access Identity (OAC & OAI).txt:9: Well, we have our users, and they access CloudFront, then a Lambda@Edge is going to modify the origin request, and it is going to actually sign this request using the Sigv4 mechanism, so that CloudFront can access your S3 Bucket with the SSE-KMS security mechanism, which is going to return the file, and then send it back to the user.
- 107_CloudFront - Origin Access Control and Origin Access Identity (OAC & OAI).txt:10: Now this is an architecture you may find in the exam still, but overall is going to be deprecated over time, and the correct solution is to use an Origin Access Control because we don't need to use any Lambda@Edge function and everything is working as expected with both SSE-S3 and SSE-KMS.
- 108_CloudFront - Other.txt:1: So here are some bits of information about CloudFront that can come up in the exam.
- 108_CloudFront - Other.txt:8: The second one is a pattern to restrict access to an Application Balancer through CloudFront or a custom origin.
- 108_CloudFront - Other.txt:9: So first, you will configure CloudFront to add a custom HTTP Header to any request that will be sent to the ALB, the origin.
- 108_CloudFront - Other.txt:14: Then you access the CloudFront through the Edge Locations.
- 108_CloudFront - Other.txt:15: This CloudFront Edge Location is going to have a custom header, called the X-Custom-Header and then a random value.
- 108_CloudFront - Other.txt:20: And as an extra security mechanism, you can also decide to leverage the CloudFront prefixes of public IP addresses, to have rules in your security group attached to your Application Balancer, to guarantee that, the request only are coming from CloudFront.
- 108_CloudFront - Other.txt:21: There's also a way to leverage CloudFront alongside Cognito.
- 108_CloudFront - Other.txt:23: Well, say we want our users to be authenticated, before accessing CloudFront and our S3 buckets.
- 108_CloudFront - Other.txt:26: Then, this token is going to be passed to CloudFront, alongside the request, and CloudFront is going to be leveraging a Lambda function, the Lambda@Edge function, which is going to look at the viewer request, get back the JWT Token, and verify whether or not that token was issued by Cognito, and is correct.
- 108_CloudFront - Other.txt:27: If that is correct, then the Lambda function will say, okay, the request can go on, and then CloudFront is going to talk to the S3 buckets.
- 109_WAF - Web Application Firewall.txt:1: So now let's talk about AWS WAF or Web Application Firewall.
- 109_WAF - Web Application Firewall.txt:5: It could be Amazon CloudFront, it could be the API Gateway to protect your REST APIs.
- 109_WAF - Web Application Firewall.txt:7: Now, you should know that even though WAF is for protecting your web application, it's not for DDoS protection.
- 109_WAF - Web Application Firewall.txt:8: So you can get protection at the layer seven, yes, but for layer three or layer four DDoS protection, WAF is useless and so therefore you should use AWS Shield instead.
- 109_WAF - Web Application Firewall.txt:19: So if you have a global type of web SCL, it can only be used for global resources such as CloudFront and if you have a regional type of web ACL, you can use it for any different types of regional resources such as ALB, Cognito or API Gateway as long as of course they are in the same region.
- 109_WAF - Web Application Firewall.txt:26: So while there's no geo restriction feature directly in Cognito, you can combine it with WAF to get the geo match feature.
- 109_WAF - Web Application Firewall.txt:28: The pricing for WAF is important to know, so it's $5 per month for your web ACL.
- 109_WAF - Web Application Firewall.txt:30: It may change but it gives you an idea of how WAF pricing works.
- 109_WAF - Web Application Firewall.txt:31: You also have managed roles within WAF.
- 109_WAF - Web Application Firewall.txt:41: All right, so that's it for WAF web ACLs.
- 110_[SAA] Shield.txt:1: So now let's talk about AWS Shields.
- 110_[SAA] Shield.txt:2: And Shield is a service to protect yourself from DDoS attacks.
- 110_[SAA] Shield.txt:8: So we can protect against it, so we have the AWS Shield Standard service.
- 110_[SAA] Shield.txt:10: And if you want to get advanced protection, you can use the AWS Shield Advanced service.
- 110_[SAA] Shield.txt:12: It costs around 3,000 per month per organization.
- 110_[SAA] Shield.txt:13: And the idea is that you're going to get protected against more sophisticated DDoS attacks on Amazon EC2, Elastic Load Balancing, Amazon CloudFront, the Global Accelerator and Route 53.
- 110_[SAA] Shield.txt:16: In case you are incurring higher fees because you are also being attacked, this Shield Advance protects you from these higher fees.
- 110_[SAA] Shield.txt:17: And this Shield Advance has an automatic application layer, DDoS mitigation, and it's going to mean that it's automatically going to create and evaluate and deploy WAF rules to mitigate layer 7 attacks.
- 111_[SAA] AWS Firewall Manager.txt:1: So now let's talk about the AWS Firewall Manager.
- 111_[SAA] AWS Firewall Manager.txt:2: So this is a service to manage all the firewall rules in all accounts of an AWS organization.
- 111_[SAA] AWS Firewall Manager.txt:5: And so this could be Web Application Firewall rules, so they apply it to the ALB, the API gateways, CloudFronts and so on.
- 111_[SAA] AWS Firewall Manager.txt:6: Or it could be Shield Advanced rules, so for your ALB, CLB, NLB, the Elastic IP, and CloudFront.
- 111_[SAA] AWS Firewall Manager.txt:8: And it could be, as well, rules for your AWS Network Firewall at the VPC level.
- 111_[SAA] AWS Firewall Manager.txt:10: So the idea is that Firewall Manager allows you to manage all your firewalls in one place.
- 111_[SAA] AWS Firewall Manager.txt:12: And then they are applied to all the accounts of your organization.
- 111_[SAA] AWS Firewall Manager.txt:13: And on top of it, if somehow in your organization, for example, you create a WAF rule for an Application Load Balancer, and somehow there's a new Application Load Balancer being created, then automatically the Firewall Manager is going to apply the same rule to this newly created ALB.
- 111_[SAA] AWS Firewall Manager.txt:14: That's a feature of Firewall Manager.
- 111_[SAA] AWS Firewall Manager.txt:15: So you may ask yourself, "Well, what is the difference between WAF and Firewall Manager and Shield?" Well, WAF, Shield, and Firewall Manager are used together for comprehensive protection of your accounts.
- 111_[SAA] AWS Firewall Manager.txt:16: So first you define your Web ACL rules in WAF.
- 111_[SAA] AWS Firewall Manager.txt:17: And in case you need one-time protection, then WAF is going to be the right choice for you.
- 111_[SAA] AWS Firewall Manager.txt:18: But if you want to use WAF across multiple accounts and accelerate WAF configuration and automate the protection of new resources, then you would manage your WAF rules within Firewall Manager.
- 111_[SAA] AWS Firewall Manager.txt:19: And Firewall Manager will just apply all these rules to all your accounts and all your resources automatically.
- 111_[SAA] AWS Firewall Manager.txt:20: So now we also have Shield Advanced to help you get protected against DDoS attacks.
- 111_[SAA] AWS Firewall Manager.txt:21: And it has additional features on top of WAF such as a dedicated support from the Shield Response Team, SRT, advanced reporting, and also, it can automatically create WAF rules for you.
- 111_[SAA] AWS Firewall Manager.txt:22: And if you're prone to frequent DDoS attacks, then you should definitely consider purchasing Shield Advanced.
- 111_[SAA] AWS Firewall Manager.txt:23: And so Firewall Manager can also help you deploy Shield Advanced across all your accounts So hopefully the distinction is pretty clear for you now.
- 112_[SAA] WAF & Shield - Hands On.txt:1: So, let me show you quickly WAF, Shield and Firewall Manager.
- 112_[SAA] WAF & Shield - Hands On.txt:2: So, if you go into the console and you type WAF and Shield, you arrive in this UI.
- 112_[SAA] WAF & Shield - Hands On.txt:3: So we have WAF on the left hand side, Shield in here and we have Firewall Manager in here.
- 112_[SAA] WAF & Shield - Hands On.txt:4: So WAF helps you protect your web applications from common web exploits at the layer seven So it's for your Amazon API gateway, your CloudFront distributions or an Application Load Balancer.
- 112_[SAA] WAF & Shield - Hands On.txt:6: So we'll give it a name, 'Demo Web ACL', and then whether or not it's for a regional resource, such as your ALB, API gateway or others, or if it's a CloudFront distribution, in which case it is going to be global for CloudFront and only in U.S.
- 112_[SAA] WAF & Shield - Hands On.txt:35: So, this is for WAF and next.
- 112_[SAA] WAF & Shield - Hands On.txt:38: Okay, so next we have Shield.
- 112_[SAA] WAF & Shield - Hands On.txt:39: So, Shield is to get DDoS protection and if I click on subscribe to Shield Advanced, I'm going to pay $3,000 per month, which I will not do.
- 112_[SAA] WAF & Shield - Hands On.txt:40: So, the idea is that you just know that Shield is for DDoS protection and we just don't experiment with it otherwise we're gonna have a bad surprise.
- 112_[SAA] WAF & Shield - Hands On.txt:41: So, I'm going to scroll down and go to Firewall Manager.
- 112_[SAA] WAF & Shield - Hands On.txt:42: So, Firewall Manager is to have centralized security management of your rules.
- 112_[SAA] WAF & Shield - Hands On.txt:45: I will not display this but the idea is that all these policies will be applied to all accounts across your organization.
- 112_[SAA] WAF & Shield - Hands On.txt:47: So you can apply a policy for WAF, for Shield Advanced, for security groups, network firewalls, or more.
- 112_[SAA] WAF & Shield - Hands On.txt:48: And so this is WAF, let's apply to, for example the Ireland region.
- 112_[SAA] WAF & Shield - Hands On.txt:49: And if I were to do so then I would be able to define a WAF policy for all my accounts for the Ireland region.
- 113_WAF - Hands On.txt:2: So on AWS WAF, you will have the option to create Web ACLs, and this is where you're going to create your rules that will prevent people from exploiting or accessing your API in way that you think are abusive.
- 113_WAF - Hands On.txt:12: Okay, so next let's go into the Web ACLs of WAF.
- 113_WAF - Hands On.txt:18: And the resource type we can attach it to is either a CloudFront distribution, in which case, well you define this in US East-1, otherwise it's for regional resources such as, your Application balancers, your AppsSync GraphQL API, your Amazon API Gateway REST APIs, or your Cognito user pools, whatever you want to protect.
- 113_WAF - Hands On.txt:22: I just want to show you the rules of creation of things in WAF.
- 114_AWS Shield Advanced - Metrics.txt:1: So here is a very short lecture about Shield Advanced because you can get CloudWatch metrics out of it and they're going to help you figure out, if there is a DDoS attack happening right now on your infrastructure.
- 115_[SAA] DDoS Attack Protection.txt:1: So here is a lecture that is more focused on the solution architecture, and this is around DDoS protection and best practices.
- 115_[SAA] DDoS Attack Protection.txt:2: So let's assume that you have this kind of architecture.
- 115_[SAA] DDoS Attack Protection.txt:4: It's fronted by a Elastic Load Balancer, and then your load balancer can be either exposed by a Global Accelerator as fixed IPs, or it could be fronted, for example, by CloudFronts.
- 115_[SAA] DDoS Attack Protection.txt:5: CloudFronts can be linked to WAF, a web application firewall, and so on.
- 115_[SAA] DDoS Attack Protection.txt:7: And finally you could also have another architecture where you have CloudFront and the API gateway.
- 115_[SAA] DDoS Attack Protection.txt:10: So by using CloudFront, we are actually at the Edge.
- 115_[SAA] DDoS Attack Protection.txt:12: That means that your web application delivery is at the Edge, and so you're going to be protected against DDoS common attacks by using Shield, just a normal setup of Shield's, so SYN floods and UDB reflection.
- 115_[SAA] DDoS Attack Protection.txt:14: And again, it's fully integrated with Shield for DDoS protection.
- 115_[SAA] DDoS Attack Protection.txt:15: So it's very helpful if your backend is somehow not compatible with CloudFronts.
- 115_[SAA] DDoS Attack Protection.txt:16: In this case, you would have Global Accelerator in front of it, and so that means that no matter what backend you have, either using CloudFront or the Global Accelerator, you will be fully distributed at the Edge of AWS and the Edge location will be DDoS protected.
- 115_[SAA] DDoS Attack Protection.txt:22: So the idea is that by using CloudFront, Global Accelerator, Route 53 and the Elastic Load Balancing, we protect our Amazon EC2 instances against high traffic.
- 115_[SAA] DDoS Attack Protection.txt:28: So the idea is that CloudFront is going to serve static content, and serve it from Edge locations, therefore protecting your backend.
- 115_[SAA] DDoS Attack Protection.txt:29: And then you can use WAF on top of CloudFront, or your application load balancers to filter and block requests based on request signatures, for example, you can block specific IPs, specific request types and so on.
- 115_[SAA] DDoS Attack Protection.txt:30: And if you use the WAF rate based rules, you can automatically block the IPs of bad actors.
- 115_[SAA] DDoS Attack Protection.txt:31: So you can use a bunch of managed rules on WAF to block IPs based on reputation or block anonymous IPs and so on.
- 115_[SAA] DDoS Attack Protection.txt:32: And using CloudFront, you can block specific geographies.
- 115_[SAA] DDoS Attack Protection.txt:33: The idea is that CloudFront and WAF are managed services, and so they will take care of filtering some requests for you, so you can be protected against DDoS attack.
- 115_[SAA] DDoS Attack Protection.txt:34: And of course using Shield Advanced, so in case you enable it, then it will automatically create WAF rules for you to mitigate layer seven attacks.
- 115_[SAA] DDoS Attack Protection.txt:37: So the idea with this architecture is that the backend AWS resources are used to serve our application, are hidden.
- 115_[SAA] DDoS Attack Protection.txt:39: So if we use CloudFront, the API Gateway, or Elastic Load Balancing, we can hide our backend resources.
- 115_[SAA] DDoS Attack Protection.txt:41: Also, we can set up security groups and network ACLs to filter traffic based on specific IPs, and elastic IPs, if we use them, they can be protected by AWS Shield Advanced as well.
- 115_[SAA] DDoS Attack Protection.txt:44: Otherwise you can use CloudFront plus the regional mode, which gives you more control for DDoS protection.
- 115_[SAA] DDoS Attack Protection.txt:45: And if you use WAF on top of the API gateway, then you can get filtering of any HTTP request.
- 115_[SAA] DDoS Attack Protection.txt:47: So hopefully this kind of architecture makes sense and you understand the different ways you can protect against DDoS, because the exam will ask you to think just like that, okay?
- 116_[SAA_DVA] API Gateway.txt:50: And to be efficient, the request are going to be routed through all the CloudFront Edge locations, which will improve the latency.
- 116_[SAA_DVA] API Gateway.txt:53: So this is when we don't want to use CloudFront Edge locations.
- 119_[CCP_SOA] AWS Artifact.txt:15: For example, three account agreements, and we don't have any organization agreements.
- 121_[SAA_SOA] AWS Network Firewall.txt:2: So we've seen Network Access Control Lists, we've seen Amazon VPC security groups, we've seen AWS WAF.
- 121_[SAA_SOA] AWS Network Firewall.txt:4: We've seen AWS Shield and Shield Advance to protect against DDoS, and we've seen AWS Firewall Manager to manage them all, your rules for WAF and Shield and so on, across multiple accounts.
- 121_[SAA_SOA] AWS Network Firewall.txt:6: Introducing the AWS Network Firewall.
- 121_[SAA_SOA] AWS Network Firewall.txt:9: And so this AWS Network Firewall protects it from the layer 3 to the layer 7 protection.
- 121_[SAA_SOA] AWS Network Firewall.txt:14: So internally, the network firewall uses the AWS Gateway Load Balancer, but instead of us setting up a third party appliance to inspect the traffic, we just have AWS manage it with its own appliances.
- 121_[SAA_SOA] AWS Network Firewall.txt:16: And these rules can be centrally managed as well across multiple accounts and many VPCs on the AWS Firewall Manager service.
- 121_[SAA_SOA] AWS Network Firewall.txt:17: So with the network firewall, we have fine grained controls over all kind of network traffic.
- 121_[SAA_SOA] AWS Network Firewall.txt:28: So that's it for the network firewall.
- 122_AWS Network Firewall - Advanced.txt:1: So let's discuss a few deployment architectures for network firewall.
- 122_AWS Network Firewall - Advanced.txt:2: So let's take an example where you have a protected VPC and we have a firewall subnet that will contain a firewall endpoint connected to the network firewall service.
- 122_AWS Network Firewall - Advanced.txt:10: So the EC2 instances go to the NAT gateway, and then the NAT gateway goes to the firewall endpoint which is going to interact with the AWS network firewall service.
- 122_AWS Network Firewall - Advanced.txt:12: In terms of inbound, it goes into the internet gateway, through the firewall endpoint, which is going to verify the traffic with the network firewall service.
- 122_AWS Network Firewall - Advanced.txt:14: And then EC2 instances reply back to the ALB, the traffic goes back to the firewall endpoint, which is again going to be analyzed by the network firewall.
- 122_AWS Network Firewall - Advanced.txt:20: Now there are different ways to deploy a network firewall.
- 122_AWS Network Firewall - Advanced.txt:23: And these will define how the network firewall is going to behave.
- 122_AWS Network Firewall - Advanced.txt:28: And if it is not, then block the traffic by making an API call into network firewall so that we know that we should add this IP to the rule group and therefore effectively block this IP from our network.
- 122_AWS Network Firewall - Advanced.txt:30: The AWS network firewall also supports encrypted traffic.
- 122_AWS Network Firewall - Advanced.txt:32: So the idea is that, for example, users are sending encrypted packets to your network firewall, and then the network firewall itself is going to decrypt the TLS traffic, inspect and block any malicious content within, and then re-encrypt the traffic for the destination.
- 308_Web Application Firewall (WAF).txt:1: So now let's talk about AWS WAF, the Web Application Firewall.
- 308_Web Application Firewall (WAF).txt:5: So this WAF, this Web Application Firewall can be deployed on the Application Balancer, and API gateway, CloudFront, the AppSync GraphQL API, or Cognito user pools.
- 308_Web Application Firewall (WAF).txt:7: You remember the targets of WAF because the exam will try to trick you, and for example, make you deploy WAF on an NLB but this is not possible.
- 308_Web Application Firewall (WAF).txt:17: So these web ACLs, they're regional, except for CloudFront, where they are defined globally.
- 308_Web Application Firewall (WAF).txt:20: So WAF has a really good use case.
- 308_Web Application Firewall (WAF).txt:21: So what if you want to get a fixed IP on our application while using WAF with an application load balancer?
- 308_Web Application Firewall (WAF).txt:22: So WAF does not support the Network Load Balancer because the NLB operates on Layer 4 and WAF is for Layer 7.
- 308_Web Application Firewall (WAF).txt:23: So therefore, to provide WAF, you need to have an application load balancer.
- 308_Web Application Firewall (WAF).txt:25: So to solve a problem, we can use a Global Accelerator to get fixed IP for application, and then enable WAF on our ALB.
- 308_Web Application Firewall (WAF).txt:26: So the architecture looks like this.
- 308_Web Application Firewall (WAF).txt:30: And therefore, we have achieved our target architecture.
- 309_Shield - DDoS Protection.txt:1: So now let's talk about AWS Shields.
- 309_Shield - DDoS Protection.txt:2: And Shield is a service to protect yourself from DDoS attacks.
- 309_Shield - DDoS Protection.txt:8: So we can protect against it, so we have the AWS Shield Standard service.
- 309_Shield - DDoS Protection.txt:10: And if you want to get advanced protection, you can use the AWS Shield Advanced service.
- 309_Shield - DDoS Protection.txt:12: It costs around 3,000 per month per organization.
- 309_Shield - DDoS Protection.txt:13: And the idea is that you're going to get protected against more sophisticated DDoS attacks on Amazon EC2, Elastic Load Balancing, Amazon CloudFront, the Global Accelerator and Route 53.
- 309_Shield - DDoS Protection.txt:16: In case you are incurring higher fees because you are also being attacked, this Shield Advance protects you from these higher fees.
- 309_Shield - DDoS Protection.txt:17: And this Shield Advance has an automatic application layer, DDoS mitigation, and it's going to mean that it's automatically going to create and evaluate and deploy WAF rules to mitigate layer 7 attacks.
- 310_Firewall Manager.txt:1: So now let's talk about the AWS Firewall Manager.
- 310_Firewall Manager.txt:2: So this is a service to manage all the firewall rules in all accounts of an AWS organization.
- 310_Firewall Manager.txt:5: And so this could be Web Application Firewall rules, so they apply it to the ALB, the API gateways, CloudFronts and so on.
- 310_Firewall Manager.txt:6: Or it could be Shield Advanced rules, so for your ALB, CLB, NLB, the Elastic IP, and CloudFront.
- 310_Firewall Manager.txt:8: And it could be, as well, rules for your AWS Network Firewall at the VPC level.
- 310_Firewall Manager.txt:10: So the idea is that Firewall Manager allows you to manage all your firewalls in one place.
- 310_Firewall Manager.txt:12: And then they are applied to all the accounts of your organization.
- 310_Firewall Manager.txt:13: And on top of it, if somehow in your organization, for example, you create a WAF rule for an Application Load Balancer, and somehow there's a new Application Load Balancer being created, then automatically the Firewall Manager is going to apply the same rule to this newly created ALB.
- 310_Firewall Manager.txt:14: That's a feature of Firewall Manager.
- 310_Firewall Manager.txt:15: So you may ask yourself, "Well, what is the difference between WAF and Firewall Manager and Shield?" Well, WAF, Shield, and Firewall Manager are used together for comprehensive protection of your accounts.
- 310_Firewall Manager.txt:16: So first you define your Web ACL rules in WAF.
- 310_Firewall Manager.txt:17: And in case you need one-time protection, then WAF is going to be the right choice for you.
- 310_Firewall Manager.txt:18: But if you want to use WAF across multiple accounts and accelerate WAF configuration and automate the protection of new resources, then you would manage your WAF rules within Firewall Manager.
- 310_Firewall Manager.txt:19: And Firewall Manager will just apply all these rules to all your accounts and all your resources automatically.
- 310_Firewall Manager.txt:20: So now we also have Shield Advanced to help you get protected against DDoS attacks.
- 310_Firewall Manager.txt:21: And it has additional features on top of WAF such as a dedicated support from the Shield Response Team, SRT, advanced reporting, and also, it can automatically create WAF rules for you.
- 310_Firewall Manager.txt:22: And if you're prone to frequent DDoS attacks, then you should definitely consider purchasing Shield Advanced.
- 310_Firewall Manager.txt:23: And so Firewall Manager can also help you deploy Shield Advanced across all your accounts So hopefully the distinction is pretty clear for you now.
- 311_WAF & Shield - Hands On.txt:1: So, let me show you quickly WAF, Shield and Firewall Manager.
- 311_WAF & Shield - Hands On.txt:2: So, if you go into the console and you type WAF and Shield, you arrive in this UI.
- 311_WAF & Shield - Hands On.txt:3: So we have WAF on the left hand side, Shield in here and we have Firewall Manager in here.
- 311_WAF & Shield - Hands On.txt:4: So WAF helps you protect your web applications from common web exploits at the layer seven So it's for your Amazon API gateway, your CloudFront distributions or an Application Load Balancer.
- 311_WAF & Shield - Hands On.txt:6: So we'll give it a name, 'Demo Web ACL', and then whether or not it's for a regional resource, such as your ALB, API gateway or others, or if it's a CloudFront distribution, in which case it is going to be global for CloudFront and only in U.S.
- 311_WAF & Shield - Hands On.txt:35: So, this is for WAF and next.
- 311_WAF & Shield - Hands On.txt:38: Okay, so next we have Shield.
- 311_WAF & Shield - Hands On.txt:39: So, Shield is to get DDoS protection and if I click on subscribe to Shield Advanced, I'm going to pay $3,000 per month, which I will not do.
- 311_WAF & Shield - Hands On.txt:40: So, the idea is that you just know that Shield is for DDoS protection and we just don't experiment with it otherwise we're gonna have a bad surprise.
- 311_WAF & Shield - Hands On.txt:41: So, I'm going to scroll down and go to Firewall Manager.
- 311_WAF & Shield - Hands On.txt:42: So, Firewall Manager is to have centralized security management of your rules.
- 311_WAF & Shield - Hands On.txt:45: I will not display this but the idea is that all these policies will be applied to all accounts across your organization.
- 311_WAF & Shield - Hands On.txt:47: So you can apply a policy for WAF, for Shield Advanced, for security groups, network firewalls, or more.
- 311_WAF & Shield - Hands On.txt:48: And so this is WAF, let's apply to, for example the Ireland region.
- 311_WAF & Shield - Hands On.txt:49: And if I were to do so then I would be able to define a WAF policy for all my accounts for the Ireland region.
- 312_DDoS Protection Best Practices.txt:1: So here is a lecture that is more focused on the solution architecture, and this is around DDoS protection and best practices.
- 312_DDoS Protection Best Practices.txt:2: So let's assume that you have this kind of architecture.
- 312_DDoS Protection Best Practices.txt:4: It's fronted by a Elastic Load Balancer, and then your load balancer can be either exposed by a Global Accelerator as fixed IPs, or it could be fronted, for example, by CloudFronts.
- 312_DDoS Protection Best Practices.txt:5: CloudFronts can be linked to WAF, a web application firewall, and so on.
- 312_DDoS Protection Best Practices.txt:7: And finally you could also have another architecture where you have CloudFront and the API gateway.
- 312_DDoS Protection Best Practices.txt:10: So by using CloudFront, we are actually at the Edge.
- 312_DDoS Protection Best Practices.txt:12: That means that your web application delivery is at the Edge, and so you're going to be protected against DDoS common attacks by using Shield, just a normal setup of Shield's, so SYN floods and UDB reflection.
- 312_DDoS Protection Best Practices.txt:14: And again, it's fully integrated with Shield for DDoS protection.
- 312_DDoS Protection Best Practices.txt:15: So it's very helpful if your backend is somehow not compatible with CloudFronts.
- 312_DDoS Protection Best Practices.txt:16: In this case, you would have Global Accelerator in front of it, and so that means that no matter what backend you have, either using CloudFront or the Global Accelerator, you will be fully distributed at the Edge of AWS and the Edge location will be DDoS protected.
- 312_DDoS Protection Best Practices.txt:22: So the idea is that by using CloudFront, Global Accelerator, Route 53 and the Elastic Load Balancing, we protect our Amazon EC2 instances against high traffic.
- 312_DDoS Protection Best Practices.txt:28: So the idea is that CloudFront is going to serve static content, and serve it from Edge locations, therefore protecting your backend.
- 312_DDoS Protection Best Practices.txt:29: And then you can use WAF on top of CloudFront, or your application load balancers to filter and block requests based on request signatures, for example, you can block specific IPs, specific request types and so on.
- 312_DDoS Protection Best Practices.txt:30: And if you use the WAF rate based rules, you can automatically block the IPs of bad actors.
- 312_DDoS Protection Best Practices.txt:31: So you can use a bunch of managed rules on WAF to block IPs based on reputation or block anonymous IPs and so on.
- 312_DDoS Protection Best Practices.txt:32: And using CloudFront, you can block specific geographies.
- 312_DDoS Protection Best Practices.txt:33: The idea is that CloudFront and WAF are managed services, and so they will take care of filtering some requests for you, so you can be protected against DDoS attack.
- 312_DDoS Protection Best Practices.txt:34: And of course using Shield Advanced, so in case you enable it, then it will automatically create WAF rules for you to mitigate layer seven attacks.
- 312_DDoS Protection Best Practices.txt:37: So the idea with this architecture is that the backend AWS resources are used to serve our application, are hidden.
- 312_DDoS Protection Best Practices.txt:39: So if we use CloudFront, the API Gateway, or Elastic Load Balancing, we can hide our backend resources.
- 312_DDoS Protection Best Practices.txt:41: Also, we can set up security groups and network ACLs to filter traffic based on specific IPs, and elastic IPs, if we use them, they can be protected by AWS Shield Advanced as well.
- 312_DDoS Protection Best Practices.txt:44: Otherwise you can use CloudFront plus the regional mode, which gives you more control for DDoS protection.
- 312_DDoS Protection Best Practices.txt:45: And if you use WAF on top of the API gateway, then you can get filtering of any HTTP request.
- 312_DDoS Protection Best Practices.txt:47: So hopefully this kind of architecture makes sense and you understand the different ways you can protect against DDoS, because the exam will ask you to think just like that, okay?

## Step 3 â€” Deep Expansion (Core Network Security Concepts and Services)

### AWS Firewall Manager
- What it is: Central policy management for security services across AWS Organizations.
- Why it exists: Enforces consistent control posture and reduces policy drift across accounts.
- Internal working: Distributes and audits policy compliance for WAF, Shield, SG, and Network Firewall controls.
- Architecture: Admin account policies -> org-wide enforcement -> compliance reporting.
- Key components: Policy sets, account/OU targeting, compliance status, remediation actions.

### AWS Network Firewall
- What it is: Managed network firewall for VPC traffic inspection and filtering.
- Why it exists: Applies centralized L3-L7 controls for east-west and north-south traffic patterns.
- Internal working: Routes subnet traffic through firewall endpoints with stateless/stateful rule engines.
- Architecture: VPC subnets -> firewall endpoint -> inspected egress/ingress path.
- Key components: Firewall policies, rule groups, endpoints, logging.

### AWS Shield
- What it is: Managed DDoS protection service for AWS workloads.
- Why it exists: Provides automatic mitigation for common network/transport attacks and advanced controls with Shield Advanced.
- Internal working: Detects attack traffic patterns and applies mitigation at edge/network layers.
- Architecture: Attack traffic -> AWS edge/network protections -> service endpoint continuity.
- Key components: Shield Standard, Shield Advanced, visibility metrics, response support.

### AWS WAF
- What it is: Managed web application firewall inspecting HTTP/S requests at edge or regional entry points.
- Why it exists: Protects against OWASP-style attacks, abuse patterns, bots, and request anomalies.
- Internal working: Evaluates requests against rule groups and custom logic, then allows/blocks/counts/challenges.
- Architecture: Client -> CloudFront/ALB/API Gateway -> WAF rules -> protected origin.
- Key components: Web ACL, managed rules, custom rules, rate-based rules, labels/actions.

### Amazon CloudFront
- What it is: Global content delivery network with integrated security controls at edge.
- Why it exists: Improves latency while providing strong perimeter and origin protection.
- Internal working: Serves cached content, applies edge restrictions, signs requests/cookies, and protects origin access.
- Architecture: User -> edge POP -> CloudFront behaviors/security -> origin.
- Key components: Distributions, origins, OAC/OAI, signed URLs/cookies, geo restrictions, FLE.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Web app layer protection | AWS WAF | Azure Web Application Firewall | Google Cloud Armor WAF |
| DDoS protection | AWS Shield | Azure DDoS Protection | Google Cloud Armor DDoS controls |
| Central policy governance | AWS Firewall Manager | Azure Policy + Defender policy initiatives | Organization Policy + Firewall policy constructs |
| Stateful L3-L7 firewalling | AWS Network Firewall | Azure Firewall Premium | Google Cloud Firewall + Cloud NGFW |
| Edge delivery security | CloudFront + OAC/OAI + signed URLs | Azure Front Door + Private Link/WAF | Cloud CDN + Cloud Armor + signed URLs |
| API perimeter controls | API Gateway + WAF + auth | API Management + WAF | API Gateway + Cloud Armor + IAM/auth |
| DNS integrity | Route 53 DNSSEC | Azure DNS DNSSEC | Cloud DNS DNSSEC |
| Network segmentation primitives | NACL + Security Groups | NSG + ASG + UDR | VPC firewall rules + hierarchical policies |

### Trade-offs and Decision Notes
- AWS has deep native coupling between CloudFront, WAF, Shield, and Firewall Manager for layered edge-to-network controls.
- Azure excels when Front Door, Application Gateway WAF, and centralized policy governance are already standard.
- GCP excels for globally distributed services using Cloud Armor and load balancing at edge scale.
- Multi-cloud perimeter strategy should standardize policy intent while implementing platform-native controls for efficacy.

## Phase-wise Architect-Level Organization

### Phase 1 â€” Foundations
- Network attack surface basics: edge, application, transport, and VPC-level controls.
- Control taxonomy: preventive, detective, and governance controls for traffic flows.

### Phase 2 â€” Core Services
- WAF/Shield for internet-facing protection and DDoS resilience.
- Network Firewall, NACL, and Security Groups for in-VPC filtering and segmentation.
- CloudFront plus origin protection for secure edge distribution.

### Phase 3 â€” Advanced Patterns
- Centralized policy enforcement with Firewall Manager across multi-account organizations.
- Layered defense with edge controls, origin controls, and network inspection pipelines.

### Phase 4 â€” System Design
- Enterprise perimeter architecture: global edge protection + regional firewalling + workload segmentation.
- Scaling considerations: rule explosion, false-positive tuning, policy drift, and operational latency.
- Cost considerations: protected resource counts, advanced plan costs, inspection traffic volume.

## Deduped Consolidation Snapshot

This additive section keeps original extraction untouched and provides duplicate-clean views for faster review.

### Concepts (Deduped)
- Centralized Security Governance
- DDoS Resilience
- Edge Security
- Network Security Operational Context
- Network Segmentation
- Perimeter Defense
- Policy Enforcement
- Traffic Filtering

### Services (Deduped)
- API Gateway
- AWS Firewall Manager
- AWS Network Firewall
- AWS Shield
- AWS Transit Gateway
- AWS WAF
- Amazon CloudFront
- Amazon SES
- Amazon VPC
- Elastic Load Balancing
- Managed Prefix Lists
- Network ACL
- Route 53 DNSSEC
- Security Groups

### Features (Deduped)
- bot
- captcha
- dnssec
- field level encryption
- geo
- integration
- managed rule
- mitigation
- oac
- oai
- rate-based
- rule group
- signed

### Use Cases (Deduped)
- 031_DDoS and AWS Shield.txt:9: There is DDoS and so it's when your service isn't available because it's receiving too many requests at a high level.
- 031_DDoS and AWS Shield.txt:11: There's SYN Flood, which is a layer four type of attack when there's too many TCP connection requests happening.
- 031_DDoS and AWS Shield.txt:21: Well, first for DDoS, there is AWS Shield Standard, and it's to protect against DDoS attacks for your websites, applications, for all customers at no additional cost.
- 031_DDoS and AWS Shield.txt:25: So for example, you can say if the request is more than five megabytes, then drop it right away because it looks like a bad request.
- 031_DDoS and AWS Shield.txt:31: And finally, in case the traffic does reach your applications, then a very good way to protect yourself is to be ready to scale.
- 031_DDoS and AWS Shield.txt:36: Okay, so as a sample architecture to protect yourself against DDoS, you have the DNS service Route 53 that is protected by Shield by default.
- 031_DDoS and AWS Shield.txt:37: Then you have your application distributed by CloudFront where Shield is again enabled by default and you can set up a Web Application Firewall on your CloudFront distribution to protect yourself.
- 032_AWS WAF - Web Application Firewall.txt:1: Next we have WAF, the Web Application Firewall, which allows you to protect your web applications from common web exploits at the layer seven.
- 032_AWS WAF - Web Application Firewall.txt:6: And these rules are going to be running globally on all edge locations where CloudFront is, and this could be used for example, if you wanted to have a web application firewall for your classic load balancer, your EC2 instances, custom origins, or S3 websites, you would have CloudFront then deploy WAF on CloudFront.
- 032_AWS WAF - Web Application Firewall.txt:7: You can also deploy it on AppSync, and this is going to allow you to protect your GraphQL APIs directly.
- 032_AWS WAF - Web Application Firewall.txt:14: You can have size constraints to say, "Hey, any request bigger than 20 megabytes I don't want." You can have geomatch to block or allow a specific country, and you can have rate-based rules.
- 032_AWS WAF - Web Application Firewall.txt:15: So to count occurrences of events and say, "Hey, if this happened more than five seconds, five times per second, this looks fishy, block it." And the rule actions can be, allow or block, as we know to allow or to block traffic.
- 032_AWS WAF - Web Application Firewall.txt:27: And they give you protection for many use cases, such as the SQL rule sets, the Windows rule sets.
- 032_AWS WAF - Web Application Firewall.txt:28: The PHP rule sets, the WordPress rule sets, to protect this kind of application.
- 032_AWS WAF - Web Application Firewall.txt:29: Then you get IP reputation rule groups, and this is to block request based on the source IP.
- 032_AWS WAF - Web Application Firewall.txt:30: So for example, you have a malicious IP, and there is this very important rule called the Managed Rules Amazon IP Reputation List, which is a list of all the IPs that are trusted by AWS, and those that are not trusted by AWS.
- 032_AWS WAF - Web Application Firewall.txt:33: And finally there's block bot control manage rule group to block and manage requests from bots.
- 032_AWS WAF - Web Application Firewall.txt:34: So this includes, for example, the AWS manage rule bots control rule sets.
- 032_AWS WAF - Web Application Firewall.txt:35: So as you can see, we have four kinds of managed rule buckets, baseline use case specific IP reputation and above control.
- 032_AWS WAF - Web Application Firewall.txt:42: Well, for example, if you have very high traffic, very high logging capacity requirements, then using KDF could be a very good thing.
- 032_AWS WAF - Web Application Firewall.txt:45: So let's say we have CloudFront in front of an application balancer talking to EC2 instances, and we want to make sure that only the traffic coming from Amazon CloudFront is allowed into the application balancer, and not, for example, site traffic.
- 032_AWS WAF - Web Application Firewall.txt:51: And you have it for example, set to X Origin Verify and then a secret string.
- 033_AWS Firewall Manager.txt:13: And on top of it, if somehow in your organization, for example, you create a WAF rule for an Application Load Balancer, and somehow there's a new Application Load Balancer being created, then automatically the Firewall Manager is going to apply the same rule to this newly created ALB.
- 034_Blocking an IP Address.txt:1: Okay, so let's talk about a little bit of networking because I want you to understand how it works to block an IP address if you want it to in AWS.
- 034_Blocking an IP Address.txt:2: So say for example, we have the architecture of an EC2 instance in a public subnet and a client wants to access it.
- 034_Blocking an IP Address.txt:5: But say you have a default Network ACL, for example, and everything is allowed through, your second line of defense is going to be your Security Group.
- 034_Blocking an IP Address.txt:9: It can slow it down, for example.
- 034_Blocking an IP Address.txt:26: And this allows you, for example, to set IP address filtering from within WAF.
- 034_Blocking an IP Address.txt:30: So CloudFronts can be set up, for example, on a public infrastructure, for example, using an Application Load Balancer in public mode.
- 034_Blocking an IP Address.txt:32: Here your Network ACL is not helpful to filter traffic from the clients because, well, the client does not reach the traffic of AWS, okay?
- 034_Blocking an IP Address.txt:35: Also, you have the ability, for example, if a client was coming from a specific country and was attacking your infrastructure, you could use the Geo Restriction feature to block that specific country and that's one line of defense.
- 034_Blocking an IP Address.txt:36: Another line of defense, is again to use WAF and all its features to have a firewall at the CloudFront level and, for example, implement IP address filtering.
- 093_[SAA_SOA] NACL & Security Groups.txt:2: So let's take an example of a subnet and we know when you have an EC2 instance that we attach a security group to it.
- 093_[SAA_SOA] NACL & Security Groups.txt:34: And so the EC2 instance will first maybe use, for example, connect to www.google.com, and so therefore the first rules that are going to be evaluated are the security group outbound rules.
- 093_[SAA_SOA] NACL & Security Groups.txt:48: So for example, if you define allow on this CIDR and deny on the same CIDR, so a specific IP, but the allow is 100 and the deny is 200, the IP address will be allowed because 100 as a higher precedence over 200.
- 093_[SAA_SOA] NACL & Security Groups.txt:54: And NACLs have a very, very good use case.
- 093_[SAA_SOA] NACL & Security Groups.txt:64: Because if the NACL was not allowing everything in and everything out then we would have do some serious debugging to do when we get started with AWS.
- 093_[SAA_SOA] NACL & Security Groups.txt:71: So when you have a client and a server connecting together, they must use port.
- 093_[SAA_SOA] NACL & Security Groups.txt:73: So we know for example, that the HTTP port is 80, the HTTPS port is four, four, three, the SSH port is 22 and so on.
- 093_[SAA_SOA] NACL & Security Groups.txt:74: So when we have a server that exposes a service, then the client connects to a defined ports, except though that the clients needs a reply back from the server.
- 093_[SAA_SOA] NACL & Security Groups.txt:77: So what it does that when the client is connecting to a server, the client will open a specific ports on itself.
- 093_[SAA_SOA] NACL & Security Groups.txt:80: Well, based on the OS you have, the operating system you have, you have different port ranges, for example, if you're using Windows 10, for example, then you get to 49,152 all the way through 65,535, the port ranges that will be chosen for a random ephemeral ports.
- 093_[SAA_SOA] NACL & Security Groups.txt:87: And then the web server, when connecting back to the client to send back of the response, will send the response and say, Hey, so here's the source IP, here's a source port.
- 093_[SAA_SOA] NACL & Security Groups.txt:95: Now, when the client initiates a connection to the database instance, what are the rules that need to be allowed when you think about it, right?
- 093_[SAA_SOA] NACL & Security Groups.txt:101: When the database sends back the request to the clients, what do you think needs to happen?
- 093_[SAA_SOA] NACL & Security Groups.txt:114: Security group applies to an EC2 instance when specified by someone, whereas NACL applies to all EC2 instances in a subnet that it's associated with.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:71: But if my EC2 instance was trying to initiate a connection, for example, not here.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:72: If my EC2 instance was trying to initiate a connection to Google account, for example, it would be denied because, well, there's no outbound rule that specifically allows it.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:7: So in your account, for example, you can define your custom prefix list.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:8: For example, this CIDR 1, CIDR 2, and CIDR 3.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:12: This allows you, for example, that if the Account A wants to modify the prefix list once, it will be applied to many security groups at once.
- 096_Security Groups - Extras.txt:2: So it turns out that when you have a security group, if you modify a rule, it will never disrupt the tracked connections.
- 096_Security Groups - Extras.txt:7: Now, say for example that the SSH connection is open but then we remove that rule from the security group, what do you think will happen?
- 096_Security Groups - Extras.txt:9: So this connection will only close when it times out.
- 096_Security Groups - Extras.txt:10: So how do we proceed for, for example, forcing the closure of that connection?
- 096_Security Groups - Extras.txt:12: So this allow you to block the connections immediately, so you define them at the subnet level and then you would add a rule, the first one, to deny any traffic on port 22.
- 096_Security Groups - Extras.txt:13: Because NACLs are stateless, they are evaluated all the time for all inbound and outbound traffic and therefor, the connection will be closed, but because security groups are stateful at the time when the connection was allowed in, the return traffic is also allowed back and the connection remains open as long as it is not timing out.
- 097_[SAA_SOA] AWS Transit Gateway.txt:2: For example, you have many VPC and you want to peer them together, then you want to establish some VPN connections and direct connect, and then you have a direct connect gateway to connect to multiple VPC at a time, and this can become very, very complicated in terms of network topology.
- 097_[SAA_SOA] AWS Transit Gateway.txt:18: So, another use case for transit gateway is to increase the bandwidth of your site-to-site VPN connection using ECMP.
- 097_[SAA_SOA] AWS Transit Gateway.txt:22: And the use case, as I said, is to create multiple site-to-site VPN connections to increase the bandwidth of your connection to AWS using a site-to-site VPN.
- 097_[SAA_SOA] AWS Transit Gateway.txt:24: So when you establish a site-to-site VPN connection there are actually two tunnels, one going forward and one going back.
- 097_[SAA_SOA] AWS Transit Gateway.txt:25: When you are connecting such a VPN into a VPC directly, both of these tunnels are used as part of one connections, but when using the transit gateway two tunnels can be used at a time, so this is why you see two lines in this diagram.
- 097_[SAA_SOA] AWS Transit Gateway.txt:27: And so, when you have four tunnels of site-to-site VPN, you are increasing the throughput of your connection which is something you cannot do if you were to connect your corporate data center directly into a VPC.
- 097_[SAA_SOA] AWS Transit Gateway.txt:32: But also, you can add more site-to-site VPN connections into transit gateway, for example two or three, to double or triple your throughputs through ECMP.
- 097_[SAA_SOA] AWS Transit Gateway.txt:34: Obviously when you do the setup, you're going to have to pay for each GB of data going through the transit gateway, so there's an added cost to this performance optimization.
- 098_[SAA_SOA] Direct Connect.txt:6: So what are the use cases for Direct Connect?
- 098_[SAA_SOA] Direct Connect.txt:41: Now, when you have a Direct Connect, there is no encryption.
- 098_[SAA_SOA] Direct Connect.txt:53: So in this use case, we have four connections across two locations, sorry, going into AWS.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:16: For example, we have an Amazon S3 bucket.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:23: You can also connect to a custom origin over the HTTP protocol, and it could be, for example, on the S3 website, you first must enable the bucket as a static S3 website, or it could be any public HTTP backend you want.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:24: For example, if you have a public load balancer, you can connect it directly into CloudFront.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:29: And when the client connects and does an HTTP request into your edge location, then the edge location will see if it has it in the cache.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:32: So if we have S3 as an origin, then if we look at the cloud, your S3 bucket is your origin in some region, and then you have edge locations all around the world, for example, at Los Angeles, and your users accessing the edge location in Los Angeles will get their content directly served through the edge location.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:35: So this is the same when we have a user in Sao Paulo, for example, in Brazil.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:23: But if you needed something such as, for example, edge key-value store or advanced DDoS protection or uptime SLA, or protection for WordPress, these kind of things, then one of these plans will be better for you.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:26: But to keep things simple, let's keep as a free because this is going to be enough for our use case.
- 103_[SAA_DVA_SOA] CloudFront - Geo Restriction.txt:5: So the use case for using geo restriction would be copyright laws to control access to content.
- 103_[SAA_DVA_SOA] CloudFront - Geo Restriction.txt:10: And now under security I have the CloudFront geographic restrictions that I can edit and I can have an allow list or block list and then select the countries that I need to block.
- 103_[SAA_DVA_SOA] CloudFront - Geo Restriction.txt:11: For example, I wanna block these two countries and then save my changes.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:4: So first, when we create a URL and a cookie, you need to attach a policy and you need to tell when does the URL or the cookie expire.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:8: Then you can ask me, "How long should this URL be valid for?" Well, if you're sharing a content, for example, a movie, or music, you can make it very short, a few minutes.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:19: And for example, we seen before that we can access our Amazon S3 bucket through OAC origin access control for maximum security.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:42: But if your users are using directly against S3 and you want to distribute a thousand S3 directly without using CloudFront, then pre-sign URL will be a great use case for it.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:14: For example, your EC2 instances to sign your URLs.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:24: Let's take the first website for example.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:44: And that this key group is what will be referenced by CloudFront to allow our users, our CE2 instances, for example, to create signed URLs.
- 106_[DVA] CloudFront - Field Level Encryption.txt:2: So this is to protect sensitive information through the application stack and this adds an additional level of security alongside using encryption in flight using HTTPS.
- 106_[DVA] CloudFront - Field Level Encryption.txt:5: Well, in the POST requests being made to Amazon CloudFront, then there will be a set of fields that we want to be encrypted up to 10 fields, for example, a credit card, and then we'll specify the public key to encrypt them with.
- 106_[DVA] CloudFront - Field Level Encryption.txt:9: So say, for example, that our user is sending us some credit card information, and this is the one in orange right now.
- 108_CloudFront - Other.txt:4: So say for example your EC2 instance does need this Authorization Header then you define a Cache Policy, and in this Cache Policy you're going to white list the Authorization Header.
- 108_CloudFront - Other.txt:5: Therefore, when the request comes in with the Authorization Header, it is going to be forwarded, back to the origin.
- 108_CloudFront - Other.txt:16: And then, there's going to be a filter on the origin, on your Application Balancer, for example.
- 109_WAF - Web Application Firewall.txt:3: So it's used to protect your web application at the layer seven so for HTTP and HTTPS kind of requests and it will protect you against common web exploits such as SQL injection, cross-site scripting or malicious bots.
- 109_WAF - Web Application Firewall.txt:5: It could be Amazon CloudFront, it could be the API Gateway to protect your REST APIs.
- 109_WAF - Web Application Firewall.txt:6: It could be your application load balancer, your AppSync for GraphQL APIs, your Cognito User Pool to protect the authentication endpoints, App Runner, Verified Access and Amplify.
- 109_WAF - Web Application Firewall.txt:12: You can also have rules to protect against common attacks such as SQL injection or cross-site scripting.
- 109_WAF - Web Application Firewall.txt:16: So rules action then based on with the rule defined can be to allow the request, to block it, to count the request, to just get metrics out of it, to have a CAPTCHA, to have the user complete the CAPTCHA before accessing a webpage or a challenge.
- 109_WAF - Web Application Firewall.txt:18: So when you create a Web ACL, and that's very important to know at the exam, it could be either regional or global.
- 109_WAF - Web Application Firewall.txt:20: Now, here's a use case.
- 109_WAF - Web Application Firewall.txt:21: We have a rate-based rule to block after 100 requests from the same IP address over a five minutes period because we consider that is too many requests after this.
- 109_WAF - Web Application Firewall.txt:24: And what's going to happen is that we can also generate a CloudWatch metric and a CloudWatch alarm to have these types of alerts when this happens.
- 109_WAF - Web Application Firewall.txt:25: You can have a geo match rule for example to only access certain countries to log in with your Cognito User Pool.
- 109_WAF - Web Application Firewall.txt:35: And then you have use-case specific rule groups such as for example, looking at SQL injection rule sets or we look at rules for Windows, rules for PHP, rule for WordPress and so on.
- 109_WAF - Web Application Firewall.txt:36: You can also have IP repetition rule group to block request based on specific sources, for example known malicious IP.
- 109_WAF - Web Application Firewall.txt:37: And also, you have the bot control manage rule group to block and manage requests from bots.
- 110_[SAA] Shield.txt:2: And Shield is a service to protect yourself from DDoS attacks.
- 110_[SAA] Shield.txt:17: And this Shield Advance has an automatic application layer, DDoS mitigation, and it's going to mean that it's automatically going to create and evaluate and deploy WAF rules to mitigate layer 7 attacks.
- 111_[SAA] AWS Firewall Manager.txt:13: And on top of it, if somehow in your organization, for example, you create a WAF rule for an Application Load Balancer, and somehow there's a new Application Load Balancer being created, then automatically the Firewall Manager is going to apply the same rule to this newly created ALB.
- 112_[SAA] WAF & Shield - Hands On.txt:8: So, let's go back to regional resource and then I'm going to say, this is going to go into say for example the Ireland region of Europe, and this is again my 'Demo Web ACL.
- 112_[SAA] WAF & Shield - Hands On.txt:10: So, we can associate resources with it, so which resources do we want to protect with this?
- 112_[SAA] WAF & Shield - Hands On.txt:11: So I don't have any ALB right now but this is where you would add AWS resources to it by just clicking on this button and finding the right resource to protect with your web ACL.
- 112_[SAA] WAF & Shield - Hands On.txt:18: And if you look at AWS, we can have, for example, a bot control rule to prevent bots from accessing our application.
- 112_[SAA] WAF & Shield - Hands On.txt:20: Or we can block for example, anonymous IPs, so let's add this one.
- 112_[SAA] WAF & Shield - Hands On.txt:21: Here, we're going to block IPs coming from VPNs, from proxies and so on.
- 112_[SAA] WAF & Shield - Hands On.txt:37: One per line inside your format, run what to block or what to allow in.
- 112_[SAA] WAF & Shield - Hands On.txt:48: And so this is WAF, let's apply to, for example the Ireland region.
- 113_WAF - Hands On.txt:5: An IP set is a set of IPs, and in this UI right now you have to select the region, so I will choose, for example, Frankfurt.
- 113_WAF - Hands On.txt:8: So it's either IPv4 or IPv6 formats and then you define a CIDR, so 10 0 0 0/32, or you can define your own IP, for example, 165 and 44 and 35 and 32/32 and maybe this is a whole CIDR here, so /24, whatever you want.
- 113_WAF - Hands On.txt:18: And the resource type we can attach it to is either a CloudFront distribution, in which case, well you define this in US East-1, otherwise it's for regional resources such as, your Application balancers, your AppsSync GraphQL API, your Amazon API Gateway REST APIs, or your Cognito user pools, whatever you want to protect.
- 113_WAF - Hands On.txt:19: So right now, I want to protect regional resources, so, here I choose the region.
- 113_WAF - Hands On.txt:20: And optionally, if you had created, for example an ALB, you could go ahead and add it directly from this UI or whatever you want to protect.
- 113_WAF - Hands On.txt:28: So, let's add a rule and we have two options, we can add managed rules, and this is where you can have AWS manage rules, and you can have a look at them, for example, bot control or for free rule groups.
- 113_WAF - Hands On.txt:30: And one of them, for example, is like Known bad inputs, or SQL database protection, but it says full on, so this is 200 credits that it costs you or how to protect a WordPress application and so on.
- 113_WAF - Hands On.txt:32: So, here we have three options, we can work with an IP set, in which case we can choose an IP set, for example, the one we've created, and say, okay for this IP set simply allow or block or count or have a CAPTCHA, to have like a challenge, or a challenge, either CAPTCHA or challenge.
- 113_WAF - Hands On.txt:34: So if you wanted to allow them, you could choose allow, if you want to block anything from this IP set, you could block them as well.
- 113_WAF - Hands On.txt:35: But what if you wanted to block anything but the IP set?
- 113_WAF - Hands On.txt:50: And it could be matching the statement and you have like, all the information such as, for example, the country or the cookies or the query parameters or the path, and the body, and the method, and so on.
- 113_WAF - Hands On.txt:59: And again you can add text transformations, for example, to modify the content before it is being evaluated for a SQL injection attack.
- 113_WAF - Hands On.txt:67: Then I want to block them maybe, or I want to allow them, it's up to you.
- 113_WAF - Hands On.txt:78: So first, if you did associate it with any resource but you didn't have to, you need to disassociate it from your Load Balancers, for example.
- 115_[SAA] DDoS Attack Protection.txt:4: It's fronted by a Elastic Load Balancer, and then your load balancer can be either exposed by a Global Accelerator as fixed IPs, or it could be fronted, for example, by CloudFronts.
- 115_[SAA] DDoS Attack Protection.txt:29: And then you can use WAF on top of CloudFront, or your application load balancers to filter and block requests based on request signatures, for example, you can block specific IPs, specific request types and so on.
- 115_[SAA] DDoS Attack Protection.txt:31: So you can use a bunch of managed rules on WAF to block IPs based on reputation or block anonymous IPs and so on.
- 115_[SAA] DDoS Attack Protection.txt:34: And of course using Shield Advanced, so in case you enable it, then it will automatically create WAF rules for you to mitigate layer seven attacks.
- 115_[SAA] DDoS Attack Protection.txt:35: So this is good for the application layer defense, again to protect your EC2 instances from getting any bad request or at least minimize them.
- 115_[SAA] DDoS Attack Protection.txt:41: Also, we can set up security groups and network ACLs to filter traffic based on specific IPs, and elastic IPs, if we use them, they can be protected by AWS Shield Advanced as well.
- 116_[SAA_DVA] API Gateway.txt:21: So lots of features that come with the API Gateway that are not necessarily included when you use something as simple as an application load balancer.
- 116_[SAA_DVA] API Gateway.txt:27: So it could be, for example, an HTTP API you have on premises, or it could be an application load balancer you have on your cloud environment.
- 116_[SAA_DVA] API Gateway.txt:32: So which ones, for example, where we can start a Step Function workflow, we can post a message to SQS directly from an API Gateway API.
- 116_[SAA_DVA] API Gateway.txt:42: Then Kinesis Data Stream from there, we can, for example, send the records into a Kinesis Data Firehose and eventually put them into an Amazon S3 bucket in the JSON format.
- 116_[SAA_DVA] API Gateway.txt:53: So this is when we don't want to use CloudFront Edge locations.
- 116_[SAA_DVA] API Gateway.txt:54: So it's when we expect all our users to be within the same region where we created our API Gateway.
- 116_[SAA_DVA] API Gateway.txt:64: So this is very helpful if you have internal applications, for example, running on EC2 instances, and they want to access an API on API Gateway, they can just use IAM roles.
- 116_[SAA_DVA] API Gateway.txt:65: If you wanted to have external users, for example, for mobile applications or web applications, then you would use something called Amazon Cognito.
- 117_[SAA_DVA] API Gateway - Hands On.txt:7: So when you build an API, a REST API you have several options.
- 117_[SAA_DVA] API Gateway - Hands On.txt:49: So for example, I can create a test event called DemoTest.
- 117_[SAA_DVA] API Gateway - Hands On.txt:57: Now for timeout, as you can see, even though a Lambda function can have a long timeout, for example, five minutes or 15 minutes, API Gateway has a limited timeout and the default is 29 seconds.
- 117_[SAA_DVA] API Gateway - Hands On.txt:82: On top of it from the test, we can have a look at the execution log from the API gateway, which is really nice, which is also when you wanna debug and see what's happening.
- 117_[SAA_DVA] API Gateway - Hands On.txt:93: So some information you have in here, for example, the resource which is slash, the path slash, the method which is GET, and then you get headers and then you get query string parameters and so on.
- 117_[SAA_DVA] API Gateway - Hands On.txt:127: And as you can see when I go to /dev, it says hello from Lambda.
- 118_API Gateway - Advanced.txt:10: For example, an account A with an EC2 instance in a private subnet.
- 119_[CCP_SOA] AWS Artifact.txt:10: For example, I can say, "Oh, I really want to get this report right now.
- 119_[CCP_SOA] AWS Artifact.txt:15: For example, three account agreements, and we don't have any organization agreements.
- 119_[CCP_SOA] AWS Artifact.txt:16: So I can take one of these agreement, for example, this one, the BAA agreement, accept the agreement, and then download it.
- 120_Route 53 - DNSSEC.txt:5: So for example say we have our web server, it's hosting the website we want, for example.com.
- 120_Route 53 - DNSSEC.txt:7: So the web browser of a client is going to ask the local DNS server for example.com.
- 120_Route 53 - DNSSEC.txt:10: So it's going to ask, for example.com and Route 53 is going to return well, it's the IP 9.10.11.12.
- 120_Route 53 - DNSSEC.txt:14: And this is because, to very much simplify it, the DNS works on the UDP protocol which makes it somewhat easy to hack and also when we don't have a DNSSEC there is no cryptographic DNS verification process.
- 120_Route 53 - DNSSEC.txt:20: It only works when the hosted zones are public, so for public domain names.
- 120_Route 53 - DNSSEC.txt:35: So when you enable Route 53 there's going to be some DNS signing in DNSSEC and so therefore you can verify cryptographically your records.
- 120_Route 53 - DNSSEC.txt:41: Then you lower the TTL for all your records to, for example, one hour and you lower the TTL of the SOA to, the SOA minimum, sorry, to five minutes.
- 120_Route 53 - DNSSEC.txt:54: So your registrar that needs to trust your child zone could be, for example, Route 53, or it could be a third party registrar.
- 120_Route 53 - DNSSEC.txt:62: So in a DNS way, when we, for example, query for a specific record, we're first going to go to the root DNS server which is going to point to the TLD DNS server's .com.
- 120_Route 53 - DNSSEC.txt:63: Then the registrar, for example, for example.com on Route 53, then the hosted zone, which contains the records.
- 120_Route 53 - DNSSEC.txt:70: And so that means that your client when it does its queries, is going to query every DNS server all at once.
- 121_[SAA_SOA] AWS Network Firewall.txt:4: We've seen AWS Shield and Shield Advance to protect against DDoS, and we've seen AWS Firewall Manager to manage them all, your rules for WAF and Shield and so on, across multiple accounts.
- 121_[SAA_SOA] AWS Network Firewall.txt:5: Okay, so we know about this, but what if we want to protect our entire VPC in a sophisticated way?
- 121_[SAA_SOA] AWS Network Firewall.txt:7: So this is used to protect your entire VPC with a firewall.
- 121_[SAA_SOA] AWS Network Firewall.txt:21: For example, we can disable the SMB protocol for outbound communication.
- 122_AWS Network Firewall - Advanced.txt:13: Then send it, for example, to an application balancer, which will forward it to your EC2 instances.
- 122_AWS Network Firewall - Advanced.txt:27: And from these findings we can trigger a step function to, for example, to check whether or not the IP that is attacking us is in a database.
- 122_AWS Network Firewall - Advanced.txt:32: So the idea is that, for example, users are sending encrypted packets to your network firewall, and then the network firewall itself is going to decrypt the TLS traffic, inspect and block any malicious content within, and then re-encrypt the traffic for the destination.
- 123_Amazon SES.txt:9: So the use cases for Amazon SES will be transactional emails, marketing email, and bulk emails communications.
- 123_Amazon SES.txt:14: So the first part of configuration sets, and the second part if you want to is IP pool management to use IP pools to send particular types of emails, therefore, for example, that you have one IP set for the transactional emails, and one IP set for your marketing emails, therefore creating two types of email reputations.
- 123_Amazon SES.txt:15: So Amazon and SES can have config sets, as I said, so when you send emails to users, then the analytics will be sent in real time or at least the data behind the analytics will be sent in near real time to Kinesis Data Firehose.
- 308_Web Application Firewall (WAF).txt:2: It's used to protect your web application from common web exploits at the Layer 7.
- 308_Web Application Firewall (WAF).txt:7: You remember the targets of WAF because the exam will try to trick you, and for example, make you deploy WAF on an NLB but this is not possible.
- 308_Web Application Firewall (WAF).txt:9: And so you can set a rule, for example, to filter based on IP addresses.
- 308_Web Application Firewall (WAF).txt:14: You can use URI strings to protect from the most common attacks, such as SQL injection and cross-site scripting.
- 308_Web Application Firewall (WAF).txt:15: You can have size constraints to make sure that the request are only up to, for example, two megabytes or geo match to allow or block specific countries.
- 308_Web Application Firewall (WAF).txt:16: And you can even have rate-based rules to count the occurrences of requests per IP for DDoS protection, for example, to prevent a specific IP from sending more than 10 requests per second.
- 308_Web Application Firewall (WAF).txt:20: So WAF has a really good use case.
- 309_Shield - DDoS Protection.txt:2: And Shield is a service to protect yourself from DDoS attacks.
- 309_Shield - DDoS Protection.txt:17: And this Shield Advance has an automatic application layer, DDoS mitigation, and it's going to mean that it's automatically going to create and evaluate and deploy WAF rules to mitigate layer 7 attacks.
- 310_Firewall Manager.txt:13: And on top of it, if somehow in your organization, for example, you create a WAF rule for an Application Load Balancer, and somehow there's a new Application Load Balancer being created, then automatically the Firewall Manager is going to apply the same rule to this newly created ALB.
- 311_WAF & Shield - Hands On.txt:8: So, let's go back to regional resource and then I'm going to say, this is going to go into say for example the Ireland region of Europe, and this is again my 'Demo Web ACL.
- 311_WAF & Shield - Hands On.txt:10: So, we can associate resources with it, so which resources do we want to protect with this?
- 311_WAF & Shield - Hands On.txt:11: So I don't have any ALB right now but this is where you would add AWS resources to it by just clicking on this button and finding the right resource to protect with your web ACL.
- 311_WAF & Shield - Hands On.txt:18: And if you look at AWS, we can have, for example, a bot control rule to prevent bots from accessing our application.
- 311_WAF & Shield - Hands On.txt:20: Or we can block for example, anonymous IPs, so let's add this one.
- 311_WAF & Shield - Hands On.txt:21: Here, we're going to block IPs coming from VPNs, from proxies and so on.
- 311_WAF & Shield - Hands On.txt:37: One per line inside your format, run what to block or what to allow in.
- 311_WAF & Shield - Hands On.txt:48: And so this is WAF, let's apply to, for example the Ireland region.
- 312_DDoS Protection Best Practices.txt:4: It's fronted by a Elastic Load Balancer, and then your load balancer can be either exposed by a Global Accelerator as fixed IPs, or it could be fronted, for example, by CloudFronts.
- 312_DDoS Protection Best Practices.txt:29: And then you can use WAF on top of CloudFront, or your application load balancers to filter and block requests based on request signatures, for example, you can block specific IPs, specific request types and so on.
- 312_DDoS Protection Best Practices.txt:31: So you can use a bunch of managed rules on WAF to block IPs based on reputation or block anonymous IPs and so on.
- 312_DDoS Protection Best Practices.txt:34: And of course using Shield Advanced, so in case you enable it, then it will automatically create WAF rules for you to mitigate layer seven attacks.
- 312_DDoS Protection Best Practices.txt:35: So this is good for the application layer defense, again to protect your EC2 instances from getting any bad request or at least minimize them.
- 312_DDoS Protection Best Practices.txt:41: Also, we can set up security groups and network ACLs to filter traffic based on specific IPs, and elastic IPs, if we use them, they can be protected by AWS Shield Advanced as well.

### Constraints / Limitations (Deduped)
- 031_DDoS and AWS Shield.txt:3: It's a way to basically shut down an instance by making it sure it cannot accept any new traffic effectively making it useless and so your users cannot access your application anymore.
- 031_DDoS and AWS Shield.txt:6: And so your normal users cannot access your application server because it does not respond anymore to normal requests.
- 031_DDoS and AWS Shield.txt:13: DNS flood attack, where we overwhelm a DNS so that users cannot query our DNS service and then can't find our website, which is bad.
- 031_DDoS and AWS Shield.txt:50: So it's very important for you to understand the difference between these two and understand which one to use in the exam.
- 032_AWS WAF - Web Application Firewall.txt:21: So something super important for you to know is that WAF has managed rules, and you need to know it for the exam.
- 032_AWS WAF - Web Application Firewall.txt:22: So there are over 190 managed rules, and I'll give you some of the most important.
- 032_AWS WAF - Web Application Firewall.txt:30: So for example, you have a malicious IP, and there is this very important rule called the Managed Rules Amazon IP Reputation List, which is a list of all the IPs that are trusted by AWS, and those that are not trusted by AWS.
- 032_AWS WAF - Web Application Firewall.txt:40: Or if you want to have more control, well you can send it directly from WAF to Kinesis Data Firehose, in which case you are only limited by the Firehose quotas.
- 032_AWS WAF - Web Application Firewall.txt:45: So let's say we have CloudFront in front of an application balancer talking to EC2 instances, and we want to make sure that only the traffic coming from Amazon CloudFront is allowed into the application balancer, and not, for example, site traffic.
- 032_AWS WAF - Web Application Firewall.txt:55: Of course they don't know about the fact you're using custom HTP headers because they're hidden from the users, therefore they cannot access the ALB because they will be blocked by WAF directly on top of it.
- 033_AWS Firewall Manager.txt:22: And if you're prone to frequent DDoS attacks, then you should definitely consider purchasing Shield Advanced.
- 034_Blocking an IP Address.txt:6: And here you have no deny rules, but you can only have allow rules, so if you know in advance the IP of your clients, you can specifically only allow your clients to get to your EC2 instance.
- 034_Blocking an IP Address.txt:15: And so your EC2 instance has a private IP, and so you need to have a security group around the EC2 instance that will allow only connections from your Application Load Balancer.
- 034_Blocking an IP Address.txt:21: So all of this shouldn't be new and should be mastered by now.
- 034_Blocking an IP Address.txt:34: And so therefore you must set up security at the ALB level with your Security Group so that you allow all the CloudFront public IPs into your infrastructure only.
- 093_[SAA_SOA] NACL & Security Groups.txt:59: So the default NACL is super important because it can come up in the exam.
- 093_[SAA_SOA] NACL & Security Groups.txt:70: Okay, so now let's go into the important concept of Ephemeral Ports.
- 093_[SAA_SOA] NACL & Security Groups.txt:71: So when you have a client and a server connecting together, they must use port.
- 093_[SAA_SOA] NACL & Security Groups.txt:92: Well, because they're very important in terms of NACLs.
- 093_[SAA_SOA] NACL & Security Groups.txt:104: And so therefore, the DB NACL must allow outbound TCP on ports and, on ephemeral port, so, maybe from 1024 to 65,535 to web subnet CIDR, and then the web NACL also needs to allow inbound TCP on this range of ephemeral ports from the DB subnet CIDR.
- 093_[SAA_SOA] NACL & Security Groups.txt:105: And this is why ephemeral ports are super important to configure well.
- 093_[SAA_SOA] NACL & Security Groups.txt:108: So it's super important for you to realize that, if you add subnets into a NACL, you need to also update all the NACL rules to make sure that the combination of connections is possible.
- 093_[SAA_SOA] NACL & Security Groups.txt:111: The security group supports allow rules only, whereas NACL supports allow and deny rules, this is why you can deny a specific IP address in a NACL.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:6: So, it's very important to notice this.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:24: So, this should work right now, so let's try it.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:27: So, right now we only have 4 22.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:50: So, as we can see, this shows the very important aspects around the rule numbers.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:54: The inbound rule is going to allow my traffic, but the outbound rule shouldn't.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:56: So, what's really important to notice is that this is true, regardless of if the security group of my EC2 instance did, in fact, allow port 80 in, okay.
- 094_[SAA_SOA] NACL & Security Groups - Hands On.txt:76: So, it's very important for you to notice the difference between EC2 security groups and network ACL's.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:4: So it looks like from this we have used a prefix destination so that the only amount authorized is to S3.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:14: So it's a set of CIDR for AWS services, but you can't create, modify, share, or delete them.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:15: You can only use them.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:16: And some of the services that may be important that you can already reference using this managed prefix list are Amazon S3, Amazon CloudFront, DynamoDB, and Ground Station, and they may be others, but those are the most important.
- 096_Security Groups - Extras.txt:9: So this connection will only close when it times out.
- 097_[SAA_SOA] AWS Transit Gateway.txt:15: Well, you need to create route tables for your transit gateway to limit which VPC can talk to another, which connection have access to each other and so on.
- 097_[SAA_SOA] AWS Transit Gateway.txt:17: So, as I said, it works with direct connect gateway and VPN connections, and it is the only service in AWS that supports IP multicast, so if you see IP multicast at the exam, just know that it is transit gateway you have to use.
- 097_[SAA_SOA] AWS Transit Gateway.txt:27: And so, when you have four tunnels of site-to-site VPN, you are increasing the throughput of your connection which is something you cannot do if you were to connect your corporate data center directly into a VPC.
- 097_[SAA_SOA] AWS Transit Gateway.txt:28: So, if you do a VPN to a virtual private gateway, you get one tunnel, in fact one connection into one VPC, and this connection gives you 1.25 Gbps as the maximum throughput, and you are limited.
- 098_[SAA_SOA] Direct Connect.txt:25: For this, you must use a Direct Connect gateway.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:23: You can also connect to a custom origin over the HTTP protocol, and it could be, for example, on the S3 website, you first must enable the bucket as a static S3 website, or it could be any public HTTP backend you want.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:42: So this is amazing if you have static content that must be able to be available everywhere around the world.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:44: It must be set up for each region you want replication to happen.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:47: And it is only for read only.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:28: And here we have only the option to use a single site or app.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:33: And the VPC origin, if you want to connect directly to a private EC2 instance or an application of balancer that are deployed privately, this is only available in the business plan.
- 102_[SAA_DVA_SOA] CloudFront - ALB_EC2 as an Origin.txt:19: So it would be public, but only restricted to the edge locations.
- 102_[SAA_DVA_SOA] CloudFront - ALB_EC2 as an Origin.txt:20: And the same goes for if you had an application load balancer, again, it should have been public, but your EC2 instances could have been private.
- 102_[SAA_DVA_SOA] CloudFront - ALB_EC2 as an Origin.txt:22: And again, you must make sure that your ALB has a security group that allows all the public IPs coming from CloudFront.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:6: So if you know the target IP of your clients, then you should definitely use that.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:8: Then you can ask me, "How long should this URL be valid for?" Well, if you're sharing a content, for example, a movie, or music, you can make it very short, a few minutes.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:20: And so that means that the objects in our S3 buckets cannot be accessed by anything else, but CloudFront.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:26: But you may be asking yourself, should I use a CloudFront signed URL or an S3 pre-signed URL?
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:30: It's an account wide key-pair, so only the root can manage it.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:38: It has a limited lifetime.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:41: You have to use a signed URL because you cannot access your S3 bucket as you should because there is a bucket policy restricting it to the OAI.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:7: But for this, to manage this key pair, we need to use the root account credentials as well as the AWS console, which is not recommended because you shouldn't use the root account for this.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:8: And also you cannot automate anything because there are no APIs to manage this platform key pair.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:26: This is very important.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:59: But this is not as secure, and this can only be done by the root account.
- 106_[DVA] CloudFront - Field Level Encryption.txt:3: So the idea is that anytime sensitive information is sent by the user, the edge location is going to encrypt it and it will only be able to be decrypted if someone has access to a private key, and therefore this will be using asymmetric encryption.
- 106_[DVA] CloudFront - Field Level Encryption.txt:14: Only the web server will need to have some custom application logic to decrypt that field.
- 107_CloudFront - Origin Access Control and Origin Access Identity (OAC & OAI).txt:6: So, Origin Access Identity does not support SSE-KMS natively, it only supports SSE-S3, and this is why OAC got released.
- 108_CloudFront - Other.txt:10: And second, you will configure the ALB to only forward request and to respond to request that contain this custom HTTP Header.
- 108_CloudFront - Other.txt:11: Now the value of this custom HTTP Header must remain secret, and can rotate over time.
- 108_CloudFront - Other.txt:20: And as an extra security mechanism, you can also decide to leverage the CloudFront prefixes of public IP addresses, to have rules in your security group attached to your Application Balancer, to guarantee that, the request only are coming from CloudFront.
- 108_CloudFront - Other.txt:29: So very important here, the one thing we are using, is the Cognito hosted UI to create and generate this JWT Token and then we're using Lambda@Edge to verify the validity of this token.
- 109_WAF - Web Application Firewall.txt:7: Now, you should know that even though WAF is for protecting your web application, it's not for DDoS protection.
- 109_WAF - Web Application Firewall.txt:8: So you can get protection at the layer seven, yes, but for layer three or layer four DDoS protection, WAF is useless and so therefore you should use AWS Shield instead.
- 109_WAF - Web Application Firewall.txt:10: So web ACL means Web Access Control List and you should know how they work.
- 109_WAF - Web Application Firewall.txt:18: So when you create a Web ACL, and that's very important to know at the exam, it could be either regional or global.
- 109_WAF - Web Application Firewall.txt:19: So if you have a global type of web SCL, it can only be used for global resources such as CloudFront and if you have a regional type of web ACL, you can use it for any different types of regional resources such as ALB, Cognito or API Gateway as long as of course they are in the same region.
- 109_WAF - Web Application Firewall.txt:25: You can have a geo match rule for example to only access certain countries to log in with your Cognito User Pool.
- 109_WAF - Web Application Firewall.txt:27: Or you can have a match rule to allow only requests from a specific certain type of devices or browser using the User-Agent HTTP header.
- 109_WAF - Web Application Firewall.txt:28: The pricing for WAF is important to know, so it's $5 per month for your web ACL.
- 109_WAF - Web Application Firewall.txt:38: Also important to know there's a way to do logging on your web ACL.
- 110_[SAA] Shield.txt:7: And this way your infrastructure cannot serve your real users and this is what it's called a distributed denial of service.
- 111_[SAA] AWS Firewall Manager.txt:22: And if you're prone to frequent DDoS attacks, then you should definitely consider purchasing Shield Advanced.
- 112_[SAA] WAF & Shield - Hands On.txt:6: So we'll give it a name, 'Demo Web ACL', and then whether or not it's for a regional resource, such as your ALB, API gateway or others, or if it's a CloudFront distribution, in which case it is going to be global for CloudFront and only in U.S.
- 112_[SAA] WAF & Shield - Hands On.txt:19: Or we can have a look at the Amazon IP reputation list to only have access to IP that are reputable into our application.
- 113_WAF - Hands On.txt:25: And the idea is that you cannot exceed 5,500 units in this.
- 113_WAF - Hands On.txt:26: This is because otherwise it requests, it requests too much processing power and cannot go through all the rules in enough time to actually serve the request.
- 113_WAF - Hands On.txt:42: The IP address to use as the originating address is best practice to put it as a source IP address.
- 113_WAF - Hands On.txt:47: And the next rule maybe a rate limiting, so rate limiting, and we create a rate based rule.
- 113_WAF - Hands On.txt:48: And this time we're saying, "Hey, I want a single IP address to be allowed 100 requests within a five minute period, and if it's going to reach this limit then it's going to be blocked but after five minutes it will be unblocked." So you can set between anything from 100 to 20 million, but we'll use 100.
- 113_WAF - Hands On.txt:51: So you can say, "Hey, you can read all you want, but you can post only a 100 times every five minutes." This is the kind of things that you would have in this statement.
- 113_WAF - Hands On.txt:52: But we'll consider all requests, and we're saying, "Okay, hey, do this and then block." But you can also say, "Okay, let's make sure it's not a bot, so we can instead we can do a CAPTCHA or a challenge, but we'll do the block." So now we're saying we'll block anything by this IP set, and by the way, they cannot do more than 100 requests in a five minute period.
- 113_WAF - Hands On.txt:61: Maybe continue to inspect the content within the size limitation, and that's a good, that's a good start or a match or no match if you wanted to just, wanted to get a result right away.
- 115_[SAA] DDoS Attack Protection.txt:1: So here is a lecture that is more focused on the solution architecture, and this is around DDoS protection and best practices.
- 115_[SAA] DDoS Attack Protection.txt:9: Obviously there are more than one, but the idea's that we're going to discuss thanks to the letter BP1, best practice one, best practice two, et cetera, what the implications are in terms of DDoS resiliency, okay?
- 115_[SAA] DDoS Attack Protection.txt:19: Next, we can have the best practices for DDoS mitigation.
- 115_[SAA] DDoS Attack Protection.txt:46: And if you set up the API gateway correctly, you can have burst limits, you can do headers filtering, and you can use and force API keys for your users, therefore protecting yourself from a DDoS attack.
- 116_[SAA_DVA] API Gateway.txt:29: Well, you would use an API Gateway to leverage the rate limiting features, the caching, the user authentication, the API keys, et cetera.
- 116_[SAA_DVA] API Gateway.txt:51: Your API Gateway is still only in one region where you created it, but it's accessible efficiently from every CloudFormation Edge location.
- 116_[SAA_DVA] API Gateway.txt:58: So a private API Gateway can only be accessed from within your VPC.
- 116_[SAA_DVA] API Gateway.txt:69: And so that certificate, if you're using an Edge-Optimized endpoint must be in us-east-1 but if you're using a regional endpoint then that certificate may be in the same region as the API Gateway stage.
- 116_[SAA_DVA] API Gateway.txt:70: Finally, you must set up, of course, a CNAME or an A-alias record in Route 53 to point to your domain and API Gateway.
- 117_[SAA_DVA] API Gateway - Hands On.txt:3: So we have HTTP, APIs, we have WebSocket API, REST API, which are public or private, and so as such, we will only deal with a REST API for now.
- 117_[SAA_DVA] API Gateway - Hands On.txt:36: And then the framework I'll use at the runtime is going to be Python 3.11 but whatever Python 3 or Python should work.
- 117_[SAA_DVA] API Gateway - Hands On.txt:57: Now for timeout, as you can see, even though a Lambda function can have a long timeout, for example, five minutes or 15 minutes, API Gateway has a limited timeout and the default is 29 seconds.
- 117_[SAA_DVA] API Gateway - Hands On.txt:88: So if we go to the CloudWatch logs we should be able to find it.
- 118_API Gateway - Advanced.txt:7: The second way of course as I told you, is that if you have a private API then you must use a VPC interface endpoint to access it.
- 118_API Gateway - Advanced.txt:8: You can not access it without a VPC interface endpoint and here using a resource policy we can define that the private API must only be accessed through a specific VPC interface endpoint.
- 118_API Gateway - Advanced.txt:17: So that we're saying, Hey, the only way to access it is through the VPC endpoint that is deployed in account A.
- 118_API Gateway - Advanced.txt:18: Therefore we can deploy a private API in account B and then thanks to the resource policy, only guarantee that the account A through the VPC endpoint of account A can access it.
- 118_API Gateway - Advanced.txt:22: So you have account limits and the idea is that the API Gateway is going to throttle your request at 10,000 request per second across all your API's.
- 118_API Gateway - Advanced.txt:23: You can increase these sub limits upon request but in case you see some throttling, you're going to get a retriable error of HTP code 429 called; too many requests.
- 118_API Gateway - Advanced.txt:24: You can also decide to set stage limits and method limits to improve the performance and spread out the request across all your API's.
- 118_API Gateway - Advanced.txt:26: Just remember, that one API Gateway that is overloaded and not limited can cause all the other API's deployed within the API Gateway to be throttled.
- 120_Route 53 - DNSSEC.txt:20: It only works when the hosted zones are public, so for public domain names.
- 120_Route 53 - DNSSEC.txt:29: And the first one is managed by you and you must remember it.
- 120_Route 53 - DNSSEC.txt:32: And you must know which one is yours.
- 120_Route 53 - DNSSEC.txt:51: So it's very important.
- 120_Route 53 - DNSSEC.txt:52: The parent zone must have a record to trust the child zone.
- 120_Route 53 - DNSSEC.txt:65: So the chain of trust can only work if all of these DNS servers along the way are DNSSEC aware.
- 121_[SAA_SOA] AWS Network Firewall.txt:23: So we say, hey, you only allow outbound traffic from our VPC into our mycorp domain or any third party software repository that we only allow.
- 122_AWS Network Firewall - Advanced.txt:28: And if it is not, then block the traffic by making an API call into network firewall so that we know that we should add this IP to the rule group and therefore effectively block this IP from our network.
- 308_Web Application Firewall (WAF).txt:6: So remember, this is very important.
- 308_Web Application Firewall (WAF).txt:15: You can have size constraints to make sure that the request are only up to, for example, two megabytes or geo match to allow or block specific countries.
- 309_Shield - DDoS Protection.txt:7: And this way your infrastructure cannot serve your real users and this is what it's called a distributed denial of service.
- 310_Firewall Manager.txt:22: And if you're prone to frequent DDoS attacks, then you should definitely consider purchasing Shield Advanced.
- 311_WAF & Shield - Hands On.txt:6: So we'll give it a name, 'Demo Web ACL', and then whether or not it's for a regional resource, such as your ALB, API gateway or others, or if it's a CloudFront distribution, in which case it is going to be global for CloudFront and only in U.S.
- 311_WAF & Shield - Hands On.txt:19: Or we can have a look at the Amazon IP reputation list to only have access to IP that are reputable into our application.
- 312_DDoS Protection Best Practices.txt:1: So here is a lecture that is more focused on the solution architecture, and this is around DDoS protection and best practices.
- 312_DDoS Protection Best Practices.txt:9: Obviously there are more than one, but the idea's that we're going to discuss thanks to the letter BP1, best practice one, best practice two, et cetera, what the implications are in terms of DDoS resiliency, okay?
- 312_DDoS Protection Best Practices.txt:19: Next, we can have the best practices for DDoS mitigation.
- 312_DDoS Protection Best Practices.txt:46: And if you set up the API gateway correctly, you can have burst limits, you can do headers filtering, and you can use and force API keys for your users, therefore protecting yourself from a DDoS attack.

### Patterns / Architectures (Deduped)
- 031_DDoS and AWS Shield.txt:21: Well, first for DDoS, there is AWS Shield Standard, and it's to protect against DDoS attacks for your websites, applications, for all customers at no additional cost.
- 031_DDoS and AWS Shield.txt:22: So by using AWS, you are somewhat protected, thanks to Shield Standard enabled by default against some DDoS attacks.
- 031_DDoS and AWS Shield.txt:23: Then you have Shield Advanced, which gives you 24/7 premium DDoS protection and we'll see in details what that means in the next slide.
- 031_DDoS and AWS Shield.txt:24: You have WAF or Web Application Firewall, and this is not specifically for DDoS but it can help you filter specific requests based on rules.
- 031_DDoS and AWS Shield.txt:26: So WAF is more against application level protections but it can still help you filter some specific requests based on rules and helps you survive a DDoS attack.
- 031_DDoS and AWS Shield.txt:27: We have CloudFront and Route 53 which by default have Shield enabled and they will give you availability protection by using a global edge network.
- 031_DDoS and AWS Shield.txt:28: So attacking CloudFront and Route 53 is a lot of work.
- 031_DDoS and AWS Shield.txt:29: And combined with Shield, it provides DDoS attack mitigation directly at the edge of your network.
- 031_DDoS and AWS Shield.txt:34: And then finally, it's a very good idea to separate static resources and distribute them through S3 in CloudFront which is visually very very safe and stable from a DDoS, from dynamic request which are going to be usually smaller requests and that you can handle for your REST API on EC2 and ALB.
- 031_DDoS and AWS Shield.txt:36: Okay, so as a sample architecture to protect yourself against DDoS, you have the DNS service Route 53 that is protected by Shield by default.
- 031_DDoS and AWS Shield.txt:37: Then you have your application distributed by CloudFront where Shield is again enabled by default and you can set up a Web Application Firewall on your CloudFront distribution to protect yourself.
- 031_DDoS and AWS Shield.txt:38: Finally, if the traffic does make it through, then on your load balancer you also have Shield.
- 031_DDoS and AWS Shield.txt:40: Now let's get into Shield.
- 031_DDoS and AWS Shield.txt:41: So Shield has two level of service.
- 031_DDoS and AWS Shield.txt:42: Shield Standard is free and it's activated for every customer and ON by default.
- 031_DDoS and AWS Shield.txt:45: Shield Advanced is for more enterprise customers.
- 031_DDoS and AWS Shield.txt:47: It's going to cost you $3,000 per month per organization and you're going to be protected against more sophisticated attacks on your EC2 instance, ELB, CloudFront, AWS Global Accelerator and Route 53.
- 031_DDoS and AWS Shield.txt:49: And on top of it, if you incur higher fees because you are scaled up with Auto Scaling because you have more requests going into your network, more bandwidth, then you are protected against these higher fees, thanks to the Shield Advanced sort of insurance that you took.
- 032_AWS WAF - Web Application Firewall.txt:1: Next we have WAF, the Web Application Firewall, which allows you to protect your web applications from common web exploits at the layer seven.
- 032_AWS WAF - Web Application Firewall.txt:5: You can deploy it on CloudFront.
- 032_AWS WAF - Web Application Firewall.txt:6: And these rules are going to be running globally on all edge locations where CloudFront is, and this could be used for example, if you wanted to have a web application firewall for your classic load balancer, your EC2 instances, custom origins, or S3 websites, you would have CloudFront then deploy WAF on CloudFront.
- 032_AWS WAF - Web Application Firewall.txt:8: So remember that WAF is not used for DDoS protection.
- 032_AWS WAF - Web Application Firewall.txt:9: For this we have SHIELD.
- 032_AWS WAF - Web Application Firewall.txt:10: WAF is used for layer seven type of exploits.
- 032_AWS WAF - Web Application Firewall.txt:21: So something super important for you to know is that WAF has managed rules, and you need to know it for the exam.
- 032_AWS WAF - Web Application Firewall.txt:23: They are ready to use manage rules that will be from AWS, or the marketplace sellers, and they'll allow you to just power up WAF very quickly.
- 032_AWS WAF - Web Application Firewall.txt:37: Okay, so what about logging for WAF?
- 032_AWS WAF - Web Application Firewall.txt:39: So while WAF can send logs to Amazon CloudWatch log groups, and you get a debit of five megabytes per second maximum, you can also send it to Amazon S3 bucket, and the logs will be sent every five minutes.
- 032_AWS WAF - Web Application Firewall.txt:40: Or if you want to have more control, well you can send it directly from WAF to Kinesis Data Firehose, in which case you are only limited by the Firehose quotas.
- 032_AWS WAF - Web Application Firewall.txt:44: So using WAF, there is a solution architecture, you know, which is to enhance CloudFront Origin Security.
- 032_AWS WAF - Web Application Firewall.txt:45: So let's say we have CloudFront in front of an application balancer talking to EC2 instances, and we want to make sure that only the traffic coming from Amazon CloudFront is allowed into the application balancer, and not, for example, site traffic.
- 032_AWS WAF - Web Application Firewall.txt:48: Well, using WAF, we can already set up some web ACLs on the CloudFront level.
- 032_AWS WAF - Web Application Firewall.txt:50: Okay, next, what's going to happen is that on Amazon CloudFront, you can create what's called a custom HTP header.
- 032_AWS WAF - Web Application Firewall.txt:52: And so this will be added to every request that goes through Amazon CloudFront.
- 032_AWS WAF - Web Application Firewall.txt:53: The result of which is that we can also set up WAF on the application load balancer, and we create a filtering rule that says that any traffic that has this header, the X Origin verify and the value will be allowed and anything else will be rejected.
- 032_AWS WAF - Web Application Firewall.txt:55: Of course they don't know about the fact you're using custom HTP headers because they're hidden from the users, therefore they cannot access the ALB because they will be blocked by WAF directly on top of it.
- 032_AWS WAF - Web Application Firewall.txt:58: And the Lambda function will update once in a while, the custom HTP header value with a new value in CloudFront, and of course update the filtering rule in AWS WAF.
- 033_AWS Firewall Manager.txt:1: So now let's talk about the AWS Firewall Manager.
- 033_AWS Firewall Manager.txt:2: So this is a service to manage all the firewall rules in all accounts of an AWS organization.
- 033_AWS Firewall Manager.txt:5: And so this could be Web Application Firewall rules, so they apply it to the ALB, the API gateways, CloudFronts and so on.
- 033_AWS Firewall Manager.txt:6: Or it could be Shield Advanced rules, so for your ALB, CLB, NLB, the Elastic IP, and CloudFront.
- 033_AWS Firewall Manager.txt:8: And it could be, as well, rules for your AWS Network Firewall at the VPC level.
- 033_AWS Firewall Manager.txt:10: So the idea is that Firewall Manager allows you to manage all your firewalls in one place.
- 033_AWS Firewall Manager.txt:12: And then they are applied to all the accounts of your organization.
- 033_AWS Firewall Manager.txt:13: And on top of it, if somehow in your organization, for example, you create a WAF rule for an Application Load Balancer, and somehow there's a new Application Load Balancer being created, then automatically the Firewall Manager is going to apply the same rule to this newly created ALB.
- 033_AWS Firewall Manager.txt:14: That's a feature of Firewall Manager.
- 033_AWS Firewall Manager.txt:15: So you may ask yourself, "Well, what is the difference between WAF and Firewall Manager and Shield?" Well, WAF, Shield, and Firewall Manager are used together for comprehensive protection of your accounts.
- 033_AWS Firewall Manager.txt:16: So first you define your Web ACL rules in WAF.
- 033_AWS Firewall Manager.txt:17: And in case you need one-time protection, then WAF is going to be the right choice for you.
- 033_AWS Firewall Manager.txt:18: But if you want to use WAF across multiple accounts and accelerate WAF configuration and automate the protection of new resources, then you would manage your WAF rules within Firewall Manager.
- 033_AWS Firewall Manager.txt:19: And Firewall Manager will just apply all these rules to all your accounts and all your resources automatically.
- 033_AWS Firewall Manager.txt:20: So now we also have Shield Advanced to help you get protected against DDoS attacks.
- 033_AWS Firewall Manager.txt:21: And it has additional features on top of WAF such as a dedicated support from the Shield Response Team, SRT, advanced reporting, and also, it can automatically create WAF rules for you.
- 033_AWS Firewall Manager.txt:22: And if you're prone to frequent DDoS attacks, then you should definitely consider purchasing Shield Advanced.
- 033_AWS Firewall Manager.txt:23: And so Firewall Manager can also help you deploy Shield Advanced across all your accounts So hopefully the distinction is pretty clear for you now.
- 034_Blocking an IP Address.txt:2: So say for example, we have the architecture of an EC2 instance in a public subnet and a client wants to access it.
- 034_Blocking an IP Address.txt:25: So you can pair it with WAF, the Web Application Firewall from AWS.
- 034_Blocking an IP Address.txt:26: And this allows you, for example, to set IP address filtering from within WAF.
- 034_Blocking an IP Address.txt:27: So obviously, now this has a cost because you have a firewall set up at the Application Load Balancer level, but WAF has more than just the IP address filtering feature.
- 034_Blocking an IP Address.txt:29: Another place where you can apply AWS WAF is around CloudFronts.
- 034_Blocking an IP Address.txt:30: So CloudFronts can be set up, for example, on a public infrastructure, for example, using an Application Load Balancer in public mode.
- 034_Blocking an IP Address.txt:31: And so what's happening is that CloudFront will send traffic directly from all the edge locations with the public IPs of them directly into your Application Load Balancer.
- 034_Blocking an IP Address.txt:33: CloudFront does.
- 034_Blocking an IP Address.txt:34: And so therefore you must set up security at the ALB level with your Security Group so that you allow all the CloudFront public IPs into your infrastructure only.
- 034_Blocking an IP Address.txt:36: Another line of defense, is again to use WAF and all its features to have a firewall at the CloudFront level and, for example, implement IP address filtering.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:11: So these customer manage prefix lists are a set of CIDR that you define and that you manage yourself, and they can be shared with other accounts or within your organization.
- 095_Security Groups Outbound Rules & Managed Prefixes.txt:16: And some of the services that may be important that you can already reference using this managed prefix list are Amazon S3, Amazon CloudFront, DynamoDB, and Ground Station, and they may be others, but those are the most important.
- 097_[SAA_SOA] AWS Transit Gateway.txt:42: So all these sort of architectures can come up in the exam so make sure you're familiar with understanding how they work, and that's it for me, I will see you in the next lecture.
- 098_[SAA_SOA] Direct Connect.txt:47: So we have two modes of resiliency and architectures and you need to know them both because they will be coming up at the exam.
- 099_[SAA_SOA] Direct Connect + S2S VPN.txt:1: Hi, so a very short lecture on an architecture that can come up in the exam.
- 099_[SAA_SOA] Direct Connect + S2S VPN.txt:6: So this is an architecture that can come up in the exam and I just wanted to show it to you once, so that you know what to expect.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:1: Now let's talk about CloudFront.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:2: CloudFront is a content delivery network or CDN.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:3: So anytime you see CDN in the exam, think CloudFront.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:6: CloudFront is made of hundreds of points of presence globally and that includes edge locations and caches across the world.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:9: We'll see this later on in this course, and the idea is that CloudFront, because your application is worldwide, then you're protected against these attacks also using something called Shield and Web Application Firewall that we will be seeing in the security section.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:12: Then what the user will do is that it will request the content from an American edge location using CloudFront and CloudFront will be able to fetch the content from Australia.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:15: CloudFront has several origins, which are basically backends that you want CloudFront to connect to.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:18: Or to upload files directly into Amazon S3 through Amazon CloudFront.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:19: And the access between CloudFront and Amazon S3 is secured using something called origin access control or OAC.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:20: You can also connect CloudFront to anything within your VPC.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:24: For example, if you have a public load balancer, you can connect it directly into CloudFront.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:25: So at a high level, how does CloudFront work?
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:37: So using CloudFront and the edge locations, we can see that the content of our S3 bucket in one region can be distributed all around the world through the edge locations or points of presence.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:38: So one question that's common is what is the difference between CloudFront and something like S3 replication?
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:39: Well, if you have CloudFront, you're using the Global Edge network.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:50: CloudFront is a CDN, which is to cache content all around the world, whereas S3 cross region replication is to really replicate an entire bucket into another region.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:51: So hopefully that makes sense about CloudFront.
- 100_[CCP_SAA_DVA_SOA] CloudFront Overview.txt:52: In the next lecture we'll have a play and see how we can set up a CloudFront distribution on the CloudFront and S3 buckets.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:1: So let's go and practice using CloudFront, but first we have to create an S3 bucket to hold our files for our distribution.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:2: So let's create a bucket, and I'll call this one demo-CloudFront-Stephan-v4, and it will scroll down, leave everything as the default and click on Create Bucket.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:14: So let's see how we can instead use CloudFront to make these files accessible without making them public.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:15: So let's open up the CloudFront console.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:17: So let's go ahead and create a CloudFront distribution.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:19: So now there are several plans for CloudFront, and as you can see, they have different features.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:22: So all of this is enough for us for what we need for CloudFront.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:27: So this one is going to be called demo new CloudFront.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:34: But still an option of what CloudFront can do.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:37: And we'll use a demo CloudFront stephane v4.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:39: Next we're going to allow private S3 bucket access to CloudFront.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:52: Now if I go into S3 and look at the permissions and I look at my bucket policy, I can see that now in my bucket policy, I have a bucket policy allowing access to my bucket from our CloudFront distribution.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:54: As we can see, this allows our CloudFront distribution to privately access our S3 buckets.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:64: So even though all my bucket objects are private, now because we have this bucket policy allowing access from CloudFront, I'm able through CloudFront, to see all that I need to see.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:68: And that is the benefit of CloudFront.
- 101_[CCP_SAA_DVA_SOA] CloudFront Hands On.txt:70: We've created a CloudFront distribution within the free plan, and we set up S3 as an origin and we saw the bucket policy.
- 102_[SAA_DVA_SOA] CloudFront - ALB_EC2 as an Origin.txt:1: So how can we connect CloudFront to an application load balancer or an EC2 instance as an origin?
- 102_[SAA_DVA_SOA] CloudFront - ALB_EC2 as an Origin.txt:9: Well, we're going to create a CloudFront distribution, which has a bunch of edge locations, and our users are going to access CloudFront this way.
- 102_[SAA_DVA_SOA] CloudFront - ALB_EC2 as an Origin.txt:10: But then from CloudFront, we're going to create a VPC origin and connect this VPC origin to our backend.
- 102_[SAA_DVA_SOA] CloudFront - ALB_EC2 as an Origin.txt:12: And then CloudFront will do the link through the VPC origin to direct traffic to your private subnets and applications.
- 102_[SAA_DVA_SOA] CloudFront - ALB_EC2 as an Origin.txt:13: And from a network perspective, this is one of the most secure way of doing your setup because, well, your applications are still hosted privately, internally, and then you choose what to expose through CloudFront, which is very handy.
- 102_[SAA_DVA_SOA] CloudFront - ALB_EC2 as an Origin.txt:18: And you use this link to find the list of all the CloudFront IPs and you would make sure to change the security group to allow all these public IPs of the edge location into your EC2 instance.
- 102_[SAA_DVA_SOA] CloudFront - ALB_EC2 as an Origin.txt:22: And again, you must make sure that your ALB has a security group that allows all the public IPs coming from CloudFront.
- 102_[SAA_DVA_SOA] CloudFront - ALB_EC2 as an Origin.txt:24: And on top of it, well, there is a risk that if someone changes the security group of your ALB or your EC2 instance, then your instance is public to more than just your CloudFront distribution.
- 103_[SAA_DVA_SOA] CloudFront - Geo Restriction.txt:1: Just a short lecture around CloudFront geo restriction.
- 103_[SAA_DVA_SOA] CloudFront - Geo Restriction.txt:10: And now under security I have the CloudFront geographic restrictions that I can edit and I can have an allow list or block list and then select the countries that I need to block.
- 103_[SAA_DVA_SOA] CloudFront - Geo Restriction.txt:12: I expect over time that CloudFront will have the correct options under security, under the free plan.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:1: So say you have a CloudFront distribution and you wanna make it private and you want to give access to people to premium paid shared content all over the world.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:2: But you want to be able to see and know who has access to what on your CloudFront distribution.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:3: For this, you can use a CloudFront signed URL or a signed cookie and not tell the difference of SAML and cookie at the very end of this slide.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:18: So we have our CloudFront distribution and has a bunch of locations.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:20: And so that means that the objects in our S3 buckets cannot be accessed by anything else, but CloudFront.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:21: But we still want to be able to give people access to their objects through CloudFront.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:23: And our application will use the AWS SDK to generate a signed URL directly from CloudFront.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:24: It will return the signed URL to the clients and then the clients will be able to use that signed URL to get the data and the files and the objects or whatever you need, directly from CloudFront.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:26: But you may be asking yourself, should I use a CloudFront signed URL or an S3 pre-signed URL?
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:28: So CloudFront signed URL is to allow access to a path, no matter the origin.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:32: And you can leverage all the caching features out of CloudFront.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:33: So if you look at the diagram, we have the clients using the signed URL onto your CloudFront distribution and then CloudFront distribution talking to your origin.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:40: So the idea is, if you want people to have access to your CloudFront distribution and it's in front of S3.
- 104_[DVA] CloudFront - Signed URL & Cookies.txt:42: But if your users are using directly against S3 and you want to distribute a thousand S3 directly without using CloudFront, then pre-sign URL will be a great use case for it.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:1: So now let's discuss how we can generate keys to sign the URLs with CloudFront.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:6: The other method that was originally supported in the first one that existed was to use an account that contains a CloudFront key pair.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:11: So we can create one or more trusted key group in our CloudFront distribution.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:15: Whereas the public key that is going to be uploaded by CloudFront will be used to verify the signature of these URLs.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:17: So let's have a look at key managements for CloudFront.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:20: So the idea is that we want to generate an RSA key, so a private key and a public key, and the private key will go on my EC2 instances and the public key will go on CloudFront.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:33: But the public key is what we will send into CloudFront.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:34: So back into CloudFront for my public key, that will create a public key.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:44: And that this key group is what will be referenced by CloudFront to allow our users, our CE2 instances, for example, to create signed URLs.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:45: So something to note is that I'm logged in as the root user of my account, but any IAM user with a sufficient permissions could create public keys and key groups within CloudFront.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:46: But I can also show you the old way of doing things for adding keys into CloudFront.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:50: And as you can see, there's a CloudFront key pair section.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:51: And this is how you would use CloudFront to create signed URLs the old way.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:52: The new recommended way is definitely to use what we've been showing before, which was using the key groups in CloudFront.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:58: But this would apply to any CloudFront distributions and we will need to create, and to give these private keys to our EC2 instances.
- 105_[DVA] CloudFront - Signed URL & Cookies - Hands On.txt:60: So definitely from an exam perspective, the new way of doing things is absolutely to use the CloudFront service and the capability that allows any of the IAM user to do it, which is using public keys and key groups.
- 106_[DVA] CloudFront - Field Level Encryption.txt:5: Well, in the POST requests being made to Amazon CloudFront, then there will be a set of fields that we want to be encrypted up to 10 fields, for example, a credit card, and then we'll specify the public key to encrypt them with.
- 106_[DVA] CloudFront - Field Level Encryption.txt:7: We have a client talking over HTTPS through edge location, which will be forwarding it to the CloudFront service using HTTPS again and then it will go all the way to the origin using HTTPS to your application balancer, which will forward all the data using HTTPS to your web server.
- 106_[DVA] CloudFront - Field Level Encryption.txt:11: So now the data being passed from the edge location to Amazon CloudFront to the origin will have the credit card information being encrypted thanks to the public key.
- 106_[DVA] CloudFront - Field Level Encryption.txt:13: As we can see, all along the stack, none of the CloudFront's location and application balancer will have the opportunity to decrypt that field.
- 107_CloudFront - Origin Access Control and Origin Access Identity (OAC & OAI).txt:4: So, you have the KMS Key and you're going to edit the Key Policy, and you're going to add a condition saying that as long as the SourceARN is the ARN of your OAC, your Origin Access Control, then you will be able to do the decrypt encrypt and generate there the key operations and therefore, CloudFront can communicate with your S3 Bucket that is enabled with SSE-KMS.
- 107_CloudFront - Origin Access Control and Origin Access Identity (OAC & OAI).txt:7: And so, in the previous case we had to use Lambda@Edge to actually sign requests from CloudFront to S3, and also disable OAI for this to work.
- 107_CloudFront - Origin Access Control and Origin Access Identity (OAC & OAI).txt:9: Well, we have our users, and they access CloudFront, then a Lambda@Edge is going to modify the origin request, and it is going to actually sign this request using the Sigv4 mechanism, so that CloudFront can access your S3 Bucket with the SSE-KMS security mechanism, which is going to return the file, and then send it back to the user.
- 107_CloudFront - Origin Access Control and Origin Access Identity (OAC & OAI).txt:10: Now this is an architecture you may find in the exam still, but overall is going to be deprecated over time, and the correct solution is to use an Origin Access Control because we don't need to use any Lambda@Edge function and everything is working as expected with both SSE-S3 and SSE-KMS.
- 108_CloudFront - Other.txt:1: So here are some bits of information about CloudFront that can come up in the exam.
- 108_CloudFront - Other.txt:8: The second one is a pattern to restrict access to an Application Balancer through CloudFront or a custom origin.
- 108_CloudFront - Other.txt:9: So first, you will configure CloudFront to add a custom HTTP Header to any request that will be sent to the ALB, the origin.
- 108_CloudFront - Other.txt:14: Then you access the CloudFront through the Edge Locations.
- 108_CloudFront - Other.txt:15: This CloudFront Edge Location is going to have a custom header, called the X-Custom-Header and then a random value.
- 108_CloudFront - Other.txt:20: And as an extra security mechanism, you can also decide to leverage the CloudFront prefixes of public IP addresses, to have rules in your security group attached to your Application Balancer, to guarantee that, the request only are coming from CloudFront.
- 108_CloudFront - Other.txt:21: There's also a way to leverage CloudFront alongside Cognito.
- 108_CloudFront - Other.txt:23: Well, say we want our users to be authenticated, before accessing CloudFront and our S3 buckets.
- 108_CloudFront - Other.txt:26: Then, this token is going to be passed to CloudFront, alongside the request, and CloudFront is going to be leveraging a Lambda function, the Lambda@Edge function, which is going to look at the viewer request, get back the JWT Token, and verify whether or not that token was issued by Cognito, and is correct.
- 108_CloudFront - Other.txt:27: If that is correct, then the Lambda function will say, okay, the request can go on, and then CloudFront is going to talk to the S3 buckets.
- 109_WAF - Web Application Firewall.txt:1: So now let's talk about AWS WAF or Web Application Firewall.
- 109_WAF - Web Application Firewall.txt:5: It could be Amazon CloudFront, it could be the API Gateway to protect your REST APIs.
- 109_WAF - Web Application Firewall.txt:7: Now, you should know that even though WAF is for protecting your web application, it's not for DDoS protection.
- 109_WAF - Web Application Firewall.txt:8: So you can get protection at the layer seven, yes, but for layer three or layer four DDoS protection, WAF is useless and so therefore you should use AWS Shield instead.
- 109_WAF - Web Application Firewall.txt:19: So if you have a global type of web SCL, it can only be used for global resources such as CloudFront and if you have a regional type of web ACL, you can use it for any different types of regional resources such as ALB, Cognito or API Gateway as long as of course they are in the same region.
- 109_WAF - Web Application Firewall.txt:26: So while there's no geo restriction feature directly in Cognito, you can combine it with WAF to get the geo match feature.
- 109_WAF - Web Application Firewall.txt:28: The pricing for WAF is important to know, so it's $5 per month for your web ACL.
- 109_WAF - Web Application Firewall.txt:30: It may change but it gives you an idea of how WAF pricing works.
- 109_WAF - Web Application Firewall.txt:31: You also have managed roles within WAF.
- 109_WAF - Web Application Firewall.txt:41: All right, so that's it for WAF web ACLs.
- 110_[SAA] Shield.txt:1: So now let's talk about AWS Shields.
- 110_[SAA] Shield.txt:2: And Shield is a service to protect yourself from DDoS attacks.
- 110_[SAA] Shield.txt:8: So we can protect against it, so we have the AWS Shield Standard service.
- 110_[SAA] Shield.txt:10: And if you want to get advanced protection, you can use the AWS Shield Advanced service.
- 110_[SAA] Shield.txt:12: It costs around 3,000 per month per organization.
- 110_[SAA] Shield.txt:13: And the idea is that you're going to get protected against more sophisticated DDoS attacks on Amazon EC2, Elastic Load Balancing, Amazon CloudFront, the Global Accelerator and Route 53.
- 110_[SAA] Shield.txt:16: In case you are incurring higher fees because you are also being attacked, this Shield Advance protects you from these higher fees.
- 110_[SAA] Shield.txt:17: And this Shield Advance has an automatic application layer, DDoS mitigation, and it's going to mean that it's automatically going to create and evaluate and deploy WAF rules to mitigate layer 7 attacks.
- 111_[SAA] AWS Firewall Manager.txt:1: So now let's talk about the AWS Firewall Manager.
- 111_[SAA] AWS Firewall Manager.txt:2: So this is a service to manage all the firewall rules in all accounts of an AWS organization.
- 111_[SAA] AWS Firewall Manager.txt:5: And so this could be Web Application Firewall rules, so they apply it to the ALB, the API gateways, CloudFronts and so on.
- 111_[SAA] AWS Firewall Manager.txt:6: Or it could be Shield Advanced rules, so for your ALB, CLB, NLB, the Elastic IP, and CloudFront.
- 111_[SAA] AWS Firewall Manager.txt:8: And it could be, as well, rules for your AWS Network Firewall at the VPC level.
- 111_[SAA] AWS Firewall Manager.txt:10: So the idea is that Firewall Manager allows you to manage all your firewalls in one place.
- 111_[SAA] AWS Firewall Manager.txt:12: And then they are applied to all the accounts of your organization.
- 111_[SAA] AWS Firewall Manager.txt:13: And on top of it, if somehow in your organization, for example, you create a WAF rule for an Application Load Balancer, and somehow there's a new Application Load Balancer being created, then automatically the Firewall Manager is going to apply the same rule to this newly created ALB.
- 111_[SAA] AWS Firewall Manager.txt:14: That's a feature of Firewall Manager.
- 111_[SAA] AWS Firewall Manager.txt:15: So you may ask yourself, "Well, what is the difference between WAF and Firewall Manager and Shield?" Well, WAF, Shield, and Firewall Manager are used together for comprehensive protection of your accounts.
- 111_[SAA] AWS Firewall Manager.txt:16: So first you define your Web ACL rules in WAF.
- 111_[SAA] AWS Firewall Manager.txt:17: And in case you need one-time protection, then WAF is going to be the right choice for you.
- 111_[SAA] AWS Firewall Manager.txt:18: But if you want to use WAF across multiple accounts and accelerate WAF configuration and automate the protection of new resources, then you would manage your WAF rules within Firewall Manager.
- 111_[SAA] AWS Firewall Manager.txt:19: And Firewall Manager will just apply all these rules to all your accounts and all your resources automatically.
- 111_[SAA] AWS Firewall Manager.txt:20: So now we also have Shield Advanced to help you get protected against DDoS attacks.
- 111_[SAA] AWS Firewall Manager.txt:21: And it has additional features on top of WAF such as a dedicated support from the Shield Response Team, SRT, advanced reporting, and also, it can automatically create WAF rules for you.
- 111_[SAA] AWS Firewall Manager.txt:22: And if you're prone to frequent DDoS attacks, then you should definitely consider purchasing Shield Advanced.
- 111_[SAA] AWS Firewall Manager.txt:23: And so Firewall Manager can also help you deploy Shield Advanced across all your accounts So hopefully the distinction is pretty clear for you now.

## Deduped Consolidation Snapshot End

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: Key Insights: So the way it works that you have an attacker and you have the application server, and the attacker through some various techniques, that we'll not get into, will be able to have a bunch of computers that are going to be masters and they're going to create bots and the bots will be a lot of them and all the bots are going to get into requesting stuff from our application server in very bad ways, non-conventional ways, and so the application server is overwhelmed, it doesn't know how to respond to this request.
- Signal 2: Key Insights: So you need to leverage AWS Auto Scaling, such as if some of your servers are overwhelmed that means your at least CPU is skyrocketing close to 100%, then Auto Scaling will kick in and create more instances and so it's going to become more expensive for your attacker to attack these new instances.
- Signal 3: Key Insights: You can deploy it on the application load balancer to get localized rules.
- Signal 4: Key Insights: You can deploy it on the API Gateway to get rules running at the regional or edge level.
- Signal 5: Key Insights: You can deploy it on CloudFront.
- Signal 6: Key Insights: And these rules are going to be running globally on all edge locations where CloudFront is, and this could be used for example, if you wanted to have a web application firewall for your classic load balancer, your EC2 instances, custom origins, or S3 websites, you would have CloudFront then deploy WAF on CloudFront.
- Signal 7: Key Insights: You can also deploy it on AppSync, and this is going to allow you to protect your GraphQL APIs directly.
- Signal 8: Key Insights: Okay, next, what's going to happen is that on Amazon CloudFront, you can create what's called a custom HTP header.
- Signal 9: Key Insights: The result of which is that we can also set up WAF on the application load balancer, and we create a filtering rule that says that any traffic that has this header, the X Origin verify and the value will be allowed and anything else will be rejected.
- Signal 10: Key Insights: And on top of it, if somehow in your organization, for example, you create a WAF rule for an Application Load Balancer, and somehow there's a new Application Load Balancer being created, then automatically the Firewall Manager is going to apply the same rule to this newly created ALB.

### Service-Specific Lab Paths
### Activity 1: Amazon S3 Lab for 10 Network Security
- AWS console path: AWS Console -> S3 -> Buckets
- Azure equivalent: Azure Blob Storage
- GCP equivalent: Cloud Storage
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> S3 -> Buckets.
3. Build: Create a bucket and upload one sample file.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Open object metadata and test download.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete objects and delete bucket.

### Activity 2: Amazon VPC Lab for 10 Network Security
- AWS console path: AWS Console -> VPC
- Azure equivalent: Azure Virtual Network
- GCP equivalent: VPC Network
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> VPC.
3. Build: Create a VPC with one public and one private subnet.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Validate route table associations.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete test subnets and VPC components.

### Activity 3: IAM Lab for 10 Network Security
- AWS console path: AWS Console -> IAM
- Azure equivalent: Microsoft Entra ID + RBAC
- GCP equivalent: Cloud IAM
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> IAM.
3. Build: Create a test user or role with least privilege.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Sign in or simulate policy permissions.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete the test user/role and inline policies.

### Activity 4: Amazon CloudWatch Lab for 10 Network Security
- AWS console path: AWS Console -> CloudWatch
- Azure equivalent: Azure Monitor
- GCP equivalent: Cloud Monitoring
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> CloudWatch.
3. Build: Create one dashboard and one alarm.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Trigger alarm condition and inspect alarm history.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete dashboard and alarm.

### Quick Troubleshooting
- Access denied: verify role permissions or ask admin for least-privilege lab policy.
- Resource limit reached: pick another region or request quota increase.
- Unexpected charges: stop/delete resources and review cost explorer immediately.

## Cross-Cloud Thinking Mode

Use this lens to study 10 Network Security in a cloud-agnostic way: focus on capability first, provider name second.

### Capability Mapping (AWS / Azure / GCP)
| Capability | AWS | Azure | GCP |
|---|---|---|---|
| Identity | IAM / IAM Identity Center | Microsoft Entra ID + RBAC | Cloud IAM |
| Object Storage | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Virtual Machines | Amazon EC2 | Azure Virtual Machines | Compute Engine |
| Serverless Functions | AWS Lambda | Azure Functions | Cloud Functions / Cloud Run |
| Containers | Amazon EKS / ECS | AKS | GKE / Cloud Run |
| Databases | RDS / DynamoDB / ElastiCache | Azure SQL / Cosmos DB / Azure Cache | Cloud SQL / Firestore / Memorystore |
| Networking | VPC / Route 53 / ELB | VNet / DNS / Load Balancer | VPC / Cloud DNS / Cloud Load Balancing |
| Observability | CloudWatch / X-Ray / CloudTrail | Azure Monitor / App Insights / Activity Log | Cloud Monitoring / Cloud Logging / Cloud Trace |

### Same Lab Across 3 Clouds
| Lab Theme | AWS | Azure | GCP |
|---|---|---|---|
| Amazon S3 | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Amazon VPC | Amazon VPC | Azure Virtual Network | VPC Network |
| IAM | IAM | Microsoft Entra ID + RBAC | Cloud IAM |
| Amazon CloudWatch | Amazon CloudWatch | Azure Monitor | Cloud Monitoring |

### How To Think Cross-Cloud
1. Start with workload requirement: latency, throughput, security, and compliance.
2. Map requirement to capability family (identity, network, compute, data, observability).
3. Compare service behavior, not branding: limits, scaling model, and failure modes.
4. Keep a portable architecture note: what is generic vs provider-specific.
5. Test same mini-lab in at least 2 clouds and write down differences.

### Child-Friendly Practice Challenge
- Pick one simple task (for example: upload one file, run one function, read one metric).
- Do the same task in AWS, Azure, and GCP.
- Fill this mini template:
  - What was the same?
  - What had a different name?
  - What felt easier/harder and why?

<!-- END PRACTICE_ENHANCEMENTS -->

