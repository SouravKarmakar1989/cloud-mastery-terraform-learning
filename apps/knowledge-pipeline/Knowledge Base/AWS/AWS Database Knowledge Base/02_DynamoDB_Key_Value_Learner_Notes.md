# DynamoDB Key Value Learner Notes

This file is a learner-first companion to `02_DynamoDB_Key_Value.md`.
It is structured as blog-post-depth theoretical articles, a comprehensive multi-cloud hands-on activity guide, and closed with troubleshooting, revision, and self-assessment material.

Source authority: 36 processed source files, 2233 extracted non-empty transcript lines, owned by AWS Database Knowledge Base. The architect-level concepts are drawn directly from the curated primary knowledge base for this topic.

## How To Use This File
1. Read each theoretical section fully before touching the console. Understand the why before the how.
2. Work through the Hands-On Activity Guide in module order. Each module builds on the last.
3. Run all three cloud variants when you can. The most durable learning comes from doing the same concept on AWS, Azure, and GCP in the same sitting.
4. Use the Troubleshooting section when something goes wrong. Most situations are already documented.
5. Return to the Quick Revision Sheet before any exam, interview, or architecture review.

## Theoretical Notes

---

### 1. DynamoDB Data Model — Tables, Items, Partition Key, and Sort Key

DynamoDB is a key-value and document store. Its data model is deliberately simple — this simplicity forces access pattern design up front, which is the correct behavior for a system designed to serve predictable, low-latency queries at any scale.

**Table structure.** A DynamoDB table contains items (analogous to rows). Each item is a set of attributes (analogous to columns), but unlike a relational table, different items in the same table can have completely different attribute sets — DynamoDB is schemaless except for the primary key.

**Primary key types.** DynamoDB supports two primary key types: a simple primary key (Partition Key only) and a composite primary key (Partition Key + Sort Key). The Partition Key determines which internal partition the item is stored on — DynamoDB hashes the partition key and routes the item accordingly. A good partition key has high cardinality and distributes writes evenly. The Sort Key is the second dimension of a composite key — items with the same partition key but different sort keys land on the same partition and can be queried with range expressions (=, <, >, BETWEEN, begins_with).

**Access pattern discipline.** Unlike a relational database where you can join tables and filter on any column, DynamoDB only supports efficient queries on the primary key or index key. Any attribute other than an index key requires a Scan — which reads every item in the table and becomes expensive and slow at scale. The design discipline: determine all required access patterns before designing the table schema, then design the key structure to support those patterns directly.

**Single-table design.** An advanced DynamoDB pattern where multiple entity types (users, orders, products) are stored in a single table. Each entity type uses a consistent partition key format (e.g., `USER#user-id-123`, `ORDER#order-id-456`). This eliminates the need for cross-table joins and allows a single query to retrieve related entities in one round trip using a carefully chosen partition key.

---

### 2. DynamoDB Capacity Modes — Provisioned vs On-Demand

DynamoDB charges for throughput capacity. The two modes determine how you pay for reads and writes.

**Read Capacity Units (RCU).** One RCU covers one strongly-consistent read per second for an item up to 4 KB, or two eventually-consistent reads per second for an item up to 4 KB. Items larger than 4 KB consume additional RCUs proportionally.

**Write Capacity Units (WCU).** One WCU covers one write per second for an item up to 1 KB. Items larger than 1 KB consume proportionally more WCUs.

**Provisioned mode.** You set a fixed RCU and WCU value. DynamoDB guarantees that throughput. Requests exceeding the provisioned capacity are throttled (HTTP 400 `ProvisionedThroughputExceededException`). You can enable auto-scaling — DynamoDB will adjust provisioned capacity based on CloudWatch utilization metrics, subject to a configurable minimum and maximum. Provisioned mode is cost-effective for predictable, steady-state workloads.

**On-demand mode.** You pay per request rather than per provisioned capacity unit. DynamoDB scales instantly to any traffic volume. On-demand is 5–7× more expensive per request than provisioned at steady-state throughput, but it eliminates the risk of throttling at unexpected traffic spikes. Use on-demand for unpredictable workloads, new applications with unknown traffic, and infrequently accessed tables.

**Switching between modes.** You can switch a table between provisioned and on-demand once per 24 hours. DynamoDB retains the last provisioned throughput values when switching back.

---

### 3. DynamoDB Indexes — LSI and GSI

Indexes let you query on attributes that are not the primary key. DynamoDB offers two index types with different trade-offs.

