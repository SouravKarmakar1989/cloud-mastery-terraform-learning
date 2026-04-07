# Kubernetes Knowledge Base Reading Order

This reading order is optimized for four use cases:
- study system
- revision system
- command reference
- architecture reference

All links point to the consolidated Kubernetes content:
- ../../Kubernetes/

## 1) Study System (first pass)
1. Start with curriculum structure:
   - [Master learning path](../../Kubernetes/learning-path/00_k8s_master_learning_path.md)
   - [Phase breakdown](../../Kubernetes/learning-path/01_phase_breakdown.md)
2. Learn in phase order:
   - [Phase 1: Foundations and control plane](../../Kubernetes/phases/PHASE-1_foundations_and_control_plane.md)
   - [Phase 2: Workload primitives](../../Kubernetes/phases/PHASE-2_workload_primitives.md)
   - [Phase 3: Application configuration and delivery](../../Kubernetes/phases/PHASE-3_application_configuration_and_delivery.md)
   - [Phase 4: Scheduling and compute placement](../../Kubernetes/phases/PHASE-4_scheduling_and_compute_placement.md)
   - [Phase 5: Networking and traffic flow](../../Kubernetes/phases/PHASE-5_networking_and_traffic_flow.md)
   - [Phase 6: Storage and stateful workloads](../../Kubernetes/phases/PHASE-6_storage_and_stateful_workloads.md)
   - [Phase 7: Security and access control](../../Kubernetes/phases/PHASE-7_security_and_access_control.md)
   - [Phase 8: Operations, design, and lifecycle](../../Kubernetes/phases/PHASE-8_operations_design_and_lifecycle.md)
   - [Phase 9: Extensibility and platform building](../../Kubernetes/phases/PHASE-9_extensibility_and_platform_building.md)
3. After each phase, read matching normalized concepts for depth:
   - control plane: cluster-architecture, kube-api-server, etcd, scheduler, controller-manager, kubelet, kube-proxy
   - workloads: pods, replicasets, deployments, daemonsets, namespaces, labels-and-selectors
   - config and delivery: configmaps, secrets, kubectl-apply, kustomize, helm
   - scheduling: scheduling, node-selectors, node-affinity, taints-and-tolerations, priority-classes
   - networking: networking, pod-networking, service-networking, services, dns, coredns, ingress, gateway-api, network-policies, cni
   - storage: storage, volumes, persistent-volumes, persistent-volume-claims, storage-class, csi
   - security: authentication, authorization, rbac, service-accounts, security-contexts, admission-controllers, tls, certificates, image-security
   - operations: logging-and-monitoring, backup-and-restore, upgrades, cluster-maintenance, high-availability, kubeadm, kubeconfig
   - extensibility: crd, custom-controllers, operator-framework, api-groups
4. Close each major area with failure-mode runbooks:
   - [Troubleshooting index](../../Kubernetes/troubleshooting/00_troubleshooting_index.md)

## 2) Revision System (fast recall)
1. Re-read:
   - [Phase breakdown](../../Kubernetes/learning-path/01_phase_breakdown.md)
2. Run one quick revision loop by domain:
   - Control plane -> [control_plane_failures](../../Kubernetes/troubleshooting/control_plane_failures.md)
   - Workloads -> [pod_failures](../../Kubernetes/troubleshooting/pod_failures.md)
   - Nodes -> [worker_node_failures](../../Kubernetes/troubleshooting/worker_node_failures.md)
   - Networking -> [network_failures](../../Kubernetes/troubleshooting/network_failures.md)
   - Storage -> [storage_failures](../../Kubernetes/troubleshooting/storage_failures.md)
   - Security -> [security_failures](../../Kubernetes/troubleshooting/security_failures.md)
3. Validate cross-platform understanding:
   - [Cross-cloud networking](../../Kubernetes/cross-cloud/networking.md)
   - [Cross-cloud storage](../../Kubernetes/cross-cloud/storage.md)
   - [Cross-cloud identity and RBAC](../../Kubernetes/cross-cloud/identity-and-rbac.md)
   - [Cross-cloud ingress and load balancing](../../Kubernetes/cross-cloud/ingress-and-load-balancing.md)
   - [Cross-cloud autoscaling](../../Kubernetes/cross-cloud/autoscaling.md)
   - [Cross-cloud upgrades](../../Kubernetes/cross-cloud/upgrades.md)
   - [Cross-cloud security and policy](../../Kubernetes/cross-cloud/security-and-policy.md)

## 3) Command Reference Path
1. Start here: [Troubleshooting index](../../Kubernetes/troubleshooting/00_troubleshooting_index.md)
2. Then open the command-first guide by symptom:
   - pod, control-plane, worker-node, network, storage, security
3. For object-level details, jump to normalized concepts:
   - kubectl-apply, kubeconfig, kubeadm, jsonpath, troubleshooting

## 4) Architecture Reference Path
1. Core architecture:
   - cluster-architecture, kube-api-server, etcd, scheduler, controller-manager, kubelet, kube-proxy
2. Data plane architecture:
   - pod-networking, service-networking, cni, dns, coredns, ingress, gateway-api
3. State architecture:
   - storage, persistent-volumes, persistent-volume-claims, storage-class, csi
4. Security architecture:
   - authentication, authorization, rbac, service-accounts, admission-controllers, tls, certificates
5. Platform trade-offs:
   - all files in ../../Kubernetes/cross-cloud/

## Recommended Cadence
- New learner: follow Study System fully.
- Active practitioner: alternate Revision System and Command Reference.
- Architect/platform engineer: use Architecture Reference + Cross-cloud set every cycle.
