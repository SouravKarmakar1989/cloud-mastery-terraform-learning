# Cross-Cloud Kubernetes Comparison: Upgrades

## 1. Core upstream Kubernetes concept
Kubernetes upgrades include multiple planes:
- Control plane version progression.
- Node kubelet/runtime version progression.
- Add-on and API compatibility management.

The upstream principle is skew compatibility within supported bounds, plus careful rollout and rollback strategy.

## 2. AKS implementation and responsibilities
AKS provides managed control plane upgrades and node pool upgrade workflows:
- Version availability and windows are provider-curated.
- Node pool sequencing and disruption posture remain operational decisions.
- Managed upgrade tooling helps, but workload readiness gates are your responsibility.

Shared responsibility in AKS:
- Microsoft performs control plane management.
- You own maintenance window policy, PodDisruptionBudget readiness, and canary environment validation.
- You own add-on compatibility checks and API deprecation remediation.

## 3. EKS implementation and responsibilities
EKS provides control plane upgrades with customer-managed node fleet transitions:
- Managed node groups and self-managed nodes have different upgrade burdens.
- Add-on/controller compatibility and IAM implications are customer-owned.
- Blue/green node strategies are often preferred for risk control.

Shared responsibility in EKS:
- AWS handles control plane.
- You own node rollout strategy, add-on matrix testing, and rollback preparedness.
- You own workload disruption minimization and observability during cutovers.

## 4. GKE implementation and responsibilities
GKE provides release channels and automated/assisted upgrade patterns:
- Channel choice affects cadence and risk posture.
- Autopilot and Standard differ in upgrade control boundaries.
- API deprecations still require application/platform remediation by the user.

Shared responsibility in GKE:
- Google manages control plane.
- You own channel selection governance, workload compatibility testing, and post-upgrade verification.
- You own communication and freeze policy around critical business windows.

## 5. On-prem/self-managed considerations
On-prem upgrades are fully customer-operated:
- You orchestrate etcd/control plane/node upgrades and sequencing.
- You own full compatibility matrix across CNI/CSI/ingress/observability stack.
- Rollback can be complex and must be practiced with realistic drills.

## 6. Key operational differences
- Upgrade control and effort:
  - AKS/EKS/GKE reduce control-plane toil.
  - On-prem requires complete runbook ownership.
- Cadence management:
  - Managed services enforce/support specific version lifecycles.
  - On-prem can delay but accumulates security and compatibility debt.
- Risk containment:
  - Cloud-managed automation helps but does not eliminate application risk.
  - Self-managed clusters require stronger change discipline and staging parity.

## 7. Trade-offs
- Faster upgrade cadence:
  - Pros: security posture and feature currency.
  - Cons: higher validation overhead and potential change fatigue.
- Slower cadence:
  - Pros: operational stability windows.
  - Cons: compounding deprecation and CVE exposure.
- Automated vs manual upgrade motion:
  - Automation reduces toil.
  - Manual control can reduce surprise but increases human-error risk.

## 8. Common pitfalls
- Upgrading clusters without validating add-on compatibility.
- Ignoring API deprecation warnings until upgrade day.
- Inadequate PodDisruptionBudget and draining strategy.
- Lack of pre-production environment parity for upgrade testing.
- Treating control plane upgrade as complete while leaving old node pools in place.
