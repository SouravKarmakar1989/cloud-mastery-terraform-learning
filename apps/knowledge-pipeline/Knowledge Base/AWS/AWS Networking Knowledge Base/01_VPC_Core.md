# 01_VPC_Core.md

## Scope
- Topic: VPC foundations, CIDR and subnetting, route control, IGW/NAT, ENI, SG/NACL, IPv6 egress
- Files processed: 41
- Extracted non-empty transcript lines: 3316
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 1: VPC Core)

### Foundations (Modules with Source Transcript Details)

#### Module 1: VPC Mental Model
- A VPC is the isolation boundary for network addressing and routing decisions.
- Subnets represent AZ-scoped address partitions, not standalone networks.
- Route tables determine path selection; gateways determine what destinations are reachable.




##### Source Transcript Details
- Module focus: VPC Mental Model
- Primary transcript files:
- outputs/AWS/AWS Speciality/advanced-networking-specialty/03_Amazon VPC fundamentals/009_VPC Addressing (CIDR).txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/03_Amazon VPC fundamentals/010_VPC Route Tables.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/04_Additional VPC features/026_Hands-on_ Egress-only internet gateway for IPv6 outbound traffic.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/03_Amazon VPC fundamentals/013_VPC Firewall - Network Access Control List (NACL).txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/03_Amazon VPC fundamentals/017_Hands On_ Add Private subnet.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/032_VPC DHCP Option sets.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/03_Amazon VPC fundamentals/016_Hands On_ Creating VPC with Public Subnet.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/04_Additional VPC features/028_Elastic Network Interface (ENI) deep dive.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/031_Amazon VPC DNS Server (Route53 Resolver).txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/03_Amazon VPC fundamentals/012_VPC Firewall - Security Group.txt
- Top concept clusters from transcript metadata:
- VPC/Networking Operational Context
- Addressing and Segmentation
- DNS and Name Resolution
- Routing and Egress Control
- Network Identity and Interface
- Traffic Boundary Enforcement
- Availability and Resilience
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

#### Module 2: Core Addressing and Segmentation
- CIDR planning is an architecture decision, not a deployment afterthought.
- Public and private behavior is determined by route design, not subnet naming.
- IPv4 scarcity and IPv6 adoption both shape long-term network design choices.




##### Source Transcript Details
- Module focus: Core Addressing and Segmentation
- Primary transcript files:
- outputs/AWS/AWS Speciality/advanced-networking-specialty/03_Amazon VPC fundamentals/009_VPC Addressing (CIDR).txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/03_Amazon VPC fundamentals/010_VPC Route Tables.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/04_Additional VPC features/026_Hands-on_ Egress-only internet gateway for IPv6 outbound traffic.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/03_Amazon VPC fundamentals/013_VPC Firewall - Network Access Control List (NACL).txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/03_Amazon VPC fundamentals/017_Hands On_ Add Private subnet.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/05_VPC DNS and DHCP/032_VPC DHCP Option sets.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/03_Amazon VPC fundamentals/016_Hands On_ Creating VPC with Public Subnet.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/04_Additional VPC features/028_Elastic Network Interface (ENI) deep dive.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/03_Amazon VPC fundamentals/011_IP Addresses - IPv4 vs IPv6, Private vs Public vs Elastic IP.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/27_Networking - VPC/331_NACL & Security Groups.txt
- Top concept clusters from transcript metadata:
- VPC/Networking Operational Context
- Addressing and Segmentation
- Network Identity and Interface
- Routing and Egress Control
- Traffic Boundary Enforcement
- DNS and Name Resolution
- Availability and Resilience
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

#### Module 3: Baseline Traffic Controls
- Security groups enforce stateful workload-level filtering.
- NACLs enforce stateless subnet-level filtering.
- ENIs are the network identity anchor for many AWS resources, not just EC2.






