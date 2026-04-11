# 04_Load_Balancing.md

## Scope
- Topic: ALB/NLB/GWLB architecture, listeners/target groups, health checks, TLS, stickiness, draining, traffic inspection
- Files processed: 33
- Extracted non-empty transcript lines: 1666
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 4: Load Balancing)

### Foundations (Modules with Source Transcript Details)

#### Module 1: Load Balancing Mental Model
- Load balancers are traffic decision points, not just scaling tools.
- The correct load balancer depends on protocol, visibility needs, and entry-point constraints.
- Health checks and connection behavior shape user experience during failures.




##### Source Transcript Details
- Module focus: Load Balancing Mental Model
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/056_Elastic Load Balancers - Part 1.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/057_Elastic Load Balancers - Part 2.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/08_High Availability and Scalability_ ELB & ASG/079_Elastic Load Balancer - Cross Zone Load Balancing.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/18_Elastic Load Balancers/177_Cross-Zone Load Balancing.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/08_High Availability and Scalability_ ELB & ASG/071_Elastic Load Balancing (ELB) Overview.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/064_AWS Global Accelerator.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/18_Elastic Load Balancers/172_Application Load Balancer.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/08_High Availability and Scalability_ ELB & ASG/073_Application Load Balancer (ALB) - Hands On - Part 1.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/18_Elastic Load Balancers/181_Hands On_ ALB X-Forwarded Headers.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/18_Elastic Load Balancers/173_Network Load Balancer.txt
- Top concept clusters from transcript metadata:
- Load Balancing Operational Context
- Protocol-Aware Routing
- TLS and Trust Boundary Control
- Static Entry Point and Global Reach
- Traffic Distribution and Resilience
- Session and Connection Behavior
- Network Security Inspection
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

#### Module 2: Layer Choice Matters
- ALB is for application-aware HTTP(S) routing.
- NLB is for L4 performance, static IP, and non-HTTP traffic needs.
- GWLB is for inserting inspection appliances into traffic paths.




##### Source Transcript Details
- Module focus: Layer Choice Matters
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/056_Elastic Load Balancers - Part 1.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/08_High Availability and Scalability_ ELB & ASG/071_Elastic Load Balancing (ELB) Overview.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/057_Elastic Load Balancers - Part 2.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/08_High Availability and Scalability_ ELB & ASG/079_Elastic Load Balancer - Cross Zone Load Balancing.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/18_Elastic Load Balancers/177_Cross-Zone Load Balancing.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/064_AWS Global Accelerator.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/18_Elastic Load Balancers/172_Application Load Balancer.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/18_Elastic Load Balancers/173_Network Load Balancer.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/08_High Availability and Scalability_ ELB & ASG/080_Elastic Load Balancer - SSL Certificates.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/08_High Availability and Scalability_ ELB & ASG/077_Gateway Load Balancer (GWLB).txt
- Top concept clusters from transcript metadata:
- Load Balancing Operational Context
- Protocol-Aware Routing
- TLS and Trust Boundary Control
- Static Entry Point and Global Reach
- Traffic Distribution and Resilience
- Network Security Inspection
- Session and Connection Behavior
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

#### Module 3: Trust and Session Behavior
- TLS termination location changes the trust boundary.
- Stickiness and deregistration delay are workload-behavior decisions, not defaults to ignore.
- Static IP requirements often change the front-door choice immediately.






##### Source Transcript Details
- Module focus: Trust and Session Behavior
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/057_Elastic Load Balancers - Part 2.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/08_High Availability and Scalability_ ELB & ASG/078_Elastic Load Balancer - Sticky Sessions.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/18_Elastic Load Balancers/176_Sticky Sessions (Session Affinity).txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/056_Elastic Load Balancers - Part 1.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/08_High Availability and Scalability_ ELB & ASG/071_Elastic Load Balancing (ELB) Overview.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/18_Elastic Load Balancers/178_ELB SSL_TLS.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/08_High Availability and Scalability_ ELB & ASG/079_Elastic Load Balancer - Cross Zone Load Balancing.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/18_Elastic Load Balancers/177_Cross-Zone Load Balancing.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/08_High Availability and Scalability_ ELB & ASG/082_Elastic Load Balancer - Connection Draining.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/18_Elastic Load Balancers/179_Connection Draining.txt
- Top concept clusters from transcript metadata:
- Load Balancing Operational Context
- Session and Connection Behavior
- TLS and Trust Boundary Control
- Protocol-Aware Routing
- Traffic Distribution and Resilience
- Static Entry Point and Global Reach
- Network Security Inspection
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

## Key Operational Decisions

- Decide what boundary or path load balancing is supposed to control before you add more routes, policies, or services.
- Decide how identity, DNS, and routing assumptions should be documented around load balancing.
- Decide which layer should own reachability, security, and failover behavior in load balancing.
- Decide which telemetry proves that load balancing is working as designed instead of only appearing configured.
- Decide how governance and operational ownership will keep load balancing understandable as the platform grows.

## Deep Expansion (Networking Concepts)

### Core Services

1. Layer 7 entry: AWS: Application Load Balancer || Azure: Application Gateway || GCP: External HTTP(S) Load Balancer
2. Layer 4 entry: AWS: Network Load Balancer || Azure: Azure Load Balancer || GCP: Passthrough TCP/UDP load balancing
3. Appliance insertion: AWS: Gateway Load Balancer || Azure: NVA chaining patterns || GCP: Service chaining patterns
4. Health-aware backend pool: AWS: Target groups || Azure: Backend pools || GCP: Backend services
5. Edge acceleration: AWS: CloudFront in front of ALB || Azure: Front Door in front of App Gateway || GCP: Global edge balancing plus Cloud Armor

### Architect-Level Concept Expansion

#### 1. Load Balancing Mental Model
- Load Balancing Mental Model sets the boundary for load balancing, because it explains what the platform owns, what the operator owns, and where the first failure usually appears.
- When that boundary is fuzzy, teams tend to misread symptoms and make design choices in load balancing that solve the wrong problem.

#### 2. Layer Choice Matters
- Layer Choice Matters matter because they determine how the control plane, data path, and identity or addressing model actually work inside load balancing.
- Understanding those building blocks makes it easier to compare AWS behavior with Azure and GCP instead of memorizing vendor-specific wording.

#### 3. Trust and Session Behavior
- Trust and Session Behavior are where scale, resilience, and governance turn basic feature knowledge into durable system design for load balancing.
- This is usually the part of the topic that separates a passing lab from a design that still behaves well under real traffic and operator pressure.

#### 4. Observability is part of the network design
- Load balancing is only trustworthy when the team can prove what path traffic takes and which layer is allowed to change that path.
- Without those signals, networking problems inside load balancing often masquerade as random application or infrastructure failures.

#### 5. Cross-cloud mapping keeps the boundary clear
- Mapping load balancing to Azure and GCP helps separate the underlying networking concept from the AWS product packaging around it.
- That usually makes both troubleshooting and migration planning easier because the real control surface stays visible.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Layer 7 entry | Application Load Balancer | Application Gateway | External HTTP(S) Load Balancer |
| Layer 4 entry | Network Load Balancer | Azure Load Balancer | Passthrough TCP/UDP load balancing |
| Appliance insertion | Gateway Load Balancer | NVA chaining patterns | Service chaining patterns |
| Health-aware backend pool | Target groups | Backend pools | Backend services |
| Edge acceleration | CloudFront in front of ALB | Front Door in front of App Gateway | Global edge balancing plus Cloud Armor |
