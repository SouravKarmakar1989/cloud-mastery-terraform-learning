# Load Balancing Auto Scaling Learner Notes

This file is a learner-first companion to `02_Load_Balancing_Auto_Scaling.md`.
It is structured as a series of blog-post-depth theoretical articles, followed by a multi-cloud hands-on activity guide, and closed with troubleshooting, revision, and self-assessment material.

Source authority: 66 AWS primary transcript files spanning DVA-C01, SAA-C03, SAP-C02, SOA-C03, Advanced Networking Specialty, Security Specialty, and Azure/GCP supplements. The architect-level concepts are drawn directly from the Deep Expansion section of the primary knowledge base.

## How To Use This File
1. Read each theoretical section fully before opening the console. This topic only becomes easy when the control loops make sense in your head.
2. Work through the hands-on modules in order. Each module builds on the previous one.
3. Run the AWS path first, then repeat the same concept on Azure and GCP when possible.
4. Use the Troubleshooting Notes when behavior looks strange. Load balancing and scaling issues are easier to solve when you know which loop is failing.
5. Revisit the Quick Revision Sheet before an exam, design review, or incident-response simulation.

## Theoretical Notes

---

### 1. Load Balancers Are Policy Engines, Not Simple Traffic Splitters

Most learners first meet load balancers as "the thing that sends requests to multiple servers." That description is not wrong, but it is too small to be useful in production architecture. A load balancer is really a policy engine sitting in front of your backend fleet. It decides which protocols are accepted, where traffic is sent, which targets are considered healthy, how TLS is terminated, what metadata is forwarded, and sometimes whether a request should be redirected, denied, authenticated, or rewritten before it even reaches your application.

Application Load Balancer, Azure Application Gateway, and GCP HTTP(S) Load Balancing all belong to this policy-engine family. They do not merely spread requests. They make application-aware decisions based on host header, path, listener rules, certificates, and health models. This is why ALB is not interchangeable with NLB. The moment the problem is "send `/api` to one backend and `/images` to another" you are no longer solving a generic transport problem. You are solving an application routing problem.

This distinction matters because architecture starts at the entry layer. If the entry layer is wrong, every downstream component inherits the wrong assumptions. Authentication may be bolted into the app when it belongs at the front door. TLS may terminate too late. Client identity may be lost. Health checks may not represent real application readiness. Strong operators stop asking "do I need a load balancer?" and start asking "what policy surface should exist at the front door?"

---

### 2. Layer 4, Layer 7, and Appliance Insertion Solve Different Problems

Layer 7 load balancing is for application-aware routing. It understands HTTP and HTTPS, inspects headers and paths, supports redirects, and enables richer policy. Layer 4 load balancing is for transport handling. It forwards TCP or UDP traffic without trying to understand the application protocol. Gateway insertion patterns are different again: they exist to place inspection appliances such as firewalls or packet analyzers in the traffic path.

This is why ALB, NLB, and GWLB are separate AWS services rather than three skin options on one product. ALB is the right answer for host-based or path-based routing, web application entry, and many container ingress patterns. NLB is the right answer when you need static IP behavior, transport-level forwarding, or different source identity properties. GWLB is the right answer when the traffic should pass through network appliances rather than simply reach a web application. Azure and GCP express the same split with different product boundaries, but the design question is identical.

If you choose the wrong layer, the system may still appear to work. That is what makes this mistake dangerous. An app may be reachable through an L4 front door while quietly losing the routing flexibility, header context, or TLS termination behavior the workload actually needs. The correction often arrives later during an outage or a rushed migration.

---

### 3. Backend Membership Is a First-Class Design Choice

A front door is only useful when it has a clean model of backend membership. AWS uses target groups, Azure uses backend pools, and GCP uses backend services. These names differ, but the idea is the same: the platform needs a durable way to know which backends are eligible to receive traffic and how to evaluate them.