**Local Secondary Index (LSI).** An alternate sort key for a table partition. Uses the same partition key as the table but a different sort key. This means it only helps when you are already querying within a specific partition. LSIs must be created at table creation time — they cannot be added later. LSI data is stored on the same partition as the base table items, so it consumes partition storage. LSI supports both strongly-consistent and eventually-consistent reads. Maximum 5 LSIs per table.

**Global Secondary Index (GSI).** A completely separate index with its own partition key and optional sort key. A GSI can use any attribute as its partition key — even one that is not the table's partition key. This enables access patterns that span the entire table rather than a single partition. GSIs can be added to an existing table at any time. GSIs are eventually consistent only — a new write to the base table propagates to the GSI asynchronously. GSIs have their own provisioned read and write capacity (or inherit on-demand if the table is on-demand). Maximum 20 GSIs per table.

**Sparse indexes.** A powerful pattern: if an attribute is not present on all items, only items that have that attribute appear in a GSI on that attribute. This creates a "filtered" index with far fewer items than the full table — highly cost-efficient for querying a specific subset of items (e.g., only orders with `status = PENDING`).

---

### 4. DynamoDB Streams and Event-Driven Patterns

DynamoDB Streams captures a time-ordered sequence of item-level changes (INSERT, MODIFY, REMOVE) in a table. Streams are the foundation for DynamoDB-driven event pipelines.

**Stream record contents.** You choose what each stream record contains: Keys only, New image only, Old image only, or New and old images (before and after the update). Storing both images is essential for audit trails and change-detection logic.

**DynamoDB Streams → Lambda.** Lambda can poll a DynamoDB Stream as an event source. Lambda receives batches of stream records and processes them in order per shard. This pattern drives: real-time search index sync (DynamoDB → Lambda → OpenSearch), event-driven microservice communication, cross-region replication engines, and audit logging.

**DynamoDB Streams → Kinesis Data Streams.** For high-volume stream consumers or where you need longer retention than DynamoDB Streams' 24-hour window, you can export to Kinesis Data Streams directly from DynamoDB. Kinesis retains records for up to 365 days and supports multiple concurrent consumers.

**Global Tables.** DynamoDB Global Tables extends Streams to enable active-active multi-region replication. Every write to any replica region is replicated to all other regions via the streaming infrastructure. Last-writer-wins conflict resolution is applied using a timestamp. Global Tables require on-demand mode or provisioned mode with auto-scaling in all regions.

---

### 5. DynamoDB DAX — In-Memory Acceleration for Read-Heavy Workloads

DynamoDB Accelerator (DAX) is a fully managed in-memory cache that is directly API-compatible with DynamoDB. Your application replaces the DynamoDB client endpoint with the DAX cluster endpoint — no code changes to read logic.

**Cache behavior.** DAX caches the results of `GetItem` and `Query` operations. Cache hits return data in microseconds. Cache misses pass through to DynamoDB. DAX supports item-level (individual GetItem) and query-level (Query/Scan result set) caching with configurable TTLs.

**Write-through caching.** DAX is write-through by default — writes go to both DAX and DynamoDB to maintain cache consistency. A `PutItem` to DAX writes to DynamoDB and invalidates or updates the cache entry simultaneously.

**When to use DAX.** DAX is appropriate for read-heavy, low-latency access patterns: gaming leaderboards, session stores, product catalogs, and real-time dashboards where the same items are read many times. DAX is **not** beneficial for strongly-consistent reads (DAX serves eventually-consistent reads by default) or write-heavy workloads.

**DAX vs ElastiCache for DynamoDB.** DAX is purpose-built for DynamoDB and requires no code changes. ElastiCache in front of DynamoDB requires application logic to manage cache population, invalidation, and miss handling — more operational overhead but more flexible (it can cache arbitrary data, not just DynamoDB results).

---

