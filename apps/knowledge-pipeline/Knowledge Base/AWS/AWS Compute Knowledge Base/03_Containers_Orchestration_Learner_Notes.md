# Containers Orchestration Learner Notes

This file is a learner-first companion to `03_Containers_Orchestration.md`.
It is structured as a series of blog-post-depth theoretical articles, followed by a multi-cloud hands-on activity guide, and closed with troubleshooting, revision, and self-assessment material.

Source authority: 45 AWS primary transcript files spanning DVA-C01, SAA-C03, SAP-C02, advanced EKS networking, ECS, ECR, Fargate, App2Container, Copilot, and Azure/GCP supplements. The architect-level concepts are drawn directly from the Deep Expansion section of the primary knowledge base.

## How To Use This File
1. Read each theoretical section before building anything. Container platforms look simple until scheduling, identity, and networking appear together.
2. Work through the hands-on modules in order. They move from image basics to orchestration and rollout.
3. Start with AWS, then repeat the same concept on Azure and GCP when possible.
4. Use the Troubleshooting Notes when a task, pod, or service behaves unexpectedly.
5. Return to the Quick Revision Sheet before interviews, exams, or architecture reviews.

## Theoretical Notes

---

### 1. Containers Are a Packaging Choice Before They Are an Orchestration Choice

Many teams jump directly from "we have Docker images" to "we need Kubernetes." That jump is often too fast. A container first solves a packaging problem. It captures the application, its dependencies, and a predictable runtime contract. Orchestration is a different problem: where does that package run, how is it restarted, how is it exposed, how is it scaled, and how is it updated safely?

This distinction matters because the wrong platform choice often begins with the right packaging decision. A team successfully containerizes a small web app and then assumes a full Kubernetes control plane is the next step. Sometimes it is. Often it is not. ECS, Cloud Run style runtimes, Container Apps, App Service for Containers, and similar products exist precisely because not every packaged workload needs the operational surface area of Kubernetes.

The durable lesson is this: separate packaging from orchestration in your mind. The container image is the artifact. The scheduler is the operating model. You will make better platform choices once those are not blurred together.

---

### 2. The Registry Is Part of Runtime Trust

If you cannot trust the image source, you cannot trust the running workload. Private registries such as ECR, ACR, and Artifact Registry are not just storage buckets for images. They are part of the supply chain. Tags, digests, scan results, image promotion, and repository policy all shape whether the image that runs in production is the one you intended to run.

This is why image discipline matters so much. Loose tag habits such as overusing `latest`, unclear promotion flow, or weak pull permissions create confusion that shows up later as mysterious rollouts or security gaps. Strong container platforms depend on strong image hygiene. Even the best scheduler cannot save a workload that keeps deploying the wrong artifact.

The registry is therefore part of operations, not only CI. When a rollout is wrong, you should ask which image digest the service or deployment actually pulled, not just which application version the team thought they published.

---

### 3. Scheduler Choice Is a Product Decision, Not a Branding Preference

ECS, EKS, AKS, GKE, Cloud Run, and Container Apps all run containers, but they divide responsibility differently. That is the real comparison point. Who owns the control plane? Who owns the nodes? Who owns network design? Who owns rollout pacing? Who owns workload identity? Those questions matter far more than whether the interface uses tasks, pods, revisions, or services.

ECS is attractive when a team wants AWS-native scheduling without adopting the entire Kubernetes surface. EKS is attractive when Kubernetes behaviors, ecosystem tooling, or portability justify the extra complexity. Fargate is attractive when the host layer should disappear from day-to-day operations. Simpler managed runtimes are attractive when the workload mostly needs reliable execution, health-aware entry, and low operational drag.

Once you compare platforms by responsibility split, the architecture becomes easier to explain. You are not choosing a logo. You are choosing which problems the platform absorbs and which problems your team keeps.

---

### 4. Task, Pod, and Node Are Different Operational Boundaries

