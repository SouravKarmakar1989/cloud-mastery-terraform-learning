# Cross-Cloud Kubernetes Comparison: Identity and RBAC

## 1. Core upstream Kubernetes concept
Kubernetes authorization/authentication baseline:
- Authentication answers who the caller is.
- Authorization (RBAC) answers what the caller can do.
- ServiceAccounts represent workload identity inside the cluster.
- Roles/ClusterRoles and bindings define least-privilege access.

Upstream Kubernetes does not prescribe one cloud identity federation mechanism.

## 2. AKS implementation and responsibilities
AKS identity patterns integrate with Azure identity systems:
- Cluster and workload access commonly federate with Entra ID (provider-sensitive details).
- Workload identity patterns map Kubernetes ServiceAccounts to cloud permissions.
- RBAC in-cluster still must be explicitly designed; cloud login does not replace Kubernetes RBAC design.

Shared responsibility in AKS:
- Microsoft provides managed control plane identity primitives.
- You own role modeling, namespace isolation, break-glass access process, and auditing.
- You own rotation, review cadence, and separation-of-duties policy.

## 3. EKS implementation and responsibilities
EKS identity patterns integrate with AWS IAM:
- Human/operator access and workload access are often bridged via IAM-linked mechanisms.
- Workload identity commonly binds ServiceAccounts to IAM permissions (provider-sensitive approach).
- In-cluster RBAC remains independently managed and frequently drifts without governance.

Shared responsibility in EKS:
- AWS manages control plane.
- You own IAM-to-RBAC mapping, policy scoping, temporary credential model, and audit controls.
- You own access reviews and deprovisioning hygiene.

## 4. GKE implementation and responsibilities
GKE identity patterns integrate with Google Cloud IAM:
- Workload identity federation ties ServiceAccounts to cloud IAM principals.
- Access posture differs by Standard vs Autopilot operating boundaries (mode-sensitive).
- Kubernetes RBAC remains your design surface for least privilege inside the cluster.

Shared responsibility in GKE:
- Google manages control plane.
- You own IAM/RBAC boundary design, privileged access workflow, and entitlement reviews.
- You own policy testing to prevent accidental broad permissions.

## 5. On-prem/self-managed considerations
On-prem identity is fully self-owned:
- You design and run authn integrations (OIDC, LDAP, certificates) and lifecycle controls.
- You operate external IdP integration, token policies, and key management.
- You must build robust joiner/mover/leaver automation and centralized audit ingestion.

## 6. Key operational differences
- Identity federation maturity:
  - AKS/EKS/GKE provide cloud-native building blocks.
  - On-prem requires assembling and operating full federation stack.
- Blast radius control:
  - Cloud IAM misconfiguration can propagate quickly across environments.
  - On-prem mistakes are local but often harder to detect without mature telemetry.
- Operational ergonomics:
  - Managed services reduce control-plane toil.
  - Self-managed clusters offer flexibility at significantly higher governance effort.

## 7. Trade-offs
- Tight cloud IAM integration:
  - Pros: unified audit and access lifecycle with cloud platform.
  - Cons: portability friction when moving workloads across providers.
- Strict RBAC decomposition:
  - Pros: lower privilege exposure and better compliance posture.
  - Cons: higher design/maintenance overhead and onboarding complexity.
- Centralized identity vs local autonomy:
  - Centralization improves consistency.
  - Local autonomy can improve team speed but risks policy fragmentation.

## 8. Common pitfalls
- Assuming cloud IAM assignment automatically grants correct Kubernetes RBAC access.
- Overusing cluster-admin for convenience.
- Neglecting ServiceAccount token hardening and workload identity migration.
- Failing to review stale bindings and dormant privileged principals.
- Missing audit correlation between cloud IAM events and Kubernetes API server events.
