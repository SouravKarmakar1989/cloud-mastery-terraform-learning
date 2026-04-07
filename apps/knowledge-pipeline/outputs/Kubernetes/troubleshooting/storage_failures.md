# Storage Failures Troubleshooting Guide

## Symptoms
- PVC stuck in Pending; pod stays Pending with volume scheduling/mount errors.
- Pod enters ContainerCreating but fails with mount/attach errors.
- Stateful workload restarts with data missing or filesystem read-only.
- Volume expansion requested but not reflected in filesystem.

## Likely Root Causes
- No matching StorageClass or incorrect provisioner.
- Access mode/capacity mismatch between PVC and PV.
- CSI controller/node plugin unhealthy.
- Node-level mount path or permission issues.
- Cloud/provider disk attach limits or zone mismatch in topology-aware scheduling.

## Inspection Commands
```bash
# 1) PVC/PV/StorageClass state
kubectl get pvc,pv -A
kubectl -n <ns> describe pvc <pvc>
kubectl describe pv <pv>
kubectl get storageclass
kubectl describe storageclass <sc>

# 2) Pod events and mount errors
kubectl -n <ns> describe pod <pod>
kubectl -n <ns> get events --sort-by=.lastTimestamp | tail -n 100

# 3) CSI health and logs
kubectl -n kube-system get pods | grep -Ei 'csi|provisioner|attacher|resizer|snapshotter'
kubectl -n kube-system logs <csi-controller-pod> --all-containers=true --tail=200
kubectl -n kube-system logs <csi-node-pod> --all-containers=true --tail=200

# 4) Node-level mount diagnostics
mount | grep -E '<pvc|kubernetes.io|csi>'
sudo dmesg | tail -n 100
sudo journalctl -u kubelet -n 200 --no-pager

# 5) Filesystem capacity check inside pod
kubectl -n <ns> exec -it <pod> -- df -h
kubectl -n <ns> exec -it <pod> -- ls -lah <mountPath>
```

## Interpretation Tips
- PVC Pending with "no persistent volumes available" indicates binding/provisioning issue, not app code.
- Pod mount timeout with bound PVC often points to CSI/node-level attach/mount path failures.
- AccessMode mismatch (e.g., needing RWX but only RWO backend) causes subtle multi-pod failures.
- Expansion requested but fs unchanged means filesystem resize stage did not complete inside node/pod path.
- StatefulSet recovery must verify both claim reuse and pod identity expectations.

## Fix Patterns
- Binding/provisioning failures:
  - Correct StorageClass name/provisioner parameters and PVC request values.
- Topology mismatch:
  - Align node placement with volume zone/region constraints.
- CSI component errors:
  - Restore CSI controller/node plugin health and validate sidecar compatibility.
- Mount permission/path issues:
  - Fix node filesystem state, mount options, or security context requirements.
- Expansion issues:
  - Ensure StorageClass allows expansion and trigger proper filesystem resize workflow.

## Prevention Notes
- Pre-validate storage classes and claim templates in CI.
- Monitor PVC Pending duration and CSI error rates.
- Run periodic restore drills for stateful apps.
- Use workload-specific SLOs for attach/mount latency.
- Document reclaim policy and backup implications before production rollout.

## Source-Backed Reasoning
- Storage troubleshooting derives from merged/01_global_concept_map.md entries for Persistent Volumes, Persistent Volume Claims, Storage Class, and Storage in StatefulSets.
- Practical command and object inspection methods are reinforced in normalized-concepts/persistent-volumes.md, normalized-concepts/persistent-volume-claims.md, normalized-concepts/storage-class.md, and normalized-concepts/storage.md.
- Troubleshooting discipline (events, describe, logs, stepwise narrowing) follows normalized-concepts/troubleshooting.md.