A container is not a cluster. A task or pod is not a node. This sounds obvious, but a large percentage of early orchestration confusion comes from mixing those boundaries together. A task or pod defines a workload unit. A node provides capacity. The scheduler binds workload units onto nodes based on resources, networking, and policy.

When a workload stays pending, the failure may not be inside the container at all. It may be a node-capacity problem, a subnet IP problem, a storage-binding problem, or a scheduling-constraint problem. When a rollout is uneven, the issue may be at the service or deployment layer rather than inside any one container image.

Container platforms become much easier to operate once you know which layer is actually failing. Task, pod, service, node, and cluster are not interchangeable words. They are different control surfaces.

---

### 5. Hostless Runtimes Remove Toil, Not Architecture

Fargate and other hostless or serverless container runtimes are sometimes described as "containers without infrastructure." That is misleading. They remove visible node management, but they do not remove sizing, identity, storage, ingress, health, or cost design. The architecture remains. Only some of the infrastructure ownership moves into the platform.

This is why hostless runtimes are powerful but not magical. They are especially strong when the workload is stateless, bounded, and benefits from reduced host maintenance. They are less magical when the workload needs tightly controlled networking, unusual storage coupling, or tuning that assumes node ownership. The same trade-off appears in Azure and GCP.

The mature mental model is: hostless runtimes shrink the operations surface. They do not eliminate the need to understand the workload.

---

### 6. Container Networking Is Architecture, Not Plumbing

Networking problems are where many container learning curves become real. Service discovery, pod or task IP allocation, ingress, load balancer attachment, east-west reachability, and subnet planning all influence scale and failure behavior. EKS makes this especially visible because pod networking depends on VPC design and IP economics. ECS and simpler platforms hide different parts of the same problem.

This is one reason service exposure should be treated as its own architectural concern. Running the workload is one question. Getting safe, health-aware traffic to it is another. The load-balancing chapter and the container chapter meet at this boundary. Ingress, service type, and cloud load balancer integration are part of the runtime story, not optional add-ons.

The cross-cloud lesson is highly portable: networking is usually the first place where "managed platform" stops feeling fully abstract. That is not a flaw. It is a reminder that distributed systems still need network architecture.

---

### 7. Identity Must Attach to the Workload, Not the Image

Credentials baked into images are the container version of secrets hardcoded on VMs. They feel convenient until they become an incident. Strong container platforms attach identity dynamically to the running workload. In AWS, that means ECS task roles or IRSA for EKS. In Azure and GCP, equivalent workload identity patterns exist so the running unit gets access at runtime without carrying static secrets in the artifact.

This matters for blast radius. A node-level identity is broader than a task-level or pod-level identity. If all workloads on a node inherit the same broad permissions, a compromise in one service becomes a compromise in everything that shares the node. Workload-level identity narrows that risk and makes least privilege realistic.

Identity design is therefore not a security afterthought. It is part of orchestration quality.

---

### 8. State Placement Determines How Honest Your Rollout Story Is

The easiest container workloads to scale and replace are the ones that keep important state outside the container lifecycle. The more state you trap inside the container or on the local node, the more fragile rollouts, restarts, and rescheduling become. This is why durable data usually belongs in databases, managed storage, or shared filesystems rather than inside the running container.

That does not mean containers can never touch persistent storage. It means the persistence design should be deliberate. EFS, Azure Files, Filestore, persistent disks, and workload-specific data services all exist because the runtime should be free to restart or move without destroying the app's identity.

If a simple restart is scary, the state boundary is probably wrong.

---

### 9. Autoscaling Happens at More Than One Layer

Orchestrated systems often have at least two scaling loops. One loop decides how many workload units should exist. Another decides whether enough node capacity exists to place those units. ECS on EC2 makes this very obvious. Kubernetes clusters do too. If the task count wants to grow faster than node capacity can grow, the platform does not look elastic even though the autoscaler is technically working.

This is why teams sometimes blame the scheduler for what is really a capacity-plane mismatch. Pod scaling is one thing. Node scaling is another. Hostless runtimes reduce this tension because node management is absorbed by the platform, but even then you still face sizing, quota, and cold-start style realities.

