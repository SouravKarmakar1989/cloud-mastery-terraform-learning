# Pod Failures Troubleshooting Guide

## Symptoms
- Pod stays in Pending, CrashLoopBackOff, ImagePullBackOff, ErrImagePull, CreateContainerConfigError, or OOMKilled cycle.
- Deployment/ReplicaSet shows desired replicas but unavailable pods.
- Service has no ready endpoints even though workload objects exist.
- Probes fail repeatedly and restart counters increase.

## Likely Root Causes
- Scheduling constraints: taints/tolerations, nodeSelector/nodeAffinity mismatch, resource pressure.
- Container startup errors: wrong command/args, missing config/secrets, bad image/tag.
- Probe misconfiguration: health endpoint/port/path mismatch or timeout too strict.
- Runtime failures: dependency unreachable, permission errors, crash on config parse.
- Namespace/context mistakes resulting in debugging wrong objects.

## Inspection Commands
```bash
# 1) Scope and object state
kubectl config current-context
kubectl get ns
kubectl get pods -A | grep -E 'Pending|CrashLoopBackOff|Error|ImagePull|CreateContainerConfigError'

# 2) Drill into one failing pod
kubectl -n <ns> describe pod <pod>
kubectl -n <ns> logs <pod> --all-containers=true --tail=200
kubectl -n <ns> logs <pod> --all-containers=true --previous --tail=200

# 3) Owning workload and rollout
kubectl -n <ns> get deploy,rs,sts,ds
kubectl -n <ns> describe deploy <deploy>
kubectl -n <ns> rollout status deploy/<deploy>

# 4) Service linkage and endpoints
kubectl -n <ns> get svc,ep
kubectl -n <ns> describe svc <service>
kubectl -n <ns> get pod <pod> --show-labels

# 5) Node placement and pressure
kubectl get nodes -o wide
kubectl describe node <node>
kubectl top nodes
kubectl top pod -n <ns>
```

## Interpretation Tips
- Pending + "0/.. nodes are available" in events indicates scheduler constraints, not app crash.
- CrashLoopBackOff with useful previous logs usually indicates startup logic/config issue.
- ImagePull errors point to registry credentials, image name/tag, or network egress.
- Service exists but endpoint list is empty usually means selector-label mismatch or readiness not passing.
- High restart count with OOMKilled indicates memory limit too low or leak/high spike behavior.

## Fix Patterns
- Selector mismatch:
  - Align Service selector with pod labels, then verify `kubectl get ep` fills endpoints.
- Bad container command/env:
  - Patch deployment or update manifest, then restart rollout.
- Probe failures:
  - Correct probe path/port/scheme and tune `initialDelaySeconds`, `timeoutSeconds`, `failureThreshold`.
- Image pull failures:
  - Fix image reference, attach proper imagePullSecret, verify registry access.
- Resource pressure:
  - Right-size requests/limits, add capacity, or relax strict placement constraints.

## Prevention Notes
- Enforce manifest validation in CI (schema + policy checks).
- Standardize startup probes for slow apps before liveness checks.
- Alert on restart bursts and Pending duration SLOs.
- Keep a known-good canary deployment for fast baseline comparison.
- Document namespace/context commands in team runbooks to prevent operator mistakes.

## Source-Backed Reasoning
- Troubleshooting flow from service to pod to logs/events is explicitly represented in section-maps/BATCH-014_section_concept_map.md under Application Failure and Lab Solution entries.
- Practical commands for describing deployments/pods and reading current+previous logs are reinforced in normalized-concepts/troubleshooting.md.
- Namespace and object-scoping behaviors are supported in normalized-concepts/pods.md.
