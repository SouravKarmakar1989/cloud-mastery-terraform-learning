# Kubernetes Master Learning Path

## Scope
- Source of truth: `../../normalized-concepts/`
- Source set size: 75 normalized concept documents
- Curriculum goal: convert the normalized concept library into a dependency-ordered learning path instead of full teaching notes
- Progression model: Phase -> Module -> Lesson

## How To Use This Path
- Follow phases in order if you want full-stack Kubernetes mastery.
- Use the lens guidance to bias time and repetition toward CKAD, CKA, or platform/architect outcomes.
- Treat each lesson as a study unit that combines concept reading, terminal work, and YAML inspection.
- Use [01_phase_breakdown.md](01_phase_breakdown.md) as the detailed execution plan.

## Learning Lenses
- CKAD-oriented: emphasize workload modeling, configuration, packaging, service exposure, and developer-facing troubleshooting.
- CKA-oriented: emphasize control-plane internals, scheduling, networking, storage, security, cluster lifecycle, and operational diagnosis.
- Platform/Architect-oriented: emphasize system design, multi-team boundaries, policy, extensibility, HA, upgrade strategy, and operating-model tradeoffs.

## Dependency Logic
- Start with the Kubernetes mental model before object-level YAML.
- Learn control-plane and node responsibilities before diagnosing behavior.
- Learn pods before replication primitives, then services and namespaces before app delivery patterns.
- Learn scheduling before workload placement controls.
- Learn networking and storage after base workload objects, because both depend on pod/service semantics.
- Learn security after core objects, because authn/authz/policy only make sense once the object model is clear.
- Learn cluster lifecycle and extensibility last, because they assume operational fluency with all earlier layers.

## Phase Overview

### Phase 1: Foundations And Control Plane
- Goal: build the core mental model of what Kubernetes is, what the cluster parts are, and how declarative interaction works.
- Modules:
- Mental Model And Core Architecture
- API-Driven Operations
- Best for: all three lenses

### Phase 2: Workload Primitives
- Goal: understand the first application-facing building blocks and the minimal deployment surface.
- Modules:
- Core Workload Objects
- Service And Namespace Boundaries
- Best for: CKAD first, then CKA and platform

### Phase 3: Application Configuration And Delivery
- Goal: make workloads configurable, composable, and packageable.
- Modules:
- Runtime Configuration
- Pod Composition
- Packaging And Overlays
- Best for: CKAD primary, platform secondary

### Phase 4: Scheduling And Compute Placement
- Goal: explain how work lands on nodes and how workload placement is constrained or optimized.
- Modules:
- Scheduling Foundations
- Placement Controls
- Specialized Runtime Patterns
- Best for: CKA primary, platform secondary

### Phase 5: Networking And Traffic Flow
- Goal: move from pod-local execution to cluster-wide and external communication models.
- Modules:
- Cluster Networking Foundations
- Traffic Exposure And Policy
- Best for: CKA primary, CKAD secondary, platform secondary

### Phase 6: Storage And Stateful Workloads
- Goal: explain persistent data primitives and storage integration.
- Modules:
- Core Storage Objects
- CSI And Recovery
- Best for: CKA primary, platform secondary

### Phase 7: Security And Access Control
- Goal: establish identity, transport trust, authorization, and runtime hardening.
- Modules:
- Auth And Trust Chain
- Authorization Model
- Runtime And Admission Security
- Best for: CKA primary, platform primary, CKAD important

### Phase 8: Operations, Design, And Lifecycle
- Goal: move from using Kubernetes to operating and evolving clusters safely.
- Modules:
- Cluster Design And Bootstrap
- Maintenance And Observability
- Troubleshooting And Exam Execution
- Best for: CKA primary, platform primary

### Phase 9: Extensibility And Platform Building
- Goal: understand how Kubernetes becomes a programmable platform instead of only a deployment target.
- Modules:
- Custom APIs And Controllers
- Best for: platform/architect primary, CKA secondary

## Master Path

### Phase 1 -> Module 1: Mental Model And Core Architecture
- Lesson 1: Kubernetes mental model and cluster architecture
- Lesson 2: Control-plane and node internals

