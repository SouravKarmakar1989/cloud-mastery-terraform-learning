# Reliability Deep Dive

This document copies the full Reliability section from WAF.md and then expands the cloud services/concepts into granular, novice-friendly Bengali-English explanations.

## Study Note Layout

### Fast Revision Table

| Focus Area | Core Question | Practical Signal |
|---|---|---|
| Availability | Service stays up during faults? | Multi-instance + LB + health checks |
| Fault Isolation | One failure kills all, or stays contained? | Queue decoupling + circuit breaker |
| Recovery | How fast and safely recover? | DR runbook + backup restore drills |
| Data Safety | Can data be lost/corrupted? | Durability class + replication + backup validation |
| Reliability Ops | Is reliability measured and governed? | SLO, error budget, burn-rate alerts |

### Quick Interview Lines

- Reliability মানে no-failure না; reliability মানে failure-aware architecture.
- High availability without tested recovery is incomplete reliability.
- Backup থাকা আর restore prove করা এক জিনিস না.
- SLO ছাড়া reliability discussion subjective হয়ে যায়.

## Original Reliability Section

3) Reliability

    এটার মূল প্রশ্ন: failure হলে system কি graceful ভাবে survive, recover, and continue করতে পারে? Reliable system মানে failure হবে না — এটা ভুল। Reliable system মানে failure expected, এবং architecture সেটা absorb বা recover করতে পারে. এর মধ্যে পড়ে redundancy, failover, backup, disaster recovery, health checks, retries, idempotency, queue-based decoupling, SLO/SLA thinking, capacity planning, automated recovery. GCP reliability pillar explicitly fault tolerance, redundancy, monitoring, automated recovery-এর কথা বলে.

    ## Generic concepts:
        High availability
            Architect lens:
                planned maintenance বা localized failure হলেও service continuity রাখার জন্য redundancy model এবং availability target design করা.

            Hardcore DevOps lens:
                multi-instance deployment, load balancer health routing, no single point of failure, and rolling maintenance patterns operationalize করা.

        Fault tolerance
            Architect lens:
                component failure tolerate করার মতো architecture তৈরি করা, যেখানে degraded mode-এও critical path alive থাকে.

            Hardcore DevOps lens:
                retry-safe workflows, fallback paths, dependency isolation, graceful degradation toggles, and failure-injection validation implement করা.

        DR / backup / restore
            Architect lens:
                business RTO/RPO requirements থেকে recovery strategy define করা এবং backup architectureকে tiered criticality অনুযায়ী align করা.

            Hardcore DevOps lens:
                scheduled backups, restore drills, backup immutability/encryption, cross-region copies, and recovery runbook rehearsal maintain করা.

        Multi-AZ / multi-region
            Architect lens:
                zonal vs regional failure domain বুঝে placement strategy design করা যাতে resilience এবং latency/cost tradeoff balanced থাকে.

            Hardcore DevOps lens:
                active-active/active-passive topology, traffic steering, data replication consistency model, and failover automation configure করা.

        Auto-healing
            Architect lens:
                self-recovery behavior architecture requirement হিসেবে define করা যাতে manual intervention dependency কমে.

            Hardcore DevOps lens:
                health-driven restart/replace policies, orchestrator self-heal rules, and failed node/workload automatic replacement configure করা.

        Health probes and failover
            Architect lens:
                meaningful liveness/readiness/dependency health model define করে failover decision deterministic করা.

            Hardcore DevOps lens:
                probe thresholds tuning, synthetic checks, failover triggers, and false-positive control সহ tested switchover procedures চালানো.

        Queue-based buffering
            Architect lens:
                producer-consumer decoupling design করে burst handling, backpressure management, and partial failure isolation নিশ্চিত করা.

            Hardcore DevOps lens:
                queue depth alarms, DLQ handling, retry policies, consumer autoscaling, and poison-message workflows operationalize করা.

        Circuit breaker / retry / timeout
            Architect lens:
                distributed dependency failure cascading না হতে resilience patterns as standard design guardrail define করা.

            Hardcore DevOps lens:
                client timeout budgets, exponential backoff with jitter, circuit state tuning, and idempotent retry contracts enforce করা.

        Data durability
            Architect lens:
                data loss tolerance অনুযায়ী storage durability class, replication strategy, and retention policy define করা.

            Hardcore DevOps lens:
                durability SLAs validate, replication lag monitoring, integrity checks, backup verification, and corruption recovery workflows চালানো.

        SLO / error budget mindset
            Architect lens:
                reliabilityকে measurable product objective হিসেবে define করা এবং feature velocity vs stability tradeoffকে policy-driven করা.

            Hardcore DevOps lens:
                SLI instrumentation, SLO tracking dashboards, burn-rate alerts, and error-budget breach হলে change freeze/mitigation play চালানো.

    ## AWS related services/concepts:
        Auto Scaling, ELB/ALB/NLB, Route 53 health checks and failover, Multi-AZ RDS, Aurora replicas/global database, S3 durability model, EFS, backup services, Lambda retry/DLQ, SQS/SNS/EventBridge decoupling, ECS/EKS self-healing, AWS Backup.

    ## Azure related services/concepts:
        Availability Zones, VM Scale Sets, Load Balancer, Application Gateway, Front Door, Traffic Manager, Service Bus/Event Grid decoupling, geo-redundant storage, SQL failover groups, Azure Backup, Site Recovery, health probes and platform repair.

    ## GCP related services/concepts:
        Managed instance groups with autohealing, Cloud Load Balancing, regional/zonal design, Cloud SQL HA, Spanner, Pub/Sub for decoupling, backup and DR patterns, global load balancing, automated recovery guidance.

