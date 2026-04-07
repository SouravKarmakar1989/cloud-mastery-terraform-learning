# Cross-Cloud Kubernetes Comparison: Ingress and Load Balancing

## 1. Core upstream Kubernetes concept
Traffic entry patterns in Kubernetes:
- Service objects expose workloads internally/externally.
- Ingress provides HTTP(S) routing abstraction.
- Gateway API is the evolving, more expressive traffic management model.
- Controllers implement these APIs; Kubernetes core defines resources, not provider appliances.

## 2. AKS implementation and responsibilities
AKS commonly integrates with Azure load balancing and application routing stacks:
- Service type LoadBalancer maps to Azure networking primitives.
- Ingress/Gateway controllers vary by team standard and platform constraints.
- TLS termination, WAF posture, and DNS integration are operator decisions.

Shared responsibility in AKS:
- Microsoft operates control plane.
- You own controller lifecycle, certificate management, routing policy, and edge security.
- You own SLOs for north-south latency and failure handling.

## 3. EKS implementation and responsibilities
EKS commonly integrates with AWS load balancing controllers and edge services:
- Service/Ingress controller behavior depends on selected AWS integrations.
- Multi-AZ and VPC networking configuration materially affect traffic resilience.
- TLS and external DNS automation are still customer-operated concerns.

Shared responsibility in EKS:
- AWS runs control plane.
- You own ingress controller operations, annotations/policy hygiene, and capacity planning.
- You own canary/blue-green strategy for edge changes.

## 4. GKE implementation and responsibilities
GKE commonly integrates with Google Cloud load balancing options:
- Service and Ingress classes map to GCP load balancing capabilities.
- Features and defaults can differ by cluster mode and selected controller path.
- Policy and certificate lifecycle remain customer responsibilities.

Shared responsibility in GKE:
- Google manages control plane.
- You own routing architecture, cert rotation automation, and failure-domain testing.
- You own app-aware traffic shaping and rollout safety controls.

## 5. On-prem/self-managed considerations
On-prem ingress requires deliberate platform assembly:
- You select and run ingress/gateway controllers plus external load balancing strategy.
- BGP/MetalLB or hardware ADC integrations are common but operationally nuanced.
- You must design highly available edge paths and DNS failover behavior explicitly.

## 6. Key operational differences
- Edge integration:
  - Managed clouds provide first-class LB primitives and APIs.
  - On-prem depends on internal networking platform maturity.
- Certificate and WAF posture:
  - Cloud services can accelerate baseline security controls.
  - On-prem may require additional tooling and custom automation.
- Day-2 complexity:
  - Cloud-native controllers reduce some toil.
  - Multi-controller coexistence can still cause drift in any environment.

## 7. Trade-offs
- Cloud-native ingress paths:
  - Pros: integrated observability and managed edge services.
  - Cons: annotations and semantics can be provider-specific.
- Portable controller strategy:
  - Pros: more consistent behavior across environments.
  - Cons: may underuse provider-optimized features.
- Centralized edge governance:
  - Pros: security consistency and policy enforcement.
  - Cons: potential bottlenecks for app teams.

## 8. Common pitfalls
- Mixing multiple ingress controllers without explicit class ownership.
- Assuming identical annotation behavior across AKS/EKS/GKE.
- Treating TLS renewal as a one-time setup.
- Not load-testing failover and surge conditions.
- Forgetting to align external DNS, certificate SANs, and ingress route changes.
