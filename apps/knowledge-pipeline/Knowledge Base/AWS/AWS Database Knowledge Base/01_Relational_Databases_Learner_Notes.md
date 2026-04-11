# Relational Databases Learner Notes

This file is a learner-first companion to `01_Relational_Databases.md`.
It is structured as blog-post-depth theoretical articles, a comprehensive multi-cloud hands-on activity guide, and closed with troubleshooting, revision, and self-assessment material.

Source authority: 66 processed source files, 3996 extracted non-empty transcript lines, owned by AWS Database Knowledge Base. The architect-level concepts are drawn directly from the curated primary knowledge base for this topic.

## How To Use This File
1. Read each theoretical section fully before touching the console. Understand the why before the how.
2. Work through the Hands-On Activity Guide in module order. Each module builds on the last.
3. Run all three cloud variants when you can. The most durable learning comes from doing the same concept on AWS, Azure, and GCP in the same sitting.
4. Use the Troubleshooting section when something goes wrong. Most situations are already documented.
5. Return to the Quick Revision Sheet before any exam, interview, or architecture review.

## Theoretical Notes

---

### 1. RDS vs Aurora — Choosing the Right Managed Relational Engine

AWS offers two managed relational database families: Amazon RDS and Amazon Aurora. They are not interchangeable. Understanding the architectural differences between them determines which you select for a given workload.

**Amazon RDS** is a managed wrapper around industry-standard database engines: MySQL, PostgreSQL, MariaDB, Oracle, and SQL Server. AWS manages the underlying EC2 instance, OS patching, engine upgrades, and automated backups. You still choose the instance size and the storage volume. The storage is EBS-backed and lives in a single AZ (the primary), with a standby copy in Multi-AZ mode (block-level synchronous replication over a private network). Failover to the standby requires a DNS cutover and typically takes 60–120 seconds.

**Amazon Aurora** is a purpose-built AWS relational engine that is MySQL and PostgreSQL compatible. The architectural difference is the storage layer: Aurora uses a distributed, SSD-backed virtual storage volume that spans three AZs — 6 copies of data across 3 AZs (2 copies per AZ). The compute and storage layers are decoupled. When you add an Aurora Replica, it directly reads from the same shared storage — there is no data replication lag for reads as there is with RDS Read Replicas. Aurora can have up to 15 read replicas. Failover to one replica takes 30 seconds or less. Aurora's storage auto-scales in 10 GB increments with no pre-provisioning.

**When to choose RDS over Aurora.** RDS is appropriate when: you need Oracle or SQL Server compatibility (Aurora doesn't support these), you need a simple managed upgrade path for a legacy on-premises MySQL/PostgreSQL workload, or cost is the primary concern for a small, low-throughput workload (Aurora's overhead is not justified below a certain scale).

**When to choose Aurora over RDS.** Aurora is appropriate when: you need faster failover (30 s vs 60–120 s for RDS Multi-AZ), you need higher replica count (up to 15 vs 5 for RDS), you want Aurora Serverless v2 for variable-load workloads, or you need Aurora Global Database for cross-region active-active or DR.

---

### 2. Multi-AZ vs Read Replicas — HA vs Scale Are Not the Same Thing

This is the most commonly confused distinction in RDS design. Multi-AZ and Read Replicas serve completely different purposes.

**Multi-AZ is a high-availability mechanism, not a performance mechanism.** When Multi-AZ is enabled, RDS maintains a synchronous standby replica in a different AZ. This standby is not accessible for reads — it is purely a failover target. The synchronous replication means that when the primary commits a write, the standby must also commit it before the write is acknowledged to the application. This protects against AZ failure, instance failure, and OS patching events. If the primary fails, RDS updates the DNS record for the endpoint to point to the standby. Applications connected using the endpoint hostname reconnect automatically after the DNS TTL expires. The downside: your Multi-AZ standby is paying for capacity 24/7 without serving any production read traffic.

**Read Replicas are a performance mechanism, not an HA mechanism.** Read Replicas use asynchronous replication. When the primary commits a write, the replica receives the change asynchronously — meaning there is replication lag. The replica may be seconds (or minutes in a high-write scenario) behind the primary. Applications must tolerate stale reads when routing to a Read Replica. Read Replicas can be in the same AZ, a different AZ, or a different region (cross-region Read Replicas). Cross-region Read Replicas provide both read offload and a manual failover target for DR, but they are not automatic — you must manually promote a Read Replica to a standalone database if you want to use it as a replacement primary.