## Granular Reliability Breakdown

## 1. AWS Reliability Services and Concepts

### Auto Scaling
One-liner: dynamic capacity scaling for demand and health.

Learn breakdown:
- Traffic বাড়লে instances বাড়ানো, traffic কমলে কমানো.
- Health-based replacement করলে unhealthy node automatically replace হয়.
- Scaling policy ভুল হলে either cost waste or outage risk বাড়ে.
- Beginner rule: scaling policy always load test দিয়ে validate করো.

### ELB/ALB/NLB
One-liner: load balancing and health-based traffic distribution.

Learn breakdown:
- ELB family incoming traffic healthy targets-এ route করে.
- ALB L7 routing (path/host based), NLB low-latency L4 routing.
- Health checks fail করলে bad target-এ traffic বন্ধ হয়.
- Beginner takeaway: load balancer is availability control point, not just traffic splitter.

### Route 53 health checks and failover
One-liner: DNS-level reliability routing.

Learn breakdown:
- Health checks দিয়ে endpoint alive কি না detect হয়.
- Failover policy unhealthy হলে backup endpoint-এ DNS steer করতে পারে.
- DNS TTL বেশি হলে failover delay হতে পারে.
- Beginner note: failover timing depends on health check + DNS cache behavior.

### Multi-AZ RDS
One-liner: managed database high availability.

Learn breakdown:
- Primary failure হলে standby automatically promote হয়.
- App connection strategy resilient না হলে DB HA থেকেও outage হতে পারে.
- Multi-AZ is availability-oriented; performance read scale আলাদা concern.
- Beginner takeaway: DB HA মানে শুধু replica create না; failover behavior understand করা.

### Aurora replicas/global database
One-liner: resilient relational architecture with scale and regional options.

Learn breakdown:
- Replicas read scaling + failover options দেয়.
- Global database multi-region resiliency and low-latency reads support করে.
- Replication lag consistency decision-এ impact ফেলে.
- Beginner rule: global design দিলে latency-benefit and consistency-tradeoff দুইটাই বুঝো.

### S3 durability model
One-liner: highly durable object storage.

Learn breakdown:
- Durability মানে data loss probability খুব low design করা.
- Availability আর durability এক জিনিস না; object safe থাকলেও temporary access issue হতে পারে.
- Lifecycle and replication choices durability strategy refine করে.
- Beginner takeaway: critical backups/object archives-এর জন্য durability class বুঝা জরুরি.

### EFS
One-liner: managed shared file storage with resilience.

Learn breakdown:
- Multiple compute nodes shared file system use করতে পারে.
- Availability zone failure scenarios-এ file access strategy পরিকল্পনা দরকার.
- Throughput/performance mode application behavior-এ impact ফেলে.
- Beginner note: shared storage adds convenience but needs careful dependency design.

### Backup services
One-liner: centralized backup orchestration.

Learn breakdown:
- Backup schedules, retention, and policy এক জায়গা থেকে manage করা যায়.
- Backup আছে মানে recover হবে guaranteed না; restore drill mandatory.
- Encryption and cross-region copy strategy business criticality অনুযায়ী সেট করো.
- Beginner takeaway: backup policy should map directly to RPO/RTO goals.

### Lambda retry/DLQ
One-liner: serverless failure handling controls.

Learn breakdown:
- Retry behavior helps transient failure survive করতে.
- DLQ (dead-letter queue) failed events isolate করে later reprocess/debug করতে দেয়.
- Idempotency না থাকলে retries duplicate side effects create করতে পারে.
- Beginner rule: event-driven reliability starts with idempotent handler design.

