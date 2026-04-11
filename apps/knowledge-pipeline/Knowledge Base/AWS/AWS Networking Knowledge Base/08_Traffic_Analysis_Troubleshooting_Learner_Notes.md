# Traffic Analysis Troubleshooting Learner Notes

This file is a learner-first companion to `08_Traffic_Analysis_Troubleshooting.md`.
It is structured as topic-specific theory notes, a hands-on activity guide, and closing revision material so the raw knowledge base becomes easier to study and reuse.

Source authority: 10 processed source files, 872 extracted non-empty transcript lines. The architect-level concepts are drawn directly from the curated primary knowledge base for this topic.

## How To Use This File
1. Read the theory sections to understand what signal each tool provides before using it in an incident.
2. Work through the labs to set up VPC Flow Logs and run a Reachability Analyzer path before an incident requires them.
3. Follow the investigation discipline: start cheap (flow logs), escalate only if metadata is insufficient (mirroring).
4. Use the troubleshooting table as a first-response reference during network incidents.
5. Revisit the quick revision sheet before architecture reviews that require observability design.

---

## Theoretical Notes

### 1. Observability Must Be Designed Before the Incident

Most AWS networking problems — drop, reject, misconfigured route, overly restrictive policy — produce no error message. Traffic simply disappears. Without pre-configured observability, diagnosing why packets are not flowing requires working from hypotheses rather than evidence. Each AWS traffic analysis tool provides a different level of signal, and the discipline of choosing the right tool for the right question saves investigation hours.

The three-tier visibility model: (a) **metadata** — VPC Flow Logs tell you source IP, destination IP, port, action (ACCEPT/REJECT), and packet/byte count. This is the cheapest, most comprehensive baseline. (b) **path logic** — Reachability Analyzer and Network Access Analyzer evaluate the control-plane configuration (routes, SGs, NACLs) and tell you whether a conceptual path is allowed without sending real traffic. (c) **packet content** — Traffic Mirroring captures a copy of actual packet payloads for deep dive inspection. Escalate through the tiers: start with (a), use (b) to verify configuration logic, only use (c) when (a) and (b) are insufficient.

---

### 2. VPC Flow Logs: The Traffic Metadata Baseline

VPC Flow Logs capture metadata about accepted and rejected IP traffic flowing through VPC network interfaces. Logs can be created at three capture levels: VPC level (all ENIs in the VPC), subnet level (all ENIs in a subnet), or individual ENI level. Each log has a 10-minute (or 1-minute for enhanced flow logs) aggregation window before being written to the configured destination.

Destination options: CloudWatch Logs (low latency, query with CloudWatch Insights, higher cost per GB), S3 (higher latency, cheapest storage, query with Athena), and Kinesis Data Firehose (streaming to partner solutions or custom SIEM).

A flow log record includes: version, account-id, interface-id, srcaddr, dstaddr, srcport, dstport, protocol, packets, bytes, start, end, action (ACCEPT or REJECT), log-status. The `action` field is the critical diagnostic field: REJECT means a SG or NACL explicitly denied the flow; ACCEPT means the flow was permitted. Flow logs do NOT show payload — only metadata.

Custom flow log format lets you select specific fields and add fields not in the default format, such as VPC ID, subnet ID, instance ID, TCP flags, and type (IPv4/IPv6). The TCP flags field (`tcp-flags`) is particularly useful for diagnosing connection establishment problems (does the SYN get accepted but the SYN-ACK get dropped?).

Flow log analysis with Athena: query S3-stored flow logs using standard SQL without loading data into a database. The standard pattern is to create an Athena table with the flow log S3 bucket as the data source and run queries like "show all REJECT actions to port 443 in the last hour" or "show the top 10 source IPs by bytes sent to a specific destination IP."

---

### 3. VPC Reachability Analyzer: Control-Plane Path Verification

Reachability Analyzer is a configuration analysis tool — it evaluates the network configuration between two resources and determines whether a path exists based on routes, Security Groups, NACLs, and other networking constructs. Critically, it does this without sending any actual traffic — it analyzes the control plane, not the data plane.

