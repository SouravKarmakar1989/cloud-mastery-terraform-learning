# Kubernetes Master Learning Path: Phase Breakdown

## Phase 1: Foundations And Control Plane

### Module 1: Mental Model And Core Architecture

#### Lesson 1: Kubernetes Mental Model And Cluster Architecture
- Concepts covered: `kubernetes-mental-model`, `cluster-architecture`
- Difficulty level: Foundation
- Hands-on focus: identify control-plane versus worker responsibilities; narrate the request path for creating and running a workload
- Who it is for: all learners; especially first-time Kubernetes users
- Prerequisites: none

#### Lesson 2: Control-Plane And Node Internals
- Concepts covered: `etcd`, `kube-api-server`, `controller-manager`, `scheduler`, `kubelet`, `kube-proxy`
- Difficulty level: Core
- Hands-on focus: inspect component roles, trace pod creation lifecycle, and relate each component to observable cluster behavior
- Who it is for: CKA-oriented learners first; platform/architect learners next; CKAD learners as supporting depth
- Prerequisites: Lesson 1

### Module 2: API-Driven Operations

#### Lesson 3: Declarative Interaction And Client Context
- Concepts covered: `imperative-vs-declarative`, `kubectl-apply`, `api-groups`, `kubeconfig`
- Difficulty level: Core
- Hands-on focus: compare imperative creation to apply-driven reconciliation; inspect kubeconfig context switching; identify resources by API group
- Who it is for: all learners
- Prerequisites: Lessons 1-2

## Phase 2: Workload Primitives

### Module 3: Core Workload Objects

#### Lesson 4: Pods And Labels As The Smallest Deployable Unit
- Concepts covered: `pods`, `labels-and-selectors`
- Difficulty level: Foundation
- Hands-on focus: create pods, inspect labels/selectors, and reason about how higher-level objects find workloads
- Who it is for: all learners; especially CKAD-oriented learners
- Prerequisites: Lesson 3

#### Lesson 5: Replication And Rollout Primitives
- Concepts covered: `replicasets`, `deployments`
- Difficulty level: Core
- Hands-on focus: create ReplicaSets and Deployments, inspect rollout state, and reason about desired versus current state
- Who it is for: all learners
- Prerequisites: Lesson 4

#### Lesson 6: Namespaces, Services, And Basic Discovery Boundaries
- Concepts covered: `namespaces`, `services`
- Difficulty level: Core
- Hands-on focus: isolate workloads with namespaces, expose pods via services, and read service-to-pod relationships
- Who it is for: all learners
- Prerequisites: Lessons 4-5

## Phase 3: Application Configuration And Delivery

### Module 4: Runtime Configuration

#### Lesson 7: Command Surface And Application Lifecycle Basics
- Concepts covered: `commands-and-arguments`, `environment-variables`, `application-lifecycle`
- Difficulty level: Core
- Hands-on focus: override container start behavior, inject runtime values, and reason about lifecycle-driven workload behavior
- Who it is for: CKAD-oriented learners first; useful to all
- Prerequisites: Lessons 4-6

#### Lesson 8: Externalized Configuration And Sensitive Data
- Concepts covered: `configmaps`, `secrets`
- Difficulty level: Core
- Hands-on focus: mount and inject configuration, separate non-secret and secret data paths, and inspect runtime consumption patterns
- Who it is for: all learners
- Prerequisites: Lesson 7

### Module 5: Pod Composition

#### Lesson 9: Multi-Container Coordination Patterns
- Concepts covered: `multi-container-pods`, `init-containers`
- Difficulty level: Core
- Hands-on focus: compose helper containers, order startup with init containers, and reason about pod-level lifecycle coupling
- Who it is for: CKAD-oriented learners first; platform learners second
- Prerequisites: Lessons 4-8

### Module 6: Packaging And Overlays

#### Lesson 10: Packaging Reusable Deployments
- Concepts covered: `helm`, `kustomize`
- Difficulty level: Intermediate
- Hands-on focus: compare chart-based packaging to overlay-based customization; decide when reuse versus targeted mutation is the better fit
- Who it is for: CKAD and platform/architect learners first; CKA learners as supporting depth
- Prerequisites: Lessons 5-9