This is why "the load balancer" is never the whole story. The real story includes the backend registration object, the health check object, and the fleet manager that may add or remove nodes over time. When an Auto Scaling Group attaches to an ALB target group, the load balancer is not discovering instances by magic. The ASG is participating in a membership contract. VM Scale Sets and Managed Instance Groups do the same thing in different vocabulary.

Once you see backend membership clearly, troubleshooting gets easier. A healthy instance that never receives requests may not be missing compute capacity at all. It may simply not be registered, or it may be registered in the wrong group, or the health check may reject it. Membership objects are where many "everything looks green but traffic still fails" problems actually live.

---

### 4. Health Is Layered: Traffic Health, Platform Health, and Replacement Health

Health is one of the most misunderstood ideas in scaling and load balancing. There is not one health model. There are several, and each one exists for a different consequence. Traffic health decides whether a backend should receive requests right now. Platform health decides whether the VM is alive enough for the provider to manage. Replacement health decides whether the fleet manager should recreate the node.

These layers are related but not interchangeable. A backend can fail the ALB health check because the web server is down while still passing EC2 instance status checks. The kernel is fine, the hypervisor path is fine, but the application is not ready for traffic. If the ASG is configured only for EC2 health, the instance may remain alive forever while serving nothing. If the ASG uses load-balancer health too aggressively, it may churn an entire fleet during a bad deployment.

The practical lesson is simple: do not reuse one signal blindly for every control loop. Traffic eligibility and instance replacement are different consequences and should often be driven by separate signals. The better your team understands that separation, the faster incidents become understandable.

---

### 5. Auto Scaling Groups Are Feedback Loops, Not Bags of Instances

An Auto Scaling Group is often taught as "a way to run more EC2 instances automatically." The more useful mental model is a feedback loop. The fleet has a desired state, the platform observes metrics or schedules, and scaling policies decide when to add or remove capacity. Minimum, maximum, desired count, cooldown, instance warm-up, and replacement policy are all part of one control system.

This explains why scaling can feel broken even when AWS is doing exactly what you asked. If new instances need four minutes of bootstrap, target tracking based on CPU will respond too slowly. If the health check is too strict, replacements will flap. If the metric is noisy, scaling will oscillate. VM Scale Sets and Managed Instance Groups face the same reality. Autoscaling is never magic. It is a delayed control loop tuned by humans.

The good news is that once you start thinking in feedback loops, you know where to look. Bad metric, wrong threshold, slow warm-up, heavy image boot time, or missing pre-initialized capacity are all control-loop problems. They are not random cloud behavior.

---

### 6. Time Controls Matter: Warm Pools, Lifecycle Hooks, and Instance Refresh

Elasticity is not only about deciding to scale. It is about how long it takes new capacity to become useful and how safely existing capacity can be replaced. Warm pools help by keeping pre-initialized instances nearby so scale-out is faster. Lifecycle hooks help by pausing launch or terminate events so you can finish bootstrap, register state, drain traffic, or collect evidence. Instance Refresh helps roll new versions across the fleet in a controlled way instead of requiring manual instance termination.

These features exist because time is part of architecture. A system that takes six minutes to scale under burst load is a different system from one that can serve traffic in under a minute. A fleet that can replace instances safely under health gates is a different system from one that depends on engineers clicking "terminate" and hoping the replacement works.

This is one reason image quality matters so much in elastic systems. If every node must install packages, download artifacts, and perform heavy boot logic before it is ready, scaling will always feel slow regardless of the policy settings. Fast scale-out is partly a deployment-design problem.

---

### 7. TLS, Source Identity, and Proxy Metadata Change the Backend Contract

What the backend sees is shaped heavily by the front door. If TLS terminates at the load balancer, the backend receives decrypted traffic and often depends on forwarded headers to reconstruct client identity or original protocol information. If traffic passes through deeper in the stack, certificate handling and observability shift elsewhere. NLB and proxy protocol choices introduce yet another contract about source visibility.

This matters for security and correctness, not just for logging. Rate limiting, geo logic, security analytics, access control, and audit trails may all depend on accurate client identity. If the backend expects a real client IP but only sees the load balancer IP, the app can be functionally up while semantically wrong. The same issue appears across AWS, Azure, and GCP.

