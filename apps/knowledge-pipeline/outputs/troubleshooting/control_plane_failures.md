# Control Plane Failures Troubleshooting Guide

## Symptoms
- `kubectl` times out, returns connection refused, or cannot list API groups.
- Cluster-wide reconciliation stalls (no new scheduling, rollouts stuck, controllers inactive).
- Core control-plane static pods in kube-system show CrashLoopBackOff or not running.
- New object writes fail while existing workloads may continue temporarily.

## Likely Root Causes
- kube-apiserver static pod manifest misconfiguration.
- etcd unavailable, unhealthy, or certificate mismatch/expiry.
- scheduler/controller-manager startup command/cert/flag errors.
- Control-plane node disk/memory pressure impacting static pods.
- Expired or incorrect PKI assets used by control-plane components.

## Inspection Commands
```bash
# 1) Basic control-plane signal
kubectl cluster-info
kubectl get componentstatuses 2>/dev/null || true
kubectl get pods -n kube-system -o wide | grep -E 'kube-apiserver|kube-controller-manager|kube-scheduler|etcd'

# 2) Static pod status and logs
kubectl -n kube-system describe pod <kube-apiserver-pod>
kubectl -n kube-system logs <kube-apiserver-pod> --tail=200
kubectl -n kube-system logs <kube-controller-manager-pod> --tail=200
kubectl -n kube-system logs <kube-scheduler-pod> --tail=200
kubectl -n kube-system logs <etcd-pod> --tail=200

# 3) Node-level checks on control-plane host
sudo ls -l /etc/kubernetes/manifests/
sudo crictl ps -a | grep -E 'kube-apiserver|kube-controller-manager|kube-scheduler|etcd'
sudo journalctl -u kubelet -n 200 --no-pager

# 4) API server and etcd cert/date checks
sudo openssl x509 -in /etc/kubernetes/pki/apiserver.crt -noout -dates -issuer -subject
sudo openssl x509 -in /etc/kubernetes/pki/etcd/server.crt -noout -dates -issuer -subject
sudo timedatectl

# 5) etcd endpoint health (kubeadm style paths may vary)
ETCDCTL_API=3 etcdctl --endpoints=https://127.0.0.1:2379 \
  --cacert=/etc/kubernetes/pki/etcd/ca.crt \
  --cert=/etc/kubernetes/pki/etcd/peer.crt \
  --key=/etc/kubernetes/pki/etcd/peer.key endpoint health
```

## Interpretation Tips
- If kubelet is healthy but static control-plane pods keep restarting, inspect manifest and command flags first.
- API server dial tcp 127.0.0.1:2379 errors usually indicate etcd endpoint/cert/connectivity issue.
- Certificate date failures can look like generic TLS or unauthorized errors.
- If reads work but writes fail intermittently, suspect etcd quorum/storage latency.
- Existing apps may still serve traffic while control plane is degraded; do not assume full cluster health.

## Fix Patterns
- Broken static pod manifest:
  - Correct bad command/flag/path in manifest under /etc/kubernetes/manifests and allow kubelet to reconcile.
- etcd cert or endpoint issue:
  - Restore correct endpoint/cert references, rotate certs if expired, verify health.
- PKI mismatch after manual edits:
  - Reconcile with cluster PKI source of truth and restart affected control-plane pod.
- Resource starvation:
  - Free disk, reduce noisy workloads on control-plane nodes, ensure reserved resources.
- Unknown recent change:
  - Diff manifests and kubelet/unit changes against last known-good state before broad rollback.

## Prevention Notes
- Treat control-plane manifests and PKI as protected, versioned config.
- Monitor control-plane pod restarts and etcd endpoint health continuously.
- Add cert expiry alerting with actionable lead time.
- Use change windows plus post-change smoke tests (`kubectl get nodes`, deploy/read/delete canary).
- Keep tested break-glass runbook for static pod and cert recovery.

## Source-Backed Reasoning
- Control plane failure labs and command sequence are directly represented in section-maps/BATCH-014_section_concept_map.md (Control Plane Failure and Lab Solution entries).
- Static pod command error and scheduler/controller-manager troubleshooting pattern is captured in normalized-concepts/troubleshooting.md.
- API server and etcd relationship plus cert-focused diagnosis are reflected in normalized-concepts/kube-api-server.md and normalized-concepts/etcd.md.