Good operators always ask which scaling layer is slow before they conclude the whole platform is slow.

---

### 10. Kubernetes Complexity Must Earn Its Keep

Managed Kubernetes is valuable when you truly need Kubernetes semantics, ecosystem integrations, rich policy, custom controllers, or workload portability strong enough to justify the extra overhead. It is a poor default if the team mostly wants to run web services reliably with minimal operations burden.

This does not mean Kubernetes is bad. It means it is expensive in attention. You inherit API objects, cluster upgrades, node pools, CNI choices, ingress models, and operational vocabulary that smaller platforms intentionally hide. Sometimes that cost is worth it. Sometimes it is not.

The strongest architecture decision is not "we use Kubernetes because modern teams do." It is "we need the behaviors Kubernetes uniquely gives us, and we accept the operational surface that comes with them."

---

### 11. Cross-Cloud Mental Map - Every Concept Has a Counterpart

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Private image registry | ECR | ACR | Artifact Registry |
| Native non-Kubernetes scheduler | ECS | Container Apps / App Service for Containers | Cloud Run |
| Managed Kubernetes | EKS | AKS | GKE |
| Hostless container runtime | Fargate | Container Apps | Cloud Run |
| Workload identity | task role, IRSA | managed identity, workload identity | service account, workload identity |
| Shared durable file system | EFS | Azure Files | Filestore |
| Service exposure | ALB, NLB, ingress, service LB | App Gateway, ingress, Load Balancer | Cloud Load Balancing, ingress |
| Cluster networking decision surface | VPC CNI and subnet design | VNet and CNI choice | VPC-native and cluster networking |
| Developer onboarding helper | App2Container, Copilot | app platform tooling | cloud deployment helpers |

## Hands-On Activity Guide

This guide is structured in seven modules that build sequentially. Start with image and registry basics, then move into scheduling, identity, networking, state, and rollout.

### Prerequisites and Safety Rules

- Use a sandbox account only. Clusters, load balancers, registries, and persistent volumes can create cost fast.
- Set a budget alert before enabling managed clusters or public ingress.
- Prefer tiny worker nodes and minimum-size clusters during practice.
- Tag every registry, cluster, service, node pool, and persistent volume for cleanup.
- Delete idle clusters, load balancers, and volumes after the lab.

---

### Module 1: Build and Publish an Image

**Goal:** understand that orchestration starts with a trustworthy artifact.

#### Lab 1A: Build and Push to ECR (AWS)

1. Package a tiny web app into a container image.
2. Create an ECR repository and push the image.
3. Record the image URI and digest.
4. Explain why digest is a stronger deployment reference than a mutable tag.

#### Lab 1B: Repeat on Azure and GCP

1. Push the same app image to ACR and Artifact Registry.
2. Compare repository naming and authentication flow.
3. Record what stays conceptually the same across all three clouds.

---

### Module 2: Run Containers on the Simplest Managed Runtime

**Goal:** separate "I can run a container" from "I need a full orchestrator."

#### Lab 2A: Run on ECS with Fargate (AWS)

1. Create a simple ECS task definition and service on Fargate.
2. Expose the service behind a load balancer if needed.
3. Confirm the task becomes healthy and reachable.

#### Lab 2B: Compare with a Simpler Managed Runtime

1. Review or deploy the same container on Azure Container Apps or App Service for Containers.
2. Review or deploy the same app on Cloud Run.
3. Record what operational responsibility disappears and what remains.

---

### Module 3: Compare ECS on EC2 with Fargate

**Goal:** see the difference between workload scaling and node scaling.

#### Lab 3A: ECS on EC2

1. Create an ECS cluster backed by EC2 capacity.
2. Deploy the same app as a service.
3. Observe that node size and available cluster capacity now matter directly.

#### Lab 3B: ECS on Fargate

1. Run the same workload on Fargate.
2. Compare what the team still controls and what AWS now owns.
3. Record the trade-off in one paragraph.