Architects therefore need to design the entry layer with backend behavior in mind. "Terminate TLS here" is not a low-level checkbox. It changes how the application, the logs, and the security model all behave.

---

### 8. Stateless Backends Make Load Balancing Honest

Sticky sessions can help legacy applications survive behind a front door, but they also reveal an important truth: the more state your application keeps on one backend, the less trustworthy your scaling and replacement story becomes. A stateless fleet lets the front door route to any healthy node. A stateful fleet quietly depends on session affinity, local cache, or local files, which makes replacements riskier and scaling less clean.

This is why strong load-balanced architectures externalize state into databases, caches, queues, or shared filesystems. Once the backend is replaceable, rolling updates become safer, unhealthy nodes are easier to discard, and zonal recovery becomes more realistic. Load balancing works best when the backend tier is disposable.

This lesson travels well across clouds. It is one of the most portable architecture truths in compute design.

---

### 9. Zonal Design Changes Both Resilience and Cost

A highly available fleet is not just "more instances." It is a fleet spread across failure domains, with a front door capable of routing across those domains sensibly. Cross-zone balancing can simplify traffic distribution, but it also changes traffic locality and sometimes cost. A zonally concentrated backend may appear healthy right until one zone becomes unavailable.

This is why front-door design and fleet design cannot be separated. A multi-AZ ASG behind an ALB is a joint design. VMSS plus Application Gateway is a joint design. MIG plus GCP backend service is a joint design. The resilience story is never owned by just one service.

Good operators ask: where are the backends placed, how does traffic reach them, what happens if one zone fails, and how much inter-zone movement am I implicitly paying for? Those questions matter earlier than most teams expect.

---

### 10. Secure Front Doors Often Layer Services

Many production-grade designs intentionally place an edge layer in front of the regional front door. CloudFront in front of ALB is the most obvious AWS example. The reason is not fashion. Edge layers improve caching, TLS posture, DDoS resistance, global distribution, and sometimes the ability to restrict the regional load balancer so it is not directly internet-exposed.

Azure Front Door and GCP global edge patterns serve the same role. They teach an important architecture lesson: security often comes from composition, not from one perfect setting on one load balancer. The regional entry service handles backend-aware routing. The edge layer handles global entry, acceleration, and additional protection.

If you only study the regional load balancer in isolation, you miss how real internet-facing systems are commonly built.

---

### 11. Monitoring and Eventing Complete the Control Loop

A front door and a fleet are not operationally complete until you can see what they are doing. CloudWatch metrics, load balancer logs, ASG activity history, lifecycle events, and alarms turn scaling from guesswork into observable behavior. Azure Monitor and Cloud Monitoring serve the same purpose elsewhere. Without observability, teams misdiagnose slow scale-out, unhealthy targets, and oscillating fleets because they only see the symptom, not the loop.

This is why alarm design matters. You need metrics for request rate, latency, backend health, HTTP error classes, instance count, scaling activity, and sometimes queue depth or bootstrap duration. Events also matter. Lifecycle hooks and notifications are useful precisely because they create control points in what would otherwise be opaque fleet behavior.

A scalable system is not one that can add instances. It is one whose behavior stays understandable while it adds, removes, and replaces them.

---

### 12. Cross-Cloud Mental Map - Every Concept Has a Counterpart

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Layer 7 application front door | ALB | Application Gateway | External HTTP(S) Load Balancing |
| Layer 4 transport front door | NLB | Azure Load Balancer | Passthrough network load balancing |
| Appliance insertion | GWLB | network virtual appliance chaining | service chaining patterns |
| Backend membership | Target groups | Backend pools | Backend services |
| Managed fleet abstraction | Auto Scaling Group | Virtual Machine Scale Set | Managed Instance Group |
| Autoscale control loop | CloudWatch alarms and target tracking | Azure Monitor autoscale | MIG autoscaler |
| Rolling fleet replacement | Instance Refresh | rolling upgrade | rolling update |
| Traffic health | target health checks | health probes | health checks |
| Repair health | ASG replacement | VMSS repair patterns | MIG autohealing |
| Edge layering | CloudFront plus ALB | Front Door plus App Gateway | global external load balancing plus Cloud Armor |
| Observability path | CloudWatch, access logs, EventBridge | Azure Monitor | Cloud Monitoring |

