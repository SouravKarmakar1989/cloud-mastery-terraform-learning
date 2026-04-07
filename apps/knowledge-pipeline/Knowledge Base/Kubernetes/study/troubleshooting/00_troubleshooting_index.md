# Kubernetes Troubleshooting System Index

## Purpose
This troubleshooting system organizes incident response by failure domain and keeps diagnosis command-driven.

This package is derived from source-backed troubleshooting tracks in the knowledge corpus, especially:
- ../../build/intermediate/../../build/intermediate/section-maps/BATCH-014_section_concept_map.md (Troubleshooting section, including Application, Control Plane, Worker Node failures)
- ../../build/intermediate/../../build/intermediate/merged/01_global_concept_map.md (Global concepts: Control Plane Failure, Worker Node Failure, Pod Networking, Service Networking, DNS in Kubernetes, Persistent Volumes, Persistent Volume Claims, Storage Class, Security Contexts, Service Accounts)
- ../../normalized-concepts/*.md (operational command patterns and object-level reasoning)

## How To Use
1. Start with the domain that matches your primary symptom.
2. Run inspection commands top-to-bottom before changing config.
3. Capture command output for timeline and handoff.
4. Apply the smallest safe fix pattern, then re-check symptoms.
5. Add prevention notes into runbooks/alerts after recovery.

## Failure-Domain Guides
- Pod failures: pod_failures.md
- Control plane failures: control_plane_failures.md
- Worker node failures: worker_node_failures.md
- Network failures: network_failures.md
- Storage failures: storage_failures.md
- Security failures: security_failures.md

## Fast Triage Ladder
Use this order when the blast radius is unclear:
1. Cluster reachability and node health
2. Control plane components
3. Affected namespace workloads
4. Service and network paths
5. Storage and security constraints

## Shared Baseline Commands
```bash
kubectl get nodes -o wide
kubectl get pods -A
kubectl get events -A --sort-by=.lastTimestamp | tail -n 100
kubectl cluster-info
kubectl version --short
```

## Evidence Discipline
For every incident, capture:
- Symptom proof (user/API error, failing SLI, failing probe)
- Object state snapshots (`kubectl get ... -o yaml` for impacted objects)
- Runtime logs (`kubectl logs`, `journalctl`, runtime logs)
- Before/after verification command output

## Source Anchors
- Troubleshooting structure and workflow sequencing: ../../build/intermediate/../../build/intermediate/section-maps/BATCH-014_section_concept_map.md
- Control-plane diagnosis pattern (static pods, scheduler/controller-manager/api-server checks): ../../normalized-concepts/troubleshooting.md
- Application object-link inspection (service selectors, endpoints, pod state, logs): ../../normalized-concepts/troubleshooting.md and ../../normalized-concepts/pods.md
