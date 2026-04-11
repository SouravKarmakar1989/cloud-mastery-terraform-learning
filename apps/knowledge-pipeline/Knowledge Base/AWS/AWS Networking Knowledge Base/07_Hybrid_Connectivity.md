# 07_Hybrid_Connectivity.md

## Scope
- Topic: Hybrid routing foundations, BGP, Site-to-Site VPN, Client VPN, Direct Connect, resiliency and encryption patterns
- Files processed: 55
- Extracted non-empty transcript lines: 4453
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 7: Hybrid Connectivity)

### Foundations (Modules with Source Transcript Details)

#### Module 1: Hybrid Mental Model
- Hybrid networking is a routing-governance problem as much as a connectivity problem.
- Dedicated links, encrypted tunnels, and remote-user access solve different requirements.
- Path design must include both steady-state and failure-state behavior.




##### Source Transcript Details
- Module focus: Hybrid Mental Model
- Primary transcript files:
- outputs/AWS/AWS Speciality/advanced-networking-specialty/11_Hybrid Network Basics/094_How Border Gateway Protocol (BGP) works_.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/11_Hybrid Network Basics/092_Introduction to Hybrid networking.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/11_Hybrid Network Basics/095_BGP Route selection - ASPATH, LOCAL_PREF, MED.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/11_Hybrid Network Basics/093_Static Routing vs Dynamic Routing.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/12_AWS Site-to-Site VPN/098_Hands On_ Setup AWS Site-to-Site VPN.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/13_AWS Client VPN/111_Hands On_ Set up AWS Client VPN.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/12_AWS Site-to-Site VPN/096_Introduction to AWS Site-to-Site VPN.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/14_Direct Connect (DX)/117_Steps to create Direct Connect Connections.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/14_Direct Connect (DX)/113_Introduction to AWS Direct Connect.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/14_Direct Connect (DX)/127_Direct Connect SiteLink.txt
- Top concept clusters from transcript metadata:
- Hybrid Operational Context
- Private and Encrypted Connectivity
- Hybrid Routing Control
- Dedicated Network Transport
- Remote User Access
- Hybrid Topology Patterns
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

#### Module 2: Routing and BGP Basics
- Static routing is simple but limited for dynamic environments.
- BGP is the policy engine behind scalable hybrid path selection.
- Attributes and advertisement scope determine whether failover actually works.




##### Source Transcript Details
- Module focus: Routing and BGP Basics
- Primary transcript files:
- outputs/AWS/AWS Speciality/advanced-networking-specialty/11_Hybrid Network Basics/094_How Border Gateway Protocol (BGP) works_.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/14_Direct Connect (DX)/128_DX Routing policies and BGP communities.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/11_Hybrid Network Basics/095_BGP Route selection - ASPATH, LOCAL_PREF, MED.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/14_Direct Connect (DX)/132_Private VIF routing policies and BGP communities.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/11_Hybrid Network Basics/093_Static Routing vs Dynamic Routing.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/14_Direct Connect (DX)/131_Public VIF BGP Communities.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/14_Direct Connect (DX)/130_Public VIF routing scenarios.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/14_Direct Connect (DX)/129_Public VIF Routing policies.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/12_AWS Site-to-Site VPN/102_VPN Transitive Routing scenarios.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/14_Direct Connect (DX)/115_BGP Autonomous System (AS) and ASN.txt
- Top concept clusters from transcript metadata:
- Hybrid Operational Context
- Hybrid Routing Control
- Dedicated Network Transport
- Private and Encrypted Connectivity
- Resilience and Failure Detection
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

#### Module 3: Connectivity Classes
- Site-to-Site VPN provides encrypted path establishment quickly.
- Direct Connect provides deterministic private transport.
- Client VPN is the workforce-access pattern, not a substitute for site connectivity.