### 6. Cross-Cloud Mental Map — DynamoDB

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Key-value / document store | DynamoDB | Azure Cosmos DB (Table API, Core SQL API) | Firestore, Bigtable |
| Partition key concept | Partition Key (MD5-hashed for placement) | Partition Key in Cosmos DB Table API | Firestore: Collection/Document ID; Bigtable: Row Key |
| Throughput capacity model | RCU/WCU (provisioned or on-demand) | RU/s (Request Units, provisioned or serverless) | Firestore: operations-per-second; Bigtable: node-based |
| Secondary indexes | GSI (global), LSI (local) | Cosmos DB: composite indexes, secondary indexes | Firestore: composite indexes |
| Change capture / streams | DynamoDB Streams (24h retention) | Cosmos DB Change Feed | Firestore real-time listeners, Bigtable CDC via Pub/Sub |
| Multi-region active-active | DynamoDB Global Tables | Cosmos DB multi-region writes (multi-master) | Firestore multi-region; Bigtable: replication across clusters |
| In-memory acceleration | DAX (API-compatible DynamoDB cache) | No native equivalent — Redis via Azure Cache | No native equivalent — Memorystore |
| Serverless model | DynamoDB on-demand mode | Cosmos DB Serverless | Firestore in native/Datastore mode (consumption-based) |

## Hands-On Activity Guide

### Prerequisites and Safety Rules

**Before any lab:**
- DynamoDB On-Demand tables have no minimum charge beyond what you use — safe for lab experiments.
- Provisioned capacity tables with auto-scaling are also low-cost for lab data volumes.
- DAX clusters have an hourly charge (~$0.269/hr for `dax.t3.small`) — delete after lab.
- Always tag all resources with `Environment=Lab` for easy identification and cleanup.

---

### Module 1: Create a DynamoDB Table and Test Access Patterns

**Goal:** Build a table with a composite primary key and confirm that non-key queries require a Scan.

#### Lab 1A: Create a Table with Composite Key

```bash
aws dynamodb create-table \
  --table-name OrdersLab \
  --attribute-definitions \
    AttributeName=CustomerId,AttributeType=S \
    AttributeName=OrderId,AttributeType=S \
  --key-schema \
    AttributeName=CustomerId,KeyType=HASH \
    AttributeName=OrderId,KeyType=RANGE \
  --billing-mode PAY_PER_REQUEST

# Wait for ACTIVE status:
aws dynamodb wait table-exists --table-name OrdersLab
```

#### Lab 1B: Put Items and Query

```bash
# Insert items:
aws dynamodb put-item \
  --table-name OrdersLab \
  --item '{"CustomerId":{"S":"cust-001"},"OrderId":{"S":"ord-001"},"Status":{"S":"PENDING"},"Amount":{"N":"99.99"}}'

aws dynamodb put-item \
  --table-name OrdersLab \
  --item '{"CustomerId":{"S":"cust-001"},"OrderId":{"S":"ord-002"},"Status":{"S":"SHIPPED"},"Amount":{"N":"149.50"}}'

# Efficient query (on primary key — fast):
aws dynamodb query \
  --table-name OrdersLab \
  --key-condition-expression "CustomerId = :cid" \
  --expression-attribute-values '{":cid":{"S":"cust-001"}}'

# Inefficient scan on non-key attribute (avoid in production):
aws dynamodb scan \
  --table-name OrdersLab \
  --filter-expression "Status = :s" \
  --expression-attribute-values '{":s":{"S":"PENDING"}}'
```

**Key observation:** The Query uses the key and returns only items for `cust-001`. The Scan reads every item (all customers) and then filters — at scale this reads millions of items to return a handful.

---

### Module 2: Add a Global Secondary Index for Alternate Access Pattern

**Goal:** Add a GSI on `Status` so PENDING orders can be queried efficiently.

```bash
aws dynamodb update-table \
  --table-name OrdersLab \
  --attribute-definitions \
    AttributeName=Status,AttributeType=S \
    AttributeName=OrderId,AttributeType=S \
  --global-secondary-index-updates '[{
    "Create": {
      "IndexName": "StatusIndex",
      "KeySchema": [
        {"AttributeName":"Status","KeyType":"HASH"},
        {"AttributeName":"OrderId","KeyType":"RANGE"}
      ],
      "Projection": {"ProjectionType":"ALL"},
      "BillingMode": "PAY_PER_REQUEST"
    }
  }]'

# Wait for index to become ACTIVE — check with:
aws dynamodb describe-table --table-name OrdersLab \
  --query "Table.GlobalSecondaryIndexes[0].IndexStatus"

# Now query the GSI efficiently:
aws dynamodb query \
  --table-name OrdersLab \
  --index-name StatusIndex \
  --key-condition-expression "#st = :s" \
  --expression-attribute-names '{"#st":"Status"}' \
  --expression-attribute-values '{":s":{"S":"PENDING"}}'
```

**What to confirm:** This query returns only PENDING orders without scanning the full table. The `#st` alias is needed because `Status` is a reserved word in DynamoDB expression syntax.