## Hands-On Activity Guide

This guide is structured in seven modules that build sequentially. Start on AWS, then repeat the same architectural idea on Azure and GCP whenever the equivalent service exists.

### Prerequisites and Safety Rules

- Use a sandbox account only. Internet-facing load balancers and extra VMs can create cost quickly.
- Set a budget alert before creating any public front door, scale set, or managed instance group.
- Prefer tiny instance types and minimum fleet sizes during practice.
- Tag every load balancer, target group, launch template, VMSS, or MIG for cleanup.
- Remove public front doors, static IPs, certificates, and test fleets after the lab.

---

### Module 1: Build Your First Managed Web Front Door

**Goal:** learn the difference between "the app is reachable" and "the app is fronted by a health-aware policy engine."

#### Lab 1A: Create an ALB in Front of Two EC2 Instances (AWS)

1. Launch two small EC2 web instances in different subnets.
2. Create an ALB with an HTTP listener and a target group that checks `/health`.
3. Register both instances and verify both show healthy.
4. Hit the ALB DNS name several times and confirm requests alternate between backends.
5. Break the web process on one node and watch target health change before the instance itself fails.

What to record:
- Listener, target group, and health check path
- Time between app failure and traffic removal
- Difference between EC2 health and target health

#### Lab 1B: Build the Equivalent on Azure

1. Create two tiny VMs and place them in one backend pool behind Application Gateway.
2. Configure a health probe and HTTP listener.
3. Confirm healthy backend behavior, then break one backend.
4. Compare the operator experience to ALB.

#### Lab 1C: Build the Equivalent on GCP

1. Create two tiny instances behind an HTTP(S) load balancing setup.
2. Configure the backend service and health check explicitly.
3. Break one backend and observe health and traffic behavior.
4. Compare the backend-service mental model to AWS target groups.

---

### Module 2: Compare ALB, NLB, and GWLB Thinking

**Goal:** learn that front-door type is a design decision, not a preference setting.

#### Lab 2A: Compare ALB and NLB in AWS

1. Inspect the listener model, backend registration, and source identity behavior for one ALB and one NLB.
2. Write one sentence for when ALB is correct and one sentence for when NLB is correct.
3. Note what you lose if you swap them casually.

#### Lab 2B: GWLB Thought Exercise

1. Read the GWLB section in `02_Load_Balancing_Auto_Scaling.md`.
2. Describe a case where inspection appliances matter more than web routing.
3. Explain why ALB would be the wrong primitive in that case.

#### Lab 2C: Cross-Cloud Mapping Check

1. Map ALB to Application Gateway and GCP HTTP(S) load balancing.
2. Map NLB to Azure Load Balancer and GCP L4 passthrough load balancing.
3. Record what appliance insertion looks like conceptually in each cloud.

---

### Module 3: Build an Elastic Fleet

**Goal:** understand that scaling is a managed feedback loop, not manual instance duplication.

#### Lab 3A: Auto Scaling Group with Launch Template (AWS)

1. Create a launch template from your small web server design.
2. Create an ASG across at least two subnets with a minimum of 2 and desired count of 2.
3. Attach the ASG to the ALB target group.
4. Confirm automatic backend registration and healthy target count.

#### Lab 3B: Trigger Scale-Out

1. Add a simple target tracking policy on CPU.
2. Generate temporary load and watch desired and in-service capacity change.
3. Measure how long the new instance takes to become truly healthy at the target group.

#### Lab 3C: Compare with Azure VMSS or GCP MIG

1. Build a tiny VMSS or MIG.
2. Attach it to the cloud-native front door.
3. Compare how each platform expresses desired, minimum, and maximum capacity.

---