##### Source Transcript Details
- Module focus: Baseline Traffic Controls
- Primary transcript files:
- outputs/AWS/AWS Speciality/advanced-networking-specialty/04_Additional VPC features/026_Hands-on_ Egress-only internet gateway for IPv6 outbound traffic.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/03_Amazon VPC fundamentals/010_VPC Route Tables.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/03_Amazon VPC fundamentals/013_VPC Firewall - Network Access Control List (NACL).txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/03_Amazon VPC fundamentals/017_Hands On_ Add Private subnet.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/04_Additional VPC features/028_Elastic Network Interface (ENI) deep dive.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/03_Amazon VPC fundamentals/012_VPC Firewall - Security Group.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/03_Amazon VPC fundamentals/016_Hands On_ Creating VPC with Public Subnet.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/27_Networking - VPC/331_NACL & Security Groups.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/03_Amazon VPC fundamentals/021_NAT Instance (EC2 based NAT).txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/27_Networking - VPC/351_Networking Costs in AWS.txt
- Top concept clusters from transcript metadata:
- VPC/Networking Operational Context
- Traffic Boundary Enforcement
- Addressing and Segmentation
- Routing and Egress Control
- Network Identity and Interface
- Availability and Resilience
- DNS and Name Resolution
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

## Key Operational Decisions

- Decide what boundary or path vpc core is supposed to control before you add more routes, policies, or services.
- Decide how identity, DNS, and routing assumptions should be documented around vpc core.
- Decide which layer should own reachability, security, and failover behavior in vpc core.
- Decide which telemetry proves that vpc core is working as designed instead of only appearing configured.
- Decide how governance and operational ownership will keep vpc core understandable as the platform grows.

## Deep Expansion (Networking Concepts)

### Core Services

1. Private virtual network boundary: AWS: VPC || Azure: Virtual Network || GCP: VPC Network
2. Address segmentation: AWS: Subnets and route tables || Azure: Subnets and route tables || GCP: Subnets and routes
3. Outbound internet pattern: AWS: IGW plus NAT Gateway || Azure: Internet plus NAT Gateway || GCP: Cloud NAT plus internet gateway path
4. Instance network identity: AWS: ENI and Elastic IP || Azure: NIC and Public IP || GCP: NIC and external IP
5. Traffic boundary enforcement: AWS: Security Groups and NACLs || Azure: NSG and subnet rules || GCP: Firewall rules and policy controls

### Architect-Level Concept Expansion

#### 1. VPC Mental Model
- VPC Mental Model sets the boundary for vpc core, because it explains what the platform owns, what the operator owns, and where the first failure usually appears.
- When that boundary is fuzzy, teams tend to misread symptoms and make design choices in vpc core that solve the wrong problem.

#### 2. Core Addressing and Segmentation
- Core Addressing and Segmentation matter because they determine how the control plane, data path, and identity or addressing model actually work inside vpc core.
- Understanding those building blocks makes it easier to compare AWS behavior with Azure and GCP instead of memorizing vendor-specific wording.

#### 3. Baseline Traffic Controls
- Baseline Traffic Controls are where scale, resilience, and governance turn basic feature knowledge into durable system design for vpc core.
- This is usually the part of the topic that separates a passing lab from a design that still behaves well under real traffic and operator pressure.

#### 4. Observability is part of the network design
- Vpc core is only trustworthy when the team can prove what path traffic takes and which layer is allowed to change that path.
- Without those signals, networking problems inside vpc core often masquerade as random application or infrastructure failures.

#### 5. Cross-cloud mapping keeps the boundary clear
- Mapping vpc core to Azure and GCP helps separate the underlying networking concept from the AWS product packaging around it.
- That usually makes both troubleshooting and migration planning easier because the real control surface stays visible.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Private virtual network boundary | VPC | Virtual Network | VPC Network |
| Address segmentation | Subnets and route tables | Subnets and route tables | Subnets and routes |
| Outbound internet pattern | IGW plus NAT Gateway | Internet plus NAT Gateway | Cloud NAT plus internet gateway path |
| Instance network identity | ENI and Elastic IP | NIC and Public IP | NIC and external IP |
| Traffic boundary enforcement | Security Groups and NACLs | NSG and subnet rules | Firewall rules and policy controls |
