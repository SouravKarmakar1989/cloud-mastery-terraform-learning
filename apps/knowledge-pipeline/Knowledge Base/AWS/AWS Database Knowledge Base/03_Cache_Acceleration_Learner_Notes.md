# Cache Acceleration Learner Notes

This file is a learner-first companion to `03_Cache_Acceleration.md`.
It is structured as blog-post-depth theoretical articles, a comprehensive multi-cloud hands-on activity guide, and closed with troubleshooting, revision, and self-assessment material.

Source authority: 3 processed source files, 63 extracted non-empty transcript lines, owned by AWS Database Knowledge Base. The architect-level concepts are drawn directly from the curated primary knowledge base for this topic.

## How To Use This File
1. Read each theoretical section fully before touching the console. Understand the why before the how.
2. Work through the Hands-On Activity Guide in module order. Each module builds on the last.
3. Run all three cloud variants when you can. The most durable learning comes from doing the same concept on AWS, Azure, and GCP in the same sitting.
4. Use the Troubleshooting section when something goes wrong. Most situations are already documented.
5. Return to the Quick Revision Sheet before any exam, interview, or architecture review.

## Theoretical Notes

---

### 1. Why a Cache Layer Exists — The Latency and Throughput Problem

A relational or NoSQL database stores data on persistent storage. Even with SSDs and optimized storage engines, a database query involves: parsing the query, retrieving data from disk (or buffer pool), optionally joining or aggregating, and returning results over a network. For read-heavy workloads, the same data is frequently re-read. Each re-read consumes CPU, IOPS, and database connections. At scale, this is the bottleneck.

A cache stores a copy of recently-read data in memory. Memory access is 100× faster than disk access. A cache hit (data found in cache) returns data in microseconds — no database round trip. A cache miss (data not in cache) fetches from the database and then stores the result in cache for subsequent requests. The goal is to maximize the cache hit rate.

**When caching improves the system.** Caching helps when: the same data is read many times before it changes (high read-to-write ratio), the data can tolerate slight staleness (eventually consistent reads are acceptable), and the hot dataset fits in memory. Caching does not help when: every request accesses unique data (no repeated reads), data changes so frequently that cached items are always stale, or strong consistency is required.

**Session storage as a cache use case.** Beyond query result caching, Redis and Memcached are the standard session store for stateless web applications. Instead of storing session data in a relational database (slow, connection-bound), session data (user ID, cart contents, preferences) is stored in Redis with a TTL equal to the session duration. This allows any application instance in a multi-instance fleet to retrieve the session without a database call.

---

### 2. ElastiCache — Managed Redis and Memcached

Amazon ElastiCache provides managed in-memory caching using two engines: Redis and Memcached.

**ElastiCache for Memcached.** Memcached is a simple in-memory key-value store. It supports multi-threading (all CPU cores utilized) and horizontal scaling via sharding across nodes. It does not support persistence, replication, or Pub/Sub. Use Memcached when: you need a simple, very fast cache with horizontal scale and you do not need the data to survive a node restart.

**ElastiCache for Redis.** Redis is more feature-rich: it supports persistence (AOF and RDB snapshots), replication (primary + read replicas), Pub/Sub messaging, Sorted Sets (leaderboards), Hashes (structured data), Lists (queues), and TTL-based key expiration. ElastiCache for Redis supports: cluster mode disabled (single shard, one primary + up to 5 replicas) and cluster mode enabled (multiple shards, horizontal write scale across shards, each shard has its own primary and replicas). Use Redis when: you need persistence, replication, data structures beyond plain key-value, or Pub/Sub.

**ElastiCache Cluster Mode Enabled.** Partitions data across multiple shards. Each shard owns a subset of the 16,384 Redis hash slots. Adding shards increases the maximum dataset size and write throughput. Each shard has a primary node that accepts writes and up to 5 replica nodes that serve reads. Replication within a shard is asynchronous. If the primary in a shard fails, ElastiCache promotes a replica automatically (similar to RDS Multi-AZ).

