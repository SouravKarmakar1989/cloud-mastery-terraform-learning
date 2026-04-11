# 09_Network_Security_Controls.md

## Scope
- Topic: Security groups, NACLs, AWS WAF, Shield, Network Firewall, GWLB, ACM, Firewall Manager
- Files processed: 21
- Extracted non-empty transcript lines: 1912
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 9: Network Security Controls)

### Foundations (Modules with Source Transcript Details)

#### Module 1: Network Security Mental Model
- Network security controls exist at multiple layers and should not be collapsed into one service choice.
- Workload filtering, web filtering, DDoS defense, and inline inspection solve different threat classes.
- Good architecture places each control where it has the best signal and enforcement power.




##### Source Transcript Details
- Module focus: Network Security Mental Model
- Primary transcript files:
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/229_Hands On_ Gateway Load Balancer.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/226_Hands On_ AWS Network Firewall.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/225_AWS Network Firewall Components & Rule groups.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/232_AWS Certificate Manager (ACM).txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/218_Introduction to AWS Network Security Services.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/221_Hands On_ Cross-Site Scripting (XSS) attack simulation and prevention with WAF.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/228_Gateway Load Balancer and Traffic flow.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/27_Networking - VPC/331_NACL & Security Groups.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/219_Recap - Security Groups and Network ACL.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/222_AWS Shield and Shield Advanced (DDoS protection).txt
- Top concept clusters from transcript metadata:
- Network Security Operational Context
- Stateful and Stateless Filtering
- Transport Trust and Certificates
- Inline Network Inspection
- DDoS and Edge Defense
- Layer 7 Threat Protection
- Centralized Policy Governance
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

#### Module 2: Boundary Layers
- Security groups protect workloads with stateful rules close to the target.
- NACLs provide stateless subnet-boundary filtering.
- WAF, Shield, and Network Firewall address different layers of internet and network-path risk.




##### Source Transcript Details
- Module focus: Boundary Layers
- Primary transcript files:
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/229_Hands On_ Gateway Load Balancer.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/226_Hands On_ AWS Network Firewall.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/225_AWS Network Firewall Components & Rule groups.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/232_AWS Certificate Manager (ACM).txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/218_Introduction to AWS Network Security Services.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/221_Hands On_ Cross-Site Scripting (XSS) attack simulation and prevention with WAF.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/228_Gateway Load Balancer and Traffic flow.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/27_Networking - VPC/331_NACL & Security Groups.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/219_Recap - Security Groups and Network ACL.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/222_AWS Shield and Shield Advanced (DDoS protection).txt
- Top concept clusters from transcript metadata:
- Network Security Operational Context
- Stateful and Stateless Filtering
- Transport Trust and Certificates
- Inline Network Inspection
- DDoS and Edge Defense
- Layer 7 Threat Protection
- Centralized Policy Governance
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

#### Module 3: Trust and Governance
- ACM defines certificate lifecycle and transport trust posture.
- Firewall Manager centralizes policy only if organizational standards already exist.
- Inspection paths are part of network architecture, not just security tooling.






##### Source Transcript Details
- Module focus: Trust and Governance
- Primary transcript files:
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/226_Hands On_ AWS Network Firewall.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/218_Introduction to AWS Network Security Services.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/225_AWS Network Firewall Components & Rule groups.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/232_AWS Certificate Manager (ACM).txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/233_AWS Firewall Manager.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/229_Hands On_ Gateway Load Balancer.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/221_Hands On_ Cross-Site Scripting (XSS) attack simulation and prevention with WAF.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/228_Gateway Load Balancer and Traffic flow.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/222_AWS Shield and Shield Advanced (DDoS protection).txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/20_AWS Network Security Services/223_Introduction to AWS Network Firewall.txt
- Top concept clusters from transcript metadata:
- Network Security Operational Context
- Transport Trust and Certificates
- Stateful and Stateless Filtering
- Inline Network Inspection
- Centralized Policy Governance
- DDoS and Edge Defense
- Layer 7 Threat Protection
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

## Key Operational Decisions

- Decide what boundary or path network security controls is supposed to control before you add more routes, policies, or services.
- Decide how identity, DNS, and routing assumptions should be documented around network security controls.
- Decide which layer should own reachability, security, and failover behavior in network security controls.
- Decide which telemetry proves that network security controls is working as designed instead of only appearing configured.
- Decide how governance and operational ownership will keep network security controls understandable as the platform grows.

## Deep Expansion (Networking Concepts)

### Core Services

1. Stateful workload firewall: AWS: Security Groups || Azure: NSGs || GCP: VPC firewall rules
2. Subnet-level coarse filtering: AWS: NACLs || Azure: Subnet-level NSG patterns || GCP: Hierarchical firewall and subnet tagging patterns
3. Managed network firewall: AWS: AWS Network Firewall || Azure: Azure Firewall || GCP: Cloud Firewall and policy layers
4. Private exposure reduction: AWS: PrivateLink and endpoint policies || Azure: Private Endpoint and service endpoints || GCP: Private Service Connect
5. DDoS and edge protection: AWS: Shield, WAF, and CloudFront || Azure: DDoS Protection and WAF || GCP: Cloud Armor and edge security

### Architect-Level Concept Expansion

#### 1. Network Security Mental Model
- Network Security Mental Model sets the boundary for network security controls, because it explains what the platform owns, what the operator owns, and where the first failure usually appears.
- When that boundary is fuzzy, teams tend to misread symptoms and make design choices in network security controls that solve the wrong problem.

#### 2. Boundary Layers
- Boundary Layers matter because they determine how the control plane, data path, and identity or addressing model actually work inside network security controls.
- Understanding those building blocks makes it easier to compare AWS behavior with Azure and GCP instead of memorizing vendor-specific wording.

#### 3. Trust and Governance
- Trust and Governance are where scale, resilience, and governance turn basic feature knowledge into durable system design for network security controls.
- This is usually the part of the topic that separates a passing lab from a design that still behaves well under real traffic and operator pressure.

#### 4. Observability is part of the network design
- Network security controls is only trustworthy when the team can prove what path traffic takes and which layer is allowed to change that path.
- Without those signals, networking problems inside network security controls often masquerade as random application or infrastructure failures.

#### 5. Cross-cloud mapping keeps the boundary clear
- Mapping network security controls to Azure and GCP helps separate the underlying networking concept from the AWS product packaging around it.
- That usually makes both troubleshooting and migration planning easier because the real control surface stays visible.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Stateful workload firewall | Security Groups | NSGs | VPC firewall rules |
| Subnet-level coarse filtering | NACLs | Subnet-level NSG patterns | Hierarchical firewall and subnet tagging patterns |
| Managed network firewall | AWS Network Firewall | Azure Firewall | Cloud Firewall and policy layers |
| Private exposure reduction | PrivateLink and endpoint policies | Private Endpoint and service endpoints | Private Service Connect |
| DDoS and edge protection | Shield, WAF, and CloudFront | DDoS Protection and WAF | Cloud Armor and edge security |
