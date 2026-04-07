# Kubernetes YAML Index

This index maps common YAML resources and key fields to the best reference files.

## Workload Objects
- Pod
  - Key fields: `spec.containers`, `resources`, `env`, `volumeMounts`, `securityContext`
  - References: [pods](../study/normalized-concepts/pods.md), [security-contexts](../study/normalized-concepts/security-contexts.md)
- Deployment
  - Key fields: `spec.replicas`, `strategy`, `template`, `selector`
  - References: [deployments](../study/normalized-concepts/deployments.md)
- ReplicaSet
  - Key fields: `spec.replicas`, `selector`, `template`
  - References: [replicasets](../study/normalized-concepts/replicasets.md)
- DaemonSet
  - Key fields: `updateStrategy`, `template`, `nodeSelector`, `tolerations`
  - References: [daemonsets](../study/normalized-concepts/daemonsets.md)

## Scheduling and Placement
- Node selection
  - Key fields: `nodeSelector`, `affinity.nodeAffinity`
  - References: [node-selectors](../study/normalized-concepts/node-selectors.md), [node-affinity](../study/normalized-concepts/node-affinity.md)
- Taints and tolerations
  - Key fields: `spec.tolerations`
  - References: [taints-and-tolerations](../study/normalized-concepts/taints-and-tolerations.md)
- Priority classes
  - Key fields: `priorityClassName`
  - References: [priority-classes](../study/normalized-concepts/priority-classes.md)

## Configuration and Secrets
- ConfigMap
  - Key fields: `data`, `binaryData`, `envFrom`, volume projections
  - References: [configmaps](../study/normalized-concepts/configmaps.md)
- Secret
  - Key fields: `type`, `data`, `stringData`, volume/env wiring
  - References: [secrets](../study/normalized-concepts/secrets.md), [kube-api-server](../study/normalized-concepts/kube-api-server.md)

## Service and Traffic
- Service
  - Key fields: `spec.type`, `ports`, `selector`, `clusterIP`
  - References: [services](../study/normalized-concepts/services.md), [service-networking](../study/normalized-concepts/service-networking.md)
- Ingress
  - Key fields: `spec.rules`, `tls`, backend service mapping
  - References: [ingress](../study/normalized-concepts/ingress.md)
- Gateway API
  - Key fields: GatewayClass, Gateway listeners, HTTPRoute rules
  - References: [gateway-api](../study/normalized-concepts/gateway-api.md)

## Storage and Stateful YAML
- PersistentVolume
  - Key fields: `spec.capacity`, `accessModes`, `persistentVolumeReclaimPolicy`, `storageClassName`
  - References: [persistent-volumes](../study/normalized-concepts/persistent-volumes.md)
- PersistentVolumeClaim
  - Key fields: `spec.accessModes`, `resources.requests.storage`, `storageClassName`
  - References: [persistent-volume-claims](../study/normalized-concepts/persistent-volume-claims.md)
- StorageClass
  - Key fields: `provisioner`, `parameters`, `allowVolumeExpansion`, `volumeBindingMode`
  - References: [storage-class](../study/normalized-concepts/storage-class.md)

## Security YAML
- RBAC objects
  - Resources: Role, ClusterRole, RoleBinding, ClusterRoleBinding
  - Key fields: `rules`, `subjects`, `roleRef`
  - References: [rbac](../study/normalized-concepts/rbac.md), [authorization](../study/normalized-concepts/authorization.md)
- ServiceAccount
  - Key fields: `automountServiceAccountToken`
  - References: [service-accounts](../study/normalized-concepts/service-accounts.md)
- Pod security context
  - Key fields: `runAsUser`, `runAsNonRoot`, `fsGroup`, capability drops
  - References: [security-contexts](../study/normalized-concepts/security-contexts.md)

## Control Plane and Cluster Bootstrap Config
- kubeadm config
  - References: [kubeadm](../study/normalized-concepts/kubeadm.md)
- Static pod manifests for control plane components
  - Path pattern: `/etc/kubernetes/manifests/*`
  - References: [control plane failures](../study/troubleshooting/control_plane_failures.md)

## YAML Debug Workflow
1. Validate object kind/apiVersion alignment.
2. Check selector-label consistency first.
3. Confirm referenced objects exist in same namespace unless explicitly qualified.
4. Inspect events after apply:
   - `kubectl get events -A --sort-by=.lastTimestamp`
5. For rollout-impacting changes, validate with:
   - `kubectl rollout status deploy/<name>`

## Related Practical Guides
- [pod failures](../study/troubleshooting/pod_failures.md)
- [network failures](../study/troubleshooting/network_failures.md)
- [storage failures](../study/troubleshooting/storage_failures.md)
- [security failures](../study/troubleshooting/security_failures.md)