### Phase 1 -> Module 2: API-Driven Operations
- Lesson 3: Declarative interaction, apply workflow, API grouping, and client context

### Phase 2 -> Module 3: Core Workload Objects
- Lesson 4: Pods and labels/selectors
- Lesson 5: ReplicaSets and Deployments
- Lesson 6: Services and namespaces

### Phase 3 -> Module 4: Runtime Configuration
- Lesson 7: Commands, arguments, environment, and application lifecycle
- Lesson 8: ConfigMaps and Secrets

### Phase 3 -> Module 5: Pod Composition
- Lesson 9: Multi-container pods and init containers

### Phase 3 -> Module 6: Packaging And Overlays
- Lesson 10: Helm and Kustomize

### Phase 4 -> Module 7: Scheduling Foundations
- Lesson 11: Scheduling, resource requirements, and first placement constraints
- Lesson 12: Taints, tolerations, affinity, and priority
- Lesson 13: DaemonSets, static pods, and autoscaling

### Phase 5 -> Module 8: Cluster Networking Foundations
- Lesson 14: Networking model, CNI, pod networking, DNS, and CoreDNS

### Phase 5 -> Module 9: Traffic Exposure And Policy
- Lesson 15: Service networking, Ingress, Gateway API, and network policies

### Phase 6 -> Module 10: Core Storage Objects
- Lesson 16: Storage, volumes, PVs, PVCs, and StorageClass
- Lesson 17: CSI and backup/restore

### Phase 7 -> Module 11: Auth And Trust Chain
- Lesson 18: Security primitives, authentication, TLS, certificates, and kubeconfig

### Phase 7 -> Module 12: Authorization Model
- Lesson 19: Authorization, RBAC, cluster roles, API groups, and service accounts

### Phase 7 -> Module 13: Runtime And Admission Security
- Lesson 20: Image security, security contexts, and admission controllers

### Phase 8 -> Module 14: Cluster Design And Bootstrap
- Lesson 21: Cluster design, high availability, and kubeadm

### Phase 8 -> Module 15: Maintenance And Observability
- Lesson 22: Cluster maintenance, upgrades, and logging/monitoring

### Phase 8 -> Module 16: Troubleshooting And Exam Execution
- Lesson 23: Troubleshooting and JSONPath
- Lesson 24: Mock-exam patterns and exam execution strategy

### Phase 9 -> Module 17: Custom APIs And Controllers
- Lesson 25: CRDs, custom controllers, and operator framework

## Lens-Specific Traversal

### CKAD-Oriented Route
- Full priority phases: 1, 2, 3, 5, 7
- High-value lessons: 3, 4, 5, 6, 7, 8, 9, 10, 13, 15, 18, 19, 20, 23, 24
- Reduced-depth lessons: 2, 17, 21, 22, 25
- Outcome: design, configure, package, expose, and debug applications running on Kubernetes.

### CKA-Oriented Route
- Full priority phases: 1, 4, 5, 6, 7, 8
- High-value lessons: 2, 3, 6, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24
- Reduced-depth lessons: 9, 10, 25
- Outcome: install, secure, operate, troubleshoot, and maintain Kubernetes clusters.

### Platform/Architect-Oriented Route
- Full priority phases: 1, 5, 6, 7, 8, 9
- High-value lessons: 2, 3, 6, 10, 12, 14, 15, 17, 18, 19, 20, 21, 22, 25
- Supporting lessons: 4, 5, 8, 11, 13, 16, 23, 24
- Outcome: design a reusable, secure, operable Kubernetes platform with clear extension points and governance boundaries.

## Expected Learning Outputs
- By the end of Phase 3 you should be able to read and write common workload YAML without guessing.
- By the end of Phase 5 you should be able to explain packet flow and service exposure at the level needed for exam and production reasoning.
- By the end of Phase 7 you should be able to reason about trust, identity, authorization, and runtime hardening as one system.
- By the end of Phase 8 you should be able to bootstrap, upgrade, observe, and troubleshoot clusters under pressure.
- By the end of Phase 9 you should understand how Kubernetes evolves from runtime platform to control-plane extension surface.