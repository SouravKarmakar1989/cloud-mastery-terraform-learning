# 12_EKS_Networking.md

## Scope
- Topic: EKS cluster networking, pod networking, node/pod security groups, service exposure, custom networking
- Files processed: 10
- Extracted non-empty transcript lines: 983
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 12: EKS Networking)

### Foundations (Modules with Source Transcript Details)

#### Module 1: EKS Networking Mental Model
- EKS networking adds Kubernetes abstraction on top of AWS networking primitives.
- Pods, nodes, services, and ingress each create different network boundaries.
- Container orchestration does not remove the need for IP planning and segmentation discipline.




##### Source Transcript Details
- Module focus: EKS Networking Mental Model
- Primary transcript files:
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/235_Kubernetes Architecture.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/237_EKS Cluster Networking.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/238_EKS Pod Networking - Part 1.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/239_EKS Pod Networking - Part 2.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/240_Security Group in EKS - Node and Pod level.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/242_EKS Custom Networking - Extending IPv4 address space.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/236_Amazon EKS Architecture.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/243_EKS Networking Summary.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/234_Section Introduction.txt
- Top concept clusters from transcript metadata:
- EKS Networking Operational Context
- Kubernetes Networking Abstraction
- Cluster and Pod Network Model
- Address Space and Scale
- Service Exposure Patterns
- Security Boundary Placement
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

#### Module 2: Cluster and Pod Behavior
- Pod networking is part of application reachability and cluster scale design.
- Node-level and pod-level boundaries solve different isolation problems.
- Service exposure choices determine how much of the cluster becomes externally reachable.




##### Source Transcript Details
- Module focus: Cluster and Pod Behavior
- Primary transcript files:
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/237_EKS Cluster Networking.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/238_EKS Pod Networking - Part 1.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/240_Security Group in EKS - Node and Pod level.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/239_EKS Pod Networking - Part 2.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/235_Kubernetes Architecture.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/236_Amazon EKS Architecture.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/243_EKS Networking Summary.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/242_EKS Custom Networking - Extending IPv4 address space.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/234_Section Introduction.txt
- Top concept clusters from transcript metadata:
- EKS Networking Operational Context
- Cluster and Pod Network Model
- Kubernetes Networking Abstraction
- Address Space and Scale
- Service Exposure Patterns
- Security Boundary Placement
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

#### Module 3: Address and Scale Planning
- Kubernetes networking can consume IP space aggressively.
- Custom networking patterns exist because default layouts do not always scale well.
- Platform teams need repeatable cluster networking standards to avoid environment drift.






##### Source Transcript Details
- Module focus: Address and Scale Planning
- Primary transcript files:
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/242_EKS Custom Networking - Extending IPv4 address space.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/237_EKS Cluster Networking.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/239_EKS Pod Networking - Part 2.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/241_Exposing services using ClusterIP, NodePort, LoadBalancer and Ingress.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/238_EKS Pod Networking - Part 1.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/243_EKS Networking Summary.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/240_Security Group in EKS - Node and Pod level.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/235_Kubernetes Architecture.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/234_Section Introduction.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/21_Amazon EKS Networking/236_Amazon EKS Architecture.txt
- Top concept clusters from transcript metadata:
- EKS Networking Operational Context
- Kubernetes Networking Abstraction
- Cluster and Pod Network Model
- Address Space and Scale
- Service Exposure Patterns
- Security Boundary Placement
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

## Key Operational Decisions

- Decide what boundary or path eks networking is supposed to control before you add more routes, policies, or services.
- Decide how identity, DNS, and routing assumptions should be documented around eks networking.
- Decide which layer should own reachability, security, and failover behavior in eks networking.
- Decide which telemetry proves that eks networking is working as designed instead of only appearing configured.
- Decide how governance and operational ownership will keep eks networking understandable as the platform grows.

## Deep Expansion (Networking Concepts)

### Core Services

1. Managed Kubernetes network model: AWS: EKS VPC CNI || Azure: AKS kubenet or Azure CNI || GCP: GKE VPC-native networking
2. Pod address scale: AWS: Secondary ENI IP allocation and prefix delegation || Azure: Subnet sizing and pod CIDR planning || GCP: Alias IP ranges
3. Service exposure: AWS: LoadBalancer, ALB ingress, NLB, and Gateway API patterns || Azure: Internal or external load balancer plus ingress || GCP: Service, ingress, and gateway patterns
4. Pod isolation: AWS: Security groups for pods and network policy || Azure: Network policy and NSG layering || GCP: Network policy and firewall layering
5. Private cluster posture: AWS: Private API endpoint plus private nodes || Azure: Private AKS || GCP: Private GKE

### Architect-Level Concept Expansion

#### 1. EKS Networking Mental Model
- EKS Networking Mental Model sets the boundary for eks networking, because it explains what the platform owns, what the operator owns, and where the first failure usually appears.
- When that boundary is fuzzy, teams tend to misread symptoms and make design choices in eks networking that solve the wrong problem.

#### 2. Cluster and Pod Behavior
- Cluster and Pod Behavior matter because they determine how the control plane, data path, and identity or addressing model actually work inside eks networking.
- Understanding those building blocks makes it easier to compare AWS behavior with Azure and GCP instead of memorizing vendor-specific wording.

#### 3. Address and Scale Planning
- Address and Scale Planning are where scale, resilience, and governance turn basic feature knowledge into durable system design for eks networking.
- This is usually the part of the topic that separates a passing lab from a design that still behaves well under real traffic and operator pressure.

#### 4. Observability is part of the network design
- Eks networking is only trustworthy when the team can prove what path traffic takes and which layer is allowed to change that path.
- Without those signals, networking problems inside eks networking often masquerade as random application or infrastructure failures.

#### 5. Cross-cloud mapping keeps the boundary clear
- Mapping eks networking to Azure and GCP helps separate the underlying networking concept from the AWS product packaging around it.
- That usually makes both troubleshooting and migration planning easier because the real control surface stays visible.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Managed Kubernetes network model | EKS VPC CNI | AKS kubenet or Azure CNI | GKE VPC-native networking |
| Pod address scale | Secondary ENI IP allocation and prefix delegation | Subnet sizing and pod CIDR planning | Alias IP ranges |
| Service exposure | LoadBalancer, ALB ingress, NLB, and Gateway API patterns | Internal or external load balancer plus ingress | Service, ingress, and gateway patterns |
| Pod isolation | Security groups for pods and network policy | Network policy and NSG layering | Network policy and firewall layering |
| Private cluster posture | Private API endpoint plus private nodes | Private AKS | Private GKE |