## Phase 4: Scheduling And Compute Placement

### Module 7: Scheduling Foundations

#### Lesson 11: Scheduling Inputs, Resource Math, And First Placement Controls
- Concepts covered: `scheduling`, `resource-requirements`, `node-selectors`
- Difficulty level: Core
- Hands-on focus: set requests/limits, observe scheduler placement, and constrain pods with node selectors
- Who it is for: CKA-oriented learners first; all learners benefit
- Prerequisites: Lessons 2-6

#### Lesson 12: Affinity, Taints, And Priority
- Concepts covered: `taints-and-tolerations`, `node-affinity`, `priority-classes`
- Difficulty level: Intermediate
- Hands-on focus: compare positive versus negative placement controls, encode workload preference versus requirement, and reason about eviction/priority behavior
- Who it is for: CKA and platform/architect learners first
- Prerequisites: Lesson 11

#### Lesson 13: Special Placement Patterns And Elasticity
- Concepts covered: `daemonsets`, `static-pods`, `autoscaling`
- Difficulty level: Intermediate
- Hands-on focus: deploy node-scoped workloads, inspect control-plane-managed static pods, and understand horizontal elasticity triggers
- Who it is for: CKA-oriented learners first; platform learners second
- Prerequisites: Lessons 2, 5, 11, 12

## Phase 5: Networking And Traffic Flow

### Module 8: Cluster Networking Foundations

#### Lesson 14: Networking Model, CNI, DNS, And Service Reachability
- Concepts covered: `networking`, `cni`, `pod-networking`, `service-networking`, `dns`, `coredns`
- Difficulty level: Intermediate
- Hands-on focus: explain pod-to-pod and pod-to-service communication, inspect DNS behavior, and connect CNI choice to network behavior
- Who it is for: CKA-oriented learners first; platform learners second; CKAD learners as essential support
- Prerequisites: Lessons 2, 4, 6, 11

### Module 9: Traffic Exposure And Policy

#### Lesson 15: North-South Exposure And East-West Restrictions
- Concepts covered: `ingress`, `gateway-api`, `network-policies`
- Difficulty level: Intermediate
- Hands-on focus: expose HTTP workloads, compare ingress-era and gateway-era entry models, and restrict pod communication with policy rules
- Who it is for: all learners; especially CKA and platform/architect learners
- Prerequisites: Lessons 6 and 14

## Phase 6: Storage And Stateful Workloads

### Module 10: Core Storage Objects

#### Lesson 16: Volumes, Persistence, And Claim Binding
- Concepts covered: `storage`, `volumes`, `persistent-volumes`, `persistent-volume-claims`, `storage-class`
- Difficulty level: Intermediate
- Hands-on focus: distinguish ephemeral from persistent storage, inspect PV/PVC binding, and reason about dynamic provisioning intent
- Who it is for: CKA-oriented learners first; platform learners second
- Prerequisites: Lessons 4-6

#### Lesson 17: CSI And Recovery Thinking
- Concepts covered: `csi`, `backup-and-restore`
- Difficulty level: Intermediate
- Hands-on focus: connect storage lifecycle to CSI integration and reason about backup/restore as an operational design concern rather than a last-minute task
- Who it is for: CKA and platform/architect learners first
- Prerequisites: Lesson 16

## Phase 7: Security And Access Control

### Module 11: Auth And Trust Chain

#### Lesson 18: Identity, Transport Trust, And Client Access
- Concepts covered: `security-primitives`, `authentication`, `tls`, `certificates`, `kubeconfig`
- Difficulty level: Intermediate
- Hands-on focus: trace how a client becomes trusted, inspect certificate-centered trust relationships, and reason about kubeconfig as an access surface
- Who it is for: all learners; especially CKA and platform/architect learners
- Prerequisites: Lessons 2-3

### Module 12: Authorization Model

