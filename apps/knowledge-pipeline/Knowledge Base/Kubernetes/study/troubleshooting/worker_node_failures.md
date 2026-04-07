# Worker Node Failures Troubleshooting Guide

## Symptoms
- Node shows NotReady, Unknown, or frequent Ready/NotReady flapping.
- Pods on one node go NotReady, Evicted, or repeatedly recreated elsewhere.
- DaemonSets on specific node fail to run.
- New pods avoid a node despite available CPU/memory in dashboards.

## Likely Root Causes
- kubelet service failure or misconfiguration (cgroup/runtime endpoint/cert issues).
- Container runtime unhealthy (containerd/cri-o/docker equivalent) or disk full.
- Node network disruption to API server or CNI dataplane failure.
- Certificate expiration for kubelet client/server certs.
- Node pressure (disk, memory, inode, PID) triggering taints/evictions.

## Inspection Commands
```bash
# 1) Kubernetes-level node signal
kubectl get nodes -o wide
kubectl describe node <node>
kubectl get pods -A -o wide --field-selector spec.nodeName=<node>

# 2) Kubelet and runtime on node host
sudo systemctl status kubelet --no-pager
sudo journalctl -u kubelet -n 300 --no-pager
sudo systemctl status containerd --no-pager
sudo journalctl -u containerd -n 200 --no-pager

# 3) Resource pressure and filesystem
df -h
df -i
free -m
top -b -n1 | head -n 30

# 4) Network path to API server
ip route
ss -lntp
nc -vz <api-server-host> 6443
curl -k https://<api-server-host>:6443/healthz

# 5) Kubelet cert validity (paths vary by distro/bootstrap)
sudo openssl x509 -in /var/lib/kubelet/pki/kubelet-client-current.pem -noout -dates -issuer -subject
```

## Interpretation Tips
- Node NotReady with kubelet inactive indicates host-level service failure first, not Kubernetes object bug.
- Repeated lease update failures in kubelet logs suggest API connectivity or authn/authz issue.
- DiskPressure/InodePressure taints explain scheduling avoidance and evictions.
- Runtime errors plus kubelet errors usually indicate CRI endpoint/runtime instability.
- Node flapping may indicate transient network path issues, clock skew, or overloaded host.

## Fix Patterns
- kubelet service down:
  - Correct kubelet config/unit issues, restart kubelet, confirm node heartbeat recovery.
- Runtime unhealthy:
  - Recover container runtime service, clear deadlock/space pressure, verify CRI socket.
- Cert expiry/auth failure:
  - Rotate kubelet certs and verify bootstrap/CSR flow.
- Node pressure:
  - Reclaim disk/inodes, tune eviction thresholds, move noisy workloads.
- Persistent host instability:
  - Cordon + drain node, repair/rebuild host, then uncordon after validation.

## Prevention Notes
- Monitor node conditions and kubelet lease update latency.
- Apply host-level SLOs for disk/inode headroom.
- Standardize kubelet/runtime config via immutable node images.
- Schedule periodic node conformance checks.
- Keep routine drain/rebuild playbooks practiced to reduce MTTR.

## Source-Backed Reasoning
- Worker node failure and lab solution tracks are present in ../../build/intermediate/../../build/intermediate/section-maps/BATCH-014_section_concept_map.md.
- Kubelet-centric diagnosis and systemd-level checks are emphasized in ../../normalized-concepts/troubleshooting.md and ../../normalized-concepts/kubelet.md.
- HA/control-plane interaction and node behavior context are reflected in ../../normalized-concepts/etcd.md.