**Security for ElastiCache.** ElastiCache clusters should be deployed in private subnets — they are not natively internet-accessible. For Redis, enable encryption at rest (AES-256) and in-transit (TLS). Enable Redis AUTH (a password token required on every connection) or IAM authentication for Redis 7+. Restrict security groups so only the application tier can connect on port 6379.

---

### 3. Caching Strategy Patterns

How you load data into the cache and handle updates determines correctness and staleness behavior.

**Cache-aside (Lazy Loading).** Application checks the cache first. On cache miss, application reads from the database and writes the result to cache. On subsequent reads, the cache is hit. This is the most common pattern — the cache only holds data that has been requested at least once. Weakness: the first request for any item always goes to the database (cold cache penalty). Weakness: if the cache is not explicitly invalidated when the database changes, reads may return stale data until the TTL expires.

**Write-through.** Every write to the database is also written to the cache simultaneously. Cache is always warm and consistent. Weakness: every write pays the cost of two writes (database + cache). Weakness: data that is written but never read populates the cache unnecessarily.

**Write-behind (Write-back).** Application writes to the cache first; the cache asynchronously flushes data to the database. This reduces write latency. Weakness: data can be lost if the cache node fails before flushing to the database. Use only when eventual consistency in the persistent store is acceptable.

**TTL (Time-to-Live).** Every cached item should have a TTL after which it is expired and evicted. TTL is the safety net for cache-aside: even if the application does not explicitly invalidate a cached item when the underlying database record changes, the item will self-expire. The TTL value is a staleness tolerance decision: a 60-second TTL means a user may see data up to 60 seconds old. A 5-minute TTL for a product catalog is typically acceptable. A 0-second TTL for account balance data is not.