This makes Reachability Analyzer ideal for: pre-deployment verification (does this architecture allow communication before you launch servers?), post-incident root cause analysis (what policy blocked traffic according to the control plane?), compliance checks (prove that a database subnet cannot reach the internet), and day-2 drift detection (re-run analysis to confirm a configuration change didn't accidentally open a path).

A Reachability Analyzer path is defined by source, destination, and optionally: source IP, destination IP, source port, destination port, protocol. Resources that can be endpoints: instances, network interfaces, internet gateways, NAT gateways, VPC peering connections, TGW attachments, VPN gateways. When the path is reachable, the analyzer returns a hop-by-hop explanation of how traffic flows and what rules permit it. When the path is not reachable, it returns the specific resource and rule that blocks the path.

Each Reachability Analyzer run has a cost (charged per analysis). This makes it more appropriate for deliberate diagnostic and verification use than for bulk automated scanning. For bulk policy analysis, use Network Access Analyzer instead.

---

### 4. Network Access Analyzer: Unintended Access Discovery

Network Access Analyzer evaluates your VPC network configuration against a defined access scope and identifies network access paths that match or violate that scope. Unlike Reachability Analyzer (which checks one specific pair), Network Access Analyzer can find ALL paths that match criteria — for example, all paths where internet sources can reach EC2 instances that should be private.

Use cases: security audit (find all unintended internet-reachable resources), compliance proof (demonstrate that production databases have no internet-reachable paths), migration validation (confirm that new landing zone design enforces network segmentation as designed). Network Access Analyzer produces a list of findings, not just pass/fail.

Network Access Analyzer is run on-demand in the console or via API. It analyzes the current configuration state — it does not monitor for changes. For continuous enforcement, pair it with AWS Config rules or EventBridge + Lambda to re-run analysis when network configuration changes.

---

### 5. Traffic Mirroring: Packet-Level Visibility

Traffic Mirroring copies real traffic from a source ENI (the target EC2 instance's network interface) and sends a copy to a destination (another ENI or a Network Load Balancer). The original traffic is unaffected — the mirror is an additional copy. This enables intrusion detection systems, deep packet inspection tools, and network forensics to analyze real payloads without modifying the traffic path.

Mirror session components: (a) **source** — the ENI whose traffic you want to mirror; (b) **filter** — a packet filter defining which traffic to copy (source/destination IP, port, protocol, inbound/outbound); (c) **target** — where the mirrored traffic is sent (ENI, NLB). Traffic is encapsulated in VXLAN UDP/4789 before delivery to the target.

Traffic Mirroring requires instance types that support enhanced networking (most current generation types support it). It creates additional bandwidth overhead equal to the mirrored traffic volume. For this reason, always use filters to capture only the traffic needed for investigation rather than mirroring all traffic from a busy instance. Cost is charged per hour per mirroring source.

---

### 6. Investigation Discipline: Cheap to Expensive

The correct investigation sequence for a networking incident reduces time-to-resolution and prevents wasted effort on deep packet analysis when the problem is a missing route or a restrictive Security Group.

Step 1 — establish the symptom precisely: is traffic timing out (network-level block) or being refused (application listening on wrong port)? Timeout = packet dropped by network; refused = packet received but rejected at application layer.

Step 2 — check control-plane configuration with Reachability Analyzer: run an analysis between source and destination to quickly confirm whether the configured state should allow the flow. If it says "unreachable", the answer is in the returned blocking component.

Step 3 — check Flow Logs: if Reachability Analyzer shows reachable but traffic is failing, the issue may be in the data plane (transient packet loss, asymmetric routing) or the application. Filter flow logs for the specific 5-tuple and look for ACCEPT with bytes=0 or REJECT.

Step 4 — escalate to Traffic Mirroring only if steps 1-3 are inconclusive and payload-level analysis is needed. Set targeted filters to avoid capturing unnecessary traffic.

---

## Hands-On Activity Guide

### Prerequisites
- VPC with at least one EC2 instance.
- IAM permissions for VPC Flow Logs, Reachability Analyzer, S3, and Athena.
- S3 bucket for flow log destination.

---

### Lab 1: Enable VPC Flow Logs to S3 and Query with Athena

```bash
# 1. Create S3 bucket for flow logs
aws s3 create-bucket --bucket my-vpc-flow-logs-$(date +%s) \
  --region us-east-1

# 2. Enable Flow Logs on VPC with S3 destination
aws ec2 create-flow-logs \
  --resource-type VPC \
  --resource-ids $VPC_ID \
  --traffic-type ALL \
  --log-destination-type s3 \
  --log-destination "arn:aws:s3:::my-vpc-flow-logs-12345" \
  --log-format '${version} ${account-id} ${interface-id} ${srcaddr} ${dstaddr} ${srcport} ${dstport} ${protocol} ${packets} ${bytes} ${start} ${end} ${action} ${log-status} ${vpc-id} ${subnet-id} ${instance-id} ${tcp-flags}'

# 3. Check flow log creation status
aws ec2 describe-flow-logs \
  --filter Name=resource-id,Values=$VPC_ID \
  --query 'FlowLogs[*].[FlowLogId,FlowLogStatus,LogDestination]' \
  --output table

# 4. After generating some traffic, create Athena table
# Run this SQL in Athena console or via CLI:
```

```sql
-- Create Athena table for VPC Flow Logs
CREATE EXTERNAL TABLE vpc_flow_logs (
  version int,
  account string,
  interfaceid string,
  sourceaddress string,
  destinationaddress string,
  sourceport int,
  destinationport int,
  protocol int,
  numpackets int,
  numbytes bigint,
  starttime int,
  endtime int,
  action string,
  logstatus string,
  vpcid string,
  subnetid string,
  instanceid string,
  tcpflags int
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ' '
LOCATION 's3://my-vpc-flow-logs-12345/AWSLogs/ACCOUNT_ID/vpcflowlogs/us-east-1/'
TBLPROPERTIES ('skip.header.line.count'='1');

-- Find all REJECT actions to port 443
SELECT sourceaddress, destinationaddress, destinationport, action, COUNT(*) as count
FROM vpc_flow_logs
WHERE action = 'REJECT' AND destinationport = 443
GROUP BY sourceaddress, destinationaddress, destinationport, action
ORDER BY count DESC
LIMIT 20;
```

---

### Lab 2: VPC Reachability Analyzer

```bash
# 1. Create a path analysis from a source instance to a destination instance
PATH_ID=$(aws ec2 create-network-insights-path \
  --source $SOURCE_ENI_ID \
  --destination $DEST_ENI_ID \
  --protocol tcp \
  --destination-port 443 \
  --query 'NetworkInsightsPath.NetworkInsightsPathId' \
  --output text)

# 2. Start analysis
ANALYSIS_ID=$(aws ec2 start-network-insights-analysis \
  --network-insights-path-id $PATH_ID \
  --query 'NetworkInsightsAnalysis.NetworkInsightsAnalysisId' \
  --output text)

# 3. Wait and get results
aws ec2 wait network-insights-analysis-succeeded \
  --network-insights-analysis-ids $ANALYSIS_ID

aws ec2 describe-network-insights-analyses \
  --network-insights-analysis-ids $ANALYSIS_ID \
  --query 'NetworkInsightsAnalyses[0].{Status:Status,Reachable:NetworkPathFound,Explanation:Explanations[0].ExplanationCode}' \
  --output table
```

---

## Troubleshooting Guide

| Symptom | Most Likely Cause | Diagnostic Step | Fix |
|---|---|---|---|
| Flow logs show REJECT for expected traffic | SG or NACL blocking the flow | Check which interface shows the REJECT (source or destination side); note port and protocol | Update SG or NACL to allow the specific port/protocol |
| Flow logs show ACCEPT but application still fails | Application not listening, or TLS configuration error (packet accepted at network, rejected at app) | Confirm flow shows non-zero bytes; check application logs for connection errors | Fix application listening port or TLS configuration |
| Reachability Analyzer says unreachable | Blocking component is a SG, NACL, route missing, or resource stopped | Read the `ExplanationCode` and `ExplanationComponent` in the analysis result | Fix the specific blocking element (add route, SG rule, etc.) |
| Flow logs not appearing after 10 minutes | Flow log creation failed or S3 bucket policy missing | `aws ec2 describe-flow-logs` — check `FlowLogStatus=ACTIVE` | Fix IAM or S3 bucket policy; recreate flow log |
| Traffic Mirroring target not receiving traffic | Filter too restrictive, VXLAN UDP/4789 blocked on target SG, or ENI type not supported | Check mirror filter; verify target SG allows UDP/4789; check instance type | Expand mirror filter; open UDP 4789 on target SG |
| Network Access Analyzer shows unintended internet path | A resource that should be private is reachable via an unintended path | Review NAA findings — it shows the full path including each hop | Remediate the unintended access (close SG rule, remove IGW route) |
| Athena query on flow logs returns no results | S3 partition structure not matching Athena table location | Check S3 prefix in bucket; verify Athena table `LOCATION` path | Update `LOCATION` in Athena table to match actual S3 path |
| Reachability Analyzer analysis stays PENDING | Path complexity too high, or API throttling | Check AWS service health; retry after a few minutes | Retry; reduce path complexity by making source/destination more specific |

---

## Quick Revision Sheet

- **VPC Flow Logs** = metadata (src IP, dst IP, port, protocol, bytes, ACCEPT/REJECT); no payload; per ENI/subnet/VPC
- **Flow log destinations** = CloudWatch Logs (queryable, more cost), S3 (cheaper, query with Athena), Firehose
- **ACCEPT vs REJECT** = ACCEPT = policy allows; REJECT = SG or NACL explicitly denied
- **Traffic Mirroring** = copies actual packets; requires VXLAN/4789 to target; use filters to reduce cost
- **Reachability Analyzer** = control-plane path analysis; no real traffic; returns blocking component
- **Network Access Analyzer** = bulk finds all paths matching/violating a scope; for security audits
- **Investigation order** = symptom classification → Reachability Analyzer → Flow Logs → Traffic Mirroring
- **Timeout vs refused** = Timeout = dropped at network; Refused = received but app denied
- **TCP flags in flow log** = `2`=SYN, `18`=SYN-ACK, `1`=FIN; useful for diagnosing partial connection setup
- **Athena integration** = create table on S3 flow log path; query with standard SQL; partitioned by date

## How To Use This File
1. Read the theory sections first so the service or platform model is clear before you touch the console.
2. Work through the hands-on modules in order and record what the platform proves versus what you only assumed.
3. Compare the AWS pattern with Azure and GCP when possible so the idea becomes cloud-portable.
4. Use the troubleshooting table when behavior is confusing instead of guessing from one console view.
5. Revisit the quick revision sheet before a design review, exam session, or migration plan.

## Theoretical Notes

### 1. Troubleshooting Mental Model

Troubleshooting Mental Model sets the boundary for traffic analysis troubleshooting, because it explains what the platform owns, what the operator owns, and where the first failure usually appears. When that boundary is fuzzy, teams tend to misread symptoms and make design choices in traffic analysis troubleshooting that solve the wrong problem. In practice, the durable way to learn traffic analysis troubleshooting is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 2. Visibility Levels

Visibility Levels matter because they determine how the control plane, data path, and identity or addressing model actually work inside traffic analysis troubleshooting. Understanding those building blocks makes it easier to compare AWS behavior with Azure and GCP instead of memorizing vendor-specific wording. In practice, the durable way to learn traffic analysis troubleshooting is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 3. Investigation Discipline

Investigation Discipline are where scale, resilience, and governance turn basic feature knowledge into durable system design for traffic analysis troubleshooting. This is usually the part of the topic that separates a passing lab from a design that still behaves well under real traffic and operator pressure. In practice, the durable way to learn traffic analysis troubleshooting is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 4. Observability is part of the network design

Traffic analysis troubleshooting is only trustworthy when the team can prove what path traffic takes and which layer is allowed to change that path. Without those signals, networking problems inside traffic analysis troubleshooting often masquerade as random application or infrastructure failures. In practice, the durable way to learn traffic analysis troubleshooting is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 5. Cross-cloud mapping keeps the boundary clear

Mapping traffic analysis troubleshooting to Azure and GCP helps separate the underlying networking concept from the AWS product packaging around it. That usually makes both troubleshooting and migration planning easier because the real control surface stays visible. In practice, the durable way to learn traffic analysis troubleshooting is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 6. Cross-Cloud Mental Map

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Flow visibility | VPC Flow Logs | NSG flow logs | VPC Flow Logs |
| Packet and path analysis | Traffic Mirroring and Reachability Analyzer | Packet capture and Network Watcher topology tools | Packet Mirroring and Connectivity Tests |
| Edge and LB diagnostics | ELB logs and CloudWatch | Load balancer diagnostics and Azure Monitor | Load balancer logging and Cloud Monitoring |
| DNS troubleshooting | Resolver query logs | DNS analytics and query logs | Cloud DNS logging |
| Incident evidence loop | CloudTrail plus Config plus network telemetry | Activity Log plus Policy plus Monitor | Audit Logs plus Network Intelligence Center signals |

## Hands-On Activity Guide

### Prerequisites and Safety Rules
- Use a sandbox account or non-production subscription and set a budget alert before creating resources.
- Keep naming, tagging, and cleanup disciplined so you can remove every lab artifact after practice.
- Prefer the smallest viable instances or service tiers unless the learning goal specifically depends on scale.
- Record both the intended design and the first thing that contradicted your expectation.

### Module 1: Troubleshooting Mental Model

**Goal:** Turn troubleshooting mental model for traffic analysis troubleshooting into one observable and repeatable workflow.

1. Review the troubleshooting mental model section in the curated raw material for Traffic Analysis Troubleshooting.
2. Build or diagram one small AWS scenario that proves the core behavior behind troubleshooting mental model.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 2: Visibility Levels

**Goal:** Turn visibility levels for traffic analysis troubleshooting into one observable and repeatable workflow.

1. Review the visibility levels section in the curated raw material for Traffic Analysis Troubleshooting.
2. Build or diagram one small AWS scenario that proves the core behavior behind visibility levels.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 3: Investigation Discipline

**Goal:** Turn investigation discipline for traffic analysis troubleshooting into one observable and repeatable workflow.

1. Review the investigation discipline section in the curated raw material for Traffic Analysis Troubleshooting.
2. Build or diagram one small AWS scenario that proves the core behavior behind investigation discipline.
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
| Traffic does not reach the target | The route path, attachment, or return path is wrong | Start with route tables, attachment state, and whether the return path is symmetric |
| DNS resolution works in one place but fails in another | Resolver rules, private zones, or forwarding boundaries are incomplete | Check which resolver answered, what zone was authoritative, and where forwarding stops |
| A security control appears to allow traffic but packets still fail | Another layer is denying or bypassing the expected flow | Evaluate security groups, NACLs, firewall policy, and the actual source or destination identity together |
| Performance is inconsistent | Path length, cross-zone movement, or overloaded translation points are adding latency | Inspect the chosen path, NAT or proxy hops, and whether traffic locality matches the design |
| The incident is hard to explain after the fact | Telemetry was not enabled at the right layer | Check flow logs, query logs, LB logs, and control-plane audit logs before reproducing the issue |
| Behavior contradicts the traffic analysis troubleshooting model | The intended control boundary was never translated into a concrete policy, route, identity path, or recovery signal | Re-check the mental model, then inspect the first control plane, data plane, and evidence source that should prove it |

## Quick Revision Sheet
- Decide what boundary or path traffic analysis troubleshooting is supposed to control before you add more routes, policies, or services.
- Decide how identity, DNS, and routing assumptions should be documented around traffic analysis troubleshooting.
- Decide which layer should own reachability, security, and failover behavior in traffic analysis troubleshooting.
- Decide which telemetry proves that traffic analysis troubleshooting is working as designed instead of only appearing configured.
- Keep the mental model for traffic analysis troubleshooting tied to observable signals instead of memorized labels.

## Self-Check Questions
1. What is the primary control boundary in traffic analysis troubleshooting, and how would you explain it to a teammate?
2. Which failure mode would appear first if the design assumption were wrong?
3. What signal, log, or metric would you inspect before changing the architecture under pressure?
4. Which Azure or GCP equivalent helps confirm that you understand the concept rather than only the product name?
5. What part of this topic would become the hardest to operate at scale if left implicit?
