# 02_VPC_Connectivity.md

## Scope
- Topic: VPC peering, endpoints, PrivateLink, TGW, VPN, DX, hybrid transit and WAN connectivity
- Files processed: 103
- Extracted non-empty transcript lines: 8883
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 2: VPC Connectivity)

### Foundations (Modules with Source Transcript Details)

#### Module 1: Connectivity Mental Model
- Connectivity is a routing and trust problem before it is a feature-selection problem.
- Peering, endpoints, and transit services solve different path and scale requirements.
- Hybrid and service-exposure designs should be framed by ownership boundaries first.




##### Source Transcript Details
- Module focus: Connectivity Mental Model
- Primary transcript files:
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/065_Hands On_ Create VPC endpoint service and access through VPC endpoint.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/063_Hands On_ VPC interface endpoint to access Amazon SQS queue.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/059_Hands On_ VPC Gateway endpoint to access S3 bucket.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/057_Introduction to VPC Endpoint and PrivateLink.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/08_VPC Private Connectivity_ VPC Peering/055_Hands On_ VPC Peering across AWS regions.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/067_VPC endpoints security.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/061_VPC PrivateLink - Important to know features.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/062_VPC endpoint DNS.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/066_Hands On_ Accessing VPC endpoint service using Custom Domain Name (DNS).txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/070_VPC Endpoint architectures - Accessing from peered or connected VPC.txt
- Top concept clusters from transcript metadata:
- Connectivity Operational Context
- Private East-West Connectivity
- Routing Domain Design
- Segmentation and Isolation
- High Availability and Failover
- Transit and Hub-Spoke Topology
- Hybrid WAN Integration
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

#### Module 2: Private Connectivity Options
- Peering is simple and direct but scales poorly as a mesh.
- Endpoints and PrivateLink reduce internet exposure for service consumption.
- Transit abstractions centralize routing but require segmentation discipline.




##### Source Transcript Details
- Module focus: Private Connectivity Options
- Primary transcript files:
- outputs/AWS/AWS Speciality/advanced-networking-specialty/08_VPC Private Connectivity_ VPC Peering/053_Introduction to VPC private connectivity options.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/059_Hands On_ VPC Gateway endpoint to access S3 bucket.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/065_Hands On_ Create VPC endpoint service and access through VPC endpoint.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/063_Hands On_ VPC interface endpoint to access Amazon SQS queue.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/057_Introduction to VPC Endpoint and PrivateLink.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/08_VPC Private Connectivity_ VPC Peering/055_Hands On_ VPC Peering across AWS regions.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/067_VPC endpoints security.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/061_VPC PrivateLink - Important to know features.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/062_VPC endpoint DNS.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/066_Hands On_ Accessing VPC endpoint service using Custom Domain Name (DNS).txt
- Top concept clusters from transcript metadata:
- Connectivity Operational Context
- Private East-West Connectivity
- Routing Domain Design
- Segmentation and Isolation
- Transit and Hub-Spoke Topology
- High Availability and Failover
- Hybrid WAN Integration
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

#### Module 3: Hybrid Path Principles
- Dedicated transport, encrypted backup, and route policy must be designed together.
- Prefix advertisement determines real traffic behavior during failure scenarios.
- Connectivity without governance becomes routing debt quickly.






##### Source Transcript Details
- Module focus: Hybrid Path Principles
- Primary transcript files:
- outputs/AWS/AWS Speciality/advanced-networking-specialty/11_Hybrid Network Basics/095_BGP Route selection - ASPATH, LOCAL_PREF, MED.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/058_VPC Gateway Endpoint.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/065_Hands On_ Create VPC endpoint service and access through VPC endpoint.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/063_Hands On_ VPC interface endpoint to access Amazon SQS queue.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/059_Hands On_ VPC Gateway endpoint to access S3 bucket.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/057_Introduction to VPC Endpoint and PrivateLink.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/08_VPC Private Connectivity_ VPC Peering/055_Hands On_ VPC Peering across AWS regions.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/061_VPC PrivateLink - Important to know features.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/064_VPC Endpoint Service.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/068_Other VPC endpoint types - Gateway Load Balancer, Resource, Service-network.txt
- Top concept clusters from transcript metadata:
- Connectivity Operational Context
- Private East-West Connectivity
- Routing Domain Design
- Hybrid WAN Integration
- High Availability and Failover
- Transit and Hub-Spoke Topology
- Segmentation and Isolation
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

## Key Operational Decisions

- Decide what boundary or path vpc connectivity is supposed to control before you add more routes, policies, or services.
- Decide how identity, DNS, and routing assumptions should be documented around vpc connectivity.
- Decide which layer should own reachability, security, and failover behavior in vpc connectivity.
- Decide which telemetry proves that vpc connectivity is working as designed instead of only appearing configured.
- Decide how governance and operational ownership will keep vpc connectivity understandable as the platform grows.

## Deep Expansion (Networking Concepts)

### Core Services

1. Private VPC-to-VPC link: AWS: Peering and PrivateLink || Azure: VNet peering and Private Link || GCP: VPC peering and Private Service Connect
2. Central transit fabric: AWS: Transit Gateway || Azure: Virtual WAN and hub routing || GCP: Network Connectivity Center
3. On-premises private path: AWS: Site-to-Site VPN and Direct Connect || Azure: VPN Gateway and ExpressRoute || GCP: Cloud VPN and Interconnect
4. Service endpoint pattern: AWS: Gateway endpoint and interface endpoint || Azure: Service endpoint and Private Endpoint || GCP: Private Google Access and Private Service Connect
5. Shared service publishing: AWS: PrivateLink service || Azure: Private Link service || GCP: Private Service Connect producer service

### Architect-Level Concept Expansion

#### 1. Connectivity Mental Model
- Connectivity Mental Model sets the boundary for vpc connectivity, because it explains what the platform owns, what the operator owns, and where the first failure usually appears.
- When that boundary is fuzzy, teams tend to misread symptoms and make design choices in vpc connectivity that solve the wrong problem.

#### 2. Private Connectivity Options
- Private Connectivity Options matter because they determine how the control plane, data path, and identity or addressing model actually work inside vpc connectivity.
- Understanding those building blocks makes it easier to compare AWS behavior with Azure and GCP instead of memorizing vendor-specific wording.

#### 3. Hybrid Path Principles
- Hybrid Path Principles are where scale, resilience, and governance turn basic feature knowledge into durable system design for vpc connectivity.
- This is usually the part of the topic that separates a passing lab from a design that still behaves well under real traffic and operator pressure.

#### 4. Observability is part of the network design
- Vpc connectivity is only trustworthy when the team can prove what path traffic takes and which layer is allowed to change that path.
- Without those signals, networking problems inside vpc connectivity often masquerade as random application or infrastructure failures.

#### 5. Cross-cloud mapping keeps the boundary clear
- Mapping vpc connectivity to Azure and GCP helps separate the underlying networking concept from the AWS product packaging around it.
- That usually makes both troubleshooting and migration planning easier because the real control surface stays visible.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Private VPC-to-VPC link | Peering and PrivateLink | VNet peering and Private Link | VPC peering and Private Service Connect |
| Central transit fabric | Transit Gateway | Virtual WAN and hub routing | Network Connectivity Center |
| On-premises private path | Site-to-Site VPN and Direct Connect | VPN Gateway and ExpressRoute | Cloud VPN and Interconnect |
| Service endpoint pattern | Gateway endpoint and interface endpoint | Service endpoint and Private Endpoint | Private Google Access and Private Service Connect |
| Shared service publishing | PrivateLink service | Private Link service | Private Service Connect producer service |