### SQS/SNS/EventBridge decoupling
One-liner: asynchronous decoupled system design.

Learn breakdown:
- Producer এবং consumer loosely coupled হলে one-side failure পুরো system block করে না.
- Queue depth, retry policy, DLQ operational reliability metrics.
- SNS fanout multiple subscribers-এ event distribute করে.
- EventBridge event routing simplify করে complex integration.
- Beginner takeaway: decoupling reduces blast radius and improves graceful degradation.

### ECS/EKS self-healing
One-liner: orchestrated workload recovery.

Learn breakdown:
- Failed container restart/replace orchestration layer handle করে.
- Desired state model keeps service running target replica count অনুযায়ী.
- Probe configuration ভুল হলে healthy serviceও flap করতে পারে.
- Beginner note: orchestrator powerful, but bad health checks can create instability.

### AWS Backup
One-liner: policy-driven backup governance.

Learn breakdown:
- Different workloads-এর backup policy centralized করে consistency আনা যায়.
- Vault strategy, retention, lock/WORM-like controls compliance cases-এ useful.
- Restore tests ছাড়া backup readiness claim weak.
- Beginner takeaway: treat backup as recoverability program, not checkbox.

## 2. Azure Reliability Services and Concepts

### Availability Zones
One-liner: zonal fault-domain resilience.

Learn breakdown:
- Different zones physical separation দিয়ে local failure impact কমায়.
- Zonal architecture করলে zone outage হলেও service continue possible.
- Cross-zone traffic and data replication design needed.
- Beginner takeaway: zone aware design = better continuity, with cost/latency tradeoff.

### VM Scale Sets
One-liner: scalable and self-healing VM fleet.

Learn breakdown:
- Automated scale-out/in based on load or metrics.
- Unhealthy instances replace করা যায় platform automation দিয়ে.
- Uniform baseline config থাকলে fleet operations predictable হয়.
- Beginner note: one VM pet model থেকে cattle model-এ যেতে সাহায্য করে.

### Load Balancer
One-liner: traffic distribution with health-based routing.

Learn breakdown:
- Backend health probe pass না করলে traffic drop করা হয়.
- Internal vs public load balancing scenario বুঝা জরুরি.
- Improper probe thresholds false failover create করতে পারে.
- Beginner takeaway: load balancer tuning is reliability critical.

### Application Gateway
One-liner: L7 traffic control and reliability front door.

Learn breakdown:
- HTTP-aware routing rules দিয়ে app paths handle হয়.
- Backend health monitoring করে bad instances isolate করে.
- TLS termination and WAF integration reliability + security blend করে.
- Beginner note: app-layer gateway helps resilient routing for web workloads.

### Front Door
One-liner: global edge routing and failover.

Learn breakdown:
- Global user traffic nearest healthy backend-এ steer করতে পারে.
- Regional incident হলে traffic reroute supports continuity.
- Caching and edge presence user-perceived availability improve করে.
- Beginner takeaway: global workloads need global routing strategy.

### Traffic Manager
One-liner: DNS-based traffic steering and failover.

Learn breakdown:
- Priority বা performance policies দিয়ে endpoint choice করা যায়.
- Health probe fail হলে DNS answer alternate endpoint দেয়.
- TTL impact কারণে immediate failover না-ও হতে পারে.
- Beginner rule: DNS failover always includes cache behavior planning.

### Service Bus/Event Grid decoupling
One-liner: reliable async integration.

Learn breakdown:
- Queue/topic based flow service coupling কমায়.
- Consumer downtime হলেও messages buffer থাকতে পারে.
- Retry, dead-lettering, and idempotency reliability fundamentals.
- Beginner takeaway: async integration is a reliability pattern, not only architecture style.

### Geo-redundant storage
One-liner: cross-region data resilience.

Learn breakdown:
- Regional disaster scenario-এ data survivability বাড়ে.
- Replication type অনুযায়ী RPO/RTO expectation change হয়.
- Read-access settings এবং failover process আগে define করা দরকার.
- Beginner note: disaster-ready storage means tested regional recovery path.

### SQL failover groups
One-liner: managed database failover orchestration.

Learn breakdown:
- Primary-secondary DB endpoints with automatic/manual failover options.
- App connection string strategy failover-aware হওয়া চাই.
- Replication lag and consistency expectations বুঝে design করো.
- Beginner takeaway: DB failover works best when app side is failover-ready.

### Azure Backup
One-liner: centralized backup and restore controls.

