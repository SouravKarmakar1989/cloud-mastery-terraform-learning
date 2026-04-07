# Cross-Cloud Kubernetes Comparison: Networking

## 1. Core upstream Kubernetes concept
Kubernetes networking has a few upstream invariants:
- Every Pod gets an IP.
- Pods can reach each other directly (without NAT at the Kubernetes model level).
- Nodes and Pods can route to each other.
- Service abstraction provides stable virtual IP/DNS over dynamic Pods.
- DNS is cluster-critical for service discovery.

Upstream Kubernetes does not mandate one network implementation. It defines behavior and lets CNI plugins implement it.

## 2. AKS implementation and responsibilities
AKS defaults and choices are provider-sensitive:
- CNI model: Azure CNI variants (overlay or VNet-integrated modes) and kubenet-like legacy patterns exist across AKS generations.
- Dataplane options: kube-proxy iptables/ipvs and Cilium/eBPF-based options are available in newer AKS configurations (version-sensitive).
- Service type LoadBalancer maps to Azure Load Balancer resources.
- Outbound egress can be routed via NAT Gateway, Azure Firewall, or load balancer SNAT depending on cluster networking setup.

Shared responsibility in AKS:
- Microsoft manages control plane networking components and platform integration surfaces.
- You own cluster network design decisions: CIDR sizing, egress model, DNS strategy, policy model, and connectivity to private endpoints/on-prem.
- You own NetworkPolicy definition and validation.

## 3. EKS implementation and responsibilities
EKS has strongly AWS-coupled networking behavior:
- Default CNI is AWS VPC CNI (Pods consume VPC IPs on ENIs by default).
- Service type LoadBalancer maps to AWS ELB/NLB via controller paths.
- Ingress typically uses AWS Load Balancer Controller (ALB/NLB behavior is controller and config dependent).
- Security Groups for Pods is available in specific modes and versions (provider/version-sensitive).

Shared responsibility in EKS:
- AWS manages control plane and API endpoint availability.
- You own VPC/subnet architecture, route tables, SG/NACL design, CNI tuning, and add-on lifecycle for network components.
- You own cross-account and hybrid connectivity design (Transit Gateway/VPN/Direct Connect patterns).

## 4. GKE implementation and responsibilities
GKE networking is opinionated around Google Cloud constructs:
- VPC-native clusters are common (alias IP model for Pods/Services).
- Service type LoadBalancer maps to Google Cloud Load Balancing resources.
- Dataplane V2 (eBPF-based) is available in many cluster modes (version-sensitive).
- Ingress can map to Google-managed L7 load balancing via GKE controllers.

Shared responsibility in GKE:
- Google manages control plane networking and many defaults tightly.
- You own subnet/IP range sizing, policy definitions, egress architecture, and private cluster endpoint access design.
- You own compatibility testing when toggling dataplane modes.

## 5. On-prem/self-managed considerations
On-prem is implementation-first:
- You must choose and operate CNI (Calico/Cilium/Flannel/others), kube-proxy mode, and LB strategy (MetalLB/F5/HAProxy/BGP).
- You must solve north-south traffic, east-west policy, DNS reliability, and IPAM with your own SRE model.
- You must own MTU strategy and underlay/overlay compatibility end-to-end.
- Multi-cluster and hybrid routing is entirely your design and operations burden.

## 6. Key operational differences
- Pod IP model:
  - AKS/EKS/GKE each have cloud-integrated IPAM modes; on-prem depends on chosen CNI/IPAM stack.
- Load balancer lifecycle:
  - Managed clouds create/provider-wire L4/L7 resources via controllers; on-prem requires explicit LB platform integration.
- Policy enforcement:
  - Upstream NetworkPolicy semantics are consistent, but enforcement capability depends on dataplane/CNI.
- Troubleshooting stack:
  - Cloud managed environments add provider-specific telemetry paths; on-prem requires full observability plumbing by operator.

## 7. Trade-offs
- Cloud-managed networking:
  - Pros: faster provisioning, integrated LB/DNS/VPC primitives.
  - Cons: provider coupling, feature asymmetry, quota and cloud construct limits.
- On-prem networking:
  - Pros: full control, customizable dataplane and policy model.
  - Cons: higher operational complexity, larger blast radius for design mistakes.
- eBPF/dataplane upgrades:
  - Pros: better performance/visibility in many scenarios.
  - Cons: compatibility and operational retraining risk (version-sensitive).

## 8. Common pitfalls
- Mixing upstream assumptions with provider defaults (for example, assuming identical Pod IP behavior across clouds).
- Under-sizing Pod/Service CIDRs and hitting scale ceilings late.
- Treating Service type LoadBalancer as identical across providers.
- Enabling NetworkPolicy without validating actual enforcement in the chosen CNI/dataplane.
- Ignoring SNAT/egress path design until production traffic issues appear.
- Forgetting that private cluster endpoint access patterns differ significantly across AKS/EKS/GKE.