**Aurora changes the model.** Aurora Replicas address both concerns simultaneously: they serve reads directly from the shared storage layer (no replication lag for most operations), and they can be promoted to primary in ~30 seconds as a native failover mechanism. Aurora does not distinguish between "standby" and "read replica" the way RDS does.

---

### 3. Aurora Architecture — The Storage Layer Makes the Difference

Aurora's storage design is the reason it behaves differently from RDS under load and failure.

**The shared distributed storage volume.** Aurora writes are striped across 4 out of 6 storage nodes across 3 AZs. Only 4-of-6 writes need to succeed for a write quorum. Read quorums require 3-of-6. This means Aurora can tolerate: losing an entire AZ (2 nodes), or losing 2 nodes in 2 different AZs, without losing durability. The self-healing storage layer detects and repairs corrupted blocks without application interruption.

**Cluster endpoints.** Aurora exposes multiple endpoint types: the **Cluster Endpoint** (Writer) points to the current primary and accepts writes; the **Reader Endpoint** load-balances reads across all replicas in the cluster; and **Custom Endpoints** allow you to route specific query types (e.g., analytics) to a designated subset of replicas. Individual replica endpoints also exist. When you build Aurora-backed applications, the application connects to the Cluster Endpoint for writes and the Reader Endpoint for reads — it should never hard-code replica hostnames.

