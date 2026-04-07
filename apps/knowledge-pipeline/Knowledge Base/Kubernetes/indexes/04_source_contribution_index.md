# Source Contribution Index

This index shows how major Kubernetes outputs were built from the provided input sets.

## Input Sets
- Learning path input: ../study/learning-path/
- Normalized concepts input: ../study/normalized-concepts/
- Phase guides input: ../study/phases/
- Cross-cloud input: ../study/cross-cloud/
- Troubleshooting input: ../study/troubleshooting/

## Output Lineage by Artifact Family

### A) Curriculum Navigation
- Output:
  - [00_reading_order](00_reading_order.md)
  - [01_topic_index](01_topic_index.md)
- Primary contributors:
  - learning-path files for sequence and phase dependency
  - phase guides for topic grouping and practical progression
  - normalized concepts for deep links per topic

### B) Command Navigation
- Output:
  - [02_command_index](02_command_index.md)
- Primary contributors:
  - troubleshooting guides for command-driven incident workflows
  - normalized concept docs with command usage emphasis (kubeconfig, kubectl-apply, troubleshooting, kubelet, kube-api-server, etcd)

### C) YAML Navigation
- Output:
  - [03_yaml_index](03_yaml_index.md)
- Primary contributors:
  - normalized concepts centered on resource definitions (pods, deployments, services, pv/pvc, storage-class, rbac, security contexts)
  - troubleshooting guides for YAML-to-runtime failure interpretation

### D) Architecture and Platform Comparison Navigation
- Output:
  - [01_topic_index](01_topic_index.md) architecture and platform entries
  - [00_reading_order](00_reading_order.md) architecture reference path
- Primary contributors:
  - phase architecture progression
  - normalized architecture-focused docs (cluster-architecture, etcd, kube-api-server, networking, storage, security)
  - cross-cloud comparisons (networking, storage, identity and rbac, ingress and load balancing, autoscaling, upgrades, security and policy)

## Topic Coverage Anchors
- Control plane and foundations:
  - phases 1 and 8, kube-api-server, etcd, scheduler, controller-manager, kubelet, kube-proxy
- Workloads and delivery:
  - phases 2 and 3, pods, replicasets, deployments, configmaps, secrets
- Scheduling and resources:
  - phase 4, scheduling, node affinity/selectors, taints and tolerations, priority classes, resource requirements
- Networking and traffic:
  - phase 5, networking, cni, dns/coredns, services, ingress, gateway-api, network-policies
- Storage and state:
  - phase 6, storage, volumes, pv/pvc, storage-class, csi
- Security and access:
  - phase 7, authentication, authorization, rbac, service-accounts, security-contexts, tls/certificates
- Operations and lifecycle:
  - phase 8, logging and monitoring, backup and restore, upgrades, cluster maintenance, high availability
- Extensibility:
  - phase 9, api-groups, crd, custom controllers, operator framework

## Human-Usable Navigation Intent
- Study system: ordered by learning path and phases.
- Revision system: domain loops with troubleshooting checks.
- Command reference: direct command-to-symptom lookup.
- Architecture reference: component and platform trade-off lookup.