Learn breakdown:
- Backup policies workload type অনুযায়ী tune করা যায়.
- Retention and vault configuration compliance-impactful.
- Restore drill ছাড়া backup reliability prove হয় না.
- Beginner note: backup success report != business recovery readiness.

### Site Recovery
One-liner: disaster recovery orchestration.

Learn breakdown:
- Workload replication and failover runbook automate করা যায়.
- Planned and unplanned failover patterns আলাদা.
- DR testing regular না হলে incident day-এ surprises আসবে.
- Beginner takeaway: DR is a process discipline, not only tooling.

### Health probes and platform repair
One-liner: automatic detection and remediation signals.

Learn breakdown:
- Health probes decide workload healthy/unhealthy state.
- Platform repair features infra-level auto-recovery support করে.
- Probe sensitivity বেশি হলে false restart loops হতে পারে.
- Beginner rule: probe design should reflect real service readiness, not just process alive check.

## 3. GCP Reliability Services and Concepts

### Managed instance groups with autohealing
One-liner: self-healing compute group management.

Learn breakdown:
- Instance template + group policy দিয়ে fleet consistency maintain হয়.
- Health check fail হলে autohealing instance recreate করতে পারে.
- Regional MIG architecture zonal failure resilience improve করে.
- Beginner takeaway: immutable instance replacement beats manual snowflake repair.

### Cloud Load Balancing
One-liner: global and regional traffic balancing for resilience.

Learn breakdown:
- Healthy backend selection availability বাড়ায়.
- Global balancing multi-region services-এর জন্য critical.
- Backend service config ভুল হলে performance/reliability দুইটাই ক্ষতিগ্রস্ত হয়.
- Beginner note: load balancer config is part of reliability architecture, not optional add-on.

### Regional/zonal design
One-liner: fault-domain aware deployment strategy.

Learn breakdown:
- Zonal failure এবং regional failure impact আলাদা.
- Critical services multiple zones বা regions-এ distribute করতে হয়.
- Latency/cost/reliability tradeoff explicitly document করা দরকার.
- Beginner takeaway: placement strategy directly determines blast radius.

### Cloud SQL HA
One-liner: managed relational failover resilience.

Learn breakdown:
- HA setup primary failure হলে standby failover enable করে.
- Maintenance and failover behavior understanding production readiness-এর জন্য important.
- App retry logic না থাকলে transient DB failover-এ downtime appear হতে পারে.
- Beginner note: database HA and app resiliency must be designed together.

### Spanner
One-liner: globally distributed relational consistency platform.

Learn breakdown:
- Multi-region design availability and consistency capabilities দেয়.
- Horizontal scale with strong consistency use-case dependent advantage.
- Schema and access pattern planning critical for predictable behavior.
- Beginner takeaway: choose Spanner for specific global consistency + scale problems, not by hype.

### Pub/Sub for decoupling
One-liner: event-driven buffering and async resilience.

Learn breakdown:
- Producer/consumer independence failure isolation improve করে.
- Retry and acknowledgement model reliability behavior define করে.
- Backlog monitoring essential to prevent silent lag buildup.
- Beginner rule: message system reliability needs operational observability.

### Backup and DR patterns
One-liner: planned recovery architecture and operations.

Learn breakdown:
- Backup frequency and retention depend on business RPO.
- DR runbook and periodic drill must exist.
- Data validation after restore খুব important.
- Beginner takeaway: restore confidence must be tested, not assumed.

### Global load balancing
One-liner: cross-region failover and user proximity routing.

Learn breakdown:
- User traffic healthy nearest endpoints-এ যায়.
- Regional outage হলে failover continuity বজায় রাখতে সাহায্য করে.
- Health checks and backend capacity planning essential.
- Beginner note: global routing without capacity planning can shift outage from one region to another.

### Automated recovery guidance
One-liner: policy-driven auto-remediation mindset.

Learn breakdown:
- Recovery playbook automation repetitive response time কমায়.
- Alert-to-action wiring reduces human delay.
- Guardrails না থাকলে bad automation incident worsen করতে পারে.
- Beginner takeaway: automate the known fixes, escalate the unknowns.

## Quick Reliability Checklist

- Critical services have at least one tested failover path.
- Backups are restorable and restore drills are scheduled.
- Health probes reflect true readiness.
- Retry logic is idempotent and bounded with timeouts.
- SLO and error budget are monitored with burn-rate alerts.
- DR plan has owners, timeline, and rehearsal cadence.

Reliability-এর beginner formula এক লাইনে:

Design for failure, isolate blast radius, recover fast with tested runbooks, and measure reliability with SLO-driven operations.