---

### Module 3: DynamoDB Streams + Lambda Event Pipeline

**Goal:** Trigger a Lambda function for every new order item added to the table.

1. Enable streams on the table:
```bash
aws dynamodb update-table \
  --table-name OrdersLab \
  --stream-specification StreamEnabled=true,StreamViewType=NEW_AND_OLD_IMAGES
```

2. Create a Lambda function (Python 3.12):
```python
import json

def lambda_handler(event, context):
    for record in event['Records']:
        if record['eventName'] == 'INSERT':
            new_item = record['dynamodb']['NewImage']
            customer_id = new_item['CustomerId']['S']
            order_id = new_item['OrderId']['S']
            print(f"New order: {order_id} for customer: {customer_id}")
    return {'statusCode': 200}
```

3. Add the DynamoDB Stream as an event source mapping for the Lambda function in the console (Lambda → Add Trigger → DynamoDB → select OrdersLab stream).

4. Insert a new item into the table and check CloudWatch Logs for the Lambda function — confirm the order details appear in the log.

---

### Module 4: Configure DynamoDB Capacity and Observe Throttling

**Goal:** Switch a table to provisioned capacity, set a low WCU, then observe throttling.

```bash
# Switch to provisioned with 1 WCU (very low):
aws dynamodb update-table \
  --table-name OrdersLab \
  --billing-mode PROVISIONED \
  --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=1

# Then rapidly insert items via CLI loop to trigger throttling:
for i in $(seq 1 50); do
  aws dynamodb put-item \
    --table-name OrdersLab \
    --item "{\"CustomerId\":{\"S\":\"cust-throttle\"},\"OrderId\":{\"S\":\"ord-$i\"},\"Status\":{\"S\":\"PENDING\"}}" \
    &
done
wait
```

**What to observe:** Some writes succeed immediately. Others receive `ProvisionedThroughputExceededException`. Check the `ThrottledRequests` CloudWatch metric — it spikes. Switch back to on-demand after the lab.

---

## Troubleshooting Guide

| Symptom | Most Likely Cause | Diagnostic Steps |
|---|---|---|
| Query returns no results but items exist | Querying base table with an attribute that exists only in GSI | Confirm you are using `--index-name` parameter; GSI must be specified explicitly in query calls |
| `ProvisionedThroughputExceededException` on writes | Provisioned WCU too low or write pattern causes hot partition | Check `ConsumedWriteCapacityUnits` vs `ProvisionedWriteCapacityUnits` CloudWatch metrics; check partition key distribution |
| Hot partition / hot key issues | All writes going to same partition key (e.g., a status field with 2–3 values) | Add a suffix (`#1` to `#N`) to partition keys when using low-cardinality attributes as partition keys |
| GSI eventually consistent reads returning stale data | GSI propagation lag | GSI replication is asynchronous; reads immediately after a write may not reflect the change; redesign to tolerate eventual consistency or read from base table |
| DynamoDB Streams not triggering Lambda | Event source mapping in wrong state or function errors | Check Lambda → Event source mappings — look for error messages; check function CloudWatch Logs for invocation errors |
| Item size exceeds 400 KB limit | Storing large binary payloads inside DynamoDB items | Store large payloads in S3; store only the S3 key reference in the DynamoDB item |
| DAX writes not reflected in DynamoDB queries | DAX write-through issue or TTL not expired | DAX is write-through — writes should always hit DynamoDB; for reads, ensure TTL (default 5 minutes) has expired or use `GetItem` with `ConsistentRead=True` to bypass DAX |

---

## Quick Revision Sheet

**DynamoDB Primary Key Rules**
- Partition Key only → simple PK (must be unique per item)
- Partition Key + Sort Key → composite PK (PK+SK combination must be unique; same PK can have many SK values)
- Always choose a high-cardinality, evenly distributed partition key

**Capacity Mode Decision**
- Provisioned + auto-scaling: predictable traffic, cost-optimized at scale
- On-demand: unpredictable traffic, new applications, infrequent access

**Index Decision Tree**
- Need to query on the primary table's sort key with same partition key → use LSI (create at table creation)
- Need to query on any other attribute across all partitions → use GSI (add anytime)
- Sparse GSI: only items with the indexed attribute appear — efficient for subset queries

**Read Consistency**
- Eventually consistent (default): lower cost, may return stale data
- Strongly consistent: double the RCU cost, guarantees latest data

