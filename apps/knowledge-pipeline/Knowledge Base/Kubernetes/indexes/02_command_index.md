# Kubernetes Command Index

This is a practical command lookup, organized by operation.

## Cluster and Context
- Show current context:
  - `kubectl config current-context`
  - Reference: [kubeconfig](../study/normalized-concepts/kubeconfig.md)
- Set namespace on current context:
  - `kubectl config set-context --current --namespace=<ns>`
  - Reference: [pods](../study/normalized-concepts/pods.md), [pod failures](../study/troubleshooting/pod_failures.md)
- Cluster health and versions:
  - `kubectl cluster-info`
  - `kubectl version --short`
  - Reference: [control plane failures](../study/troubleshooting/control_plane_failures.md)

## Workload and Pod Diagnostics
- List problematic pods:
  - `kubectl get pods -A`
  - `kubectl get pods -A | grep -E 'Pending|CrashLoopBackOff|Error|ImagePull'`
- Describe pod:
  - `kubectl -n <ns> describe pod <pod>`
- Pod logs (current and previous):
  - `kubectl -n <ns> logs <pod> --all-containers=true --tail=200`
  - `kubectl -n <ns> logs <pod> --all-containers=true --previous --tail=200`
- Rollout status:
  - `kubectl -n <ns> rollout status deploy/<deploy>`
- Reference: [pod failures](../study/troubleshooting/pod_failures.md), [troubleshooting](../study/normalized-concepts/troubleshooting.md)

## Services, Endpoints, and DNS
- Service and endpoint state:
  - `kubectl get svc,ep -A`
  - `kubectl -n <ns> describe svc <service>`
- DNS checks from pod:
  - `kubectl -n <ns> exec -it <pod> -- nslookup kubernetes.default.svc.cluster.local`
  - `kubectl -n <ns> exec -it <pod> -- nslookup <service>.<ns>.svc.cluster.local`
- Connectivity checks from pod:
  - `kubectl -n <ns> exec -it <pod> -- sh -c "nc -vz <svc-cluster-ip> <port>"`
  - `kubectl -n <ns> exec -it <pod> -- sh -c "curl -sv http://<service>.<ns>.svc.cluster.local:<port>"`
- Reference: [network failures](../study/troubleshooting/network_failures.md), [dns](../study/normalized-concepts/dns.md), [services](../study/normalized-concepts/services.md)

## Node and Runtime Diagnostics
- Node condition and placement:
  - `kubectl get nodes -o wide`
  - `kubectl describe node <node>`
  - `kubectl get pods -A -o wide --field-selector spec.nodeName=<node>`
- Host-level kubelet/runtime:
  - `sudo systemctl status kubelet --no-pager`
  - `sudo journalctl -u kubelet -n 300 --no-pager`
  - `sudo systemctl status containerd --no-pager`
- Reference: [worker node failures](../study/troubleshooting/worker_node_failures.md), [kubelet](../study/normalized-concepts/kubelet.md)

## Control Plane and etcd
- Control plane pods:
  - `kubectl -n kube-system get pods -o wide | grep -E 'kube-apiserver|kube-controller-manager|kube-scheduler|etcd'`
- Static pod source of truth:
  - `sudo ls -l /etc/kubernetes/manifests/`
- etcd endpoint health:
  - `ETCDCTL_API=3 etcdctl --endpoints=https://127.0.0.1:2379 --cacert=... --cert=... --key=... endpoint health`
- Reference: [control plane failures](../study/troubleshooting/control_plane_failures.md), [etcd](../study/normalized-concepts/etcd.md)

## Storage Diagnostics
- PVC/PV/StorageClass:
  - `kubectl get pvc,pv -A`
  - `kubectl -n <ns> describe pvc <pvc>`
  - `kubectl get storageclass`
- CSI status:
  - `kubectl -n kube-system get pods | grep -Ei 'csi|provisioner|attacher|resizer|snapshotter'`
- Mount and node checks:
  - `mount | grep -E '<pvc|kubernetes.io|csi>'`
  - `sudo journalctl -u kubelet -n 200 --no-pager`
- Reference: [storage failures](../study/troubleshooting/storage_failures.md), [persistent-volumes](../study/normalized-concepts/persistent-volumes.md)

## Security and Access
- Authorization checks:
  - `kubectl auth can-i get pods -n <ns> --as=<user-or-sa>`
  - `kubectl auth can-i create deployments -n <ns> --as=<user-or-sa>`
- RBAC object inspection:
  - `kubectl get role,rolebinding,clusterrole,clusterrolebinding -A`
- ServiceAccount inspection:
  - `kubectl -n <ns> get sa`
  - `kubectl -n <ns> describe sa <sa>`
- Reference: [security failures](../study/troubleshooting/security_failures.md), [rbac](../study/normalized-concepts/rbac.md)

## Events and Timelines
- Cluster events in time order:
  - `kubectl get events -A --sort-by=.lastTimestamp`
- Namespace events:
  - `kubectl -n <ns> get events --sort-by=.lastTimestamp`
- Reference: [troubleshooting index](../study/troubleshooting/00_troubleshooting_index.md)

## Command-to-Use-Case Shortcuts
- App not reachable: start at [pod failures](../study/troubleshooting/pod_failures.md)
- kubectl not responding: start at [control plane failures](../study/troubleshooting/control_plane_failures.md)
- One node unstable: start at [worker node failures](../study/troubleshooting/worker_node_failures.md)
- DNS/service path failing: start at [network failures](../study/troubleshooting/network_failures.md)
- PVC or mounts broken: start at [storage failures](../study/troubleshooting/storage_failures.md)
- Forbidden/denied: start at [security failures](../study/troubleshooting/security_failures.md)