### Module 4: Separate Traffic Removal from Node Replacement

**Goal:** understand the difference between removing a node from rotation and replacing the node entirely.

#### Lab 4A: Fail the App but Keep the VM Running

1. Stop the web process on one backend.
2. Observe ALB target health become unhealthy.
3. Check whether the ASG replaces the instance immediately.
4. Note the effect of the ASG health source you configured.

#### Lab 4B: Fail the Instance More Deeply

1. Force a condition that affects the instance itself or terminate one instance manually.
2. Observe how the fleet restores desired capacity.
3. Compare the repair path to the traffic-only health failure.

---

### Module 5: Practice Safe Rollouts

**Goal:** replace nodes deliberately instead of hoping manual churn behaves like deployment logic.

#### Lab 5A: Instance Refresh

1. Change the launch template version or AMI.
2. Trigger an Instance Refresh.
3. Watch how the fleet rolls forward while preserving healthy capacity.

#### Lab 5B: Warm Pools and Lifecycle Hooks

1. Add a warm pool to the ASG if available in your lab account.
2. Create a launch lifecycle hook.
3. Record how these features change readiness timing and operational control.

---

### Module 6: TLS and Source Identity

**Goal:** see how front-door choices change what the backend receives and trusts.

#### Lab 6A: TLS at the Load Balancer

1. Add an HTTPS listener to the ALB using ACM.
2. Confirm the backend still receives traffic after TLS termination.
3. Inspect forwarded headers at the backend.

#### Lab 6B: Source Identity Check

1. Log client IP and forwarded headers at the app.
2. Compare what the backend sees through ALB versus what it would see behind NLB.
3. Record when proxy protocol or header-based identity reconstruction is required.

---

### Module 7: Add Observability and an Edge Layer

**Goal:** complete the design with visibility and secure entry composition.

#### Lab 7A: ALB and ASG Monitoring

1. Create CloudWatch alarms for unhealthy hosts, request volume, and ASG capacity changes.
2. Review ASG activity history during a scale or replacement event.
3. Record which signal you would trust first during an incident.

#### Lab 7B: CloudFront in Front of ALB

1. Place CloudFront in front of your ALB or review the pattern conceptually if time is limited.
2. Restrict the ALB so it is not meant to be directly reachable by arbitrary internet traffic.
3. Record the difference between edge entry and regional entry.

## Troubleshooting Notes

| Symptom | Likely Cause | Check First |
|---|---|---|
| Front door returns 502 or 503 | Backend unhealthy, listener mismatch, or app failure | Target group or backend health |
| VM looks healthy but receives no traffic | Traffic health and platform health are different | Load balancer health, not instance status |
| Scaling is too slow | Heavy bootstrap, bad warm-up, or no warm pool | Instance launch timeline and readiness path |
| Fleet keeps replacing nodes | Health signal too aggressive or bad deployment | ASG health source and rollout history |
| Client IP logic is broken | Wrong assumptions about TLS termination or source preservation | Forwarded headers, proxy protocol, listener type |
| Costs rose after practice | Idle ALB, static IPs, and minimum fleet size left running | Cleanup inventory and billing view |

## Quick Revision Sheet
- A load balancer is a policy engine, not only a traffic splitter.
- ALB, NLB, and GWLB solve different categories of problems.
- Backend membership objects are where many hidden failures live.
- Traffic health and replacement health are different loops.
- Autoscaling is a feedback system shaped by timing and signal quality.
- Warm pools, lifecycle hooks, and Instance Refresh are time-control features.
- TLS termination and source identity change backend behavior.
- Stateless backends make scaling and replacement safer.
- Zonal design affects both resilience and cost.
- Observability completes the control loop.

## Self-Check Questions
1. What problem does ALB solve that NLB does not solve cleanly?
2. Why should traffic health and replacement health often be treated separately?
3. Which timing factor most limits your scale-out speed in a new fleet?
4. What does the backend lose if the front door does not preserve or reconstruct client identity correctly?
5. How would you explain cross-zone trade-offs to a teammate who only thinks in instance count?
