# Kubernetes YAML Index

This index maps common YAML resources and key fields to the best reference files.

## Workload Objects
- Pod
  - Key fields: `spec.containers`, `resources`, `env`, `volumeMounts`, `securityContext`
  - References: [pods](../../Kubernetes/normalized-concepts/pods.md), [security-contexts](../../Kubernetes/normalized-concepts/security-contexts.md)
- Deployment
  - Key fields: `spec.replicas`, `strategy`, `template`, `selector`
  - References: [deployments](../../Kubernetes/normalized-concepts/deployments.md)
- ReplicaSet
  - Key fields: `spec.replicas`, `selector`, `template`
  - References: [replicasets](../../Kubernetes/normalized-concepts/replicasets.md)
- DaemonSet
  - Key fields: `updateStrategy`, `template`, `nodeSelector`, `tolerations`
  - References: [daemonsets](../../Kubernetes/normalized-concepts/daemonsets.md)

## Scheduling and Placement
- Node selection
  - Key fields: `nodeSelector`, `affinity.nodeAffinity`
  - References: [node-selectors](../../Kubernetes/normalized-concepts/node-selectors.md), [node-affinity](../../Kubernetes/normalized-concepts/node-affinity.md)
- Taints and tolerations
  - Key fields: `spec.tolerations`
  - References: [taints-and-tolerations](../../Kubernetes/normalized-concepts/taints-and-tolerations.md)
- Priority classes
  - Key fields: `priorityClassName`
  - References: [priority-classes](../../Kubernetes/normalized-concepts/priority-classes.md)

## Configuration and Secrets
- ConfigMap
  - Key fields: `data`, `binaryData`, `envFrom`, volume projections
  - References: [configmaps](../../Kubernetes/normalized-concepts/configmaps.md)
- Secret
  - Key fields: `type`, `data`, `stringData`, volume/env wiring
  - References: [secrets](../../Kubernetes/normalized-concepts/secrets.md), [kube-api-server](../../Kubernetes/normalized-concepts/kube-api-server.md)

## Service and Traffic
- Service
  - Key fields: `spec.type`, `ports`, `selector`, `clusterIP`
  - References: [services](../../Kubernetes/normalized-concepts/services.md), [service-networking](../../Kubernetes/normalized-concepts/service-networking.md)
- Ingress
  - Key fields: `spec.rules`, `tls`, backend service mapping
  - References: [ingress](../../Kubernetes/normalized-concepts/ingress.md)
- Gateway API
  - Key fields: GatewayClass, Gateway listeners, HTTPRoute rules
  - References: [gateway-api](../../Kubernetes/normalized-concepts/gateway-api.md)

## Storage and Stateful YAML
- PersistentVolume
  - Key fields: `spec.capacity`, `accessModes`, `persistentVolumeReclaimPolicy`, `storageClassName`
  - References: [persistent-volumes](../../Kubernetes/normalized-concepts/persistent-volumes.md)
- PersistentVolumeClaim
  - Key fields: `spec.accessModes`, `resources.requests.storage`, `storageClassName`
  - References: [persistent-volume-claims](../../Kubernetes/normalized-concepts/persistent-volume-claims.md)
- StorageClass
  - Key fields: `provisioner`, `parameters`, `allowVolumeExpansion`, `volumeBindingMode`
  - References: [storage-class](../../Kubernetes/normalized-concepts/storage-class.md)

## Security YAML
- RBAC objects
  - Resources: Role, ClusterRole, RoleBinding, ClusterRoleBinding
  - Key fields: `rules`, `subjects`, `roleRef`
  - References: [rbac](../../Kubernetes/normalized-concepts/rbac.md), [authorization](../../Kubernetes/normalized-concepts/authorization.md)
- ServiceAccount
  - Key fields: `automountServiceAccountToken`
  - References: [service-accounts](../../Kubernetes/normalized-concepts/service-accounts.md)
- Pod security context
  - Key fields: `runAsUser`, `runAsNonRoot`, `fsGroup`, capability drops
  - References: [security-contexts](../../Kubernetes/normalized-concepts/security-contexts.md)

## Control Plane and Cluster Bootstrap Config
- kubeadm config
  - References: [kubeadm](../../Kubernetes/normalized-concepts/kubeadm.md)
- Static pod manifests for control plane components
  - Path pattern: `/etc/kubernetes/manifests/*`
  - References: [control plane failures](../../Kubernetes/troubleshooting/control_plane_failures.md)

## YAML Debug Workflow
1. Validate object kind/apiVersion alignment.
2. Check selector-label consistency first.
3. Confirm referenced objects exist in same namespace unless explicitly qualified.
4. Inspect events after apply:
   - `kubectl get events -A --sort-by=.lastTimestamp`
5. For rollout-impacting changes, validate with:
   - `kubectl rollout status deploy/<name>`

## Related Practical Guides
- [pod failures](../../Kubernetes/troubleshooting/pod_failures.md)
- [network failures](../../Kubernetes/troubleshooting/network_failures.md)
- [storage failures](../../Kubernetes/troubleshooting/storage_failures.md)
- [security failures](../../Kubernetes/troubleshooting/security_failures.md)