**DynamoDB Streams → Use Cases**
- Real-time replication to another region (Global Tables)
- Lambda-driven event pipelines (new order → notify, audit log, search index sync)
- Cross-table materialized views

**DAX in One Sentence**
API-compatible in-memory cache; drop-in replacement endpoint; microsecond reads; write-through; eventually consistent; delete after lab (hourly charge).

## How To Use This File
1. Read the theory sections first so the service or platform model is clear before you touch the console.
2. Work through the hands-on modules in order and record what the platform proves versus what you only assumed.
3. Compare the AWS pattern with Azure and GCP when possible so the idea becomes cloud-portable.
4. Use the troubleshooting table when behavior is confusing instead of guessing from one console view.
5. Revisit the quick revision sheet before a design review, exam session, or migration plan.

## Theoretical Notes

### 1. DynamoDB Key Value Mental Model

DynamoDB Key Value Mental Model sets the boundary for dynamodb key value, because it explains what the platform owns, what the operator owns, and where the first failure usually appears. When that boundary is fuzzy, teams tend to misread symptoms and make design choices in dynamodb key value that solve the wrong problem. In practice, the durable way to learn dynamodb key value is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 2. Core Services and Building Blocks

Core Services and Building Blocks matter because they determine how the control plane, data path, and identity or addressing model actually work inside dynamodb key value. Understanding those building blocks makes it easier to compare AWS behavior with Azure and GCP instead of memorizing vendor-specific wording. In practice, the durable way to learn dynamodb key value is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 3. Operational and Architecture Patterns

Operational and Architecture Patterns are where scale, resilience, and governance turn basic feature knowledge into durable system design for dynamodb key value. This is usually the part of the topic that separates a passing lab from a design that still behaves well under real traffic and operator pressure. In practice, the durable way to learn dynamodb key value is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 4. Failure behavior should drive platform choice

The durable way to study dynamodb key value is to ask how it fails under skew, burst, lag, or operator error rather than to memorize feature bullets. Once failure behavior is explicit, the right database or cache choice inside dynamodb key value becomes much easier to defend. In practice, the durable way to learn dynamodb key value is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 5. Cross-cloud comparison exposes the real workload shape

If you can map dynamodb key value cleanly to Azure and GCP, you usually understand whether the workload wants relational integrity, key-value scale, caching, or a specialized model. That portability also makes it easier to explain why this topic is an architecture decision and not just a console preference. In practice, the durable way to learn dynamodb key value is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

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

### Module 1: DynamoDB Key Value Mental Model

**Goal:** Turn dynamodb key value mental model for dynamodb key value into one observable and repeatable workflow.

1. Review the dynamodb key value mental model section in the curated raw material for DynamoDB Key Value.
2. Build or diagram one small AWS scenario that proves the core behavior behind dynamodb key value mental model.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 2: Core Services and Building Blocks

**Goal:** Turn core services and building blocks for dynamodb key value into one observable and repeatable workflow.

1. Review the core services and building blocks section in the curated raw material for DynamoDB Key Value.
2. Build or diagram one small AWS scenario that proves the core behavior behind core services and building blocks.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 3: Operational and Architecture Patterns

**Goal:** Turn operational and architecture patterns for dynamodb key value into one observable and repeatable workflow.

1. Review the operational and architecture patterns section in the curated raw material for DynamoDB Key Value.
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
| Behavior contradicts the dynamodb key value model | The intended control boundary was never translated into a concrete policy, route, identity path, or recovery signal | Re-check the mental model, then inspect the first control plane, data plane, and evidence source that should prove it |

## Quick Revision Sheet
- Decide what data model and access pattern dynamodb key value is supposed to serve before comparing product features.
- Decide how consistency, latency, and recovery trade-offs should be made explicit inside dynamodb key value.
- Decide which scaling or acceleration layer belongs in the design and which would only add hidden complexity.
- Decide how identity, network controls, and backup posture will be validated for dynamodb key value.
- Keep the mental model for dynamodb key value tied to observable signals instead of memorized labels.

## Self-Check Questions
1. What is the primary control boundary in dynamodb key value, and how would you explain it to a teammate?
2. Which failure mode would appear first if the design assumption were wrong?
3. What signal, log, or metric would you inspect before changing the architecture under pressure?
4. Which Azure or GCP equivalent helps confirm that you understand the concept rather than only the product name?
5. What part of this topic would become the hardest to operate at scale if left implicit?