**Cache stampede (thundering herd).** When a popular cached item expires, many simultaneous requests all miss the cache and simultaneously query the database, overwhelming it. Mitigation: jitter TTL values (add ±10% random offset so all items don't expire simultaneously), use a distributed lock on the database fetch to let only one thread refresh the cache while others wait.

---

### 4. Amazon MemoryDB for Redis — Durable Redis as a Primary Database

ElastiCache for Redis is a cache with optional persistence. Amazon MemoryDB for Redis is fundamentally different: it is a durable, primary database that uses the Redis API.

**The key difference.** ElastiCache Redis persistence (AOF/RDB) is asynchronous — there is a small window where a write is acknowledged but not yet persisted. In a failure, some writes may be lost. MemoryDB stores every write in a Multi-AZ distributed transaction log before acknowledging the write to the client. This means MemoryDB provides strong consistency and zero data loss — comparable to what you get from RDS Multi-AZ, but over the Redis API at in-memory speed.

**When to use MemoryDB instead of ElastiCache.** Use MemoryDB when: your application uses Redis data structures (Sorted Sets, Hashes, Streams) as the primary store (not as a cache in front of another database), you need ACID-level durability guarantees, and you need a system that survives AZ failure without any data loss. The trade-off: MemoryDB is more expensive than ElastiCache and has higher write latency (due to the durable transaction log) — not appropriate as a cache in front of RDS/Aurora where ElastiCache's occasional write loss is acceptable.

---

### 5. Cross-Cloud Mental Map — Caching and MemoryDB

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Managed Redis cache | ElastiCache for Redis | Azure Cache for Redis | Memorystore for Redis |
| Managed Memcached cache | ElastiCache for Memcached | No managed Memcached (self-managed on VMs) | Memorystore for Memcached |
| Redis cluster mode (multi-shard horizontal scale) | ElastiCache Redis Cluster Mode Enabled | Azure Cache for Redis Enterprise (Cluster Policy: OSS) | Memorystore Redis Cluster |
| Durable Redis primary database | Amazon MemoryDB for Redis | Azure Cache for Redis Enterprise with AOF persistence | No direct equivalent (Memorystore offers periodic snapshots) |
| Redis replication + HA | ElastiCache replication group (primary + replicas, Auto-failover) | Azure Cache for Redis (zone-redundant replicas) | Memorystore read replicas + Read Endpoint |
| Cache eviction policies | LRU, LFU, allkeys-random, volatile-ttl (configured per cluster) | Same Redis eviction policies (maxmemory-policy) | Same Redis eviction policies |
| In-transit encryption | TLS (in-transit encryption enabled at cluster creation) | TLS enabled by default | TLS enabled by default |
| Authentication | Redis AUTH token or IAM auth (Redis 7+) | Access keys + Azure AD integration (Enterprise) | IAM-based auth (Memorystore uses VPC-only access) |

## Hands-On Activity Guide

### Prerequisites and Safety Rules

**Before any lab:**
- ElastiCache clusters have an hourly charge — `cache.t3.micro` is ~$0.017/hr; delete after the lab.
- Always deploy ElastiCache in private subnets — never public.
- Use the Redis CLI (`redis-cli`) from an EC2 instance in the same VPC for all interactions.
- For Azure: deploy Azure Cache for Redis in the same VNet as your test VM (VNET integration for Standard/Premium tier).

---

### Module 1: Deploy ElastiCache for Redis and Test Cache-Aside Pattern

**Goal:** Create a Redis cluster, populate it from a Lambda function using cache-aside, and observe the hit/miss pattern.

#### Lab 1A: Create an ElastiCache Redis Cluster

```bash
# Create subnet group:
aws elasticache create-cache-subnet-group \
  --cache-subnet-group-name lab-redis-subnets \
  --cache-subnet-group-description "Lab Redis Subnets" \
  --subnet-ids subnet-aaaa1111 subnet-bbbb2222

# Create a single-node Redis cluster (no replication):
aws elasticache create-cache-cluster \
  --cache-cluster-id lab-redis \
  --engine redis \
  --cache-node-type cache.t3.micro \
  --num-cache-nodes 1 \
  --cache-subnet-group-name lab-redis-subnets \
  --security-group-ids sg-xxxx1111

# Get the endpoint:
aws elasticache describe-cache-clusters \
  --cache-cluster-id lab-redis \
  --show-cache-node-info \
  --query "CacheClusters[0].CacheNodes[0].Endpoint"
```

#### Lab 1B: Connect and Test Cache-Aside

From an EC2 instance in the same VPC (install `redis-cli`):
```bash
sudo yum install -y redis

# Connect:
redis-cli -h <endpoint-hostname> -p 6379

# Cache-aside simulation:
# Step 1: Check cache (miss):
GET product:101
# Returns: (nil) — cache miss

# Step 2: Fetch from "database" (simulated):
# (In real code, you'd query RDS/DynamoDB here)

# Step 3: Store in cache with TTL:
SET product:101 '{"name":"Widget","price":9.99}' EX 300
# EX 300 = expire in 300 seconds

# Step 4: Read again (hit):
GET product:101
# Returns: '{"name":"Widget","price":9.99}'

# Check TTL remaining:
TTL product:101
```

**Key learning:** The GET on miss returns nil. After SET, GET returns the cached value. After TTL expires, GET returns nil again — forcing the next request to re-fetch from the database.

---

### Module 2: ElastiCache Redis Replication Group with Auto-Failover

**Goal:** Create a Redis replication group (primary + replica) and test failover.

```bash
aws elasticache create-replication-group \
  --replication-group-id lab-redis-rg \
  --replication-group-description "Lab replication group" \
  --cache-node-type cache.t3.micro \
  --engine redis \
  --num-cache-clusters 2 \
  --automatic-failover-enabled \
  --cache-subnet-group-name lab-redis-subnets \
  --security-group-ids sg-xxxx1111

# Get primary and reader endpoints:
aws elasticache describe-replication-groups \
  --replication-group-id lab-redis-rg \
  --query "ReplicationGroups[0].NodeGroups[0].{Primary:PrimaryEndpoint,Reader:ReaderEndpoint}"
```

**Test failover:**
```bash
# Write to primary endpoint:
redis-cli -h <primary-endpoint> SET session:user123 "logged-in" EX 3600

# Trigger failover:
aws elasticache test-failover \
  --replication-group-id lab-redis-rg \
  --node-group-id 0001

# After failover completes (~30–60s), read from what was the replica (now primary):
redis-cli -h <primary-endpoint> GET session:user123
# Should still return "logged-in" — replica was current
```

---

### Module 3: Redis Data Structures — Sorted Set for a Leaderboard

**Goal:** Use Redis Sorted Sets to implement a real-time leaderboard.

```bash
redis-cli -h <endpoint>

# Add players with scores:
ZADD leaderboard 4500 "alice"
ZADD leaderboard 6200 "bob"
ZADD leaderboard 3100 "carol"
ZADD leaderboard 8800 "dave"

# Get top 3 (highest score first):
ZREVRANGE leaderboard 0 2 WITHSCORES

# Get rank of a player (0-based, lower = better rank in ZRANK):
ZREVRANK leaderboard "alice"

# Update alice's score:
ZINCRBY leaderboard 1500 "alice"

# Full leaderboard sorted descending:
ZREVRANGE leaderboard 0 -1 WITHSCORES
```

**Azure equivalent:** Azure Cache for Redis supports all the same Redis commands. Deploy `azure-cache-for-redis` in the same VNet as your test VM, connect with redis-cli using the access key.

**GCP equivalent:** Memorystore for Redis. Connect from a Compute Engine VM in the same VPC using the Memorystore instance IP and port 6379. Same Sorted Set commands apply.

---

## Troubleshooting Guide

| Symptom | Most Likely Cause | Diagnostic Steps |
|---|---|---|
| Cannot connect to ElastiCache from EC2 | Security group on ElastiCache cluster does not allow inbound port 6379 from EC2's SG | Check ElastiCache SG inbound rules; add the EC2 instance's SG as an allowed source on port 6379 |
| High cache miss rate despite warm cache | TTL set too low; eviction policy expiring items | Check CloudWatch `CacheHits` and `CacheMisses` metrics; increase TTL for hot data; check `Evictions` metric — evictions indicate memory pressure |
| Redis writes are slow after enabling ElastiCache Redis AOF | AOF persistence adds fsync overhead | AOF is not recommended for ElastiCache (use MemoryDB for durability). Disable AOF for ElastiCache used as a cache |
| Thundering herd on cache expiry | Popular item TTL expired simultaneously for many users | Jitter TTL values; implement single-writer cache refresh with a lock key |
| Replication group failover took too long | Replica was behind on replication | Under write pressure, replicas lag; check `ReplicationLag` metric; reduce write throughput before testing failover |
| `OOM command not allowed when used memory > maxmemory` | ElastiCache cluster is full; eviction policy is `noeviction` | Check `FreeableMemory` CloudWatch metric; scale up node type or enable LRU eviction (`allkeys-lru`) for cache-only use cases |

---

## Quick Revision Sheet

**ElastiCache: Redis vs Memcached**
| Feature | Redis | Memcached |
|---|---|---|
| Data structures | Rich (Strings, Lists, Hashes, Sets, Sorted Sets, Streams) | Simple key-value only |
| Persistence | Optional (AOF/RDB) | No |
| Replication | Yes (primary + replicas) | No |
| Multi-thread | No (single-threaded per shard) | Yes (multi-core efficient) |
| Pub/Sub | Yes | No |
| Cluster mode (horizontal) | Yes (16,384 hash slots) | Yes (client-side consistent hashing) |
| Use for session store | Yes | Yes |

**Cache Strategies in One Line**
- Cache-aside: app reads cache first, fetches DB on miss, writes to cache — lazy, eventual consistency via TTL
- Write-through: every DB write updates cache — consistent but wasteful for unread data
- Write-behind: app writes cache first, async flush to DB — lowest write latency, risk of data loss

**MemoryDB vs ElastiCache Redis**
- ElastiCache Redis: cache designed for durability via replication, AOF optional, async persistence, small data-loss window on failure
- MemoryDB: primary database over Redis API, every write to Multi-AZ durable log before ack, zero data loss, higher write latency

**Eviction Policies (most common)**
- `allkeys-lru`: evict least recently used keys from all keys — best for general caching
- `volatile-lru`: evict LRU keys that have a TTL set — cache and store mix
- `noeviction`: reject writes when memory full — do not use for cache workloads

**ElastiCache Security Basics**
- Private subnets only — no public internet access
- Security groups: restrict inbound 6379 to application tier only
- In-transit TLS: enable at cluster creation
- Auth: Redis AUTH token or IAM (Redis 7+)

## How To Use This File
1. Read the theory sections first so the service or platform model is clear before you touch the console.
2. Work through the hands-on modules in order and record what the platform proves versus what you only assumed.
3. Compare the AWS pattern with Azure and GCP when possible so the idea becomes cloud-portable.
4. Use the troubleshooting table when behavior is confusing instead of guessing from one console view.
5. Revisit the quick revision sheet before a design review, exam session, or migration plan.

## Theoretical Notes

### 1. Cache Acceleration Mental Model

Cache Acceleration Mental Model sets the boundary for cache acceleration, because it explains what the platform owns, what the operator owns, and where the first failure usually appears. When that boundary is fuzzy, teams tend to misread symptoms and make design choices in cache acceleration that solve the wrong problem. In practice, the durable way to learn cache acceleration is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 2. Core Services and Building Blocks

Core Services and Building Blocks matter because they determine how the control plane, data path, and identity or addressing model actually work inside cache acceleration. Understanding those building blocks makes it easier to compare AWS behavior with Azure and GCP instead of memorizing vendor-specific wording. In practice, the durable way to learn cache acceleration is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 3. Operational and Architecture Patterns

Operational and Architecture Patterns are where scale, resilience, and governance turn basic feature knowledge into durable system design for cache acceleration. This is usually the part of the topic that separates a passing lab from a design that still behaves well under real traffic and operator pressure. In practice, the durable way to learn cache acceleration is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 4. Failure behavior should drive platform choice

The durable way to study cache acceleration is to ask how it fails under skew, burst, lag, or operator error rather than to memorize feature bullets. Once failure behavior is explicit, the right database or cache choice inside cache acceleration becomes much easier to defend. In practice, the durable way to learn cache acceleration is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 5. Cross-cloud comparison exposes the real workload shape

If you can map cache acceleration cleanly to Azure and GCP, you usually understand whether the workload wants relational integrity, key-value scale, caching, or a specialized model. That portability also makes it easier to explain why this topic is an architecture decision and not just a console preference. In practice, the durable way to learn cache acceleration is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

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

### Module 1: Cache Acceleration Mental Model

**Goal:** Turn cache acceleration mental model for cache acceleration into one observable and repeatable workflow.

1. Review the cache acceleration mental model section in the curated raw material for Cache Acceleration.
2. Build or diagram one small AWS scenario that proves the core behavior behind cache acceleration mental model.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 2: Core Services and Building Blocks

**Goal:** Turn core services and building blocks for cache acceleration into one observable and repeatable workflow.

1. Review the core services and building blocks section in the curated raw material for Cache Acceleration.
2. Build or diagram one small AWS scenario that proves the core behavior behind core services and building blocks.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 3: Operational and Architecture Patterns

**Goal:** Turn operational and architecture patterns for cache acceleration into one observable and repeatable workflow.

1. Review the operational and architecture patterns section in the curated raw material for Cache Acceleration.
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
| Behavior contradicts the cache acceleration model | The intended control boundary was never translated into a concrete policy, route, identity path, or recovery signal | Re-check the mental model, then inspect the first control plane, data plane, and evidence source that should prove it |

## Quick Revision Sheet
- Decide what data model and access pattern cache acceleration is supposed to serve before comparing product features.
- Decide how consistency, latency, and recovery trade-offs should be made explicit inside cache acceleration.
- Decide which scaling or acceleration layer belongs in the design and which would only add hidden complexity.
- Decide how identity, network controls, and backup posture will be validated for cache acceleration.
- Keep the mental model for cache acceleration tied to observable signals instead of memorized labels.

## Self-Check Questions
1. What is the primary control boundary in cache acceleration, and how would you explain it to a teammate?
2. Which failure mode would appear first if the design assumption were wrong?
3. What signal, log, or metric would you inspect before changing the architecture under pressure?
4. Which Azure or GCP equivalent helps confirm that you understand the concept rather than only the product name?
5. What part of this topic would become the hardest to operate at scale if left implicit?