#### Lesson 19: Authorization Boundaries And Role-Based Access
- Concepts covered: `authorization`, `rbac`, `cluster-roles`, `api-groups`, `service-accounts`
- Difficulty level: Intermediate
- Hands-on focus: grant least-privilege access, test permissions, and connect resource/API grouping to authorization scope
- Who it is for: CKA and platform/architect learners first; CKAD learners as necessary depth
- Prerequisites: Lessons 3, 6, and 18

### Module 13: Runtime And Admission Security

#### Lesson 20: Workload Hardening And Admission-Time Guardrails
- Concepts covered: `image-security`, `security-contexts`, `admission-controllers`
- Difficulty level: Advanced
- Hands-on focus: harden workloads at image/runtime level and reason about where admission-time policy fits into the request path
- Who it is for: CKA and platform/architect learners first; CKAD learners as advanced application security depth
- Prerequisites: Lessons 7-9 and 18-19

## Phase 8: Operations, Design, And Lifecycle

### Module 14: Cluster Design And Bootstrap

#### Lesson 21: Designing And Bootstrapping Clusters
- Concepts covered: `cluster-design`, `high-availability`, `kubeadm`
- Difficulty level: Advanced
- Hands-on focus: reason about control-plane topology, node roles, and bootstrap workflow; connect kubeadm mechanics to HA design choices
- Who it is for: CKA and platform/architect learners first
- Prerequisites: Lessons 1-3, 14, 16, and 18

### Module 15: Maintenance And Observability

#### Lesson 22: Keep The Cluster Running Safely
- Concepts covered: `cluster-maintenance`, `upgrades`, `logging-and-monitoring`
- Difficulty level: Advanced
- Hands-on focus: plan safe upgrades, connect maintenance windows to workload impact, and use logging/monitoring as operational feedback loops
- Who it is for: CKA and platform/architect learners first
- Prerequisites: Lessons 2, 11-17, and 21

### Module 16: Troubleshooting And Exam Execution

#### Lesson 23: Failure Isolation And Fast Inspection
- Concepts covered: `troubleshooting`, `jsonpath`
- Difficulty level: Advanced
- Hands-on focus: move from symptom to subsystem quickly, use JSONPath to extract decisive signals, and build repeatable diagnostic routines
- Who it is for: all learners; especially CKA candidates
- Prerequisites: Lessons 2-22

#### Lesson 24: Exam Pattern Recognition And Practice Strategy
- Concepts covered: `mock-exam-patterns`
- Difficulty level: Advanced
- Hands-on focus: convert topic knowledge into timed execution patterns, lab habits, and question-solving discipline
- Who it is for: CKA and CKAD learners first
- Prerequisites: Lessons 3-23

## Phase 9: Extensibility And Platform Building

### Module 17: Custom APIs And Controllers

#### Lesson 25: Extending Kubernetes Into A Platform
- Concepts covered: `crd`, `custom-controllers`, `operator-framework`
- Difficulty level: Advanced
- Hands-on focus: understand how new APIs become operational behavior and how controllers/operators turn Kubernetes into a programmable platform surface
- Who it is for: platform/architect learners first; CKA learners second
- Prerequisites: Lessons 2-3, 5, 10, 18-22

## Suggested Phase Cadence
- Phase 1: move quickly, but do not skip cluster internals.
- Phase 2: practice YAML until object relationships feel obvious.
- Phase 3: bias toward repeated hands-on delivery patterns.
- Phase 4: rehearse scheduling controls with intentional workload placement experiments.
- Phase 5: redraw traffic paths until service, DNS, ingress, and policy boundaries are intuitive.
- Phase 6: keep stateful workload reasoning tied to failure and recovery, not just object definitions.
- Phase 7: study security as request flow plus object scope, not as isolated features.
- Phase 8: run drills under time pressure.
- Phase 9: treat extensibility as the capstone that depends on all prior platform concepts.

## Coverage Note
- The lesson map above assigns every normalized concept file in `normalized-concepts/` to at least one dependency-ordered lesson.
- This document is intentionally structural. It organizes study flow, but it does not replace the normalized concept files as the authoritative detailed study material.