##### Source Transcript Details
- Module focus: Connectivity Classes
- Primary transcript files:
- outputs/AWS/AWS Speciality/advanced-networking-specialty/11_Hybrid Network Basics/094_How Border Gateway Protocol (BGP) works_.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/11_Hybrid Network Basics/092_Introduction to Hybrid networking.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/12_AWS Site-to-Site VPN/098_Hands On_ Setup AWS Site-to-Site VPN.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/13_AWS Client VPN/111_Hands On_ Set up AWS Client VPN.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/12_AWS Site-to-Site VPN/096_Introduction to AWS Site-to-Site VPN.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/14_Direct Connect (DX)/117_Steps to create Direct Connect Connections.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/14_Direct Connect (DX)/113_Introduction to AWS Direct Connect.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/14_Direct Connect (DX)/127_Direct Connect SiteLink.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/14_Direct Connect (DX)/136_DX Security & Encryption (VPN over DX and MACSec).txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/14_Direct Connect (DX)/142_DX Summary and Exam Essentials.txt
- Top concept clusters from transcript metadata:
- Hybrid Operational Context
- Private and Encrypted Connectivity
- Dedicated Network Transport
- Hybrid Routing Control
- Remote User Access
- Hybrid Topology Patterns
- Resilience and Failure Detection
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

## Key Operational Decisions

- Decide what boundary or path hybrid connectivity is supposed to control before you add more routes, policies, or services.
- Decide how identity, DNS, and routing assumptions should be documented around hybrid connectivity.
- Decide which layer should own reachability, security, and failover behavior in hybrid connectivity.
- Decide which telemetry proves that hybrid connectivity is working as designed instead of only appearing configured.
- Decide how governance and operational ownership will keep hybrid connectivity understandable as the platform grows.

## Deep Expansion (Networking Concepts)

### Core Services

1. Encrypted hybrid path: AWS: Site-to-Site VPN || Azure: VPN Gateway || GCP: Cloud VPN
2. Dedicated circuit: AWS: Direct Connect || Azure: ExpressRoute || GCP: Dedicated or Partner Interconnect
3. Routing exchange: AWS: BGP over VGW or TGW attachments || Azure: BGP over VPN or ExpressRoute || GCP: Cloud Router and BGP
4. Branch and multi-site design: AWS: TGW-based hybrid fan-out || Azure: Virtual WAN hubs || GCP: NCC and hub-and-spoke patterns
5. Private service reachback: AWS: Interface endpoints and resolver forwarding || Azure: Private Endpoints and DNS forwarding || GCP: Private Service Connect and DNS policy

### Architect-Level Concept Expansion

#### 1. Hybrid Mental Model
- Hybrid Mental Model sets the boundary for hybrid connectivity, because it explains what the platform owns, what the operator owns, and where the first failure usually appears.
- When that boundary is fuzzy, teams tend to misread symptoms and make design choices in hybrid connectivity that solve the wrong problem.

#### 2. Routing and BGP Basics
- Routing and BGP Basics matter because they determine how the control plane, data path, and identity or addressing model actually work inside hybrid connectivity.
- Understanding those building blocks makes it easier to compare AWS behavior with Azure and GCP instead of memorizing vendor-specific wording.

#### 3. Connectivity Classes
- Connectivity Classes are where scale, resilience, and governance turn basic feature knowledge into durable system design for hybrid connectivity.
- This is usually the part of the topic that separates a passing lab from a design that still behaves well under real traffic and operator pressure.

#### 4. Observability is part of the network design
- Hybrid connectivity is only trustworthy when the team can prove what path traffic takes and which layer is allowed to change that path.
- Without those signals, networking problems inside hybrid connectivity often masquerade as random application or infrastructure failures.

#### 5. Cross-cloud mapping keeps the boundary clear
- Mapping hybrid connectivity to Azure and GCP helps separate the underlying networking concept from the AWS product packaging around it.
- That usually makes both troubleshooting and migration planning easier because the real control surface stays visible.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Encrypted hybrid path | Site-to-Site VPN | VPN Gateway | Cloud VPN |
| Dedicated circuit | Direct Connect | ExpressRoute | Dedicated or Partner Interconnect |
| Routing exchange | BGP over VGW or TGW attachments | BGP over VPN or ExpressRoute | Cloud Router and BGP |
| Branch and multi-site design | TGW-based hybrid fan-out | Virtual WAN hubs | NCC and hub-and-spoke patterns |
| Private service reachback | Interface endpoints and resolver forwarding | Private Endpoints and DNS forwarding | Private Service Connect and DNS policy |
