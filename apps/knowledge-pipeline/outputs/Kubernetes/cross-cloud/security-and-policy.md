# Cross-Cloud Kubernetes Comparison: Security and Policy

## 1. Core upstream Kubernetes concept
Kubernetes security and policy span:
- API authentication/authorization.
- Workload isolation and admission control.
- NetworkPolicy, Pod Security posture, and secrets handling.
- Runtime/container supply-chain controls.

Upstream primitives define intent; enforcement depth depends on platform integrations and chosen tooling.

## 2. AKS implementation and responsibilities
AKS security posture combines Kubernetes controls with Azure security ecosystem:
- Admission and policy enforcement can integrate with cloud governance tooling.
- Secret management often leverages cloud-native key/secrets services through CSI/integration patterns.
- Network segmentation and private cluster posture are design-time decisions.

Shared responsibility in AKS:
- Microsoft secures managed control plane components.
- You own workload hardening, policy-as-code scope, secret lifecycle, and incident response process.
- You own image provenance controls and vulnerability remediation SLAs.

## 3. EKS implementation and responsibilities
EKS security posture combines Kubernetes controls with AWS security ecosystem:
- IAM integration strongly influences workload and operator access risk.
- Policy enforcement stacks are customer-selected and customer-operated.
- Network controls rely on VPC and Kubernetes policy alignment.

Shared responsibility in EKS:
- AWS secures control plane.
- You own admission policy, secret encryption/use patterns, runtime detection stack, and evidence retention.
- You own secure baseline for worker AMIs and node hardening.

## 4. GKE implementation and responsibilities
GKE security posture combines Kubernetes controls with Google Cloud security capabilities:
- Workload identity and IAM integration are central to least-privilege design.
- Managed features can simplify baseline security but do not remove application-layer obligations.
- Policy framework choice remains a customer architecture decision.

Shared responsibility in GKE:
- Google secures control plane.
- You own policy coverage, workload hardening, secret governance, and compliance mapping.
- You own threat modeling and blast-radius validation.

## 5. On-prem/self-managed considerations
On-prem security demands full-stack ownership:
- You own control plane hardening, node OS baseline, certificate lifecycle, and audit pipeline integrity.
- Policy engines, secret stores, and runtime detection tooling must be deployed and maintained by your team.
- Regulatory controls can be easier to customize but harder to operate consistently.

## 6. Key operational differences
- Baseline managed security:
  - AKS/EKS/GKE provide hardened managed control plane defaults.
  - On-prem requires explicit hardening and continuous verification.
- Governance integration:
  - Cloud platforms offer native policy/compliance ecosystems.
  - On-prem often needs custom integration and tooling assembly.
- Detection/response velocity:
  - Managed ecosystems can accelerate telemetry and remediation workflows.
  - Self-managed environments depend on local SOC/platform maturity.

## 7. Trade-offs
- Provider-integrated security stack:
  - Pros: rapid baseline and tighter cloud telemetry integration.
  - Cons: portability and lock-in concerns.
- Toolchain portability:
  - Pros: consistency across clouds and on-prem.
  - Cons: more operational overhead and integration work.
- Strict policy enforcement:
  - Pros: reduced risk surface and better compliance.
  - Cons: potential developer friction without exception workflows.

## 8. Common pitfalls
- Assuming managed control plane means managed workload security.
- Incomplete admission policy coverage (privileged pods, host mounts, image trust).
- Secret sprawl and weak rotation discipline.
- Missing network policy defaults, leaving broad east-west exposure.
- Not rehearsing incident response with realistic cluster compromise scenarios.