**Aurora Global Database.** Extends Aurora replication across up to 5 regions using dedicated replication infrastructure (not the database engine's own replication). Cross-region replication lag is typically under 1 second. The secondary regions are read-only; you can promote a secondary region to primary (manual or managed failover) in under 1 minute. This is the AWS answer to an active-passive multi-region relational architecture.

**Aurora Serverless v2.** Decouples instance sizing from the cluster. Compute scales in Aurora Capacity Units (ACUs) from a configurable minimum to a maximum in under a second. Each ACU is approximately 2 GB of RAM with corresponding vCPU. Aurora Serverless v2 is designed for workloads with highly variable traffic — it eliminates over-provisioning while removing the cold-start delay of the original Aurora Serverless v1. Writer and reader instances can be independently serverless.

---

### 4. RDS Proxy — Connection Pooling for Lambda and Burst Scenarios

Traditional SQL databases open a new TCP connection for each client connection. Database connections are expensive — they consume RAM and file descriptors on the database host. A Lambda function that runs 1,000 concurrent invocations simultaneously would attempt to open 1,000 database connections, which would exhaust RDS connection limits and degrade performance.

**What RDS Proxy does.** RDS Proxy sits between the application and the RDS or Aurora database. It maintains a pool of persistent connections to the database. Application connections are multiplexed onto the pool — many application connections share fewer actual database connections. RDS Proxy supports IAM authentication (application connects with an IAM token rather than a long-lived password) and integrates with AWS Secrets Manager for credential rotation without application restarts.

**Connection pinning.** RDS Proxy uses a feature called connection pinning: for transactions that include state (SET commands, temporary tables), RDS Proxy pins the application connection to a specific database connection for the session duration rather than multiplexing. This maintains correctness but reduces the pooling benefit for those sessions. Understanding this helps diagnose cases where RDS Proxy provides less connection reduction than expected.

**When to use RDS Proxy.** Mandatory for Lambda-to-RDS patterns in production — Lambda's concurrency model guarantees connection storms without a proxy layer. Also valuable for any burst application (e.g., an API with spiky traffic) where the burst peak would exhaust RDS connection limits. Not beneficial for simple low-concurrency applications with a fixed connection count.

---

### 5. RDS Backup, PITR, and Snapshots

**Automated backups.** RDS performs automated daily backups during the configured maintenance window. Backup retention period is 1–35 days. Automated backups include binary log (binlog) capture, which enables point-in-time restore (PITR) to any second within the retention window. Automated backups are stored in S3 and are free up to the database storage size.

**Manual snapshots.** Manual snapshots are not time-limited — they persist until you delete them. They capture the entire database storage volume at point in time. Restoring from a snapshot creates a new RDS instance (you cannot restore in-place). The restored instance takes the snapshot state; any writes after the snapshot are lost unless you restore from automated backup with PITR.

**Cross-region snapshot copy.** Manual snapshots and automated backup replicas can be copied to other regions for DR. This is manual unless you use AWS Backup with cross-region copy rules for automation.

**Aurora: continuous backup to S3.** Aurora continuously backs up data to S3. PITR for Aurora covers any second within the backup retention window (up to 35 days). Restoring Aurora to a point in time creates a new Aurora cluster — it cannot be restored in-place.

---

### 6. Cross-Cloud Mental Map — Relational Databases

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Managed MySQL | RDS for MySQL, Aurora MySQL | Azure Database for MySQL Flexible Server | Cloud SQL for MySQL |
| Managed PostgreSQL | RDS for PostgreSQL, Aurora PostgreSQL | Azure Database for PostgreSQL Flexible Server | Cloud SQL for PostgreSQL, AlloyDB |
| Cloud-native relational | Aurora (MySQL/PostgreSQL compat) | Azure SQL Hyperscale | AlloyDB (PostgreSQL compat) |
| Multi-AZ HA failover | RDS Multi-AZ standby (synchronous) | Availability Zone redundant replicas | Regional HA replicas in Cloud SQL |
| Read scaling | RDS Read Replicas (async), Aurora Replicas (shared storage) | Read replicas | Cloud SQL read replicas |
| Connection pooling | RDS Proxy | PgBouncer on Azure (DIY), PgBouncer built into Flexible Server | Cloud SQL Auth Proxy |
| Cross-region HA | Aurora Global Database | Active geo-replication (Azure SQL) | Cross-region read replicas + promotion |
| Serverless autoscale compute | Aurora Serverless v2 | Azure SQL Serverless | Cloud SQL does not offer serverless scaling |
| Manual Oracle/SQL Server | RDS for Oracle, RDS for SQL Server | Azure SQL, Azure SQL Managed Instance | Bare Metal (no managed Oracle/SQL Server) |
| Backup and PITR | Automated backups + manual snapshots + PITR via binlog | Automated backups + PITR (configurable window) | Automated backups + PITR |

## Hands-On Activity Guide

### Prerequisites and Safety Rules

**Before any lab:**
- Use a sandbox account. RDS instances have an hourly charge — terminate all instances immediately after the lab.
- Use `db.t3.micro` or `db.t4g.micro` for all RDS lab instances (Free Tier eligible for 12 months, otherwise ~$0.017/hr).
- Aurora's minimum instance is `db.t3.medium` and is NOT Free Tier — be cautious and leave it stopped when not in use.
- Always create databases inside a private subnet group with no public access (unless a lab specifically tests public access behavior).

---

### Module 1: Deploy RDS MySQL with Multi-AZ and Test Failover

**Goal:** Observe that Multi-AZ provides HA failover, not read scaling.

#### Lab 1A: Create an RDS MySQL Instance with Multi-AZ

```bash
# Create a DB subnet group first (two private subnets in different AZs):
aws rds create-db-subnet-group \
  --db-subnet-group-name lab-subnet-group \
  --db-subnet-group-description "Lab subnets" \
  --subnet-ids subnet-aaaa1111 subnet-bbbb2222

# Create the Multi-AZ RDS MySQL instance:
aws rds create-db-instance \
  --db-instance-identifier lab-mysql-primary \
  --db-instance-class db.t3.micro \
  --engine mysql \
  --engine-version 8.0 \
  --master-username admin \
  --master-user-password ChangeMe123! \
  --allocated-storage 20 \
  --db-subnet-group-name lab-subnet-group \
  --no-publicly-accessible \
  --multi-az \
  --backup-retention-period 1
```

**What to confirm while waiting:**
- In RDS → the instance "Availability" shows "Multi-AZ".
- The endpoint hostname looks like `lab-mysql-primary.cxxxxxxxxx.us-east-1.rds.amazonaws.com`.

#### Lab 1B: Test Failover

```bash
# Trigger a manual failover to swap primary/standby:
aws rds reboot-db-instance \
  --db-instance-identifier lab-mysql-primary \
  --force-failover

# Watch the instance status:
aws rds describe-db-instances \
  --db-instance-identifier lab-mysql-primary \
  --query "DBInstances[0].DBInstanceStatus"
```

**What to observe:** The instance goes through `rebooting`, `failing-over`, then returns to `available`. The DNS endpoint name does NOT change — your application reconnects to the same hostname, which now resolves to the new primary. The AZ of the instance in the console changes to reflect the promoted standby's AZ.

**Key learning:** The standby absorbs no production traffic during normal operation. Failover is automatic and transparent via DNS. Multi-AZ is operational insurance, not a performance feature.

---

### Module 2: Add a Read Replica and Observe Replication Lag

**Goal:** Confirm that Read Replicas serve reads but lag behind the primary.

#### Lab 2A: Create a Read Replica

```bash
aws rds create-db-instance-read-replica \
  --db-instance-identifier lab-mysql-read-replica \
  --source-db-instance-identifier lab-mysql-primary \
  --db-instance-class db.t3.micro \
  --publicly-accessible false
```

**Endpoint structure after creation:** The replica gets its own endpoint — different from the primary endpoint. Your application must be coded to route SELECT queries to the replica endpoint (there is no automatic routing at the RDS level).

#### Lab 2B: Observe Replica Lag

After connecting to both endpoints:
```sql
-- On primary: write data rapidly:
INSERT INTO test_table VALUES (1, NOW()), (2, NOW()), (3, NOW());

-- On replica: check lag:
SHOW SLAVE STATUS\G
-- Look for: Seconds_Behind_Master
```

**Key learning:** Even on an idle test setup, the replica may show 0–2 seconds lag. Under write pressure, this lag grows. Never read data from a replica where fresh-at-the-second accuracy matters.

---

### Module 3: Deploy Aurora MySQL and Compare Failover Speed

**Goal:** Observe Aurora's shared storage model and faster failover.

#### Lab 3A: Create Aurora MySQL Cluster

```bash
# Create the DB cluster (storage layer):
aws rds create-db-cluster \
  --db-cluster-identifier lab-aurora-cluster \
  --engine aurora-mysql \
  --engine-version 8.0.mysql_aurora.3.04.0 \
  --master-username admin \
  --master-user-password ChangeMe123! \
  --db-subnet-group-name lab-subnet-group \
  --no-enable-iam-database-authentication

# Create the writer instance in the cluster:
aws rds create-db-instance \
  --db-instance-identifier lab-aurora-writer \
  --db-cluster-identifier lab-aurora-cluster \
  --db-instance-class db.t3.medium \
  --engine aurora-mysql

# Create a reader instance in a different AZ:
aws rds create-db-instance \
  --db-instance-identifier lab-aurora-reader \
  --db-cluster-identifier lab-aurora-cluster \
  --db-instance-class db.t3.medium \
  --engine aurora-mysql \
  --availability-zone us-east-1b
```

**Endpoint types to note in the console:**
- Cluster endpoint = Writer (points to current primary)
- Reader endpoint = load-balanced across replicas

#### Lab 3B: Trigger Aurora Failover

```bash
aws rds failover-db-cluster \
  --db-cluster-identifier lab-aurora-cluster

# Watch the events:
aws rds describe-events \
  --source-identifier lab-aurora-cluster \
  --source-type db-cluster
```

**What to observe:** Failover completes in typically 15–30 seconds (vs 60–120s for RDS Multi-AZ). The cluster endpoint now points to the promoted replica. The original writer becomes a reader.

---

### Module 4: Configure RDS Proxy and Measure Connection Behavior

**Goal:** Understand how RDS Proxy multiplexes application connections.

1. RDS → Proxies → Create proxy.
2. Engine: MySQL. Target: select `lab-mysql-primary`. Authentication: link to a Secrets Manager secret containing the DB credentials.
3. VPC: same VPC as the target DB. Subnets: private.
4. Connect your application to the Proxy endpoint instead of the direct DB endpoint.

**Test:** Create a script that opens 50 simultaneous connections to the Proxy endpoint. Then check the CloudWatch metric `DatabaseConnections` on the actual RDS instance — it should show fewer than 50 actual connections (the Proxy multiplexes them).

**Azure equivalent:** PgBouncer is an external tool commonly deployed alongside Azure Database for PostgreSQL. Azure's Flexible Server tier has a built-in PgBouncer compatible connection pooler.

**GCP equivalent:** Cloud SQL Auth Proxy provides IAM authentication and TLS tunneling but does not do connection multiplexing. PgBouncer is separately deployed.

---

## Troubleshooting Guide

| Symptom | Most Likely Cause | Diagnostic Steps |
|---|---|---|
| Application can't connect after RDS failover | Application has cached the old primary IP from DNS; DNS TTL not respected | Check application's JDBC/psycopg2/mysql driver DNS TTL settings; use the RDS endpoint hostname not an IP address; ensure Java's `networkaddress.cache.ttl` is not set to -1 |
| Read Replica shows high `Seconds_Behind_Master` | Primary under heavy write load; replica instance too small | Check `ReplicaLag` CloudWatch metric; scale up the replica instance class; check Primary IOPS utilization |
| Aurora failover took longer than expected | Replica `promotion_tier` is not 0 | Set the replica you want as the failover target to `promotion_tier=0` in Aurora cluster settings |
| RDS Proxy connection timeout | Security group blocked traffic between Proxy and RDS | Ensure SG on RDS instance allows inbound TCP 3306/5432 from the Proxy's SG; Proxy SG allows inbound from application SG |
| Cannot connect to RDS from Lambda | Lambda in VPC but different SG from RDS SG | Add Lambda's SG as an inbound rule on the RDS security group; or use RDS Proxy with IAM auth for Lambda |
| Storage full alarm on RDS | Allocated storage exhausted; storage auto-scaling not enabled | Enable storage auto-scaling with `--max-allocated-storage` or manually modify the instance to increase allocated storage |
| PITR restore takes much longer than expected | Restoring a large snapshot + replaying many hours of binlog | PITR restores snapshot first, then replays transaction logs — restore time grows with the delta between snapshot time and target time |

---

## Quick Revision Sheet

**RDS vs Aurora in 10 words:** RDS = managed engines on EBS. Aurora = purpose-built shared distributed storage.

**Multi-AZ vs Read Replicas**
- Multi-AZ: synchronous standby, no read traffic served, automatic failover via DNS cutover, HA insurance
- Read Replicas: asynchronous replication, serves read traffic, manual promotion for DR, replication lag

**Aurora Recovery Time Targets**
- Aurora Replica failover: ~30 seconds
- RDS Multi-AZ failover: 60–120 seconds
- Aurora Global Database cross-region promotion: <1 minute (managed failover)

**RDS Proxy — Use When**
- Lambda → RDS patterns (concurrency causes connection storms)
- Burst traffic APIs that exceed DB connection limits
- Credential rotation without application restarts (Secrets Manager integration)

**Backup Types**
- Automated: Daily snapshot + binlog/WAL capture = PITR to any second within retention window (1–35 days)
- Manual snapshots: Persist until deleted, no PITR beyond snapshot point, used for pre-migration/pre-upgrade checkpoints
- Aurora: Continuous backup to S3, PITR within retention window, restores to new cluster

**Aurora Architecture Points**
- 6 storage copies across 3 AZs — tolerates loss of 1 entire AZ plus 1 node
- Up to 15 Aurora Replicas sharing same storage — no replica lag for reads
- Aurora Serverless v2: scales in ACUs under 1 second, min/max configurable
- Aurora Global Database: <1s cross-region replication, active-passive across 5 regions

## How To Use This File
1. Read the theory sections first so the service or platform model is clear before you touch the console.
2. Work through the hands-on modules in order and record what the platform proves versus what you only assumed.
3. Compare the AWS pattern with Azure and GCP when possible so the idea becomes cloud-portable.
4. Use the troubleshooting table when behavior is confusing instead of guessing from one console view.
5. Revisit the quick revision sheet before a design review, exam session, or migration plan.

## Theoretical Notes

### 1. Relational Databases Mental Model

Relational Databases Mental Model sets the boundary for relational databases, because it explains what the platform owns, what the operator owns, and where the first failure usually appears. When that boundary is fuzzy, teams tend to misread symptoms and make design choices in relational databases that solve the wrong problem. In practice, the durable way to learn relational databases is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 2. Core Services and Building Blocks

Core Services and Building Blocks matter because they determine how the control plane, data path, and identity or addressing model actually work inside relational databases. Understanding those building blocks makes it easier to compare AWS behavior with Azure and GCP instead of memorizing vendor-specific wording. In practice, the durable way to learn relational databases is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 3. Operational and Architecture Patterns

Operational and Architecture Patterns are where scale, resilience, and governance turn basic feature knowledge into durable system design for relational databases. This is usually the part of the topic that separates a passing lab from a design that still behaves well under real traffic and operator pressure. In practice, the durable way to learn relational databases is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 4. Failure behavior should drive platform choice

The durable way to study relational databases is to ask how it fails under skew, burst, lag, or operator error rather than to memorize feature bullets. Once failure behavior is explicit, the right database or cache choice inside relational databases becomes much easier to defend. In practice, the durable way to learn relational databases is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 5. Cross-cloud comparison exposes the real workload shape

If you can map relational databases cleanly to Azure and GCP, you usually understand whether the workload wants relational integrity, key-value scale, caching, or a specialized model. That portability also makes it easier to explain why this topic is an architecture decision and not just a console preference. In practice, the durable way to learn relational databases is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 6. Cross-Cloud Mental Map

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Managed relational core | RDS and Aurora | Azure SQL plus managed PostgreSQL/MySQL | Cloud SQL and AlloyDB |
| Key-value NoSQL | DynamoDB | Cosmos DB | Firestore and Bigtable |
| Managed cache tier | ElastiCache and MemoryDB | Azure Cache for Redis | Memorystore |
| Specialized data engines | DocumentDB, Neptune, Keyspaces, Timestream | Cosmos APIs and Azure Data Explorer | Partner engines plus native time-series and wide-column services |
| Operational migration and selection | DMS, backups, replicas, proxies | Database Migration Service and platform operations | Database Migration Service and managed database operations |

## Hands-On Activity Guide

### Prerequisites and Safety Rules
- Use a sandbox account or non-production subscription and set a budget alert before creating resources.
- Keep naming, tagging, and cleanup disciplined so you can remove every lab artifact after practice.
- Prefer the smallest viable instances or service tiers unless the learning goal specifically depends on scale.
- Record both the intended design and the first thing that contradicted your expectation.

### Module 1: Relational Databases Mental Model

**Goal:** Turn relational databases mental model for relational databases into one observable and repeatable workflow.

1. Review the relational databases mental model section in the curated raw material for Relational Databases.
2. Build or diagram one small AWS scenario that proves the core behavior behind relational databases mental model.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 2: Core Services and Building Blocks

**Goal:** Turn core services and building blocks for relational databases into one observable and repeatable workflow.

1. Review the core services and building blocks section in the curated raw material for Relational Databases.
2. Build or diagram one small AWS scenario that proves the core behavior behind core services and building blocks.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 3: Operational and Architecture Patterns

**Goal:** Turn operational and architecture patterns for relational databases into one observable and repeatable workflow.

1. Review the operational and architecture patterns section in the curated raw material for Relational Databases.
2. Build or diagram one small AWS scenario that proves the core behavior behind operational and architecture patterns.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

## Troubleshooting Notes

| Symptom | Likely Cause | Check First |
|---|---|---|
| Clients cannot connect to the database | Security groups, subnet placement, or DNS endpoint assumptions are wrong | Check the network path, endpoint DNS name, and whether the database is publicly or privately reachable |
| Reads are stale or inconsistent | Replica lag or eventual-consistency assumptions were ignored | Confirm the read path, replication lag, and whether the workload requires a writer endpoint |
| Performance collapses under burst load | Connections, hot keys, or cache misses are saturating the control point | Inspect connection count, partition distribution, cache hit rate, and throttling metrics |
| Recovery did not match expectations | Backup or failover behavior was misunderstood before the incident | Re-check backup retention, restore granularity, replica topology, and failover mode |
| Costs keep growing quietly | Instance sizing, duplicated replicas, or always-on accelerators are oversized | Compare actual utilization with provisioned compute, storage, and cache footprint |
| Behavior contradicts the relational databases model | The intended control boundary was never translated into a concrete policy, route, identity path, or recovery signal | Re-check the mental model, then inspect the first control plane, data plane, and evidence source that should prove it |

## Quick Revision Sheet
- Decide what data model and access pattern relational databases is supposed to serve before comparing product features.
- Decide how consistency, latency, and recovery trade-offs should be made explicit inside relational databases.
- Decide which scaling or acceleration layer belongs in the design and which would only add hidden complexity.
- Decide how identity, network controls, and backup posture will be validated for relational databases.
- Keep the mental model for relational databases tied to observable signals instead of memorized labels.

## Self-Check Questions
1. What is the primary control boundary in relational databases, and how would you explain it to a teammate?
2. Which failure mode would appear first if the design assumption were wrong?
3. What signal, log, or metric would you inspect before changing the architecture under pressure?
4. Which Azure or GCP equivalent helps confirm that you understand the concept rather than only the product name?
5. What part of this topic would become the hardest to operate at scale if left implicit?