---

### Module 4: Explore Managed Kubernetes

**Goal:** learn what a managed control plane solves and what it does not solve.

#### Lab 4A: EKS Cluster Basics

1. Create or inspect an EKS cluster with at least one node group.
2. Connect with `kubectl`.
3. Deploy a simple workload and inspect pods, nodes, and services.

#### Lab 4B: Cross-Cloud Comparison

1. Inspect the equivalent concepts in AKS and GKE.
2. Compare control plane ownership, node group management, and ingress posture.
3. Record which problems Kubernetes solves that ECS or Cloud Run style platforms do not solve directly.

---

### Module 5: Service Exposure and Ingress

**Goal:** understand that scheduling and traffic entry are different design layers.

#### Lab 5A: Expose a Workload Safely

1. Expose an ECS or EKS workload through ALB or ingress.
2. Confirm health-aware traffic reaches the workload.
3. Replace or restart the workload and verify the public entry point stays stable.

#### Lab 5B: Compare Ingress Models

1. Review ingress on AKS or App Gateway integration.
2. Review service exposure on GKE plus Cloud Load Balancing.
3. Record how the load-balancing chapter connects directly to this chapter.

---

### Module 6: Identity and State

**Goal:** attach identity dynamically and keep persistence outside the disposable runtime where possible.

#### Lab 6A: Workload Identity

1. Attach a task role to an ECS workload or configure IRSA for a simple EKS workload.
2. Confirm the workload can call only the AWS API action it actually needs.
3. Record why this is better than placing credentials in environment variables or images.

#### Lab 6B: Persistent Storage

1. Mount shared or durable storage to a test workload.
2. Restart the workload.
3. Verify what survives and what does not.

---

### Module 7: Rollout, Recovery, and Platform Choice

**Goal:** treat replacement and version movement as normal operations, not emergency events.

#### Lab 7A: Roll a New Image

1. Publish a small image change.
2. Update the ECS service or Kubernetes deployment.
3. Watch the rollout and record which signals prove the rollout is safe.

#### Lab 7B: Failure Exercise

1. Force one failure condition: image pull failure, bad health check, or insufficient capacity.
2. Diagnose whether the problem lives in the registry, scheduler, node capacity, ingress, or storage layer.
3. Restore the system and write the shortest runbook that would help you fix it next time.

## Troubleshooting Notes

| Symptom | Likely Cause | Check First |
|---|---|---|
| Image will not pull | Registry auth, bad tag, or policy problem | Image digest, repository policy, task or pod events |
| Task or pod stays pending | Node capacity, subnet IP limits, or scheduling constraint | Scheduler events and node availability |
| Service is running but unreachable | Ingress or load-balancer integration problem | Service exposure path and health checks |
| Rollout stalls | Bad health endpoint, large image, or hidden state | Deployment events and readiness signals |
| One workload can reach too much | Identity attached too broadly | Task role, pod identity, or node-level permissions |
| Costs rise unexpectedly | Idle cluster, oversized nodes, or orphaned volumes | Cluster size, load balancers, and persistent storage inventory |

## Quick Revision Sheet
- The image is the artifact; the scheduler is the operating model.
- Registry trust is part of runtime trust.
- Platform choice should be based on responsibility split.
- Task, pod, and node are different control surfaces.
- Hostless runtimes remove toil, not architecture.
- Networking and ingress are first-class orchestration concerns.
- Identity should attach to the workload, not the image.
- External state makes replacement honest.
- Scaling can fail at the workload layer or the node-capacity layer.
- Kubernetes should earn its complexity.

## Self-Check Questions
1. Why is containerization not the same decision as choosing Kubernetes?
2. What changes operationally when the same workload moves from ECS on EC2 to Fargate?
3. Which layer would you inspect first if pods or tasks stay pending?
4. Why is workload-level identity safer than node-level identity for many multi-service clusters?
5. What real need would justify choosing Kubernetes over a simpler managed runtime in your environment?
