# Cross-Cloud Kubernetes Comparison: Autoscaling

## 1. Core upstream Kubernetes concept
Kubernetes autoscaling has multiple loops:
- HPA scales Pods from resource/custom metrics.
- VPA adjusts requests/limits over time.
- Cluster Autoscaler/Karpenter-like components scale node capacity.

Upstream concepts define control loops, but infrastructure scale semantics are platform-dependent.

## 2. AKS implementation and responsibilities
AKS autoscaling uses Azure-integrated node pool and VM scale constructs:
- Pod scaling behavior depends on metric pipeline quality and request sizing.
- Node autoscaling behavior depends on pool constraints and quota boundaries.
- Scale-from-zero and burst handling are workload and platform-policy sensitive.

Shared responsibility in AKS:
- Microsoft manages control plane.
- You own request/limit hygiene, HPA target correctness, and noisy-neighbor controls.
- You own cost guardrails and quota planning.

## 3. EKS implementation and responsibilities
EKS autoscaling often combines HPA with cluster/node provisioning components:
- Node provisioning path differs based on chosen scaler architecture.
- IAM permissions and tagging/discovery are critical operational dependencies.
- Spot/on-demand mix introduces resilience and interruption trade-offs.

Shared responsibility in EKS:
- AWS manages control plane.
- You own scaling controller design, interruption handling, and bin-packing policy.
- You own metric reliability and tuning to avoid oscillation.

## 4. GKE implementation and responsibilities
GKE autoscaling integrates with GCP capacity systems:
- Pod and node autoscaling are available with mode-specific boundaries.
- Behavioral defaults may differ between Standard and Autopilot.
- Scaling effectiveness depends on workload requests and startup profile.

Shared responsibility in GKE:
- Google manages control plane.
- You own workload sizing, scaling SLOs, and metric selection/tuning.
- You own validating headroom and stabilization policies.

## 5. On-prem/self-managed considerations
On-prem autoscaling is constrained by physical/virtual capacity pools:
- Pod autoscaling still works, but node scaling may be slower and less elastic.
- Capacity procurement/allocation is often manual or integrated with private cloud APIs.
- You need explicit admission and priority policies for contention events.

## 6. Key operational differences
- Elasticity envelope:
  - AKS/EKS/GKE can burst within quota and regional capacity limits.
  - On-prem burst is bounded by pre-provisioned infrastructure.
- Control-loop dependencies:
  - Cloud implementations rely on provider APIs and permissions.
  - On-prem relies on platform automation maturity.
- Cost-performance dynamics:
  - Cloud gives rapid scaling at variable cost.
  - On-prem gives predictable sunk cost with tighter headroom constraints.

## 7. Trade-offs
- Aggressive autoscaling:
  - Pros: responsiveness and potentially better user experience.
  - Cons: churn, cold-start penalties, and higher spend.
- Conservative autoscaling:
  - Pros: stability and cost predictability.
  - Cons: risk of saturation during spikes.
- Multi-scaler complexity:
  - Pros: better optimization opportunities.
  - Cons: interacting loops can create instability if untuned.

## 8. Common pitfalls
- Missing or inaccurate resource requests causing ineffective HPA behavior.
- Scaling on lagging metrics without stabilization windows.
- Ignoring quota/capacity ceilings and assuming infinite cloud elasticity.
- Not testing interruption scenarios for spot/preemptible capacity.
- Treating autoscaling as a substitute for performance engineering.
