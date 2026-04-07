# Cross-Cloud Kubernetes Comparison: Storage

## 1. Core upstream Kubernetes concept
Upstream storage model centers on:
- Volume types for Pods.
- PersistentVolume (PV) as supply.
- PersistentVolumeClaim (PVC) as demand.
- StorageClass for dynamic provisioning policy.
- CSI as the pluggable interface between Kubernetes and storage systems.

Kubernetes defines object lifecycle and binding semantics, not cloud disk/file implementation details.

## 2. AKS implementation and responsibilities
AKS storage patterns are Azure-integrated:
- CSI drivers commonly map to Azure Disk and Azure Files.
- StorageClass choices determine disk SKU/performance and filesystem/mount options.
- Zone-aware behavior depends on node pool topology and storage class configuration (provider-sensitive).

Shared responsibility in AKS:
- Microsoft provides managed control plane and cloud storage APIs.
- You own StorageClass design, reclaim policy, backup/restore workflow, and stateful workload placement.
- You own PVC sizing, expansion policy validation, and application-level durability expectations.

## 3. EKS implementation and responsibilities
EKS storage patterns are AWS-integrated:
- CSI drivers commonly map to EBS for block and EFS for shared file semantics.
- Storage behavior varies with topology mode and AZ distribution (provider-sensitive).
- Controller/add-on deployment lifecycle is an operational concern for many EKS environments.

Shared responsibility in EKS:
- AWS manages control plane.
- You own CSI add-on versioning, StorageClass policy, backup architecture, and disruption handling for stateful sets.
- You own IAM design for storage controllers and least-privilege access.

## 4. GKE implementation and responsibilities
GKE storage patterns are GCP-integrated:
- CSI drivers commonly map to Persistent Disk classes and managed file patterns where configured.
- Dynamic provisioning is tightly integrated but still governed by StorageClass and topology settings.
- Autopilot/Standard operational boundaries can change who manages what (provider-mode-sensitive).

Shared responsibility in GKE:
- Google manages control plane.
- You own StorageClass correctness, stateful workload architecture, backup/restore process, and data migration workflow.
- You own validation of expansion, failover, and restore under realistic load.

## 5. On-prem/self-managed considerations
On-prem state management is operator-heavy:
- You choose and run CSI stack (for example Ceph/Rook, NFS-backed drivers, vendor SAN/NAS CSI).
- You own replication policy, snapshot orchestration, backup tooling, and DR strategy end-to-end.
- You must handle storage failure domains explicitly and integrate with node lifecycle process.

## 6. Key operational differences
- Provisioning model:
  - AKS/EKS/GKE provide deeply integrated cloud block/file backends.
  - On-prem requires explicit CSI + platform integration.
- Failure domain handling:
  - Cloud-managed zonal/regional constraints differ per provider.
  - On-prem relies on your cluster + storage topology discipline.
- Backup maturity path:
  - Cloud ecosystems have native snapshot APIs and ecosystem tools.
  - On-prem depends on chosen storage platform capabilities and operator process.

## 7. Trade-offs
- Managed-cloud storage integration:
  - Pros: quick dynamic provisioning, reliable API-backed lifecycle.
  - Cons: provider coupling and migration friction between clouds.
- On-prem storage flexibility:
  - Pros: full control over performance and data locality.
  - Cons: high operational burden, longer mean-time-to-recovery if design/process is weak.
- Shared file vs block choices:
  - Pros/cons differ by workload concurrency and latency requirements.
  - Misfit choice often causes subtle performance and locking issues.

## 8. Common pitfalls
- Treating PVC binding success as proof of application durability.
- Ignoring topology and scheduling interactions for stateful workloads.
- Using default StorageClass blindly without performance/SLA validation.
- Not testing restore workflows until a real incident.
- Assuming filesystem semantics/performance are equivalent across AKS/EKS/GKE backends.
- Missing reclaim policy implications and accidentally deleting critical data paths.
