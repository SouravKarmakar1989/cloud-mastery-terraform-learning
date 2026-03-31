# 09_Logging_Monitoring.md

## Scope
- Source set: AWS Specialty Domain 1 logging/telemetry files + SAP Security CloudTrail files
- Files processed: 34
- Extracted non-empty transcript lines: 1453
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 1 Logging and Monitoring)

This section is the study-first material for telemetry, audit, monitoring, and event-driven observability in security operations.

### Phase 1 - Foundations

#### Module 1: Security Telemetry Model
- Logging is evidence.
- Monitoring is signal evaluation over evidence.
- Alerting is decision output from monitoring logic.
- Automation is action taken from alert output.


##### Source Transcript Details
- Module focus: Security Telemetry Model
- Primary transcript files:
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/016_[SOA] Logging in AWS for Security and Compliance.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/048_Route 53 - Query Logging.txt
- outputs/aws-solutions-architect-professional/04_Security/017_CloudTrail - SA Pro.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/042_[SAA_SOA] VPC Flow Logs.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/037_Monitoring Account Activity.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/046_VPC Traffic Mirroring - Architectures.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/043_[SAA_SOA] VPC Flow Logs Hands On.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/045_[SAA_SOA] VPC Traffic Mirroring.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt
- outputs/aws-solutions-architect-professional/04_Security/016_CloudTrail - EventBridge Integration.txt
- Top concept clusters from transcript metadata:
- Operational Monitoring Context
- Network Telemetry
- Audit Logging
- Log Analytics
- Event-Driven Automation
- Operational Monitoring
- Retention and Forensics
- Detection Correlation
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 34
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1453
- Key insights inside selected files: 429
- Unique concept tags in selected files: 8

##### Transcript-Enriched Learning Notes
- So just to help you for the exam and to make you understand what kind of logging is available in AWS.
- It could be security logs or audit logs.
- Web Application Firewall Logs, so if you enable WAF, then you get full logging of all the request analyzed by the service, which is really really nice.
- Now also, you should know that if you do put all these audit and security logs and compliance logs and you put them in S3, it is great to encrypt these logs and then for the bucket where you put all these logs, you ca...
- If you're more interested into, basically, logging and security in AWS, there's a whitepaper you can read, which is quite interesting.
- But this is enough for you to understand basically the scope of all this logging that exists in AWS, how we can analyze it, how we should store it, and how we should have cost saying and compliance on top of it.
- So, now let's talk about query logging for Route 53.
- So, the first one is DNS query logging, which is going to give you information about public DNS queries that the Route 53 Resolver receives.
- The other kind of query logging you have is the Resolver query logging which is going to log all DNS queries made within your VPC.
- Then this is going to be automatically logged through the Resolver query logging, and then these logs can be sent to three destinations.
- Now these configurations of query logging can be shared with other accounts using AWS Resource Access Manager, which is called AWS RAM.
- So, what does the Resolver query logging look like?
- So, what kind of architectures can we build with the Resolver query logging?
- And we have a security account that we want to send the logs to.
- The thing is CloudTrail needs to be delivering these log files into the S3 buckets of the security account.
- The second is that if Account A needs to access you know, the logs for the CloudTrail bucket we can create, for example, a cross-account role and assume the role in the security account.
- And on top of it, we have demonstrated a good way to have a security account in the middle to keep all these CloudTrail logs into a secure place.
- And maybe the security account has a much tighter security for user management and so on.

##### Polished Architect Notes
- Transcript signals that just to help you for the exam and to make you understand what kind of logging is available in AWS.
- Transcript signals that it could be security logs or audit logs.
- Transcript signals that web Application Firewall Logs, so if you enable WAF, then you get full logging of all the request analyzed by the service, which is really really nice.
- Transcript signals that also, you should know that if you do put all these audit and security logs and compliance logs and you put them in S3, it is great to encrypt these logs and then for the bucket where you put all these logs, you ca...
- Transcript signals that if you're more interested into, basically, logging and security in AWS, there's a whitepaper you can read, which is quite interesting.
- Transcript signals that this is enough for you to understand basically the scope of all this logging that exists in AWS, how we can analyze it, how we should store it, and how we should have cost saying and compliance on top of it.
- Transcript signals that now let's talk about query logging for Route 53.
- Transcript signals that the first one is DNS query logging, which is going to give you information about public DNS queries that the Route 53 Resolver receives.
- Transcript signals that the other kind of query logging you have is the Resolver query logging which is going to log all DNS queries made within your VPC.
- Transcript signals that this is going to be automatically logged through the Resolver query logging, and then these logs can be sent to three destinations.
- Transcript signals that these configurations of query logging can be shared with other accounts using AWS Resource Access Manager, which is called AWS RAM.
- Transcript signals that what does the Resolver query logging look like?

##### Architect Synthesis (Transcript-Derived)
- Treat Operational Monitoring Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Network Telemetry as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Audit Logging as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Log Analytics as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Event-Driven Automation as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: just to help you for the exam and to make you understand what kind of logging is available in AWS.
- Design implication: it could be security logs or audit logs.
- Design implication: web Application Firewall Logs, so if you enable WAF, then you get full logging of all the request analyzed by the service, which is really really nice.
#### Module 2: Telemetry Categories
- Control plane telemetry: CloudTrail API activity.
- Workload and infra telemetry: CloudWatch metrics/logs and agent streams.
- Network telemetry: VPC Flow Logs and Traffic Mirroring.
- DNS telemetry: Route 53 query logs.
- Event telemetry: EventBridge events and cross-service triggers.


##### Source Transcript Details
- Module focus: Telemetry Categories
- Primary transcript files:
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/016_[SOA] Logging in AWS for Security and Compliance.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/048_Route 53 - Query Logging.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/037_Monitoring Account Activity.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/043_[SAA_SOA] VPC Flow Logs Hands On.txt
- outputs/aws-solutions-architect-professional/04_Security/017_CloudTrail - SA Pro.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/030_[SAA] CloudTrail.txt
- outputs/aws-solutions-architect-professional/04_Security/015_CloudTrail.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/042_[SAA_SOA] VPC Flow Logs.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/034_[SOA] CloudTrail for SysOps.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/046_VPC Traffic Mirroring - Architectures.txt
- Top concept clusters from transcript metadata:
- Operational Monitoring Context
- Audit Logging
- Network Telemetry
- Log Analytics
- Event-Driven Automation
- Operational Monitoring
- Retention and Forensics
- Detection Correlation
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 34
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1453
- Key insights inside selected files: 525
- Unique concept tags in selected files: 8

##### Transcript-Enriched Learning Notes
- So just to help you for the exam and to make you understand what kind of logging is available in AWS.
- Web Application Firewall Logs, so if you enable WAF, then you get full logging of all the request analyzed by the service, which is really really nice.
- If you're more interested into, basically, logging and security in AWS, there's a whitepaper you can read, which is quite interesting.
- But this is enough for you to understand basically the scope of all this logging that exists in AWS, how we can analyze it, how we should store it, and how we should have cost saying and compliance on top of it.
- So, now let's talk about query logging for Route 53.
- So, the first one is DNS query logging, which is going to give you information about public DNS queries that the Route 53 Resolver receives.
- The other kind of query logging you have is the Resolver query logging which is going to log all DNS queries made within your VPC.
- Then this is going to be automatically logged through the Resolver query logging, and then these logs can be sent to three destinations.
- Now these configurations of query logging can be shared with other accounts using AWS Resource Access Manager, which is called AWS RAM.
- So, what does the Resolver query logging look like?
- So, what kind of architectures can we build with the Resolver query logging?
- So let's take the example of monitoring account activity and see how different services relate to that simple task.
- If you set up logging, this will appear by default.
- So we have our VPC with a public subnet, a private subnet, and then we've created another private subnet with an autoscaling group of EC2 instances that are security monitoring appliances.
- Now, if you want to go distributed you can have two VPCs, and in each VPC you'll have a different monitoring appliance.
- You can also go into a different kind of setup where you have one monitoring appliance in one VPC and then by establishing VPC peering, you can have instance D and instance E directly mirror traffic into the monitorin...
- So that instance is in my VPC, but first we need to make sure from the Lambda function that we launch a virtual monitoring appliance to receive that mirror traffic.
- But the idea is that you want to have a centralized VPC where you'll have all your security appliances and monitoring.

##### Polished Architect Notes
- Transcript signals that just to help you for the exam and to make you understand what kind of logging is available in AWS.
- Transcript signals that web Application Firewall Logs, so if you enable WAF, then you get full logging of all the request analyzed by the service, which is really really nice.
- Transcript signals that if you're more interested into, basically, logging and security in AWS, there's a whitepaper you can read, which is quite interesting.
- Transcript signals that this is enough for you to understand basically the scope of all this logging that exists in AWS, how we can analyze it, how we should store it, and how we should have cost saying and compliance on top of it.
- Transcript signals that now let's talk about query logging for Route 53.
- Transcript signals that the first one is DNS query logging, which is going to give you information about public DNS queries that the Route 53 Resolver receives.
- Transcript signals that the other kind of query logging you have is the Resolver query logging which is going to log all DNS queries made within your VPC.
- Transcript signals that this is going to be automatically logged through the Resolver query logging, and then these logs can be sent to three destinations.
- Transcript signals that these configurations of query logging can be shared with other accounts using AWS Resource Access Manager, which is called AWS RAM.
- Transcript signals that what does the Resolver query logging look like?
- Transcript signals that what kind of architectures can we build with the Resolver query logging?
- Transcript signals that let's take the example of monitoring account activity and see how different services relate to that simple task.

##### Architect Synthesis (Transcript-Derived)
- Treat Operational Monitoring Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Audit Logging as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Network Telemetry as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Log Analytics as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Event-Driven Automation as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: just to help you for the exam and to make you understand what kind of logging is available in AWS.
- Design implication: web Application Firewall Logs, so if you enable WAF, then you get full logging of all the request analyzed by the service, which is really really nice.
- Design implication: if you're more interested into, basically, logging and security in AWS, there's a whitepaper you can read, which is quite interesting.
#### Module 3: Why This Domain Matters in Security
- Detection quality depends on telemetry completeness and retention strategy.
- Incident reconstruction quality depends on queryability and timestamp correlation.
- Compliance and audit readiness depend on integrity, retention windows, and traceability.


##### Source Transcript Details
- Module focus: Why This Domain Matters in Security
- Primary transcript files:
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/016_[SOA] Logging in AWS for Security and Compliance.txt
- outputs/aws-solutions-architect-professional/04_Security/017_CloudTrail - SA Pro.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/048_Route 53 - Query Logging.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/030_[SAA] CloudTrail.txt
- outputs/aws-solutions-architect-professional/04_Security/015_CloudTrail.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/042_[SAA_SOA] VPC Flow Logs.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/037_Monitoring Account Activity.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/034_[SOA] CloudTrail for SysOps.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/031_[CCP_SAA_DVA_SOA] CloudTrail Hands On.txt
- Top concept clusters from transcript metadata:
- Operational Monitoring Context
- Audit Logging
- Event-Driven Automation
- Operational Monitoring
- Log Analytics
- Network Telemetry
- Retention and Forensics
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 34
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1453
- Key insights inside selected files: 605
- Unique concept tags in selected files: 7

##### Transcript-Enriched Learning Notes
- So just to help you for the exam and to make you understand what kind of logging is available in AWS.
- It could be security logs or audit logs.
- So service logs will include CloudTrial and here we can trace all the API calls and we've done this as a hands on so we know how that works.
- Config rules, where we can track the config and the compliance over time and we've seen this as well in the past section.
- Web Application Firewall Logs, so if you enable WAF, then you get full logging of all the request analyzed by the service, which is really really nice.
- They will say we have this log, how can we analyze it?
- So just remember that a lot of services, and we've seen them in this course, do provide logs, they are able to put these logs into S3, and then we've seen how to analyze these log into S3 using Athena, so this is the...
- Now also, you should know that if you do put all these audit and security logs and compliance logs and you put them in S3, it is great to encrypt these logs and then for the bucket where you put all these logs, you ca...
- If you're more interested into, basically, logging and security in AWS, there's a whitepaper you can read, which is quite interesting.
- But this is enough for you to understand basically the scope of all this logging that exists in AWS, how we can analyze it, how we should store it, and how we should have cost saying and compliance on top of it.
- Okay, that's it for this theory lecture, I will see you in the next one.
- And so this encryption can be enabled.
- So this gives you a bunch of different options you can have for this architecture.
- So this could be very powerful.
- So this is getting interesting, right?
- Because from CloudTrail, in combining this with S3 and all these notifications, we can have a bunch of use case being opened up.
- So this is hopefully opening some stuff for you and helping you understand the kind of architectures we can be looking at going into the exam.
- And we have a security account that we want to send the logs to.

##### Polished Architect Notes
- Transcript signals that just to help you for the exam and to make you understand what kind of logging is available in AWS.
- Transcript signals that it could be security logs or audit logs.
- Transcript signals that service logs will include CloudTrial and here we can trace all the API calls and we've done this as a hands on so we know how that works.
- Transcript signals that config rules, where we can track the config and the compliance over time and we've seen this as well in the past section.
- Transcript signals that web Application Firewall Logs, so if you enable WAF, then you get full logging of all the request analyzed by the service, which is really really nice.
- Transcript signals that they will say we have this log, how can we analyze it?
- Transcript signals that just remember that a lot of services, and we've seen them in this course, do provide logs, they are able to put these logs into S3, and then we've seen how to analyze these log into S3 using Athena, so this is the...
- Transcript signals that also, you should know that if you do put all these audit and security logs and compliance logs and you put them in S3, it is great to encrypt these logs and then for the bucket where you put all these logs, you ca...
- Transcript signals that if you're more interested into, basically, logging and security in AWS, there's a whitepaper you can read, which is quite interesting.
- Transcript signals that this is enough for you to understand basically the scope of all this logging that exists in AWS, how we can analyze it, how we should store it, and how we should have cost saying and compliance on top of it.
- Transcript signals that that's it for this theory lecture, I will see you in the next one.
- Transcript signals that so this encryption can be enabled.

##### Architect Synthesis (Transcript-Derived)
- Treat Operational Monitoring Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Audit Logging as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Event-Driven Automation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Monitoring as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Log Analytics as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: just to help you for the exam and to make you understand what kind of logging is available in AWS.
- Design implication: it could be security logs or audit logs.
- Design implication: service logs will include CloudTrial and here we can trace all the API calls and we've done this as a hands on so we know how that works.
### Phase 2 - Core Services

#### CloudTrail as Audit Backbone
- CloudTrail captures API/control-plane activity used for accountability, threat detection, and forensic replay.
- Security use: identify unauthorized actions, policy tampering, and suspicious principal behavior.
- Integration patterns in transcripts: CloudTrail -> CloudWatch metrics/alarms, CloudTrail -> Athena queries, CloudTrail -> EventBridge triggers.

#### CloudWatch as Operational Observability Plane
- CloudWatch metrics, logs, alarms, and contributor insights provide near real-time monitoring signals.
- Unified CloudWatch Agent extends telemetry collection from instances and OS context.
- Security use: detect anomalies, threshold breaches, and service health deviations tied to potential incidents.

#### EventBridge as Security Event Bus
- EventBridge routes normalized events/findings from producers to automation targets.
- Typical security routing: EventBridge -> Lambda remediation, EventBridge -> SNS notification, EventBridge -> workflow orchestration.

#### Athena and OpenSearch for Investigation Analytics
- Athena enables SQL-style investigation over S3 log data.
- OpenSearch enables indexed exploration, filtering, and dashboard-driven incident hunting.
- Decision rule: use Athena for ad hoc and cost-controlled query workflows; use OpenSearch for low-latency exploration and repeated analysis views.

### Phase 3 - Advanced Patterns

#### Pattern 1: Centralized Logging Account Architecture
- Multi-account telemetry is aggregated into a security logging account.
- Standardized schemas and partitioning improve query performance and incident speed.
- Governance benefit: one audit source of truth with controlled retention policies.

#### Pattern 2: Detection-to-Response Pipeline
- Canonical path: telemetry ingestion -> detection logic -> EventBridge routing -> action targets.
- Action targets include notifications, enrichment, isolation steps, and ticketing/ops workflows.
- Production principle: idempotent automations with deterministic rollback paths.

#### Pattern 3: Correlation Across Signals
- Combine CloudTrail API actions with flow and DNS behavior to improve confidence.
- Use timeline correlation to reduce false positives and accelerate triage.
- Add context features (account, resource, principal, region, workload role) for operational prioritization.

### Phase 4 - System Design (Production)

#### Reference Security Observability Architecture
- Distributed producers: workloads, control plane, network and DNS logs.
- Collection and storage: centralized durable log lake with retention tiers.
- Processing and analytics: CloudWatch and EventBridge for near real-time, Athena/OpenSearch for deep investigation.
- Response: automated and human-in-the-loop remediations with audit closure evidence.

#### Scaling Considerations
- Log volume growth from account expansion and telemetry depth.
- Alert fatigue and noisy rules if thresholds are not contextualized.
- Query cost and latency trade-offs in hot vs cold storage design.
- Cross-region telemetry consistency and timestamp normalization challenges.

#### Cost Considerations
- Ingestion, storage, and retention are the dominant long-term costs.
- Query economics vary by engine and workload pattern.
- Automation execution cost is usually small compared to poor detection quality cost.

### Cross-Cloud Concept Mapping (Logging and Monitoring)

#### Underlying Concept: Audit Trail Backbone
- AWS: CloudTrail
- Azure: Activity Log plus Entra and resource logs
- GCP: Cloud Audit Logs
- Trade-off: field models differ; normalize early for cross-cloud correlation.

#### Underlying Concept: Metrics and Log Monitoring
- AWS: CloudWatch
- Azure: Azure Monitor plus Log Analytics
- GCP: Cloud Monitoring plus Cloud Logging
- Trade-off: alert semantics and query languages differ; maintain detection intent abstraction.

#### Underlying Concept: Event Routing for Security Automation
- AWS: EventBridge
- Azure: Event Grid with Functions/Logic Apps
- GCP: Eventarc with Pub/Sub and Functions
- Trade-off: native trigger ecosystems differ; design provider-specific adapters around a shared response model.

#### Underlying Concept: Security Log Analytics
- AWS: Athena and OpenSearch
- Azure: Data Explorer, Log Analytics, Sentinel analytics
- GCP: BigQuery and Chronicle-centric models
- Trade-off: choose based on query latency needs, analyst workflow, and retention/query economics.

### Real-World Use Cases from Transcript Signals
- Detect unauthorized API behavior and suspicious operational changes.
- Trigger severity-based incident notifications and automated response paths.
- Investigate account activity through SQL and indexed search workflows.
- Build compliance evidence trails from centralized, queryable telemetry.

### Constraints and Exam-Relevant Traps Captured
- Some detections are only possible if prerequisite telemetry is enabled and retained.
- Cross-account and cross-region setup quality directly impacts security visibility.
- Logging without actionable routing creates observability without response capability.
## Step 1 — Line-by-Line Extraction

Every non-empty line from every source transcript is preserved below with extraction fields.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/016_[SOA] Logging in AWS for Security and Compliance.txt

Line 1:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So just to help you for the exam and to make you understand what kind of logging is available in AWS.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 2:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Here's a short lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 3:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So basically, if you want to have compliance requirements, there's many services that AWS provides logs for.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 4:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: It could be security logs or audit logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 5:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So service logs will include CloudTrial and here we can trace all the API calls and we've done this as a hands on so we know how that works.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 6:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Config rules, where we can track the config and the compliance over time and we've seen this as well in the past section.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 7:
- Concepts: Retention and Forensics
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: CloudWatch logs if you want to have full data retention, so for example, want to log application logs or whatever, we can do it there.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 8:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: VPC Flow logs which is to review the IP traffic within your VPC.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 9:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Now we haven't seen VPC for logs in detail just yet but we'll do it a future section and we'll see how they work.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 10:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: There will be ELB Access logs for your load balancers and they will give you the metadata of request made to your load balancer and we've had the chance to look at it.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 11:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: CloudFront Logs which is to look at the logs coming straight from CloudFront your web distribution against some metadata of access and it's going to give you the access logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 12:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Web Application Firewall Logs, so if you enable WAF, then you get full logging of all the request analyzed by the service, which is really really nice.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 13:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: And the cool things is that all these logs, you can put them in S3 and then you can analyze them using AWS Athena.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 14:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And so that is a very common exam question.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 15:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: They will say we have this log, how can we analyze it?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 16:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: How can we quickly know or explore what happen to our ELB even though maybe your EC2 instance were terminated and we lost logs on their machines.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 17:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: Where we can use Athena plus ELB Access Logs plus S3, and that's the combination.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 18:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: So just remember that a lot of services, and we've seen them in this course, do provide logs, they are able to put these logs into S3, and then we've seen how to analyze these log into S3 using Athena, so this is the idea.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 19:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: If you google Athena analyze CloudFront Logs, you'll get the query right away.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 20:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Same for ELB, same for CloudTrail, etc.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 21:
- Concepts: Audit Logging
- Services: Amazon S3
- Key Insights: Now also, you should know that if you do put all these audit and security logs and compliance logs and you put them in S3, it is great to encrypt these logs and then for the bucket where you put all these logs, you can control the access using IAM and bucket policies, and even multi-factor authentication.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 22:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Finally, if you need to retain these logs for a very long time, remember you need to move these logs to Glacier for cost saving, or if you need all Glacier vault log then as we've seen, then we get compliance and saying no one can touch these logs for maybe seven years, or whatever.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 23:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: If you're more interested into, basically, logging and security in AWS, there's a whitepaper you can read, which is quite interesting.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 24:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: But this is enough for you to understand basically the scope of all this logging that exists in AWS, how we can analyze it, how we should store it, and how we should have cost saying and compliance on top of it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 25:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay, that's it for this theory lecture, I will see you in the next one.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt

Line 1:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So let's talk about a way for us to collect metrics and logs from within our EC2 instances.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 2:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, Unified CloudWatch Agent
- Key Insights: And this is the Unified CloudWatch Agent.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 3:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So this is for virtual servers, it could be for your EC2 instances or your on-premise servers, and you're going to connect additional system-level metrics, such as the RAM, processes, used disk space, et cetera, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 4:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: And you can also send the logs to CloudWatch logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 5:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, Amazon EC2, CloudWatch Logs
- Key Insights: Because by default, if you launch an EC2 instance, there will be no files, no logs, that will be sent from your EC2 instance to CloudWatch Logs without using an agent, and that agent could be the CloudWatch Unified Agents.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 6:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: So the idea is that, if you wanted to get the memory metric from within your EC2 instances, the only way you could do it is using the CloudWatch Unified Agent.
- Hidden/Implicit Meaning: Constraint or limitation signal; Telemetry, audit, and observability signal.

Line 7:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Then, if you wanted to configure your agent, you can configure it by using the SSM Parameter Store and storing the configuration in a central place.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 8:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Or you can specify a configuration file, alternatively.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 9:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, Amazon EC2, Unified CloudWatch Agent
- Key Insights: So you have your EC2 instance with a Unified CloudWatch Agent and you want to send metrics and logs to CloudWatch.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 10:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: For this, you would just configure the agents and make sure you have the right permissions.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 11:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: This is also true if you wanted to use a server from within your own corporate data center.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 12:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, Unified CloudWatch Agent
- Key Insights: So on-premises, you would still install the Unified CloudWatch Agent, you would specify IAM permissions and then it would be able to push the logs and push the metrics.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 13:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So they're important because you are interacting with possibly the SSM Parameter Store, as well as the CloudWatch Logs and CloudWatch metrics services.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 14:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: They need to be able to have the correct IAM permissions attached to your IAM role on your EC2 instance, or attached to your access keys that are deployed on your on-premises servers.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, Unified CloudWatch Agent
- Key Insights: Finally, any metrics that is being pushed by the Unified CloudWatch Agent, is starting with the prefix CWAgent, so this is going to be in this namespace.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 16:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You can configure and changes this, but at least this is the default one.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 17:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: So, something you need to know that comes up in the exam is that there is a procstat Plugin, sorry, on the CloudWatch Agent.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 18:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And that means that with this procstat Plugin, you're going to collect metrics and monitor system utilization of individual processes running on your Linux or Windows servers.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 19:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: For example, you would get some information around how much time a CPU will be using, a process will be using the CPU, or how much memory a process will be using, or the process that are running directly on your EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 20:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So you can select which processes to monitor by PID file.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 21:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So you can get the PID, so the process ID number, or you can get the name that you have of the process or the pattern.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 22:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: If you want it to filter again, the processes to monitor and all the metrics related to your statistics of your processes on your Linux or windows servers, we'll be starting with a procstat prefix, so procstat_time, procstat_cpu_usage, and so on.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 23:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: So again, what we need to remember out of this is that if you wanted to get some information around the processes running and their associated metrics, the only way to do it would be to use the Unified CloudWatch Agents deployed on your institute's instances and configured to use that plugin.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Telemetry, audit, and observability signal.

Line 24:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So, that's it for this lecture, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt

Line 1:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: Okay, so in this lecture we're going to install the CloudWatch unified agent to collect metrics and log for Amazon EC2 instances.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 2:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So to do so, very simple we're first going to have to create an IAM role.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 3:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: And this role will allow us to send metrics and logs to CloudWatch.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 4:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So to do so let's go into roles, let's create a role and this is going to be a role for AWS service which is an EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 5:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So we need to create an EC2 instance role and then we click on next.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So EC2, just select EC2 here.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 7:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Next, we need to find permission policies to apply to this role.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So for this I'm going to type CloudWatchAgent and we have two we have the Server Policy and the Admin Policy.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 9:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: The one we're going to use right now is the CloudWatchAgentServerPolicy.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 10:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And the reason we do so is that we want to be able to put metric data into CloudWatch also to send logs and finally to get parameters from SSM because it is possible for us to retrieve a CloudWatch unified agent configuration directly from SSM as we will see in this lecture.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 11:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So this is enough.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 12:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Let's click on next.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 13:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: And then the role name should be, for example Amazon EC2 role for CloudWatch.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 14:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 15:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Let's create this role.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 16:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And we're done.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 17:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So next what I have to do is to create an EC2 instance that will be leveraging this role.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 18:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So to do so let's go into the management console into the EC2 console.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 19:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: And then I'm going to create an EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 20:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So I'll go into launch instance and we'll configure it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 21:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we're going to use Amazon Linux 2 AMI and then I will use t2.micro.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 22:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: We don't need to select a key pair if we don't want to, which is fine.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: We'll use EC2 instance connect to connect to our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 24:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Then we need to create a new security group and we'll allow SSH and HTTP traffic the third one, from the internet because we'll be launching a web server and we'll get the log from that server.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 25:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So we allow SSH to SSH to our instance and HTTP to allow port 80 traffic on to our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 26:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: This is good.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 27:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And then we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 28:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Let's launch this instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 29:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 30:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let's click on it and we're gonna find the instance right now.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 31:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let me wait for it to be ready.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 32:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 33:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So our EC2 instance is now created.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 34:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: Let's connect to it using the EC2 instance user connect interface.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 35:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we establish a connection directly into the instance and now I'm able to issue a few commands.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 36:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So the first one I'm going to do is to elevate my privileges.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 37:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So I will do sudo su and now I am a super user on my instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 38:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And I will do yum install HTTPD.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 39:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: This will install a web server and that web server I say yes.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 40:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: That web server is going to have traffic coming from the internet.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 41:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: And we'll take the log out of HTTP to connect to our instance to send that to CloudWatch logs So the HTTPD service is installed.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 42:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And now we're just going to echo "hello world" into var/www/html/index.html.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 43:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So now we have an index HTML file created.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 44:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And we need to just start our HTTPD server.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 45:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So for this, we'll do sudo systemctl start httpd This will effectively start our HTTPD service.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 46:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And if wanted to allow also it to survive through restarts we will enable it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 47:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So now back into here, this is the public IP of my EC2 instance, which is great.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 48:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And so if I visit it now I get the prompt hello world.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 49:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So that means that we are indeed able to access our EC2 instance using this Apache web server.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 50:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And now what I want to show you is that out of this, this created some log entries.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 51:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So if we go into the file so I'll do cat /var/log/httpd and then we have access underscore log.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 52:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: This contains the request log of all the request made into our server.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 53:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: As you can see, we can find the fact that yes we did do a get right now.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 54:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So also, should there be any errors we can do /error_log and we'll get a list of all the errors that are happening for our HTTPD server.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 55:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So these two logs, the error log as well as the access log are the logs that I want to send into CloudWatch logs using the CloudWatch unify agents.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 56:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So to do so, we can follow documentation but this is quite complicated.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 57:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So it's to collect metrics and logs for Amazon EC2 instances and I've summarized all the instructions in the code.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 58:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: So the first thing we have to do is to install the agents on Amazon Linux 2 and for this we can just run this command a sudo yum install of the Amazon CloudWatch agent.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 59:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So, I say, yes and it's going to be installed.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 60:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: The next thing we have to do is to run a wizard.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 61:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: And this is to configure the CloudWatch agent.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 62:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: This is something we have to do once and then we'll store the configuration in the SSM parameter restore.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 63:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And it will be retrieved at run time if we need to.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 64:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let's go ahead and clear this and we're going to run the wizard.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 65:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So now it says on which OS are you planning to use the agent wave?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 66:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So Linux.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 67:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: Then is this EC2 or On-Premises?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 68:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: This is EC2.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 69:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: We're going to run this as the route user.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 70:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And do you want to turn on StatsD daemon?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 71:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Why not?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 72:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Yes.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 73:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So I press one every time.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 74:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: What port do you want this daemon to listen to?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 75:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we'll just keep the default choice.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 76:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Then what is the correct interval?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 77:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: We'll just keep it as default as well.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 78:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: So that means that the CloudWatch unified agent can also collect stuff from StatsD.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 79:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Then we have, do we want to have aggregations?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 80:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Yes.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 81:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: We'll aggregate them at 60 seconds interval which is the default.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 82:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Do you want to collect metrics from CollectD?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 83:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And it must be installed or the agent will fail to start.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 84:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So it turns out that I don't have CollectD on this instance, but it is possible for us to enable this if we wanted to but because if we don't have it installed the agent will fail to start.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 85:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: We're just going to reply no to this answer.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 86:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So I will enter two.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 87:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Do you want to monitor any host metrics such as CPU, memory etcetera?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 88:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Yes.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 89:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: And as you can see, using the CloudWatch unified agent I am able to have access to memories.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 90:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: So Ram is a metric you can access from within the EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 91:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: We can also collect CPU metrics at the core level.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 92:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: Again, something this is only possible by doing metric collection from within the EC2 instance.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 93:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: Do you want to add EC2 dimensions?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 94:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Absolutely.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 95:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Yes.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 96:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And do you want to aggregate them?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 97:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Why not?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 98:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Then we have the high resolution metrics.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 99:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So in case we have that we have the ability to customize which resolution will go on them.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 100:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So one second, ten seconds, 30 seconds or 60 seconds.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 101:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Now to keep cost under control I will keep it as 60 seconds.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 102:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: As you can see we can have a resolution down to one second.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 103:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Now, which default metrics config do you want?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 104:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Do you want basic, standard, advanced or none?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 105:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we'll keep the default as basic.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 106:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And here now I have an entire JSON document of the configuration we just did.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 107:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: Which summarizes all the answers we have selected for the configuration of this CloudWatch unified agent.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 108:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So this is good enough.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 109:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You can have a look.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 110:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Are we satisfied with the config?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 111:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: The answer is yes.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 112:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: Now, do we have any existing CloudWatch log agents from configuration file for migration?
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 113:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: The answer is no.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 114:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So there used to be before the unified agent there used to be an old thing called the Amazon CloudWatch log agents.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 115:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And if you had that we could import it but we don't have this right now.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 116:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we'll say no.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 117:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And as you can see now the unified agents does both metrics and log at the same time.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 118:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Now, do you want to monitor any log files?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 119:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: We'll say yes.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 120:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And now we need to enter the log file path.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 121:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So for this is going to be var/log/httpd/access_log which is the first log file I showed you.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 122:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And the group name is going to be access_log for it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 123:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And the log screen name is going to be perfect as well.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 124:
- Concepts: Retention and Forensics
- Services: (none explicit)
- Key Insights: And the log retention in days we could do minus one, for infinity or we could say, for example, five for seven day retention.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 125:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And do you want to additionally specify other log files?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 126:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: The answer is yes.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 127:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I want to.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 128:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we enter the path again.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 129:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So var/log/httpd/error_log.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 130:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Default group name we will keep.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 131:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Default stream we keep.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 132:
- Concepts: Retention and Forensics
- Services: (none explicit)
- Key Insights: And then again, we'll have a seven day retention so I'll just enter number five.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 133:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 134:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Do you want to specify any more logs we've done?
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 135:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So just no.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 136:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And now we have another config right here.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 137:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So now this contains some configuration for the logs, for our instance.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 138:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So this is good enough and I'm good to go.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 139:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So do you want to store this config now in the SSM parameter store?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 140:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: We will answer yes.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 141:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: But it will not work until we have the correct permissions.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 142:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So currently this config file has been located and stored at this address right here, which is great for us but we want to send this into the SSM parameter store so that it can be retrieved by other EC2 instances at run time.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 143:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So to do so, we need to store the config.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 144:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: We need to store the config, this one in the SSM parameter store And to do so we need the right permissions.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 145:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: But if we go into the role we created the Amazon EC2 role for CloudWatch which by the way we did not attach to the instance.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 146:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Now that I just remembered it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 147:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let's go back here.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 148:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: And of course, we'll do security and then modify IAM role and we'll need to attach this Amazon EC2 role for CloudWatch that I just created.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 149:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So you see, comes full circle.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 150:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So this is perfect.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 151:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Even this role, if we look at the permission itself and we look at SSM it's allowed to get a parameter but not to send a parameter.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 152:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: So on one instance, we need to add the permissions to attach a policy and I will just type CloudWatch agent again and this time we'll attach the admin policy which has sufficient permission to put the parameter into SSM.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 153:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: And this is only needed when you do the setup of the CloudWatch unified agents.
- Hidden/Implicit Meaning: Constraint or limitation signal; Telemetry, audit, and observability signal.

Line 154:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we'll attach this policy.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 155:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Now we have two policies.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 156:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: And now my EC2 instance should be able to perform this next action.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 157:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So I will say, yes.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 158:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Do you want to store it into the SSM parameter store?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 159:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So, yes.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 160:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And then what parameter name do you want to use?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 161:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we can just use the default choice.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 162:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: Amazon Linux, Amazon CloudWatch, minus Linux, press enter.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 163:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And then which region do you want to store it in?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 164:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So EUS one, which was retrieved directly from the EC2 metadata by this wizard.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 165:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Perfect.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 166:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Now which credential should be used?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 167:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So the one from the SDK.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 168:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I press enter.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 169:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: And then it says successfully put config to parameter store as Amazon CloudWatch Linux and the program exits now.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 170:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So that means that if we go into Amazon Web Services and then we go into the SSM parameter store.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 171:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let's go into systems manager.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 172:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And then find the parameter store.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 173:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: As we can see now I have one standard parameter called the Amazon CloudWatch Linux.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 174:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And if I click on it and I look at the value, as you can see the value is this entire JSON file that was generated by this wizard.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 175:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So it's amazing.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 176:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So now the wizard is running and then this has been inserted into the SSM parameter store.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 177:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And now we want to boot up from this parameter.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 178:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So back onto our instance, let's clear this screen.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 179:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let's assume this is a whole new instance, okay?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 180:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: And what we want to do is to just boot up from this configuration from the SSM parameter store and start sending metrics and logs into CloudWatch.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 181:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So to do so let's go back into our code.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 182:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And for this, we have a few options.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 183:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So this one can be deleted because we don't use the CollectD.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 184:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we have options here.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 185:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we can either start directly from the SSM parameter store.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 186:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And this is this command right here.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 187:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: So the Amazon CloudWatch agent CTL to fetch a config from SSM at this address right here.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 188:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And it's going to fetch the config we have inserted right here.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 189:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So this should work.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 190:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: The other option is to instead provide a flat file.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 191:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So config the JSON file that has been generated using the wizard, for example and then the agent can start the quiz from this static configuration file.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 192:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: But if you plan to use multiple instances start from the same file then it may be a good idea to store it into SSM.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 193:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So I will use the command that boots up from SSM.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 194:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I will paste it, press enter.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 195:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And as you can see, it says that the configuration version is succeeded and then it should be good to go.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 196:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let's have a look and see if anything works.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 197:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: So let's go into the CloudWatch agents.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 198:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: So let's go into the CloudWatch service.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 199:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: So CloudWatch.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 200:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Perfect.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 201:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: Let's make sure to use the same region my EC2 instance is in, which is EU-west-1.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 202:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And then I will go into log groups and underneath we find access log and error log which are the two logs created by my unified agents.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 203:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So under access log, I can find one log stream which represents my EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 204:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And as you can see we have the two events we saw from before.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 205:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Now the cool thing is that if I refresh this page right here one or two or three times at some point the events are going to end up in this log.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 206:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So as you can see now the events have been written by the CloudWatch log agents unified agents into this log right here, which is amazing.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 207:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And again, if you went into the error log you will find the log stream right here that contains the error log stream, if we need to.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 208:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So this is perfect.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 209:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Now what about metrics?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 210:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: So if we go into all metrics, we can find a name space custom name space called CloudWatch agents, CW agents.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 211:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: And then we can go, for example, by instance ID and here find the memory used percent which represents how much ram is being used by my EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 212:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Or the disc used percent and so on.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 213:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And you can explore the different metrics.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 214:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Here we have the mem used percent again, but by image ID and with other dimensions and so on.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 215:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And here we have six metrics available to us that are right here.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 216:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And it's possible for you to explore the documentation.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 217:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: And here you can find at some point you can find all the metrics that are collected by the CloudWatch agents they're right here and the explanations are self explicit.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 218:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: But you can, just to summarize collect some CPU metrics, which are very handy.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 219:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You can collect as well, some disc space and IO and so on for your disc.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 220:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You can also get information around your mem so active, available, cached, free and so on.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 221:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: This is very helpful.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 222:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: Some network information.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 223:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So a number of packets in and out and so on.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 224:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: And then information about your processes running on your EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 225:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So how many are idle, how many you're running et cetera, et cetera, which is very, very helpful.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 226:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And finally, the swap that you have on your machine free, used and so on.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 227:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: So that's it, we've successfully configured the CloudWatch AI unified agent.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 228:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: We stored the configuration in SSM and retrieved it and we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 229:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 230:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So just to be done, if you are in the DevOps course you need to keep this instance running.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 231:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: But if you are in the CSOPs course then you can terminate this instance and you'll be good to go.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 232:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 233:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 234:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/019_CloudWatch Unified Agent - Troubleshooting.txt

Line 1:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, Unified CloudWatch Agent
- Key Insights: So you need to be able to troubleshoot issues with the Unified CloudWatch Agent.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 2:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So, in case the agents fails to start, it may be an issue with the configuration file, in which case, you should go into this file logs at this place on your EC2 instance, which is going to give you some configuration validation, and information.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 3:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: If you cannot find the metrics collected by the CloudWatch Agent, of course, check whether or not you are in the correct namespace.
- Hidden/Implicit Meaning: Constraint or limitation signal; Telemetry, audit, and observability signal.

Line 4:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: The default for the CloudWatch Agent is CWAgent.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 5:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And then you check the configuration of the Agent itself, it's a JSON document, and this is the kind of configuration it has.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 6:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: So you can check the region, you can check the debug mode, and you can check as well the run as user, because if these things go wrong, then the CloudWatch Agent may not work.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 7:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: On top of it, if the CloudWatch Agent is not publishing log events, then look at the CloudWatch Agent version, test connectivity from the Agent into the Logs endpoint of AWS.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 8:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So that includes checking your Security Group rules, and your network ACLs.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 9:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Please review your account, region, and log group configuration.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 10:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Check your IAM permissions, of course, because you may need to have a Custom Policy if you're missing it, or you can just use Managed Policies as well if you want to use a shortcut.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 11:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And verify that the system time on the instance is correctly configured, and in sync.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 12:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: Again, there's a debug file for the CloudWatch Agent Logs that you can find on your EC2 instance to give you more information.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 13:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Alright, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 14:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/020_[SAA_DVA_SOA] CloudWatch Logs.txt

Line 1:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So, now let's talk about CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 2:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So CloudWatch Logs is the perfect place to store your application logs in AWS.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 3:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And to do so, you must first define log groups.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: They're whatever names you want, but usually they are representing one of your applications.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 5:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Then within a log group, you will have multiple log streams, and they represent log instances within an application or specific log files or specific containers that you have as part of a cluster.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 6:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Then you define your log expiration policy.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 7:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So you can have the logs re being retained indefinitely to never expire, or you can choose to expire them from anywhere between one day to 10 years.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 8:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: It's also possible to send your CloudWatch Logs into various destinations.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 9:
- Concepts: Event-Driven Automation, Log Analytics
- Services: AWS Lambda, Amazon OpenSearch, Amazon S3
- Key Insights: For example, to export them in batch into Amazon S3 or to stream them into Kinesis Data Streams, Kinesis Data Firehose, AWS Lambda, Amazon OpenSearch.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 10:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: All the logs are encrypted by default, and you can set up your own KMS-based encryption with your own keys if you wanted to.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 11:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So, now what kind of logs data goes into CloudWatch Logs?
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 12:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: Now, what types of logs can go into CloudWatch Logs?
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 13:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: Well, we can send the logs using the SDK or the CloudWatch Logs Agent or the CloudWatch Unified Agent.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 14:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: Now, the CloudWatch Unified Agents send logs to CloudWatch and so the CloudWatch Log Agent is now sort of deprecated.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 15:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: You have Elastic Beanstalk, which is used to collect logs from the application directly into CloudWatch.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 16:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: ECS will send the logs directly from the containers into CloudWatch.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 17:
- Concepts: Event-Driven Automation
- Services: AWS Lambda
- Key Insights: Lambda will send logs from the functions themselves.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 18:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: VPC Flow Logs will send logs specific to your VPC metadata network traffic.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 19:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: API Gateway will send all the requests made to the API Gateway into CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 20:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: CloudTrail, you can send the logs directly based on the filter.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 21:
- Concepts: Operational Monitoring Context
- Services: Route 53 Query Logging
- Key Insights: And Route53 will log all the DNS queries made to its service.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 22:
- Concepts: Log Analytics
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So, what if you wanted to query the logs in CloudWatch Logs?
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 23:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: For this, you can use CloudWatch Logs Insights.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 24:
- Concepts: Log Analytics
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So, it's a querying capability within CloudWatch Logs which allows you to write your query.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 25:
- Concepts: Log Analytics
- Services: (none explicit)
- Key Insights: You specify the timeframe you want to apply your query to and then automatically you're going to get a result as a visualization.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 26:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And also, you can view the specific log lines that's made this visualization.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 27:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: This visualization can also be exported either as a result or added to a dashboard for being able to rerun it whenever you want.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 28:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So this is very handy, and this will allow you to search and analyze log data within CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 29:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So there are lots of simple queries provided as part of the console for CloudWatch Logs Insights.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 30:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: For example, you can find the most 25 most recent events, or you can have a look at how many events had exceptions or errors in your logs, or you can look for a specific IP and so on.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 31:
- Concepts: Log Analytics
- Services: (none explicit)
- Key Insights: So, it provides a purpose-built query language.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 32:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: All the fields to allow you to build your queries are automatically detected from CloudWatch Logs, and then you can filter based on conditions.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 33:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You can calculate aggregate statistics, you can sort events, limit the number of events, and so on.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 34:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: So as I said, you can save the queries and also add them to CloudWatch Dashboards.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 35:
- Concepts: Log Analytics
- Services: (none explicit)
- Key Insights: And you have the capability to query multiple log groups at a time, even if they are in different accounts.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 36:
- Concepts: Log Analytics
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So remember, CloudWatch Logs Insights is a query engine, not a real-time engine.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 37:
- Concepts: Log Analytics, Retention and Forensics
- Services: (none explicit)
- Key Insights: And so as such, it will only query historical data when you run the query.
- Hidden/Implicit Meaning: Constraint or limitation signal; Telemetry, audit, and observability signal.

Line 38:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So as mentioned, CloudWatch Logs can be exported into several destinations.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 39:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: The first one is Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 40:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: So this is for a batch export to send all your logs into Amazon S3, and this export can take up to 12 hours to be completed.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 41:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: The API call to initiate this export is called CreateExportTask.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 42:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So because this is a batch export, this is not real-time or near real-time.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 43:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: Instead, you must use the CloudWatch Logs subscription.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 44:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So these allow you to get a real-time stream of these log events, and you can do processing and analysis.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 45:
- Concepts: Event-Driven Automation
- Services: AWS Lambda
- Key Insights: So, you can send this data into multiple places such as Kinesis Data Streams, Kinesis Data Firehose, or Lambda.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 46:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And you can specify a subscription filter to say which kind of log events you want to be delivered to your destination.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 47:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So, the subscription filter can send data into Kinesis Data Streams.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 48:
- Concepts: Event-Driven Automation
- Services: AWS Lambda, Amazon EC2
- Key Insights: This would be a great choice if you wanted to use, for example, the integration with Kinesis Data Firehose, Kinesis Data Analytics, or Amazon EC2, or Lambda.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 49:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You can also directly send it into Kinesis Data Firehose.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 50:
- Concepts: Event-Driven Automation, Log Analytics
- Services: AWS Lambda, Amazon OpenSearch, Amazon S3
- Key Insights: From there, you can send it in near real-time fashion into Amazon S3, or for example, the OpenSearch Service, or you have Lambda.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 51:
- Concepts: Event-Driven Automation, Log Analytics
- Services: AWS Lambda, Amazon OpenSearch
- Key Insights: So you can write your own custom Lambda function, or you can use a managed Lambda function that is sending data in real-time into the OpenSearch Service.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 52:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: On top of it, thanks to these subscription filters, it is possible for you to aggregate data from different CloudWatch Logs into different accounts and different regions into a common destination such as the Kinesis Data Stream in one specific accounts.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 53:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And then Kinesis Data Firehose.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 54:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: And then in near real-time into Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 55:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So that is very possible, and that is a way for you to perform log aggregation.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 56:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So the nitty gritty of how this works is that you must use what's called destinations.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 57:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So, let's say you have a sender account and the recipient accounts.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 58:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So you create a CloudWatch Log subscription filter, and then this gets sent into a subscription destination, which is a virtual representant of the Kinesis Data Stream in the recipient accounts.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 59:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Then you attach a destination access policy to allow the first account to actually send data into this destination.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 60:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Then you create an IAM role in the recipient account, which has the permission to send records into your Kinesis Data Stream, and you make sure that this role can be assumed by the first account.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 61:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: And when you have all these things in place, then it is possible for you to send data from CloudWatch Logs in one account into a destination in another account.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 62:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 63:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt

Line 1:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: Okay, So I am in CloudWatch logs and we can see all the log groups we have right now.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 2:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So as you can see, we have eight of them and they were created by some services.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 3:
- Concepts: Event-Driven Automation
- Services: AWS Lambda
- Key Insights: For example, this one was created by Lambda.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 4:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: This one was created by datasync.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 5:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: This one was created by glue and this one was created by us when we did do an SSM runCommand and we wanted the output to be populated in this log group.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 6:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So, if we take a look at this example, for example, we have six log streams and so each of them represents a different instance that we did run a specific run command on.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 7:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So, this is the same runcommond ID across the six.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 8:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Here, we have a different instance ID for each of the six, so two and two and then we have, stdout and stderr.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 9:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So if you look at stdout, we can look at all the logs that was generated by this command and we can have a look at all the log lines and so on.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 10:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So this is quite (indistinct).
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 11:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And the idea is that, from the log for example, you can look through the keyword http and it would show you all the log lines that contain the word htp.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 12:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: If you just look for the word installing, for example, it will show you just maybe two or three log lines that contain the word installing.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 13:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So that's certainly (indistinct).
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 14:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And so we have, for stdout, stderr, so we can see really the idea behind different log streams.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 15:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Now, we can create metric filters in here, and these metric filters is a way for us to find a filter pattern.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 16:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: For example, installing.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 17:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay, And then we need to select for example, a custom data, for example, this log stream and then we test a pattern and it's going to give us three matches out of five in the simple logs.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 18:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Now, if you went ahead with entering this filter name, as we can see, it could call it DemoFilter and DemometricFilter.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 19:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And this is a new namespace, okay.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 20:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And here is DemoMetric.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 21:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So this is DemoMetric filter namespace, and this is a DemometricFilter.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 22:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And then, the metric value, okay.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 23:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: When there is a filter pattern or matching occur and so, you can say one for example, to add one and to count how many times this installing lines have been filmed.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 24:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And the default value and the unit if you want it to, then click on next, create and this will give you a new metrics so, if you went into CloudWatch metric right here and we're going to clear this graph and we're going to find a new metrics.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 25:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let's refresh this page.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 26:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Maybe this is going to help us.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 27:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Okay, so if we go to all new spaces, as soon as this metric filter would appear, it would appear right here and we could visualize it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 28:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: But currently, because we don't send any log output, then we don't see it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 29:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: But the idea is that, we could create an alarm on top of this metric filter So we can click on create alarm. and this would allow us to create an alarm in case, for example, a metric went over a specific value and again, this metric is calculated based on the filter from the log streams.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 30:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: We could also create subscription filters.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 31:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So as you can see here, we can create a filter for different outcomes.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 32:
- Concepts: Event-Driven Automation
- Services: AWS Lambda
- Key Insights: So Elasticsearch, Kinesis, datastreams, Kinesis Firehose or a Lambda subscription filter if you want to send data into custom lambda functions.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 33:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And, we can create up to two subscription filters per log group according to this, okay.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 34:
- Concepts: Retention and Forensics
- Services: (none explicit)
- Key Insights: Now, we can also edit the retention settings.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 35:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So, we can see that the logs can never expire all the way up to 120 months.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 36:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay, so 10 years.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 37:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: And then, we can also export the data into Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 38:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: So you can click on export data You can choose a range of data to export and then, the stream prefix, if you wanted to just get specific log streams, and then the S3 buckets and the bucket prefix, and you'd be good to go.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 39:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And the finally, in here, you can create a log group (indistinct) demo-log-group.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 40:
- Concepts: Retention and Forensics
- Services: (none explicit)
- Key Insights: Okay, you can set up the retention settings.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 41:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: KMS key, if you wanted to encrypt that log group and then click on create.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 42:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And so, the encryption setting would appear then here, if a KMS key ID was specified.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 43:
- Concepts: Log Analytics
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: Okay and then finally, CloudWatch Logs Insights, is allowing you to use a nice query language to query some specific log groups.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 44:
- Concepts: Log Analytics
- Services: (none explicit)
- Key Insights: So for example, we can create this one and run the query.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 45:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And then, this is not going to give us any data because we're looking for data from the past hour.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 46:
- Concepts: Log Analytics
- Services: (none explicit)
- Key Insights: But if we look at data from the past 60 days and run this query, maybe we'll find something.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 47:
- Concepts: Log Analytics
- Services: (none explicit)
- Key Insights: So you can see, we found 18 records from this query.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 48:
- Concepts: Log Analytics
- Services: (none explicit)
- Key Insights: And so, this gives us a nice query language to start gaining some insights on top of our logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 49:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And on top of it, you can export the results if you want it to.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 50:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And on the right hand side, you can see that you can save your queries.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 51:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 52:
- Concepts: Log Analytics
- Services: (none explicit)
- Key Insights: So you can query and save them here.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 53:
- Concepts: Event-Driven Automation, Network Telemetry
- Services: AWS Lambda, Amazon VPC Flow Logs
- Key Insights: Or, you can look at some simple queries and view the use cases of losing log insights for example, view the latency statistics for a five minute interval on Lambda, or get the top 10 by transfers by source and destination IP addresses for VPC flow logs.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 54:
- Concepts: Log Analytics
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So it gives you, for example, if you should click on these, some nice insights to how the query language works for CloudWatch logs insights.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 55:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So this is CloudWatch logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 56:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/022_[SAA_DVA_SOA] CloudWatch Alarms.txt

Line 1:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Alarms
- Key Insights: Now let's discuss CloudWatch Alarms.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 2:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So alarms, as we know, they're used to trigger notifications from any metric.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 3:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And you can define complex alarms and on various options such as sampling or doing percentage or maximum, and so on.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 4:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Alarm has three states, OK, it means that it's not triggered, INSUFFICIENT_DATA means that there's not enough data for the alarm to determine a state and ALARM, which is that your threshold has been breached and therefore a notification will be sent.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 5:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: The period is how long you want the alarm to evaluate for on the metric.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 6:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And so it could be very, very short, very, very long.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 7:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And it can apply also to high resolution customer metrics.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 8:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: For example, 10 seconds, 30 seconds, or multiple of 60 seconds.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 9:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Now, alarms have three main targets.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 10:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: The first one is actions on EC2 instances such as stopping it, terminating it, rebooting it, or recovering any instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 11:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: The second one is to trigger an auto-scaling action.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 12:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: For example, a scale out or a scale in.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 13:
- Concepts: Event-Driven Automation, Operational Monitoring
- Services: AWS Lambda, Amazon SNS
- Key Insights: And the last one is to send a notification to the SNS service, for example, and from the SNS service, we can hook it to a Lambda function and have the Lambda function do pretty much anything we want based on an alarm being breached.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 14:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, CloudWatch Alarms
- Key Insights: So now let's talk about Composite Alarms, because we know that CloudWatch Alarms are on a single metric, but then if you wanted to have multiple metrics, you would need to use Composite Alarms.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 15:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So because composite alarms are actually monitoring the states of multiple other alarms, and these alarms can be each relying on one different metric.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 16:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So the Composite Alarm is the action of combining all these other alarms together, and you can use AND or OR conditions to be able to be very flexible in terms of the condition you're checking for.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 17:
- Concepts: Network Telemetry, Operational Monitoring
- Services: (none explicit)
- Key Insights: So it's very helpful to reduce alarm noise because you can create complex Composite Alarms and saying, for example, if the CPU is high and the network is high, then don't alert me because I only wanna know when the CPU is high and the network is a low, these kind of things.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: So let's take an example, we have an EC2 instance, and we're going to create a composite alarm on top of it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 19:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: So therefore we create a first underlying alarm called the Alarm A, which is going to monitor the CPU of the EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 20:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: Then you create Alarm B, which is going to monitor the IOPS of the EC2 instance, and then the composite alarm is defined as the junction of Alarm A and Alarm B.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 21:
- Concepts: Operational Monitoring
- Services: Amazon SNS
- Key Insights: And therefore, if Alarm A is in alarm and Alarm B is in alarm, and this is something we have to define ourselves, then the Composite Alarm itself will be an alarm and can trigger, for example, an SNS notification.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 22:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So as you can see, you can get quite creative with the Composite Alarms.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 23:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So let's talk about EC2 instance recovery.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 24:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So we have the status checks and we have the instance status check, which is going to check the EC2 virtual machine.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 25:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: And we have the system status check, which is going to check the underlying layer hardware of our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 26:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And finally, the attached EBS status check, which is going to check any attached EBS volumes health.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 27:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, CloudWatch Alarms
- Key Insights: And you can define a CloudWatch Alarm on these checks, okay?
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 28:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: So you'll monitor a specific EC2 instance, and in case the alarm is being breach, then you can start an EC2 instance recovery to make sure, for example, that you move your EC2 instance from one host to another.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 29:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: When you do a recovery, you get the same private, public, and elastic IP, the same metadata and the same placement group for your instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 30:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2, Amazon SNS
- Key Insights: And you can also send an alert to your SNS topic to get alerted that the EC2 instance was being recovered.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 31:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Now, the cloud alarm has some good stuff.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 32:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: To know that, first of all is that as we've seen, we can create an alarm on top of a CloudWatch logs metric filter.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 33:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, CloudWatch Alarms, CloudWatch Logs
- Key Insights: So remember, the CloudWatch logs are having a metric filter, which is hooked to CloudWatch Alarm.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 34:
- Concepts: Operational Monitoring Context
- Services: Amazon SNS
- Key Insights: And then when we receive too many instances of a specific word, for example, the word error, then do an alert and send a message into Amazon SNS.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 35:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And so if you wanted to test alarm and notifications, you can use a CLI call called set alarm states.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 36:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And this is helpful when you want to trigger an alarm, even though it didn't reach a specific threshold because you wanted to see whether or not the alarm being triggered results in the correct action for your infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 37:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So that's it for alarms, I hope you liked it, and I will see you in the next lecture for some practice.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/023_[SAA_DVA_SOA] CloudWatch Alarms Hands On.txt

Line 1:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, CloudWatch Alarms
- Key Insights: Okay, so we are in CloudWatch Alarms, so let's go and create an alarm.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 2:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: So first of all, I'm going to create an EC2 instance very quickly, and we're going to create an alarm on top of the CPU utilization.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 3:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So we're going ahead and create an EC2 instance of t2 micro.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 4:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I will go quickly to preview and launch and then say, yes, I have this.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 5:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we don't need to keep it or anything like this, we just want the instance to be launched.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And the idea is that we want to create an alarm that will terminate the instance, if the CPU goes to 100%, so let's create this alarm.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 7:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So we need to select a metric.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And so for this, we need to choose a metric.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 9:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So we need to go and find our EC2 instance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So this is our instance ID, right here, and search for it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 11:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And I'm maybe a little bit too quick, okay.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 12:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let's wait for the instance to be launched.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 13:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: I will go into EC2 per instance metric, and then I will wait for it to be populating.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 14:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So it took about five minutes for some metrics to appear in that cloud dashboard for my instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 15:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So now I can probably refresh this page and I will get the chance to find the metrics I'm looking for.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 16:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So let me select a metric and then paste the instance in perfect, I have it, and I will go and find the CPU utilization of my instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 17:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So this is this metric right here.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 18:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Okay, well, select this metric.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 19:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: As you can see, we have the eight here and then we can choose a way to compute this metric, so average, sum, maximum, and so on.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 20:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: The period we want to evaluate this alarm on.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 21:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So five minutes is good because this metric gets populated every five minutes, if we don't enable detailed monitoring.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 22:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Now we get some conditions in terms of the threshold.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 23:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So is it Static or is it an Anomaly detection?
- Hidden/Implicit Meaning: Incident investigation and triage signal.

Line 24:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Is it a greater than, equal than, and so on.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 25:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So I will say for example, if you're a greater than 95% for a long time, so for, and here you can say, three out of three.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 26:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So that means that for 15 minutes, you're stuck at 95%, then probably something is up with this machine.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 27:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And so in that case, I could choose a notification.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 28:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I could choose a Auto Scaling action.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 29:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: I could choose an EC2 action, or in a systems manager action, but I'm going to choose an EC2 action.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 30:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Okay, and it will say, hey, if you are in alarm, okay, then just terminate this instance because maybe I know that my application sometimes has a huge failure and the CPU installation will be at a 95% or a 100% for a very long time, And the only way to resolve this is to just terminate the instance.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 31:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So I will choose this, and then click on next, and say terminate, EC2 on high CPU.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 32:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Click on next to verify everything, and we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 33:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So now this alarm obviously does have insufficient data, so we need to wait 15 minutes for it to be okay, and it's not going to be triggered unless we make it so.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 34:
- Concepts: Audit Logging, Operational Monitoring
- Services: Amazon EC2
- Key Insights: So, we could go into the EC2 instance and launch a way to get the CPU very high for 15 minutes, but this would be a very, very long, or we can use the API call name, Set alarm state, to really see what would happen if this alarm went into the breach phase.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 35:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 36:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: This is the history of the alarm, okay.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 37:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And what I'm going to do is that I'm going to set the alarm to say, so I type AWS CloudWatch, set alarm states, and we'll look at the API reference.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 38:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And so we need to do set alarm state the alarm name and the state value and the state reason.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 39:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we'll do, in here.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 40:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So AWS CloudWatch set alarm states, and then we need to set multiple parameters.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 41:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So the alarm name is going to be this one, then the alarm, so the states value is going to be alarm.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 42:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And the state reason, is going to be testing.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 43:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: We press enter, and now this alarm, if we refer to this page is now in the alarm state, as you can see, it says in alarm.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 44:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And so the action is, when in alarm terminate the instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 45:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: And so if you look at the history, it says that the alarm updated from OK, to in alarm and then an action was made and it's, successfully executed the action to terminate my EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 46:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: So if I go into my EC2 instances here, and I refresh, as we can see is shutting down and is being terminated because while there was an alarm that was triggered on top of this EC2 instance, and we did set up the alarm to do this specific action.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 47:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So that's it, I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 48:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I hope this makes sense to you.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 49:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/024_CloudWatch Contributor Insights.txt

Line 1:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Contributor Insights
- Key Insights: So just a short lecture on this feature in CloudWatch called Contributor Insights.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 2:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So this allows you to analyze log data, and then you create time series that will display contributor data.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 3:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And what is contributor data?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 4:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: Well, this is the use case to find the top talkers, for example, on your network and to understand who is what and what is impacting system performance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 5:
- Concepts: Network Telemetry
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So for example, if you have network data and logs on CloudWatch Logs, then this allows you to find the bad host, to identify the heaviest network users, or to find the URLs that generate the most errors.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 6:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So this is about ranking and doing some computation.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 7:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: This works for any AWS-generated logs, so it could be your VPC flow logs, your DNS logs, and whatever.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 8:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And you can use the built-in rules created by AWS or you can build your own rules.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 9:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let me give you a concrete example for you to understand this feature.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 10:
- Concepts: Network Telemetry
- Services: Amazon CloudWatch, Amazon EC2, Amazon VPC Flow Logs, CloudWatch Contributor Insights, CloudWatch Logs
- Key Insights: So let's say we have our VPC flow logs, then we are going to export them and stream them into CloudWatch logs, and then we're going to use the CloudWatch Contributor Insights to figure out the top 10 IP addresses on my network, because that may indicate that some EC2 instances are not behaving correctly or that we're being under attack.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 11:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So hopefully, you understand the value of this feature.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 12:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/025_[SAA_DVA_SOA] Amazon EventBridge.txt

Line 1:
- Concepts: Event-Driven Automation
- Services: Amazon CloudWatch, Amazon EventBridge
- Key Insights: So now let's talk about Amazon EventBridge, and Amazon EventBridge used to be formally known as CloudWatch Events so you will see EventBridge in the exam, but just so you know, if you come from old AWS experience, then it used to be named the CloudWatch Events.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 2:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: So with EventBridge, you can do a lot of things.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 3:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: For example, we can schedule cron jobs in the Cloud, so we can schedule scripts.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 4:
- Concepts: Event-Driven Automation
- Services: AWS Lambda
- Key Insights: For example, we say, "Hey, every hour please trigger a Lambda function," and that Lambda function will run a script.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 5:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: So the events are generated every hour, hence the name Amazon EventBridge, but not just a schedule like every hour, it can also react to an event pattern.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 6:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: So there are event rules that can react to a service doing something.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 7:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: For example, you can react to the event of IAM root user sign in in the console.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 8:
- Concepts: Operational Monitoring Context
- Services: Amazon SNS
- Key Insights: So when that happens, maybe you want to send a message into an SNS topic and receive an email notification, so that if anyone is using the root account, then you will receive an email, which may be a good security feature for your accounts.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 9:
- Concepts: Event-Driven Automation
- Services: AWS Lambda, Amazon SNS
- Key Insights: Also, for example, you have different destinations, you can trigger Lambda functions, send SNS and SQS messages, and so on, I will show you this all in a second.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 10:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: So EventBridge sits in the middle and we have all the sources that can send events into Amazon EventBridge.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 11:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So for example, EC2 instances when they start, when they're stop, when they're terminated, and so on.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 12:
- Concepts: Audit Logging, Event-Driven Automation
- Services: AWS CloudTrail, Amazon EventBridge, Amazon S3
- Key Insights: Code Build, for example, if you have a build that fails or S3, whenever there's an event, for example, when an object is uploaded, or Trusted Advisor when you have a new finding of security in your accounts or as a good combo, you can combine EventBridge and CloudTrail and actually intercept any API call made within your AWS accounts, which is huge.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven automation signal; Telemetry, audit, and observability signal.

Line 13:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Also, as I said, you can have a schedule or a cron, so you can say every four hours or every Monday at 8:00 am, the first Monday of the month, this is something you can do as well.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 14:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: Then these events get sent into Amazon EventBridge and you can set up a filter.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 15:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: For example, you say, "Hey, I only want these events for a specific bucket," for Amazon is free, for example.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 16:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: Then EventBridge is going to generate adjacent document that represents the details about your events.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 17:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So which instance, for example, gets started, whether its ID, and so on.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 18:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: A lot of information, the time, the IP, and so on.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 19:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: So once this is done, then this JSON document, this event, can be sent into so many kind of different destinations, allowing you to do really awesome integrations.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 20:
- Concepts: Event-Driven Automation
- Services: AWS Lambda, Amazon EC2, Amazon SNS
- Key Insights: For example, you can schedule and trigger a Lambda function, you can schedule a batch in AWS Batch, you can launch an ECS task for Amazon ECS, you can send a message to SQS, to SNS, or even to a Kinesis Data Stream, you can, for example, start a Step Function, you can start a CI/CD Pipeline with CodePipeline or a build with CodeBuild so you don't actually know all these things, of course, these are different AWS services, but I'm just giving you an overview what you can do and you can also, for example, start an SSM automation or a specific EC2 action, such as starting or stopping or restarting an EC2 instance.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 21:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So you can see the possibilities are endless and it really depends on what is your use case.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 22:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: So Amazon EventBridge is what we call the default event bus, which is what we just saw, which represents services from AWS that send their events into the default event bus, but Amazon EventBridge has more capability.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 23:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: There is something called the partner event bus and this is AWS that has integrated with partners, most likely they are going to be software as a service partners and they are going to send their events directly into your partner event bus.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 24:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So if you're using, for example, Zendesk, Datadog, Auth0, or others, you need to check the partner list.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 25:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: Then there's a chance that they can send their events directly into a specified partner event bus and so you can react to changes happening outside of AWS directly in your accounts.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 26:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: Okay, and finally, there is a custom event bus so you can create your own event buses and then your own applications can send their own events into a custom event bus and therefore, you have the same capability of sending these events to different destinations thanks to the EventBridge rules.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 27:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: Also, you can access event buses, cross accounts, using resource based policies as we'll see very soon.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 28:
- Concepts: Event-Driven Automation, Retention and Forensics
- Services: (none explicit)
- Key Insights: You can also archive events so all of them or just a subset event to a filter and by archiving the events, you can set it to be either indefinite retention or a set period for retention, okay?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 29:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: What you can do with these is that you can replay these archived events.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 30:
- Concepts: Event-Driven Automation
- Services: AWS Lambda
- Key Insights: For example, say there is a bug in your Lambda function and you want to fix it, so you fixed it and then you want to retest the event, replay it, then you can replay these archived events, which is super handy for debugging, super handy for troubleshooting, and for fixing production as well.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 31:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: Now, EventBridge receives a lot of events from different places and so therefore, you need to understand what the events are going to look like and remember, these events are in this adjacent format we just saw.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven automation signal.

Line 32:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: So therefore, there is a Schema Registry and the capability is that EventBridge is going to analyze the events in your bus and then it's going to infer the schema and the schema out of the Schema Registry is going to allow you to generate code for your application that will know in advance how the data is structured in the event bus.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 33:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: For example, this is an example here for a specific CodePipeline in action.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 34:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: There's a schema and you can download the code directly using the Orange button and this will know directly how to infer the schema and structure the data out of your event bus.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 35:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Also, the schemas can be versioned so you can over time iterates between the schemas of your application, of course.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 36:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: Now, we have resource based policies for EventBridge, what does that mean?
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 37:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: That means that you can manage permissions for a specific event bus.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 38:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: For example, you can say that a specific event bus can be allowed or denied other events from other regions or accounts and the use case for it, for example, would be to have a central events bus within your AWS organization, so a set of accounts and then all these events are going to be aggregated, so how does that work?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 39:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: Well, we have a central event bus with a specific account and we're going to add a specific resource based policy, allowing other accounts to send events to it and therefore, this other account, for example, will be able to do a put events and send events directly into the central event bus.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 40:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: So that's it, we've seen EventBridge left to right, you know everything about it.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 41:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: So remember, you can react to events happening within your accounts, thanks to the default event bus, but also partner events and also your own events with custom buses, you have the Schema Registry capability, and then you have resource based policies, which allow you to have a cross accounts, for example, capability for event buses.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 42:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay, that's it, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt

Line 1:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: So let's have a look at Amazon EventBridge.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 2:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So you have several options.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 3:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: You can create a rule with an event pattern.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 4:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: We're gonna do this right now.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 5:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Then you can have a schedule rule, which is the old way of doing schedule.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 6:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: So there is now something called EventBridge schedule.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 7:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: We're also going to have a look at it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 8:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: Pipe is to send data from an event source to target with optional filtering and enrichment.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 9:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And schema registry is to look at the schemas of all these events.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 10:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: So just to get started, we're going to do the first option, EventBridge rule with event pattern.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 11:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: So we need to create a rule, and what we want to do is to react to any event where an instance is going to be terminated or shut down.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So you click here on Service Events, and here you have a list at all the events that can happen within your accounts by service.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 13:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So it's a lot.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 14:
- Concepts: Event-Driven Automation
- Services: AWS Lambda
- Key Insights: For example, if you take any of these, for example, if you take Lambda, you can have a look at all these things.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 15:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: Console actions or EC2, you can have a look at all these things.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 16:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So it's a lot more type of things you can choose from for events.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 17:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So the one we're going to look at is one of the most popular.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 18:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: It's called EC2 instance State-change Notification.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 19:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So that means that anytime an EC2 instance state will change, we're going to get a notification.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 20:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: So if we look at it at this event, we can have a look at the schema of the event and then a sample event.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 21:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Like what it can look like.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 22:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: So the schema defines how the sample event will look like.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 23:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: And now we want to be able to filter this event and on the state value.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 24:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So the state is a string and we have to exit the value.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 25:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we can say Equal, for example, and we are going to have several values.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 26:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So the first one is shutting down and the second one is going to be terminated.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 27:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: How do I know this?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 28:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Well, it's from the schema itself.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 29:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: If you have a look at the event pattern on the bottom line, on the bottom page, sorry, you can have a look at Sample events 1, 2, 3.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 30:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And if you look at number 5, it says "state": "shutting-down".
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 31:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And number 6, it says "state": "terminated".
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 32:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So these are the events we want to be catching.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 33:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: So now our event pattern filter is defined right here on the right-hand side.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 34:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So now we have all the events.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 35:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And now for the target, again, we have several options.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 36:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we can have a look at all the options right here, such as API gateway, batch jobs.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 37:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: We can also reboot an EC2 instance, terminate one.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 38:
- Concepts: Operational Monitoring Context
- Services: Amazon SNS
- Key Insights: We have SNS topic, SQS queues, I mean so many.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 39:
- Concepts: Operational Monitoring Context
- Services: Amazon SNS
- Key Insights: But what we want to do right now is to receive an alert, so we choose SNS Topic and then we want it to be our demo topic.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 40:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So create it if you don't have a topic.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 41:
- Concepts: Operational Monitoring Context
- Services: Amazon SNS
- Key Insights: You can just create an SNS topic very easily.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 42:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Then we'll need to have an exception role to be able to send a message into this topic.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 43:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So a role is going to be automatically created for us. and then we get some more information around the retry policy and the dead-letter queue.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 44:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 45:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Let's click on Create.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 46:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I'll call this one NotifyEC2InstanceShutdownOrTerminated, and we'll click on Create.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 47:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: And so now that this role has been created, anytime we shut down or terminate an EC2 instance, we will receive a notification.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 48:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: The other option is to use Schedule.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 49:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So on the left-hand side you have schedules, and then you can create a schedule.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 50:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And this one is going called InvokeLambdaEveryHour.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 51:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And several options.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 52:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Either it's a one-time schedule, so we do something once and then done, or recurring.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 53:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And we have either a Cron-based schedule or a rate schedule.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 54:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: We'll use 1 hour and no flexible time window.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 55:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And Next.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 56:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And here we have the option to invoke several things.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 57:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So what do we wanna do every hour?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 58:
- Concepts: Event-Driven Automation
- Services: AWS Lambda
- Key Insights: Well, we have all these options such as, for example, running a task on Amazon ECS or putting a records in Kinesis Data Firehose or invoking a Lambda function.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 59:
- Concepts: Event-Driven Automation
- Services: AWS Lambda
- Key Insights: So you can say, for example, in the Invoke Lambda function, and if you have a Lambda function, you can select it from here.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 60:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So you get the idea.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 61:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: Once you've done this, you have a schedule in Amazon EventBridge.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 62:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: Other things that you need to be looking at is event buses.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 63:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: So right now we have the default event bus.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 64:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And the default events bus is anything that will be AWS-generated type of events.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 65:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: But you can create your own event bus, and this is going to be a custom event bus.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 66:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: And here you have the ability yourself to send your own events into this event bus and so therefore you can develop custom applications that are based on Amazon EventBridge, which can be very helpful.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 67:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You have the option to archive your events.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 68:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: When they happen on the event bus, then you have an archive you can look into.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 69:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: And you can also replay events if you wanted to replay a past event from an archive.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 70:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: Okay, other things need you look at is partner event sources.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 71:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So it's possible for you to actually get data from third-party partners directly into your AWS accounts.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 72:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: So if you use, for example, Auth0, then the events of Auth0 will be put and inserted into Amazon EventBridge.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 73:
- Concepts: Event-Driven Automation
- Services: AWS Lambda
- Key Insights: And then you can, for example, use a Lambda function or do something after someone has done the login in of zero.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 74:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: But you can see you have so many different kinds of partners right here.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 75:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And API destinations.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 76:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: That means that, for example, if you wanted to have an event within EventBridge, but then to connect to an external HTP destination, you can also define one here.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 77:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: And this allows you to connect EventBridge to an outside source, for example, to have integration with your own infrastructure.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 78:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So it's quite a lot of different things.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 79:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And finally, for schemas, this is all the schemas of all the AWS events that you have.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 80:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Or you can have your own custom registry for your own events.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 81:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: But this allows you to understand the shape and form the events will have in Amazon EventBridge.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 82:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And that's it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 83:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 84:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You can go here in the rules and also disable them if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 85:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: But I hope you liked this lecture and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/027_[SAA_DVA_SOA] Amazon Athena.txt

Line 1:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: So now, let's talk about Amazon Athena.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 2:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: So Athena is a serverless query service to help you analyze the data stored in Amazon S3 buckets.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 3:
- Concepts: Log Analytics
- Services: (none explicit)
- Key Insights: And to analyze this data, you're going to use the standard SQL language to query the files.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 4:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: Behind the scenes, Athena is built on the Presto engine, which uses the SQL language.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 5:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: So the idea is that users are going to load data into your S3 bucket, or you are going to load data into your S3 bucket, and then you would use the Athena service to query and analyze this data in Amazon S3 without moving it.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 6:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: So Athena is serverless, and it analyzes directly your data living in your S3 bucket.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 7:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So it supports different formats, such as CSV, JSON, ORC, Avro, and Parquet, and possibly others.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 8:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And the pricing is very simple.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 9:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You're just going to pay a fixed amount per terabytes of data scanned.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 10:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You don't need to provision any database again, because the whole service is serverless.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 11:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: So Athena is commonly used with another tool, called Amazon QuickSight to create reports and dashboards.
- Hidden/Implicit Meaning: Constraint or limitation signal; Telemetry, audit, and observability signal.

Line 12:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: So we'll see Quicksight later in depth, but Amazon Quicksight connects to Athena, which connects to your S3 buckets.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 13:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: Now, the use cases for Amazon Athena are to do ad hoc queries, business intelligence, analytics, reporting, and to analyze and query any kind of logs that originates from your AWS services.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 14:
- Concepts: Audit Logging, Network Telemetry
- Services: AWS CloudTrail, Amazon VPC Flow Logs
- Key Insights: So it could be your VPC flow logs, your load balancer logs, your CloudTrail trails, and so on.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 15:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: So as an exam tip, anytime you need to analyze data in Amazon S3 using a serverless SQL engine, you can think about Athena.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 16:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: Now, I've talked about performance improvements, and you can actually improve Athena performance, and in this exam, we'll test you on this as well.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 17:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So first of all, because you pay for the amount of data scanned per terabyte, you need to use a type of data where you're going to scan less data.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And for this, you can use a columnar data type for cost-savings, because you only scan the columns you need.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: So therefore, the recommended formats for Amazon Athena, are going to be Apache Parquet and ORC, and it's going to give you a huge performance improvement.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 20:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And to get your files into the Apache Parquet or ORC format, you must use a service that we'll see as well in this section, for example, Glue.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Glue can be very helpful to convert your data as an ETL job, between, for example, CSV and Parquet.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 22:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Now, also because we want to scan less data, we need to compress data for smaller retrievals.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So there are different compression mechanisms you can use that have listed it right here.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 24:
- Concepts: Log Analytics
- Services: Amazon S3
- Key Insights: Next, if you know you're going to query all the time on some specific columns, you can partition your datasets, and partition datasets means that in your S3 bucket, you're going to have the full path with slashes, and each slash will be a different column name with a specific value.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 25:
- Concepts: Log Analytics
- Services: Amazon S3
- Key Insights: And so you're organizing, you're partitioning your data in Amazon S3, so that when you query it, you can know exactly in which folder at which path Amazon S3, you need to scan for data.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 26:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So here's an example of data partitions.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 27:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we have flight data in Parquet formats, and then we do /year=1991.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 28:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we partition by year, and we'll have one folder for each year.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 29:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Then within each year we'll have month, so month equals one, and within each month we'll have days, this equals one.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 30:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: And so when I do a query on Athena, and I filter for a specific year, a specific month, and a specific day, then we'll know exactly to which folder in Amazon S3 to get the data from, and therefore we'll only recover a subset of the data.
- Hidden/Implicit Meaning: Constraint or limitation signal; Telemetry, audit, and observability signal.

Line 31:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Therefore, we'll have really, really good partitioning.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 32:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Finally, the last performance improvement you need to do, is to use bigger files, it's to minimize your overheads.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 33:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: So if you have many, many, many small files in Amazon S3, Athena is not going to be as performance, as if you had larger files, for example, 128 megabytes, and over, because larger files are easier to scan, and easier to retrieve.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 34:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: Another feature of Amazon Athena is the Federated Query.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 35:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: So you know that Athena can query data in S3, but actually you can query data anywhere, for example, in relational or non-relational databases, you can query objects and custom data sources, would it be on AWS or on-premises.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 36:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: How?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 37:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Well, you use what's called a Data Source Connector.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 38:
- Concepts: Event-Driven Automation
- Services: AWS Lambda
- Key Insights: It's a Lambda function, and that Lambda function is going to run the Federated Queries in other services.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 39:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So that could be, for example, CloudWatch Logs, DynamoDB, RDS, and so on.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 40:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So it's very powerful.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 41:
- Concepts: Event-Driven Automation, Log Analytics
- Services: AWS Lambda, Amazon Athena
- Key Insights: For example, we have Athena here, and we have a Lambda function, and you'll have one Lambda function per Data Source Connector.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 42:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: And then through Amazon Athena, you can run the query across ElastiCache, Document DB, DynamoDB, Redshift, Aurora, SQL Server, MySQL, HBase on the EMR service, or any on-premises database.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 43:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: They're clear from Athena, as well as, of course, Amazon S3, and you can do your drawings, and you can do your competitions, and so on.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 44:
- Concepts: Log Analytics
- Services: (none explicit)
- Key Insights: That's why it's called a Federated Query.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 45:
- Concepts: Log Analytics
- Services: Amazon S3
- Key Insights: And then the results of this query can be stored into your Amazon S3 buckets for later analysis.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 46:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: So that's it for Amazon Athena.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 47:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: As you can see, it's a very powerful service.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 48:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt

Line 1:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: So let's use the Athena service to query data from an S3 buckets.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 2:
- Concepts: Log Analytics
- Services: Amazon S3
- Key Insights: So I'm going to launch the query editor, and here we have access to our UI, and before we run our first query, we need to set up a query result location in Amazon S3.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 3:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let's edit the setting.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 4:
- Concepts: Log Analytics
- Services: Amazon S3
- Key Insights: In here you must enter an S3 bucket where you're going to put your query results.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 5:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: So I'm going to go into the S3 console and I'm going to create a bucket.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 6:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: So I'll call this one, AWS Athena Stephane, I am in EU Central One, V two.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 7:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Alright, so this should be a unique bucket name.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I'm going to just create this bucket.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 9:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: Okay, so my bucket is now created, click on view details and I'm going to just copy this right here and paste it here, so S3.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 10:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: And you can make sure that you can browse S3?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 11:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Yes.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 12:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: And we can also type, for example, Athena here.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 13:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And we'll take this one.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 14:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Same method, same result, but this is a bit safer to not make any typo.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 15:
- Concepts: Log Analytics
- Services: (none explicit)
- Key Insights: Alright, so I'm going to save this and this is where my query results are going to be saved.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 16:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Now in our editor, we're going to first run our queries and we're going to run our queries on the specific bucket, which is our access log.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 17:
- Concepts: Log Analytics
- Services: Amazon S3
- Key Insights: So I'm going to have my S3 access logs that I have bucket here and I want to query all my objects in this bucket, so as you can see, they're here.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 18:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So what I need to do is that I need to go into my code editor right here and then we first create a database.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: So we here under S3 advanced Athena S3 Access Log that's SQL.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 20:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: We have created a database S3 access logs DB.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 21:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So this is going to create a database here.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 22:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: And so, as you can see, on the left hand side now, I have the default database and now I have my S3 access logs DB.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 23:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: So this is the one I want to select and we have created it from within Athena.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 24:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: Next we run a query and this is a query to create a table in Athena to represent our access logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 25:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And so here it is.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 26:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And so I'm going to first remove the first line.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 27:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: Okay, so this query, I got it from the Amazon S3 and Athena documentation, which gives you this entire query.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 28:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And the only thing you have to modify is to actually change the location.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 29:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we need to have the target bucket name and the prefix in there.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 30:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So actually if you go in here and you go to properties, we have the bucket name right here.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 31:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So I'm just going to paste this in, like this.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 32:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And for the prefix, we actually don't need anything right now because it seems that in my bucket, all my objects are at the top level.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 33:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: But if you had a folder, you need to add the prefix as well by adding a slash and then the name of the prefix.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 34:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: But for now I'm good.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 35:
- Concepts: Log Analytics
- Services: (none explicit)
- Key Insights: So I'm going to run this query and we need to have a trailing slash at the end.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 36:
- Concepts: Log Analytics
- Services: (none explicit)
- Key Insights: So let's add a trailing slash and run this query again.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 37:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay, so my table has now been created and you can see on the left hand side that we do have access to our table as well as all the fields we have created.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 38:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So what I can do now is click on these three dots and then just click on preview table.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 39:
- Concepts: Log Analytics
- Services: (none explicit)
- Key Insights: And this is going to query 10 rows from my data.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 40:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And so if I scroll down, you can see here that I have 10 results and we can see the bucket owner, the bucket, the request date time, the IP, the requester, request ID, and so on.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 41:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: So this is very handy because while we get a lot of information directly coming from our data in Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 42:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Admittedly it is way easier to use this than to look within all these files individually.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 43:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: So Athena makes it super easy for us.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 44:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: But so we can do more advanced queries.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 45:
- Concepts: Log Analytics
- Services: (none explicit)
- Key Insights: For example, I'm going to just create a new query sheet right here.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 46:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You can do some aggregations.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 47:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So here we're going to count all the requests by HTP status and by request URI operation.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 48:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So this is this kind of analytics and statistics you may want to run on your table.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 49:
- Concepts: Log Analytics
- Services: (none explicit)
- Key Insights: So we're going to run this query and it takes a bit more time because it looks at all your data.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 50:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And so it scans about 30 megabytes of data and as we can see, we see that we get 404 to B142, head 200 to B101.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 51:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: We have empty about 300,000 empty rows or 200,000 empty rows and so on.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 52:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we get just the results of what we're interested into.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 53:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So if we're looking at, for example, not found errors, we say, hey, we're not supposed to have any, not found errors, but we see 142, maybe there's a problem.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 54:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: This is the kind of analysis you would do by running these queries.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 55:
- Concepts: Log Analytics
- Services: (none explicit)
- Key Insights: You can also have a look at unauthorized query for two.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 56:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: For example, to see if someone is trying to get unauthorized access to to your bucket.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 57:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So I'm running this one because 403 is the unauthorized thing, and I'm looking at all these rows and look like, okay, indeed, a lot of these rows represent unauthorized access and I can look into them and see if that was made on purpose or what that means.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 58:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So hopefully, that is all very interesting to you.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 59:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: The idea here is that I just used the Athena service to query my data in Amazon S3, very easily, without setting up any kind of server.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 60:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: It's all done serverless.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 61:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And all we had to do is to create our database first and then create our table within a database.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 62:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: And we were good to go to use SQL language to query our data directly from within Athena.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 63:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So it's one of the easiest and greatest service of AWS.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 64:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/029_Amazon Athena - Troubleshooting.txt

Line 1:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: So let's talk about troubleshooting especially when QuickSight is trying to use Athena but there are insufficient permissions.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 2:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So what could be happening?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 3:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: Number one is that QuickSight must be able to access your S3 buckets that are used by Athena.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 4:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: So please make sure that QuickSight has the GetObject permission onto your S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 5:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: The second thing is that if the data in the S3 bucket is encrypted using a KMS key, so using the SSE-KMS type of encryption, then you make sure the QuickSight IAM role must be granted access to decrypt with the key, to do a kms:Decrypt.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And we'll see how to create a grant when we go into the last section, the last domain, to talk about KMS, we talk about KMS grants in details.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 7:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: But you need to do a grant on what's called the IAM role of QuickSight to grant the role access to the underlying KMS key of the S3 buckets.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And so there are two kinds of roles that QuickSight can be using.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 9:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: It doesn't really matter, you don't need to know them, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: But there is a service role and there is a consumer's role.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 11:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And whatever role QuickSight is using should be the one you grant access to the KMS key.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: And after granting access then these roles can do a kms:Decrypt and you will have solved your insufficient permissions problem between QuickSight and Athena.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 13:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 14:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 15:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/030_[SAA] CloudTrail.txt

Line 1:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Now let's talk about CloudTrail.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 2:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So CloudTrail is a way to get governance compliance and audit for your AWS Accounts.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 3:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And CloudTrail is enabled by default.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 4:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: This will allow you to get a history of all the events and API Calls made within your AWS Accounts, by the console by the SDK, the CLI other services on AWS and all these logs will be appearing in CloudTrail.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 5:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon CloudWatch, Amazon S3, CloudWatch Logs
- Key Insights: Now, what you can do is that you can also put these logs from CloudTrail into CloudWatch Logs or Amazon S3.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 6:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: And you can create a trail to be applied to all regions or a single region, if you wanted to accumulate all these history of events accumulated across all regions into one specific, for example, S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 7:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And when we use CloudTrail, for example, we'll say someone went ahead and deleted something in AWS.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 8:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: For example, say that an EC2 instance was being terminated and you wanna figure out who did it?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 9:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Well, the answer is to look into CloudTrail because CloudTrail will have that API Call in it and will be able to get to the bottom of it and understand who did what and when.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 10:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So to summarize CloudTrail is in the middle and the actions of the SDK, the CLI, or the console or even IAM Users and IAM Roles or other services will be in the CloudTrail console.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 11:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: We can look in it to inspect and audit what happened.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 12:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, Amazon S3, CloudWatch Logs
- Key Insights: And if you want to have all the events for more than 90 days, then we can send them into CloudWatch Logs or we can send them into an S3 buckets.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 13:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So let me dive a little bit deeper for CloudTrail.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 14:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So we have three kinds of events that you can see in CloudTrail.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 15:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: The first one is called the Management Events and these represents operations that are performed on resources in your AWS Accounts.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 16:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: For example, whenever someone configures security, they will use the API Call called IAM AttachRolePolicy.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And this will appear in CloudTrail.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 18:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: If you create a subnet, this will appear as well.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 19:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: If you set up logging, this will appear by default.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 20:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Anything that modifies your resources or your iOS accounts will appear in CloudTrail.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 21:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And by default, trails are configured to log Management Events no matter what.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 22:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You can separate two kind of Management Events.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 23:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You have the Read Events that don't modify resources.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 24:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: For example, someone is listing all the users in IAM or listing all the EC2 instances in EC2, these kind of things.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 25:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You can separate them from Write Events that may modify resources.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 26:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: For example, someone deletes or tries to delete a DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 27:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And obviously the Write Events have probably a lot more importance because they can wreck damages into your AWS infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 28:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Whereas the Read Events is just to get information which are still very important, but maybe less destructive.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 29:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Then you have Data Events.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 30:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So they're separate and by default Data Events as are not logged because they're high volume operations.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 31:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So what are Data Events?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 32:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: Well, you have Amazon S3 object level activity for example, GetObject, DeleteObject, PutObject.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 33:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: And as you can see, these can be happening a lot on an S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 34:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And so this is why they're not logged by default and you have the option to separate again Read and Write Events.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 35:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: So a Read Event will be a GetObject whereas a Right Event would be a DeleteObject or a PutObject.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 36:
- Concepts: Audit Logging, Event-Driven Automation
- Services: AWS CloudTrail, AWS Lambda
- Key Insights: Another kind of event you can have in a CloudTrail are AWS Lambda function execution activities.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 37:
- Concepts: Event-Driven Automation
- Services: AWS Lambda
- Key Insights: So whenever someone uses the Invoke API so you can get insights about how many times your Lambda functions are being evoked.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven automation signal.

Line 38:
- Concepts: Event-Driven Automation
- Services: AWS Lambda
- Key Insights: And again, this could be really high volumes, if your Lambda functions are executed a lot.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 39:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And the third kind of events in CloudTrail are called CloudTrail Insights Events.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 40:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And so I will talk to you about CloudTrail Insights in a bit more details in the next slide.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 41:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So now let's talk about CloudTrail Insights.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 42:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So when we have so many Management Events across all types of services and so many APIs happening very quickly in your accounts, it can be quite difficult to understand what looks odd, what looks unusual and what doesn't.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 43:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And so this is where CloudTrail Insights comes in.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 44:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So with CloudTrail Insights and you have to enable it and you have to pay for it, it will analyze your events and try to detect unusual activity in your accounts.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 45:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: For example, in accurate resource provisioning, hitting service limits, burst of AWS IAM actions, gaps in periodic maintenance activity.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 46:
- Concepts: Audit Logging, Event-Driven Automation
- Services: AWS CloudTrail
- Key Insights: So the way it works is that CloudTrail will analyze what normal management activities look like to create the baseline and then it will continuously analyze anything that is the right type of event.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 47:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So whenever something is changed or try to be changed to detect unusual patterns.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 48:
- Concepts: Audit Logging, Event-Driven Automation
- Services: AWS CloudTrail
- Key Insights: So very simply the Management Events are going to be continuously analyzed by CloudTrail Insights which will generate Insights Event in case something is detected.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 49:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And so these anomalies, so these Insight Events will appear in the CloudTrail console.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal; Incident investigation and triage signal.

Line 50:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: They will also be sent to Amazon industry if you want to, and an EventBridge Event.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 51:
- Concepts: Audit Logging, Event-Driven Automation
- Services: AWS CloudTrail, Amazon CloudWatch
- Key Insights: So in CloudWatch event is going to be generated in case you need to automate on top of these CloudTrail Insights, for example, to send an email.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven automation signal; Telemetry, audit, and observability signal.

Line 52:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So this is the idea behind CloudTrail Insights.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 53:
- Concepts: Audit Logging, Event-Driven Automation, Retention and Forensics
- Services: AWS CloudTrail
- Key Insights: Finally, let's talk about CloudTrail Event Retention.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 54:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So events by default are stored for 90 days in CloudTrail and then afterwards they're deleted, but sometimes you may want to have events for longer in case you want to go back to something that happened maybe a year ago for audited purposes.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 55:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: And so to keep events beyond this period, what you have to do is that you have to log them to S3.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 56:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: So send them to S3, and then you would use Athena to analyze them.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 57:
- Concepts: Audit Logging, Retention and Forensics
- Services: AWS CloudTrail
- Key Insights: So very simply all your Management Events, your Data Events and your Insights Events are going to go into CloudTrail for 90 days, retention period.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 58:
- Concepts: Retention and Forensics
- Services: Amazon S3
- Key Insights: And then you would log those into your S3 buckets for long-term retention.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 59:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: And when you're ready to analyze them, you would use the Athena service, which is a serverless service to query data in S3 to find the events Okay I hope you like this lecture, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/031_[CCP_SAA_DVA_SOA] CloudTrail Hands On.txt

Line 1:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So let's have a look at CloudTrail.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 2:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And CloudTrail is a service to intercept any API calls or user activity within your accounts.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 3:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: And so here on here on the left hand side panel, we can have a look at the event history and this is the event history for the last 90 days of management events.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 4:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So you can see all the API calls that are being made over time in this account.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 5:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So it doesn't have to be very interesting, okay, but all of them will be here.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 6:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So what I wanna do for example, is that I want to look in my EC2 console, and I created a demo instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 7:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And what I'm going to do is that I'm going to terminate this instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 8:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So I do right click, terminate, and now the instance is being terminated.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 9:
- Concepts: Audit Logging, Event-Driven Automation
- Services: AWS CloudTrail
- Key Insights: And what I'm going to do is I'm going to check whether or not this event happens and appears within CloudTrail.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 10:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So I'm going to wait about five minutes and get back to you.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 11:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: And so I just refreshed my pages, and as you can see, I ran the terminate instances, API call.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 12:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: And we can see what's the event source.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 13:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So it's EC2 from where it was done, the access key that was used, the region that was used, and so on.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 14:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: And we can get the whole event right here.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 15:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So that's the full power of CloudTrail is that we can see all the events really happening from within CloudTrail directly in this UI.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 16:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And this is a short introduction at the practitioner level, but this is enough for you to get started and to answer questions at the exam.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 17:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 18:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 19:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/032_CloudTrail - Data Lake.txt

Line 1:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So, now let's talk about CloudTrail Lake.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 2:
- Concepts: Log Analytics, Retention and Forensics
- Services: (none explicit)
- Key Insights: So, it's a managed data lake that will let you aggregate, store and query events, and all these are stored in a central data store.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 3:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So, what events do we have?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 4:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Well, we have CloudTrail Events, we have CloudTrail Insights Events, we have AWS Config Configuration Items, we have AWS Audit Manager and 3rd Party Events.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 5:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So, all these are going to be stored in one central place.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 6:
- Concepts: Log Analytics
- Services: (none explicit)
- Key Insights: And the cool thing about it is that you can query your data using the SQL query language.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 7:
- Concepts: Retention and Forensics
- Services: (none explicit)
- Key Insights: The store is immutable, that means you can't change anything, can't remove it, and you have retention up to 10 years of data in there.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You can store events from multiple accounts and regions through AWS Organizations, and you can attach a Resource-based Policy to your Data Store.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 9:
- Concepts: Log Analytics
- Services: (none explicit)
- Key Insights: Finally, you can also have a feature to make sure that the query results you have have not been altered.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 10:
- Concepts: Audit Logging, Log Analytics
- Services: AWS CloudTrail
- Key Insights: It's called the Query Results Validation within CloudTrail.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 11:
- Concepts: Retention and Forensics
- Services: (none explicit)
- Key Insights: On top of this data lake, you can also build dashboards.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 12:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So, these are dashboards directly from within the CloudTrail Lake console, and you have, for example, different kinds of dashboards.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 13:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: You have the ones from AWS, no setup, no SQL experience needed, or you can use AWS Managed Dashboards or create your own Custom Dashboards within CloudTrail Lake.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 14:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: For example, you could track the deletion of trails, you can get access denied errors in a dashboard and so on.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 15:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So, all these are now features of CloudTrail and all these are done within CloudTrail Lake.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 16:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt

Line 1:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: A very important cultural integration you need to know about is the one with Amazon EventBridge to intercept any API calls.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven automation signal.

Line 2:
- Concepts: Audit Logging
- Services: Amazon SNS
- Key Insights: So let's say you wanted to receive an SNS notification, anytime a user would delete a table in DynamoDB by using the DeleteTable API Call.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 3:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So what happens that whenever we do an API call in AWS, as you know, the API call itself is going to be logged in CloudTrail.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 4:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: That's for any API call.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 5:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: But then all these API calls will end up as events as well in Amazon EventBridge.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 6:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: And so we can look for that very specific delete table API call, and create a rule out of it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 7:
- Concepts: Operational Monitoring Context
- Services: Amazon SNS
- Key Insights: And this rule will have a destination the destination being Amazon SNS and therefore, we can create alerts.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 8:
- Concepts: Audit Logging, Event-Driven Automation
- Services: AWS CloudTrail, Amazon EventBridge
- Key Insights: So let me give you a few more examples on how you can integrate Amazon Eventbridge and CloudTrail.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 9:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: For example, say, you wanted to be notified whenever a user was assuming a role in your accounts.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So the AssumeRole is an API in the IAM service and therefore, is going to be logged by CloudTrail.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 11:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge, Amazon SNS
- Key Insights: And then using EventBridge integration, we can trigger a message into an SNS topic.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 12:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Similarly, we can also intercept API calls that, for example, change the Security Group inbound rules.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 13:
- Concepts: Audit Logging
- Services: Amazon EC2
- Key Insights: So the Security Group call is called AuthorizeSecurityGroupIngress, and it's an EC2 API call.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 14:
- Concepts: Audit Logging, Event-Driven Automation
- Services: AWS CloudTrail, Amazon EventBridge, Amazon SNS
- Key Insights: So these are going to be logged again by CloudTrail and then they will appear in EventBridge and then we can trigger a notification in SNS.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 15:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So as you can see, the possibilities are endless, but now you have a few ideas of how the integration can be leveraged.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 16:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/034_[SOA] CloudTrail for SysOps.txt

Line 1:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 2:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So here are a few things you need to know for CloudTrail going into the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 3:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: The first one is that you can have a log file integrity validation.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 4:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: So when you do API calls within AWS, they're going to be logged by CloudTrail and you can have these logs being sent into Amazon S3, okay, every one hour.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 5:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: But, you can also create what's called a digest file.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 6:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And this is a file that will reference all the log files from the last hour and will contain a hash of each.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 7:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: And this is going to be stored in the same S3 buckets as your log files, but within a different folder.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 8:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And the idea is that, this is going to reference all of them, okay.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 9:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And this will help you determine whether or not a log file was been tampered with.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 10:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So either modified or deleted after CloudTrail delivered it.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 11:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So if the log file hash corresponds to the digest file hash, then you know for sure that the log file has not been modified and you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 12:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So this is very helpful for compliance purposes.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 13:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: The hash is using the SHA-256 algorithm, okay.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 14:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: And then the idea is that you still want to protect your S3 buckets using a bucket policy, using versioning, using MFA Delete protection, encryption, and object lock if you wanted to make sure that all these files within your S3 buckets from CloudTrail are kept all along this time.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 15:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 16:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: But if you want to show from a compliance perspective that these files are not modified with, you would use a digest file from CloudTrail.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 17:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: Finally, you should protect CloudTrail using IAM if you want to make sure that CloudTrail keeps on delivering these log files into Amazon S3.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 18:
- Concepts: Audit Logging, Event-Driven Automation
- Services: AWS CloudTrail, Amazon EventBridge
- Key Insights: You can also integrate CloudTrail with EventBridge.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 19:
- Concepts: Audit Logging, Event-Driven Automation
- Services: AWS CloudTrail, Amazon EventBridge
- Key Insights: So CloudTrail can trigger EventBridge for any kind of API calls made within your AWS accounts.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 20:
- Concepts: Event-Driven Automation
- Services: AWS Lambda, Amazon EventBridge, Amazon SNS
- Key Insights: And then from EventBridge, you can do any kind of integration you want using Lambda, SNS, SQS, and so on.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 21:
- Concepts: Audit Logging, Event-Driven Automation
- Services: AWS CloudTrail, Amazon EventBridge
- Key Insights: So if you want it to react to any API call, you know, not even something that's covered by EventBridge, but you know that will appear in CloudTrail, then you would define an EventBridge integration with CloudTrail.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 22:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: But CloudTrail is not real-time, okay?
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 23:
- Concepts: Audit Logging
- Services: Amazon S3
- Key Insights: The events may be delivered within 15 minutes of an API call and then the events in log files will also be delivered within S3 within 5 minutes.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 24:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 25:
- Concepts: Audit Logging, Event-Driven Automation
- Services: AWS CloudTrail, Amazon EventBridge
- Key Insights: So this is not a real-time automation on top of API calls, but this is for you a way to get some kind of integration on top of any API calls made within CloudTrail when it is delivered into EventBridge.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 26:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Finally, you can have organization trails, so, you can setup CloudTrail at the organization level.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 27:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So you have a management accounts and many different member accounts.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 28:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: And so your CloudTrail at your org level is going to log events for all of API calls for all your member accounts into a target S3 buckets that is organization wide.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 29:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 30:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And this is very handy for account managements.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 31:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So all the events will be logged and this is going to give you for both the management and the member accounts, and the trail name will be the same for every accounts in AWS.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 32:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And the member accounts cannot remove or modify the organization trail which is good for compliance.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 33:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: They can only view that it exists.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 34:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So that's it for all the additional stuff you need to know on CloudTrail.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 35:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 36:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/035_CloudTrail to CloudWatch Metrics Filter - Example.txt

Line 1:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So let's say we have the use case of detecting whether or not we start too many EC2 instances at a time.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 2:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon CloudWatch
- Key Insights: The best way to actually implement this architecture is to use CloudTrail and CloudWatch metrics filter, how?
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 3:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS CloudTrail, Amazon CloudWatch, Amazon EC2, Amazon SNS, CloudWatch Alarms, CloudWatch Logs
- Key Insights: Well, from CloudTrail, we know we can stream all the API calls being made in two CloudWatch logs, and from CloudWatch logs, we can define a metrics filter and we can set a threshold, for example, and look for the EC2 StartInstances API call and say that we want to trigger a CloudWatch alarm when we detect that metric to be above 30, and from there, maybe go into an SNS topic, and we can alert the security team because too many instances are started at a time.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 4:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So the advantage of using CloudTrail with metrics filter is that you have the ability to be able to set thresholds on a specific period for detection of API calls, and that really enhances the CloudTrail feature, so that's it.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 5:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: It was a quick lecture, but hopefully that makes sense, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/036_CloudTrail - Integration with Athena.txt

Line 1:
- Concepts: Audit Logging, Log Analytics
- Services: AWS CloudTrail, Amazon Athena
- Key Insights: So here's a quick lecture, but it is possible to integrate CloudTrail with Athena.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 2:
- Concepts: Audit Logging, Log Analytics
- Services: AWS CloudTrail, Amazon Athena, Amazon S3
- Key Insights: So the idea is that you're going to use Athena directly to query CloudTrail logs stored in Amazon S3, for example, to analyze activity for security and compliance.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 3:
- Concepts: Audit Logging, Log Analytics
- Services: AWS CloudTrail, Amazon Athena, Amazon S3
- Key Insights: So the idea is that the Athena table you want can be directly created from the CloudTrail Console, and then you specify in which S3 bucket location you want your logs to be stored.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 4:
- Concepts: Audit Logging, Event-Driven Automation, Log Analytics
- Services: AWS CloudTrail, Amazon Athena, Amazon S3
- Key Insights: So once you have the event history, you create the filter you want, then you click on Create Athena Table, and then you specify the S3 bucket and you will be able to query all your CloudTrail data within Athena.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 5:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So that's it, that was short, but I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/037_Monitoring Account Activity.txt

Line 1:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let's take the example of monitoring account activity and see how different services relate to that simple task.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 2:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Because based on some requirements you may have different services.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 3:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So first of all if you wanted to have the configuration history you must enable AWS config with a configuration recorder on and that gives you all the configuration of all your resources over time.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Audit Logging, Event-Driven Automation
- Services: AWS CloudTrail
- Key Insights: Then if you look at API history you must look into CloudTrail and CloudTrail Event history is going to give you the API history for the past 90 days from which you can filter by resource name, resource type, event name or even by IAM user or assumed IAM role session name or access key if you needed to.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 5:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon CloudWatch, CloudWatch Logs
- Key Insights: Then using CloudWatch Logs insights you have the ability to stream all these API calls from CloudTrail into CloudWatch logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 6:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: You can store them for as long as you want in CloudWatch logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 7:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And thanks to Logs Insights, you can search the API history beyond the past 90 days that the CloudTrail console provides.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 8:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So for this, of course make sure your trail is sending actual data to CloudWatch logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 9:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: And finally, you can also use Athena.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 10:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: So Athena has the ability to also help you look at API history beyond the past 90 days but also perform more advanced queries, some statistics some sums and so on.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 11:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So hopefully that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 12:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/042_[SAA_SOA] VPC Flow Logs.txt

Line 1:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: So now, let's talk about VPC Flow Logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 2:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: VPP flow logs allow you to capture information from IP traffic going into your interfaces.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 3:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So that could be at the VPC level, the subnet level, or the elastic network interface, ENI level.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 4:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So we have three kinds of flow logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 5:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: They're very helpful to monitor and troubleshoot connectivity issues happening within your VPC.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 6:
- Concepts: Network Telemetry
- Services: Amazon CloudWatch, Amazon S3, CloudWatch Logs
- Key Insights: So these flow logs can be sent to Amazon S3, CloudWatch Logs, and Kinesis Data Firehose, and they will capture information for also AWS managed interfaces such as ELB, RDS, ElasticCache, Redshift, Workspaces, your net gateway, your transit gateway, and so on.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 7:
- Concepts: Operational Monitoring Context
- Services: Amazon VPC Flow Logs
- Key Insights: So this is what a VPC flow log looks like.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 8:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So there is a format associated with it, but there is a version, account ID, interface ID, source address, destination address, source port, destination port, protocol packets by start and action and log status.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 9:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So this is metadata about the network packets going into your VPC.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 10:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And you don't need to remember this at a high-level, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 11:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: But let's have a look at what information we can get out of these flow logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 12:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So the source address and the destination address help identify problematic IP.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 13:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: This is where you see if an IP is repeatedly being denied, maybe there is something wrong with that IP, or maybe you're being attacked by a specific IP, source port and destination port helps you identify the probiotic ports.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 14:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Action is going to be either accept or reject.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 15:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And so it's going to say whether or not it's a success or failure at the SG or NACL level.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 16:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And we'll see this in the very next slide.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 17:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And so this can be used the VPC logs to do analytics on usage patterns or detect manage behavior, port scans, and so on.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 18:
- Concepts: Log Analytics, Network Telemetry
- Services: (none explicit)
- Key Insights: Now, to query these flow logs, you have two ways of doing it.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 19:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon CloudWatch, Amazon S3, CloudWatch Logs
- Key Insights: The best way is to do Athena on S3, or if you wanted to do a streaming analysis, you could use CloudWatch logs insights.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 20:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So here are some examples that you can have a look on your own time for flow logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 21:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So how do we use flow logs to troubleshoot security group and NACL issues?
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 22:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Well, we look at the action field.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 23:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let's have a look at the typical incoming request for your NACL and your subnet.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 24:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So remember, your NACL are stateless and your security groups are stateful.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 25:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So what happens?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 26:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: Well, if we get an inbound reject, so we see that the inbound request from from the outside to our EC2 instance is rejected.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 27:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: That can means that either from this graph, the NACL is refusing the request or the security group is refusing the request.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 28:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And this makes sense, right?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 29:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: But if we have a inbound accept and an outbound reject, it can only mean a NACL issue.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 30:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 31:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Or because your security group is stateful.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 32:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And if the inbound is allowed because of the accept, automatically the outbound will be allowed thanks to the statefulness of your security group.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 33:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So for outgoing request, similar analysis, right?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 34:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: This is the diagram we know already.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 35:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And so if you get an outbound reject, then you have a NACL or a security group issue.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 36:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: But if you get an outbound accept and inbound reject, then it must mean a NACL issue.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 37:
- Concepts: Network Telemetry
- Services: Amazon CloudWatch, Amazon VPC Flow Logs, CloudWatch Logs
- Key Insights: So let's have a look at a few architectures for your VPC flow logs so they can flow into CloudWatch logs as we know.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 38:
- Concepts: Network Telemetry
- Services: Amazon CloudWatch, CloudWatch Contributor Insights
- Key Insights: And then we can use something called CloudWatch contributor insights, for example, to find the top 10 IP addresses that contribute to the most amount of network on your VPC or on ENI or whatever you want.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 39:
- Concepts: Network Telemetry
- Services: Amazon CloudWatch, Amazon VPC Flow Logs, CloudWatch Logs
- Key Insights: You can also use VPC flow logs to send them again into CloudWatch logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 40:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Here, we can set up a metric filter to look for example for the SSH or the RTP protocols.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 41:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch, Amazon SNS, CloudWatch Alarms
- Key Insights: And if we realize that there's a lot more SSH or RDP than usual, then trigger a CloudWatch alarm and send an alert into an Amazon SNS topic because something fishy may be happening on your network.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 42:
- Concepts: Operational Monitoring Context
- Services: Amazon VPC Flow Logs
- Key Insights: Or we can use a VPC flow log.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 43:
- Concepts: Log Analytics, Network Telemetry
- Services: Amazon Athena, Amazon S3, Amazon VPC Flow Logs
- Key Insights: And then we send everything into an S3 bucket for storage, and we use Amazon Athena to analyze the VPC flow logs with SQL.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 44:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And we can even visualize that with Amazon QuickSight.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 45:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: Now a little bit of security, so you need permissions for VPC flow logs to work.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 46:
- Concepts: Network Telemetry
- Services: Amazon CloudWatch, Amazon VPC Flow Logs, CloudWatch Logs
- Key Insights: So there is an IAM service role associated with the VPC flow logs service, and it must have the required permissions to publish logs to CloudWatch Logs.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Telemetry, audit, and observability signal.

Line 47:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So to do so, it needs the logs, create log group, logs create log stream or logs put log events permissions, and then these permissions together will allow the VPC for log service through its IAM role to send logs into CloudWatch logs without any errors.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 48:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 49:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/043_[SAA_SOA] VPC Flow Logs Hands On.txt

Line 1:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: Okay, so now we're going to practice VPC flow logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 2:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: And to do so well, we'll go into our demo VPC under Flow Logs and we can create a flow log.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 3:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So we have a few types of flow logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 4:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So I'll call this one DemoS3FlowLog.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 5:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And we have a filter, do we want the accept type, reject type or all kind of traffic?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 6:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So if you're trying to debug why some traffic is not going through, maybe reject is more relevant.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 7:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Otherwise, all or accept are good as well.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 8:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: The maximum aggregation interval.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 9:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So how long you need to wait to aggregate.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And you can look at the info.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 11:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, Amazon S3, CloudWatch Logs
- Key Insights: So you can optionally specify a one minute aggregation, but if you do so then there's gonna be more records being created, because it's possible that you have lots of records getting created over time and obviously every one minute written to S3 or CloudWatch Logs can be very expensive.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 12:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let's just do one minute just for the sake of the demo to go quicker.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 13:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: But 10 minutes is usually a better option if you're looking at it, especially after a little bit of time.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 14:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So a few options.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 15:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, Amazon S3, CloudWatch Logs
- Key Insights: We can send the destination to CloudWatch Logs And we need to specify a log group, we need to we can also send it to an Amazon S3 bucket.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 16:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: We need to specify the S3 bucket ARN or we can send it to Kinesis Data Firehose in the same account or in a different account.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: But we'll use Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 18:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: So to do so, I'm going to go into the S3 service in here and I will create a bucket and create demo-stephane-vpc-flow-logs-v2, okay?
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 19:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: In the same region where my VPC is obviously.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 20:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And then I will create this bucket.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 21:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Now view the details of the bucket and now we need to get the bucket ARN.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 22:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So to do so, here it is I can just copy it from the Properties.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 23:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let's paste this in.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 24:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And as we can see, a resource-based policy will be created for you and attached to the target bucket.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 25:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: So bucket policy will be created for us automatically so that the VPC service can send data into our S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 26:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Now the format looks like this.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 27:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: This is the default format of AWS.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 28:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And next I will click on Create Flow Log.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 29:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay, so this first flow log has been created, perfect.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 30:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And I will go ahead and create a second flow log now.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 31:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So I'll create flow log.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 32:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: And this one is going to be DemoFlowLog CloudWatch Logs all kind of traffic, one minute interval, to CloudWatch logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 33:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And we need to create a log group and an IAM role.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 34:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay, so let's do both of these things.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 35:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So to do so when you click on Set Up Permissions so let's create a role.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 36:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we are going to create a role this is a custom trust policy.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 37:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And in here for principle, just go to the new line.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 38:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You're going to enter Service in between quotes, then colon and then Service is vpc-flow-logs.amazonaws.com.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 39:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So make sure you have this in between quotes as well.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 40:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: So this is going to say that this role can be assumed by VPC flow logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 41:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Click on Next.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 42:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: Now for permissions policy we need CloudWatch Logs full access.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 43:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So we're going to have this one CloudWatch Log full access which is enough.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 44:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Then click on Next.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 45:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And this role name is going to be flowlogsrole.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 46:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Then create this role.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 47:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And now this role is created.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 48:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So if I refresh this and look for flow log roles, here we go.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 49:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: It is created.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 50:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And now we need a log group.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 51:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So let's go into the CloudWatch Logs console.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 52:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let's click on it here.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 53:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And under Logs, Log Groups, I'm going to create a log group.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 54:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I'll call it VPCFlowLogs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 55:
- Concepts: Retention and Forensics
- Services: (none explicit)
- Key Insights: And I will set the retention to one day and click on Create, click on this log group here.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 56:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Now refresh this and the VPCFlowLogs is appearing.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 57:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 58:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Now let's create this flow log.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 59:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: And yet again, so now we have two flow logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 60:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, Amazon S3, CloudWatch Logs
- Key Insights: One flowing into Amazon S3 and one flowing into CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 61:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: So into Amazon S3 under my Objects, I can refresh this and as we can see some AWSLogs have already been created.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 62:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: I can click on it, look at the VPC flow logs for eu-central-1.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 63:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: And then we have a timestamp, and we have here the VPC flow logs available to us.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 64:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So now let's go into the CloudWatch Logs and refresh this and have two log streams.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 65:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And these log streams correspond to the enis within my accounts.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 66:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So if we ever a look at the eni of my BastionHost, this one, and we have a look at the eni number.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 67:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we go under Networking, and what I'm going to do is put this up a little bit and look for the eni id.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 68:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So the eni id is 0835.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 69:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let's go into here and look for 0835, this one, perfect.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 70:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So this is showing us the kind of traffic that is happening onto my EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 71:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: And if you look at it, well, it seems that some people are trying to access my EC2 instance, but it's getting rejected.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 72:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So this is the version, this is like all these fields, okay the eni id and this IP address, which is the public IP address is trying to access my EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 73:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And this is really like this kind of attackers were attacking your instance and just scanning the web for holes and so on.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 74:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So you're gonna have a lot of this kind of traffic.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 75:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And if I wanted to get some defense, I could for example, if this IP address was annoying me too much, I could block it at the that code level, for example and not have this traffic.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 76:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: But as we can see, a lot of traffic is appearing in here and it's all Reject.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 77:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: But if I were to do some activity on my S3 instance and connect to Google for example, we would see some traffic with Accept as well.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 78:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: And the same kind of data is going to appear on Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 79:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So if I go here, you will have a lot of data, okay?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 80:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So you use CloudWatch Logs, if you want to have some kind of metrics filter to do some real-time analysis in case you're being attacked and a lot of traffic is being rejected and so on.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 81:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: So this is very helpful and you'll use Amazon S3 if you wanted to do some more bigger analysis for example, using Athena.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 82:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: So let's go ahead and practice using Athena to query this data into my S3 bucket.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 83:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: So in Athena, what I'm going to do is to first set up a query result location in Amazon S3.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 84:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: So I'm going to click on New Settings, Manage and then I need to specify an S3 bucket where I'm going to store my results.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 85:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: So back into Amazon S3 what I'm going to do is just quickly create an S3 bucket, because this wasn't set up for this account.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 86:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: So I call this one demo-athena-stephane-v2, and this should work.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 87:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: Now let's click on Create these buckets, View Details, and I can just use this S3 bucket, so Properties, I will copy the ARN, back into Athena and then click on Save.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 88:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: So I need to just do slash and then Athena.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 89:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: And then something like, ah, S3://, here we go.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 90:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay, this is good.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 91:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let's click on Save.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 92:
- Concepts: Log Analytics
- Services: (none explicit)
- Key Insights: And now we have this query location being saved and I need to go ahead and start creating a database and then create some data.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 93:
- Concepts: Log Analytics, Network Telemetry
- Services: Amazon Athena, Amazon VPC Flow Logs
- Key Insights: So what I need to do is to go in here and I will type AWS VPC flow logs Athena and this is going to take me into a tutorial on how to do it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 94:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So to do so, we need to create a table.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 95:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And this whole statement right here shows you how.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 96:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: So let's go ahead and paste this in my Athena UI.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 97:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So here we go.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 98:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And we need to specify where the data is.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 99:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So the log bucket, the prefixed logs and then account id VBC flow logs and region code.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 100:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let's find it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 101:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let's go back in here.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 102:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: This is my Athena bucket.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 103:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: No, this is my VPC flow logs bucket.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 104:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Here we go.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 105:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let's go to the top of it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 106:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Just to go back.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 107:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: So logs, account id, VPC flow logs, region.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 108:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay, we got it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 109:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: Now we're going to copy this S3 URI directly back into Athena and I'm going to paste this in.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 110:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay, perfect.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 111:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And let's run this statement.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 112:
- Concepts: Operational Monitoring Context
- Services: Amazon VPC Flow Logs
- Key Insights: So this completed, and now we have a VPC flow log table in here.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 113:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay, and it is partitioned.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 114:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we can see we have all the information in here.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 115:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Now the second thing we need to do is to run another statement.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 116:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let's go here and find this alter table, to create partitions to read this data.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 117:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let's copy this, paste this in.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 118:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And again, we need to specify a date and as well as the entire replacement for month, year, and day.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 119:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay, so let's go ahead and do this.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 120:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: So back into Amazon S3, into my Objects I will click, click and click, go back to Properties and paste this, copy and paste this in.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 121:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 122:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And then we need to add a partition.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 123:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So 2021-10-06.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 124:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And this is quite manual, but Glue can help with automating this.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 125:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Now let's run this statement.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 126:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And the statement was successfully completed.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 127:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So now we have added one partition into our table.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 128:
- Concepts: Log Analytics, Network Telemetry
- Services: (none explicit)
- Key Insights: And then finally we can query the flow logs just by doing a select.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 129:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So let's do this to find all the reject traffic and then click on Run.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 130:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And this is worked.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 131:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And now we have 46 results and we can have a look.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 132:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So day, date, interface id, source address, action reject, protocol 6.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 133:
- Concepts: Log Analytics
- Services: Amazon Athena
- Key Insights: So we can get a lot of information from Athena and we can start doing some complex queries to try to group for example, by IP addresses, see who is attacking us the most where we're attacked the most, and so on.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 134:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So this could be quite helpful for doing some batch analysis, okay?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 135:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: But that's it, we've seen how to set VPC flow logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 136:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: We send to CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 137:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: And to Amazon S3, we've used Athena to query these logs in Amazon S3.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 138:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So very complete demo.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 139:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And what I'm going to do now is just disable all these logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 140:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I'm going to delete them, just not to run any ongoing cost.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 141:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay, so that's it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 142:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/044_VPC Flow Logs - Advanced.txt

Line 1:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: So just a quick lecture about VPC Flow Logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 2:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Some traffic is not captured by it, and this can come up in one question on the exam, so watch out for it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 3:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So, you have the traffic to the Amazon DNS Server, so only the custom DNS Server traffic is logged.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 4:
- Concepts: Network Telemetry
- Services: Amazon EC2
- Key Insights: The traffic for Amazon Windows license activation, the traffic to the EC2 instance metadata service, and the Amazon Time Sync service, all DHCP traffic, all mirrored traffic, and the traffic to the VPC router reserved IP address, this is the first IP of your VPC, and the traffic between your VPC Endpoint ENI and the Network Load Balancer ENI.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 5:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Alright, that's a short one.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 6:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/045_[SAA_SOA] VPC Traffic Mirroring.txt

Line 1:
- Concepts: Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: So here is a very cool security feature called the VPC, Traffic Mirroring.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 2:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: The idea is that we want to capture and inspect network traffic in our VPC, but to do it in a non-intrusive manner.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 3:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So to do so, we want to route the traffic to security appliances that we manage.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 4:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And to do so, we're going to capture the traffic, so we're going to define which are the source ENIs we want to capture the traffic from.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 5:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: And then the targets, so where do we want to send that traffic to, our own ENIs or maybe a Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 6:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So to do an example.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 7:
- Concepts: Network Telemetry
- Services: Amazon EC2
- Key Insights: So we have an EC2 instance and we have an Elastic Network Interface, so an ENI attached to it and works really well.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 8:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: Our EC2 instance is accessing the internet and is being accessed.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 9:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: And so we get a lot of inbound and outbound traffic on the ENI to the EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 10:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: But we wanted to analyze our traffic.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 11:
- Concepts: Network Telemetry
- Services: Amazon EC2
- Key Insights: So to do so we're going to set up a Load Balancer and behind this Network Load Balancer, we're going to have an auto scaling group of EC2 instances that will have some security software on it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 12:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Now we want to be able to capture all the traffic from Source A without disrupting the functioning of Source A.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 13:
- Concepts: Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: So to do so, we're going to set up a VPC traffic mirroring, and optionally, we can have a filter, if you want you to get just some information, not everything.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 14:
- Concepts: Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: And with this traffic mirroring feature, all the traffic sent to the ENI or Source A is also going to be sent to our Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 15:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So our Source A, our EC2 instance is still working fine.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 16:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: It still doesn't know what's happening, but on top of it, the traffic is being mirrored.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 17:
- Concepts: Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: So hence the name, Traffic Mirroring, into our Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 18:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And from there, we can analyze the traffic itself.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 19:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And this applies not just to one source, but to multiple sources.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 20:
- Concepts: Network Telemetry
- Services: Amazon EC2
- Key Insights: So if you had a second EC2 instance with another ENI, yet again, we can mirror the traffic into our Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 21:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 22:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: We need to have the source and the targets to be in the same VPC, or it could be across different VPC, and if we have enabled VPC Peering.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: So the use cases for VPC traffic mirroring is going to be around content inspection, threat monitoring, or troubleshooting from a networking perspective, okay.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 24:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: It's very hard to demonstrate this in a demo, but this diagram should be enough.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 25:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 26:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/046_VPC Traffic Mirroring - Architectures.txt

Line 1:
- Concepts: Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: So let's explore a couple of VPC traffic mirroring architectures.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 2:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So in the first case, we can have the traffic distributed across EC2 instances in an ASG and that will be the same security appliance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 3:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So we have our VPC with a public subnet, a private subnet, and then we've created another private subnet with an autoscaling group of EC2 instances that are security monitoring appliances.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 4:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: We put a network level balancer in front of them so that we can receive any kind of traffic.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 5:
- Concepts: Network Telemetry
- Services: Amazon EC2, VPC Traffic Mirroring
- Key Insights: And then we're going to enable traffic mirroring from the EC2 instance in my public subnet and my private subnet.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 6:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And all that traffic is going to flow and scale because we're using an autoscaling group.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 7:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And this is going to go to the same kind of security appliance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 8:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: We have another kind where we want to distribute traffic to multiple EC2 instances that have different security appliances.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 9:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: So in this case, we have the same EC2 instances we want to monitor but then we're going to, in a private subnet, create different kind of EC2 instances based on their function.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 10:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So different partner solutions for security.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 11:
- Concepts: Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: In this case, what we need to do is to do traffic mirroring into what we call a Cloud Packet Broker.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: It's a third party appliance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 13:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And this allows you to actually redirect the correct traffic to the correct security appliance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 14:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So that's a different architecture model.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 15:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Now, if you want to go distributed you can have two VPCs, and in each VPC you'll have a different monitoring appliance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 16:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So in this instance, the EC2 instance A is monitored by the Appliance 1 and the EC2 instance B is monitored by the Appliance 2.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 17:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You can also go into a different kind of setup where you have one monitoring appliance in one VPC and then by establishing VPC peering, you can have instance D and instance E directly mirror traffic into the monitoring Appliance number 3.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 18:
- Concepts: Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: There's also a way to automate VPC traffic mirroring.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 19:
- Concepts: Detection Correlation
- Services: Amazon EC2
- Key Insights: So let's take an example of GuardDuty and GuardDuty has found an alert on one of our EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 20:
- Concepts: Event-Driven Automation
- Services: AWS Lambda, Amazon EventBridge
- Key Insights: It's going to pass on that finding to Amazon EventBridge, and from EventBridge, we're going to invoke a Lambda function.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 21:
- Concepts: Event-Driven Automation, Network Telemetry
- Services: AWS Lambda, Amazon EC2, VPC Traffic Mirroring
- Key Insights: That Lambda function is going to look at the payload of the alerts, and it's going to identify the EC2 instance and the corresponding ENI attached to that instance that needs VPC network traffic mirroring.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 22:
- Concepts: Event-Driven Automation
- Services: AWS Lambda
- Key Insights: So that instance is in my VPC, but first we need to make sure from the Lambda function that we launch a virtual monitoring appliance to receive that mirror traffic.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven automation signal.

Line 23:
- Concepts: Detection Correlation, Network Telemetry
- Services: Amazon EC2, VPC Traffic Mirroring
- Key Insights: So we launch it and then we enable VPC traffic mirroring on my EC2 instance that was detected by GuardDuty.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 24:
- Concepts: Log Analytics, Network Telemetry
- Services: Amazon Athena, Amazon S3
- Key Insights: So automatically the packets of the network are going to be forwarded, and then we can send them directly into an S3 bucket so that the logs could be analyzed later on by Athena.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 25:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And all of this is automated, so hopefully that opens up your mind.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 26:
- Concepts: Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: Finally, you can also have an architecture for VPC traffic mirroring that leverages a transit gateway between several accounts and several VPCs.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 27:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: But the idea is that you want to have a centralized VPC where you'll have all your security appliances and monitoring.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 28:
- Concepts: Network Telemetry
- Services: Amazon EC2
- Key Insights: So in that case, well, because we have set up a transit gateway, now any EC2 instance in any VPC can send their traffic directly into the network level balancer of the centralized VPC.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 29:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And this works great and this scales great, but you will have higher data transfer cost because everything goes through a transit gateway.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 30:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 31:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/047_VPC Network Access Analyzer.txt

Line 1:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So now let's talk about the VPC Network Access Analyzer.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 2:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So this helps you understand potential network paths to and from your resources and you define network access requirements and you wanna make sure that they are compliant.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 3:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So for example you say, hey, a requirement of my network is that none of the resources should be publicly available.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Now, how can you actually verify this?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 5:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: Well, you define these requirements in VPC Network Access Analyzer and then automatically, it's going to be checking against these requirements and tell you if it found issues or if it didn't find any issues, then you demonstrate compliance because you don't have any issues.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 6:
- Concepts: Log Analytics, Network Telemetry
- Services: Amazon EC2, Amazon OpenSearch
- Key Insights: So it's going to evaluate the network access to all the resources in your VPCs, such as your EC2 instances, your RDS databases, Aurora, OpenSearch, Redshift and so on.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 7:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: And then from this, it's going to look at your VPC configuration, such as your security group, your network ACLs, your NAT gateway, your internet gateways and so on and tell you whether or not, based on your requirements, if anything is accessible.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 8:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So this is very handy, because all this analysis is done by AWS itself.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 9:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So to define these requirements, you use a Network Access Scope.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 10:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: It's a JSON document that contains conditions to define your network security policy.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 11:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So let's say for example, you have a VPC and a public subnet and within it, you have created an Amazon RDS database, and your network administrator arrives and says that, "Hey, I don't want any of my internet databases to be public and open." So this is a network access scope and then automatically, it's going to be sent to Network Access Analyzer and we're going to run an analysis.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 12:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So Network Access Analyzer is going to have a look at our VPC resource, which is our RDS database and compare it against the security group and other rules and say, hey, look at this, there is this resource that is not compliant from a network security perspective and then you can address your problems and so on.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 13:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So this really separates the role of the network security from the role of whoever creates your resources and is not really sure whether or not the resources are compliant with network security.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 14:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So hopefully that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 15:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/048_Route 53 - Query Logging.txt

Line 1:
- Concepts: Log Analytics
- Services: Route 53 Query Logging
- Key Insights: So, now let's talk about query logging for Route 53.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 2:
- Concepts: Log Analytics
- Services: Route 53 Query Logging
- Key Insights: So, the first one is DNS query logging, which is going to give you information about public DNS queries that the Route 53 Resolver receives.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 3:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch
- Key Insights: So, this is applicable only to public hosted zones and then the logs are sent only to CloudWatch.
- Hidden/Implicit Meaning: Constraint or limitation signal; Telemetry, audit, and observability signal.

Line 4:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So, this is the kind of request you will see in the logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 5:
- Concepts: Log Analytics
- Services: (none explicit)
- Key Insights: You have the log format version, the query timestamp, the hosted zone ID for your public hosted zone, the query name, the query type, the response code, the query protocol, the edge locations are responded, the Resolver IP address, and the EDNS client subnets.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 6:
- Concepts: Log Analytics
- Services: Route 53 Query Logging
- Key Insights: The other kind of query logging you have is the Resolver query logging which is going to log all DNS queries made within your VPC.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 7:
- Concepts: Event-Driven Automation
- Services: AWS Lambda, Amazon EC2
- Key Insights: For example, by your EC2 instances, your Lambda functions, and so on.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 8:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Also, from on-premise resources that are going to be leveraging the Resolver inbound endpoints, and also anything leveraging the Resolver outbound points.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 9:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And finally, whatever is using the Resolver DNS firewall.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 10:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So, let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 11:
- Concepts: Operational Monitoring Context
- Services: Route 53 Query Logging
- Key Insights: We have the Route 53 Resolver and our VPC.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 12:
- Concepts: Log Analytics
- Services: Amazon EC2
- Key Insights: We have an EC2 instance that makes a query to example.com.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 13:
- Concepts: Log Analytics
- Services: Route 53 Query Logging
- Key Insights: Then this is going to be automatically logged through the Resolver query logging, and then these logs can be sent to three destinations.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 14:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, Amazon S3, CloudWatch Logs
- Key Insights: It could be S3 buckets, CloudWatch Logs, and Kinesis Data Firehose.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 15:
- Concepts: Log Analytics
- Services: Route 53 Query Logging
- Key Insights: Now these configurations of query logging can be shared with other accounts using AWS Resource Access Manager, which is called AWS RAM.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 16:
- Concepts: Log Analytics
- Services: Route 53 Query Logging
- Key Insights: So, what does the Resolver query logging look like?
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 17:
- Concepts: Log Analytics
- Services: (none explicit)
- Key Insights: Well, it's a JSON document which gives you a lot of information such as the VPC the request was made, the type of query, and so on.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 18:
- Concepts: Log Analytics
- Services: Route 53 Query Logging
- Key Insights: So, what kind of architectures can we build with the Resolver query logging?
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 19:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: Well, for example all the DNS logs can be sent into CloudWatch Logs, from which we can use CloudWatch Logs insights to find specific data.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 20:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Contributor Insights, CloudWatch Logs
- Key Insights: Or we can use CloudWatch Contributor insights to find the most common DNS queries amongst our CloudWatch logs and try to understand whether or not we're being attacked, for example.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 21:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Alright, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 22:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/049_[SAA] OpenSearch.txt

Line 1:
- Concepts: Log Analytics
- Services: Amazon OpenSearch
- Key Insights: So now, let's talk about the Amazon OpenSearch Service.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 2:
- Concepts: Log Analytics
- Services: Amazon OpenSearch
- Key Insights: An Amazon OpenSearch is a successor to something you may have heard before called, Amazon ElasticSearch.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 3:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So the name change was due to some licensing issues.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 4:
- Concepts: Log Analytics
- Services: (none explicit)
- Key Insights: So in DynamoDB, just to do a comparison, you can only query the data by primary key or if you have indexes on your database.
- Hidden/Implicit Meaning: Constraint or limitation signal; Telemetry, audit, and observability signal.

Line 5:
- Concepts: Log Analytics
- Services: Amazon OpenSearch
- Key Insights: But with OpenSearch, you can actually, as the name indicates, search any fields, even for partial matches.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 6:
- Concepts: Log Analytics
- Services: Amazon OpenSearch
- Key Insights: So it's very common to use OpenSearch to provide search to your application.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 7:
- Concepts: Log Analytics
- Services: Amazon OpenSearch
- Key Insights: And so you would use OpenSearch as a compliment to another database.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 8:
- Concepts: Log Analytics
- Services: Amazon OpenSearch
- Key Insights: So OpenSearch can be used for search, but also as the name doesn't indicate, you can also do analytic queries on top of OpenSearch.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 9:
- Concepts: Log Analytics
- Services: Amazon OpenSearch
- Key Insights: So you have two modes to provision an OpenSearch Cluster.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 10:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Either you use the managed cluster option and then actual physical instances will be provisioned for you and you will see them.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 11:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Or you can go the serverless route and have a serverless cluster, where everything from scaling to operations is handled by AWS.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 12:
- Concepts: Log Analytics
- Services: Amazon OpenSearch
- Key Insights: And OpenSearch has its own query language, it does not natively support SQL, but you can enable SQL compatibility via a plugin.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 13:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So you can ingest data from different places, such as Kinesis Data Firehose, IoT, CloudWatch Logs, or any of your custom-built application.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 14:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You have security provided through integration with Cognito, IAM, you get at rest encryption and in-flight encryption.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 15:
- Concepts: Log Analytics
- Services: Amazon OpenSearch
- Key Insights: And as I said, you can do analytics on top of the OpenSearch Service, so you can use something called OpenSearch Dashboards to create visualizations on top of your OpenSearch Data.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 16:
- Concepts: Log Analytics
- Services: Amazon OpenSearch
- Key Insights: So here are some common patterns to use OpenSearch.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 17:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So you would have DynamoDB and it will contain your data.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 18:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: This is where your users will insert and delete and update data.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 19:
- Concepts: Event-Driven Automation
- Services: AWS Lambda
- Key Insights: And then you send all the streams in a DynamoDB Stream, which is then picked up by a Lambda Function.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 20:
- Concepts: Event-Driven Automation, Log Analytics
- Services: AWS Lambda, Amazon OpenSearch
- Key Insights: And that Lambda Function will insert the data into Amazon OpenSearch in real time.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 21:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And through this process, what happens that your application now has the ability to search for a specific item.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 22:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: For example, to do a partial search with the item name and then find the item ID out of it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 23:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And then once the item ID is obtained, then it will call DynamoDB to actually retrieve the full item from your DynamoDB Table.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 24:
- Concepts: Log Analytics
- Services: Amazon OpenSearch
- Key Insights: So that's a common pattern in which OpenSearch provides the search capability, whereas your main source of data still remains your DynamoDB Table.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 25:
- Concepts: Log Analytics
- Services: Amazon CloudWatch, Amazon OpenSearch, CloudWatch Logs
- Key Insights: There's also other ways you can ingest CloudWatch Logs into OpenSearch.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 26:
- Concepts: Event-Driven Automation
- Services: AWS Lambda, Amazon CloudWatch, CloudWatch Logs
- Key Insights: So the first one is to use what's called a CloudWatch Log Subscription Filter, sending data in real time to a Lambda Function that is managed by AWS.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 27:
- Concepts: Event-Driven Automation, Log Analytics
- Services: AWS Lambda, Amazon OpenSearch
- Key Insights: And then the Lambda Function in real time sends all the data into Amazon OpenSearch.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 28:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: Or you can also use a CloudWatch Logs and then Subscription Filter.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 29:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: But this time Kinesis Data Firehose can read it from the Subscription Filter.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 30:
- Concepts: Log Analytics
- Services: Amazon OpenSearch
- Key Insights: And then near real time, because this is Data Firehose, data will be inserted in Amazon OpenSearch.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 31:
- Concepts: Log Analytics
- Services: Amazon OpenSearch
- Key Insights: Other patterns are on Kinesis, so to send Kinesis Data Streams into Amazon OpenSearch, you have two strategies.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 32:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: The first one is to use Kinesis Data Firehose.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 33:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: This is a near real time again type of service.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 34:
- Concepts: Event-Driven Automation, Log Analytics
- Services: AWS Lambda, Amazon OpenSearch
- Key Insights: You can optionally do some data transformation, using a Lambda Function and then send data into Amazon OpenSearch.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 35:
- Concepts: Event-Driven Automation
- Services: AWS Lambda
- Key Insights: Or you can use Kinesis Data Streams again, but this time, you would create a Lambda Function that would read the data stream in real time.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 36:
- Concepts: Event-Driven Automation, Log Analytics
- Services: AWS Lambda, Amazon OpenSearch
- Key Insights: And then you would write custom code to have the Lambda Function write to Amazon OpenSearch in real time.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 37:
- Concepts: Log Analytics
- Services: Amazon OpenSearch
- Key Insights: So all these patterns are valid, and now you know pretty much all the possible architectures for using Amazon OpenSearch.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 38:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 39:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/050_OpenSearch - Advanced.txt

Line 1:
- Concepts: Log Analytics
- Services: Amazon OpenSearch
- Key Insights: So now let's talk about OpenSearch security.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 2:
- Concepts: Log Analytics
- Services: Amazon OpenSearch
- Key Insights: We have two deployment modes and the first one is public access, so this makes your OpenSearch cluster accessible from the internet with a public endpoint.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 3:
- Concepts: Log Analytics
- Services: Amazon OpenSearch
- Key Insights: So that means you can restrict access to OpenSearch using access policies identity-based policies, and IP-based policies.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 4:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So this is a kind of diagram of the authorization flow.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 5:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So the client will send a public request with HTTP basic credentials.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 6:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: They will check whether or not we require IAM signing of these credentials.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 7:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Then the signing, the credentials themselves are going to be verified whether or not they're valid.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 8:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And then if true, then the fine-grained access control will see if the user is allowed to perform the action or not.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 9:
- Concepts: Log Analytics
- Services: Amazon OpenSearch
- Key Insights: And then OpenSearch will actually return full or partial data.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 10:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So what you have to remember out of public access is that if you want to restrict by IP, for example, this is based on public IP, of course.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 11:
- Concepts: Log Analytics
- Services: Amazon OpenSearch
- Key Insights: For VPC access, we need to specify the VPC, the subnets, security groups, and IAM role into which we deploy our OpenSearch cluster, we need to define VPC endpoints, absolutely, and ENIs will be created.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 12:
- Concepts: Log Analytics, Network Telemetry
- Services: Amazon OpenSearch
- Key Insights: And because now your OpenSearch cluster is deployed within your VPC, if you wanted to access it from within your own machine, you will need to be connected to the local network of AWS, so either using a VPN or transit gateway or managed network or a side-to-side VPN or proxy server, whatever you want, but you would need to be connected through the VPC.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 13:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You can then restrict the VPC access using access policies and identity-based policies and as well your security groups.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 14:
- Concepts: Log Analytics
- Services: Amazon OpenSearch
- Key Insights: So the authorization flow is a little bit more complicated here, but the client will be using IAM credentials to connect to OpenSearch, so whether or not it will connect to the VPC first and then go through the security group, so is everything authorized true, true perfect?
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 15:
- Concepts: Log Analytics
- Services: Amazon OpenSearch
- Key Insights: Then we'll check whether or not the IAM credentials are valid and then whether or not the access policy allows the client to access our OpenSearch cluster.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 16:
- Concepts: Log Analytics
- Services: Amazon OpenSearch
- Key Insights: Then the fine-grained access control will take action and then finally, OpenSearch will return the full or partial data.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 17:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So what are these policies that we can create?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 18:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Well, we have something called the domain access policy which we're going to specify only in VPC which actions the principal can can perform on the domain sub-resources, so the indexes or the specific APIs.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: Log Analytics
- Services: Amazon OpenSearch
- Key Insights: For example, this policy grants the IAM user full access on all the OpenSearch domain sub-resources because we have action es star for a specific principal for a user on the domain test domain, which is our test domain for OpenSearch slash star, so any resources there.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 20:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And this policy right here only allows HTTP GET and HTTP PUT on the commerce data within the test domain.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 21:
- Concepts: Log Analytics
- Services: Amazon OpenSearch
- Key Insights: So we can go very fine grained based on the domain access policy and that's how you manage security in OpenSearch.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 22:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: All right, that's it, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/aws-solutions-architect-professional/04_Security/015_CloudTrail.txt

Line 1:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Now let's talk about CloudTrail.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 2:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So CloudTrail is a way to get governance compliance and audit for your AWS Accounts.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 3:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And CloudTrail is enabled by default.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 4:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: This will allow you to get a history of all the events and API Calls made within your AWS Accounts, by the console by the SDK, the CLI other services on AWS and all these logs will be appearing in CloudTrail.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 5:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon CloudWatch, Amazon S3, CloudWatch Logs
- Key Insights: Now, what you can do is that you can also put these logs from CloudTrail into CloudWatch Logs or Amazon S3.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 6:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: And you can create a trail to be applied to all regions or a single region, if you wanted to accumulate all these history of events accumulated across all regions into one specific, for example, S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 7:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And when we use CloudTrail, for example, we'll say someone went ahead and deleted something in AWS.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 8:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: For example, say that an EC2 instance was being terminated and you wanna figure out who did it?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 9:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Well, the answer is to look into CloudTrail because CloudTrail will have that API Call in it and will be able to get to the bottom of it and understand who did what and when.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 10:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So to summarize CloudTrail is in the middle and the actions of the SDK, the CLI, or the console or even IAM Users and IAM Roles or other services will be in the CloudTrail console.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 11:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: We can look in it to inspect and audit what happened.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 12:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, Amazon S3, CloudWatch Logs
- Key Insights: And if you want to have all the events for more than 90 days, then we can send them into CloudWatch Logs or we can send them into an S3 buckets.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 13:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So let me dive a little bit deeper for CloudTrail.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 14:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So we have three kinds of events that you can see in CloudTrail.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 15:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: The first one is called the Management Events and these represents operations that are performed on resources in your AWS Accounts.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 16:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: For example, whenever someone configures security, they will use the API Call called IAM AttachRolePolicy.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And this will appear in CloudTrail.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 18:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: If you create a subnet, this will appear as well.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 19:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: If you set up logging, this will appear by default.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 20:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Anything that modifies your resources or your iOS accounts will appear in CloudTrail.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 21:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And by default, trails are configured to log Management Events no matter what.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 22:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You can separate two kind of Management Events.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 23:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You have the Read Events that don't modify resources.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 24:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: For example, someone is listing all the users in IAM or listing all the EC2 instances in EC2, these kind of things.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 25:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You can separate them from Write Events that may modify resources.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 26:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: For example, someone deletes or tries to delete a DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 27:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And obviously the Write Events have probably a lot more importance because they can wreck damages into your AWS infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 28:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Whereas the Read Events is just to get information which are still very important, but maybe less destructive.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 29:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Then you have Data Events.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 30:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So they're separate and by default Data Events as are not logged because they're high volume operations.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 31:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So what are Data Events?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 32:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: Well, you have Amazon S3 object level activity for example, GetObject, DeleteObject, PutObject.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 33:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: And as you can see, these can be happening a lot on an S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 34:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And so this is why they're not logged by default and you have the option to separate again Read and Write Events.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 35:
- Concepts: Event-Driven Automation
- Services: (none explicit)
- Key Insights: So a Read Event will be a GetObject whereas a Right Event would be a DeleteObject or a PutObject.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 36:
- Concepts: Audit Logging, Event-Driven Automation
- Services: AWS CloudTrail, AWS Lambda
- Key Insights: Another kind of event you can have in a CloudTrail are AWS Lambda function execution activities.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 37:
- Concepts: Event-Driven Automation
- Services: AWS Lambda
- Key Insights: So whenever someone uses the Invoke API so you can get insights about how many times your Lambda functions are being evoked.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven automation signal.

Line 38:
- Concepts: Event-Driven Automation
- Services: AWS Lambda
- Key Insights: And again, this could be really high volumes, if your Lambda functions are executed a lot.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 39:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And the third kind of events in CloudTrail are called CloudTrail Insights Events.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 40:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And so I will talk to you about CloudTrail Insights in a bit more details in the next slide.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 41:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So now let's talk about CloudTrail Insights.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 42:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So when we have so many Management Events across all types of services and so many APIs happening very quickly in your accounts, it can be quite difficult to understand what looks odd, what looks unusual and what doesn't.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 43:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And so this is where CloudTrail Insights comes in.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 44:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So with CloudTrail Insights and you have to enable it and you have to pay for it, it will analyze your events and try to detect unusual activity in your accounts.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 45:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: For example, in accurate resource provisioning, hitting service limits, burst of AWS IAM actions, gaps in periodic maintenance activity.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 46:
- Concepts: Audit Logging, Event-Driven Automation
- Services: AWS CloudTrail
- Key Insights: So the way it works is that CloudTrail will analyze what normal management activities look like to create the baseline and then it will continuously analyze anything that is the right type of event.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 47:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So whenever something is changed or try to be changed to detect unusual patterns.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 48:
- Concepts: Audit Logging, Event-Driven Automation
- Services: AWS CloudTrail
- Key Insights: So very simply the Management Events are going to be continuously analyzed by CloudTrail Insights which will generate Insights Event in case something is detected.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 49:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And so these anomalies, so these Insight Events will appear in the CloudTrail console.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal; Incident investigation and triage signal.

Line 50:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: They will also be sent to Amazon industry if you want to, and an EventBridge Event.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 51:
- Concepts: Audit Logging, Event-Driven Automation
- Services: AWS CloudTrail, Amazon CloudWatch
- Key Insights: So in CloudWatch event is going to be generated in case you need to automate on top of these CloudTrail Insights, for example, to send an email.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven automation signal; Telemetry, audit, and observability signal.

Line 52:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So this is the idea behind CloudTrail Insights.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 53:
- Concepts: Audit Logging, Event-Driven Automation, Retention and Forensics
- Services: AWS CloudTrail
- Key Insights: Finally, let's talk about CloudTrail Event Retention.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 54:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So events by default are stored for 90 days in CloudTrail and then afterwards they're deleted, but sometimes you may want to have events for longer in case you want to go back to something that happened maybe a year ago for audited purposes.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 55:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: And so to keep events beyond this period, what you have to do is that you have to log them to S3.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 56:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: So send them to S3, and then you would use Athena to analyze them.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 57:
- Concepts: Audit Logging, Retention and Forensics
- Services: AWS CloudTrail
- Key Insights: So very simply all your Management Events, your Data Events and your Insights Events are going to go into CloudTrail for 90 days, retention period.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 58:
- Concepts: Retention and Forensics
- Services: Amazon S3
- Key Insights: And then you would log those into your S3 buckets for long-term retention.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 59:
- Concepts: Log Analytics
- Services: Amazon Athena, Amazon S3
- Key Insights: And when you're ready to analyze them, you would use the Athena service, which is a serverless service to query data in S3 to find the events Okay I hope you like this lecture, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

### File: outputs/aws-solutions-architect-professional/04_Security/016_CloudTrail - EventBridge Integration.txt

Line 1:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: A very important cultural integration you need to know about is the one with Amazon EventBridge to intercept any API calls.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven automation signal.

Line 2:
- Concepts: Audit Logging
- Services: Amazon SNS
- Key Insights: So let's say you wanted to receive an SNS notification, anytime a user would delete a table in DynamoDB by using the DeleteTable API Call.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 3:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So what happens that whenever we do an API call in AWS, as you know, the API call itself is going to be logged in CloudTrail.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 4:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: That's for any API call.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 5:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: But then all these API calls will end up as events as well in Amazon EventBridge.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 6:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: And so we can look for that very specific delete table API call, and create a rule out of it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 7:
- Concepts: Operational Monitoring Context
- Services: Amazon SNS
- Key Insights: And this rule will have a destination the destination being Amazon SNS and therefore, we can create alerts.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 8:
- Concepts: Audit Logging, Event-Driven Automation
- Services: AWS CloudTrail, Amazon EventBridge
- Key Insights: So let me give you a few more examples on how you can integrate Amazon Eventbridge and CloudTrail.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 9:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: For example, say, you wanted to be notified whenever a user was assuming a role in your accounts.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So the AssumeRole is an API in the IAM service and therefore, is going to be logged by CloudTrail.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 11:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge, Amazon SNS
- Key Insights: And then using EventBridge integration, we can trigger a message into an SNS topic.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 12:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Similarly, we can also intercept API calls that, for example, change the Security Group inbound rules.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 13:
- Concepts: Audit Logging
- Services: Amazon EC2
- Key Insights: So the Security Group call is called AuthorizeSecurityGroupIngress, and it's an EC2 API call.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 14:
- Concepts: Audit Logging, Event-Driven Automation
- Services: AWS CloudTrail, Amazon EventBridge, Amazon SNS
- Key Insights: So these are going to be logged again by CloudTrail and then they will appear in EventBridge and then we can trigger a notification in SNS.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 15:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So as you can see, the possibilities are endless, but now you have a few ideas of how the integration can be leveraged.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 16:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

### File: outputs/aws-solutions-architect-professional/04_Security/017_CloudTrail - SA Pro.txt

Line 1:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Okay, so now let's discuss CloudTrail and some solution architectures that can be interesting with CloudTrail.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 2:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: So the first one is around how to deliver files from CloudTrail to S3 and the type of use case that it opens up.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 3:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: So we have CloudTrail, and you can set up a dump of the CloudTrail files into S3 every five minutes.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 4:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And so this encryption can be enabled.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 5:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: And by default it's going to be SSE-S3 encryption.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 6:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: But you can set up manually SSE-KMS for your CloudTrail files.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 7:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: You could set up a lifecycle policy on your S3 buckets to deliver files to the Glacier tier in case they're archives and you don't need to have them around for a long time or you just wanna archive them and make sure that if you need to access them you can wait maybe for 6, 12 hours before you analyze these.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Event-Driven Automation
- Services: AWS Lambda, Amazon S3, Amazon SNS
- Key Insights: When a file is delivered into S3, you can leverage S3 events to notify either an SQS queue, an SNS topic, or a Lambda function.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 9:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon SNS
- Key Insights: But you can also have CloudTrail deliver notifications directly into SNS.
- Hidden/Implicit Meaning: Event-driven automation signal; Telemetry, audit, and observability signal.

Line 10:
- Concepts: Event-Driven Automation
- Services: AWS Lambda, Amazon SNS
- Key Insights: And from SNS you could invoke SQS or Lambda.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 11:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So this gives you a bunch of different options you can have for this architecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 12:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: As you can see, there's not one way of doing things.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 13:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: But getting into thinking how these things fit together is the key to passing the Solutions Architect Professional exam.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 14:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: Okay, on top of it, you need to think about all the enhancements we can have from S3.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So we can enable versioning to prevent accidental deletes.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 16:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: We can have MFA for delete protection.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 17:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: We can have S3 lifecycle policies, as I said, to move it to S3 IA or Glacier.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 18:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: You can have S3 object lock to make sure that the S3 buckets' objects are never deleted and will never be modified as well.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So this could be very powerful.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 20:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: You can enable encryption such as SSE-S3 or SSE-KMS.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 21:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: And you can even have a feature to perform CloudTrail log file integrity validation that will verify that the files delivered in S3 are exactly as they should be and they have not been tempered with, they have not been modified.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 22:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So this is getting interesting, right?
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 23:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: Because from CloudTrail, in combining this with S3 and all these notifications, we can have a bunch of use case being opened up.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 24:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So this is hopefully opening some stuff for you and helping you understand the kind of architectures we can be looking at going into the exam.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 25:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay, another architecture now.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 26:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: CloudTrail can be multi-account and multi-region.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 27:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So say we have two accounts, Account A and Account B.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 28:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And we have a security account that we want to send the logs to.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 29:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So we'll have CloudTrail in the first account and CloudTrail in the second account.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 30:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: And we'll set up an S3 bucket that will be holding the logs of all these CloudTrails.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 31:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: The thing is CloudTrail needs to be delivering these log files into the S3 buckets of the security account.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 32:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: And so the only way for us to do it is to define an S3 bucket policy.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 33:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: And the S3 bucket policy should allow CloudTrail to deliver files into S3.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 34:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: And the cool thing we have here is that the S3 bucket policy, first of all, is necessary and very simple to maintain for cross-account delivery.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 35:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: The second is that if Account A needs to access you know, the logs for the CloudTrail bucket we can create, for example, a cross-account role and assume the role in the security account.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 36:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Or we can edit the bucket policy to allow reads from the Account A.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 37:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So it's really up to you to see the kind of architectures then you need.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 38:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: But it's really interesting here to see that there's different options to provide the reads access to S3 based on the use case.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 39:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And on top of it, we have demonstrated a good way to have a security account in the middle to keep all these CloudTrail logs into a secure place.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 40:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And maybe the security account has a much tighter security for user management and so on.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 41:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And so we have the certainty that these logs are safe and secure for a long time.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 42:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay, so yet another solution architecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 43:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Say you want to create alerts when certain API calls are done.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 44:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So you have CloudTrail.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 45:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: And you can stream all these events into CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 46:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: And then from CloudWatch Logs you can open up a bunch of use case.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 47:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, CloudWatch Alarms, CloudWatch Logs
- Key Insights: And one of the things you can do with CloudWatch logs is to create a metrics filter and then a CloudWatch alarm on top of it.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 48:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: And this filter will basically filter for the API call you're looking for.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 49:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Maybe you're looking for a terminate instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 50:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So you create metric filter for terminate instance.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 51:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And then if that filter passes through then you would have the metric incremented by one.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 52:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon SNS, CloudWatch Alarms
- Key Insights: And maybe your CloudWatch alarm is set up to be triggered whenever the metric filter is equals to one, in which case the CloudWatch alarm can deliver to an SNS topic.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven automation signal; Telemetry, audit, and observability signal.

Line 53:
- Concepts: Event-Driven Automation
- Services: AWS Lambda, Amazon SNS
- Key Insights: And from that SNS topic, you could have a Lambda function.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 54:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You could have an SQS queue.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 55:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You could have multiple things.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 56:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: But this would be a way to create alerts for API calls.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 57:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Now these log metric filters can be detecting also a high level of API happening.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 58:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Doesn't have to be a specific API.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 59:
- Concepts: Operational Monitoring Context
- Services: Amazon EC2
- Key Insights: So you can be counting the occurrences of a specific API, for example terminate EC2 instances or count the API calls per user or detect a high level of denied API calls.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 60:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Maybe someone is trying to breach into your security.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 61:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: So it's not just for one API call you can be creating a metrics filter.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 62:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Alarms
- Key Insights: And CloudWatch alarms is for counting them or detecting high level of unusual activity.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 63:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Okay, so there is another feature of CloudTrail need to know about, which is the organizational trail.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry, audit, and observability signal.

Line 64:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So if you have AWS organizations, for example, you have a management account, and then you have several OUs with other member accounts, then it is possible for you to set up a organizational trail directly in the management accounts.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 65:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Okay, so it's very important for you to remember this trail is created in the management accounts and not in the children accounts, in the member accounts of your organization.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 66:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: Now what's happening is that once you create this trail then any events into all the member accounts will be monitored by this trail directly, which is very easy to understand.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 67:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So that means that any accounts in the prod OU or the dev OU will be monitored.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 68:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: And from there, while you can send the information from a trail into an S3 bucket, that will be again in your management accounts.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 69:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: And this S3 bucket will contain a certain kind of organization, where as you see the suffix of the S3 prefix represents the account number that is being monitored by CloudTrail.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 70:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So how can you react to events the fastest in CloudTrail?
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 71:
- Concepts: Audit Logging, Event-Driven Automation
- Services: AWS CloudTrail
- Key Insights: Well, first of all, any event in CloudTrail may take 15 minutes to be delivered.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 72:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So this is something to know.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 73:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: But anyways, so we have EventBridge.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 74:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And this is cool because this can be triggered for any API call done within CloudTrail, which gives you by far the fastest, most reactive way to react to any events in CloudTrail.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 75:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So you can have deep integration between them.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 76:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon CloudWatch, CloudWatch Logs
- Key Insights: Then we have CloudTrail Delivery in CloudWatch logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 77:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: So that means that all the events are going to be streamed in the CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 78:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And you can create a metric filter to analyze occurrences and detect anomalies.
- Hidden/Implicit Meaning: Incident investigation and triage signal.

Line 79:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So this is when you wanna see if someone is trying too fast to log into your accounts, that kind of things that could be a trigger for maybe an attack.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 80:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: And you have CloudTrail Delivery in Amazon S3.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 81:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So there the events are delivered every five minutes.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 82:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: And you have also the possibility to guarantee that the logs in S3 are having integrity with a hashing feature.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 83:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: You can deliver them cross-account.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 84:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: It's good for long-term storage and analytics.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 85:
- Concepts: Event-Driven Automation
- Services: Amazon EventBridge
- Key Insights: So based on use case you have, if you want to react to an event right away, it's EventBridge.
- Hidden/Implicit Meaning: Event-driven automation signal.

Line 86:
- Concepts: Operational Monitoring Context
- Services: Amazon CloudWatch, CloudWatch Logs
- Key Insights: If you want to count events, it's going to be CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry, audit, and observability signal.

Line 87:
- Concepts: Operational Monitoring Context
- Services: Amazon S3
- Key Insights: And if you want to do analytics on all of them at scale, it's going to be Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 88:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 89:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

Line 90:
- Concepts: Operational Monitoring Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes monitoring behavior detail.

## Step 2 — Consolidation

### 1. Concepts List
- Audit Logging
- Detection Correlation
- Event-Driven Automation
- Log Analytics
- Network Telemetry
- Operational Monitoring
- Operational Monitoring Context
- Retention and Forensics

### 2. Services List
- AWS CloudTrail
- AWS Lambda
- Amazon Athena
- Amazon CloudWatch
- Amazon EC2
- Amazon EventBridge
- Amazon OpenSearch
- Amazon S3
- Amazon SNS
- Amazon VPC Flow Logs
- CloudWatch Alarms
- CloudWatch Contributor Insights
- CloudWatch Logs
- Route 53 Query Logging
- Unified CloudWatch Agent
- VPC Traffic Mirroring

### 3. Features List
- agent
- alarms
- archive
- automation
- dashboard
- event
- filter
- insights
- integration
- metrics
- query
- retention
- trail

### 4. Use Cases
- 016_[SOA] Logging in AWS for Security and Compliance.txt:7: CloudWatch logs if you want to have full data retention, so for example, want to log application logs or whatever, we can do it there.
- 017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt:19: For example, you would get some information around how much time a CPU will be using, a process will be using the CPU, or how much memory a process will be using, or the process that are running directly on your EC2 instance.
- 017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt:20: So you can select which processes to monitor by PID file.
- 017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt:22: If you want it to filter again, the processes to monitor and all the metrics related to your statistics of your processes on your Linux or windows servers, we'll be starting with a procstat prefix, so procstat_time, procstat_cpu_usage, and so on.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:13: And then the role name should be, for example Amazon EC2 role for CloudWatch.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:87: Do you want to monitor any host metrics such as CPU, memory etcetera?
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:118: Now, do you want to monitor any log files?
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:124: And the log retention in days we could do minus one, for infinity or we could say, for example, five for seven day retention.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:153: And this is only needed when you do the setup of the CloudWatch unified agents.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:191: So config the JSON file that has been generated using the wizard, for example and then the agent can start the quiz from this static configuration file.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:211: And then we can go, for example, by instance ID and here find the memory used percent which represents how much ram is being used by my EC2 instance.
- 019_CloudWatch Unified Agent - Troubleshooting.txt:1: So you need to be able to troubleshoot issues with the Unified CloudWatch Agent.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:9: For example, to export them in batch into Amazon S3 or to stream them into Kinesis Data Streams, Kinesis Data Firehose, AWS Lambda, Amazon OpenSearch.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:27: This visualization can also be exported either as a result or added to a dashboard for being able to rerun it whenever you want.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:30: For example, you can find the most 25 most recent events, or you can have a look at how many events had exceptions or errors in your logs, or you can look for a specific IP and so on.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:37: And so as such, it will only query historical data when you run the query.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:48: This would be a great choice if you wanted to use, for example, the integration with Kinesis Data Firehose, Kinesis Data Analytics, or Amazon EC2, or Lambda.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:50: From there, you can send it in near real-time fashion into Amazon S3, or for example, the OpenSearch Service, or you have Lambda.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:61: And when you have all these things in place, then it is possible for you to send data from CloudWatch Logs in one account into a destination in another account.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:3: For example, this one was created by Lambda.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:5: This one was created by glue and this one was created by us when we did do an SSM runCommand and we wanted the output to be populated in this log group.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:6: So, if we take a look at this example, for example, we have six log streams and so each of them represents a different instance that we did run a specific run command on.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:11: And the idea is that, from the log for example, you can look through the keyword http and it would show you all the log lines that contain the word htp.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:12: If you just look for the word installing, for example, it will show you just maybe two or three log lines that contain the word installing.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:16: For example, installing.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:17: Okay, And then we need to select for example, a custom data, for example, this log stream and then we test a pattern and it's going to give us three matches out of five in the simple logs.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:23: When there is a filter pattern or matching occur and so, you can say one for example, to add one and to count how many times this installing lines have been filmed.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:29: But the idea is that, we could create an alarm on top of this metric filter So we can click on create alarm. and this would allow us to create an alarm in case, for example, a metric went over a specific value and again, this metric is calculated based on the filter from the log streams.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:44: So for example, we can create this one and run the query.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:53: Or, you can look at some simple queries and view the use cases of losing log insights for example, view the latency statistics for a five minute interval on Lambda, or get the top 10 by transfers by source and destination IP addresses for VPC flow logs.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:54: So it gives you, for example, if you should click on these, some nice insights to how the query language works for CloudWatch logs insights.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:8: For example, 10 seconds, 30 seconds, or multiple of 60 seconds.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:12: For example, a scale out or a scale in.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:13: And the last one is to send a notification to the SNS service, for example, and from the SNS service, we can hook it to a Lambda function and have the Lambda function do pretty much anything we want based on an alarm being breached.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:17: So it's very helpful to reduce alarm noise because you can create complex Composite Alarms and saying, for example, if the CPU is high and the network is high, then don't alert me because I only wanna know when the CPU is high and the network is a low, these kind of things.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:19: So therefore we create a first underlying alarm called the Alarm A, which is going to monitor the CPU of the EC2 instance.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:20: Then you create Alarm B, which is going to monitor the IOPS of the EC2 instance, and then the composite alarm is defined as the junction of Alarm A and Alarm B.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:21: And therefore, if Alarm A is in alarm and Alarm B is in alarm, and this is something we have to define ourselves, then the Composite Alarm itself will be an alarm and can trigger, for example, an SNS notification.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:28: So you'll monitor a specific EC2 instance, and in case the alarm is being breach, then you can start an EC2 instance recovery to make sure, for example, that you move your EC2 instance from one host to another.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:29: When you do a recovery, you get the same private, public, and elastic IP, the same metadata and the same placement group for your instance.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:34: And then when we receive too many instances of a specific word, for example, the word error, then do an alert and send a message into Amazon SNS.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:36: And this is helpful when you want to trigger an alarm, even though it didn't reach a specific threshold because you wanted to see whether or not the alarm being triggered results in the correct action for your infrastructure.
- 023_[SAA_DVA_SOA] CloudWatch Alarms Hands On.txt:25: So I will say for example, if you're a greater than 95% for a long time, so for, and here you can say, three out of three.
- 023_[SAA_DVA_SOA] CloudWatch Alarms Hands On.txt:44: And so the action is, when in alarm terminate the instance.
- 024_CloudWatch Contributor Insights.txt:4: Well, this is the use case to find the top talkers, for example, on your network and to understand who is what and what is impacting system performance.
- 024_CloudWatch Contributor Insights.txt:5: So for example, if you have network data and logs on CloudWatch Logs, then this allows you to find the bad host, to identify the heaviest network users, or to find the URLs that generate the most errors.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:3: For example, we can schedule cron jobs in the Cloud, so we can schedule scripts.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:4: For example, we say, "Hey, every hour please trigger a Lambda function," and that Lambda function will run a script.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:7: For example, you can react to the event of IAM root user sign in in the console.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:8: So when that happens, maybe you want to send a message into an SNS topic and receive an email notification, so that if anyone is using the root account, then you will receive an email, which may be a good security feature for your accounts.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:9: Also, for example, you have different destinations, you can trigger Lambda functions, send SNS and SQS messages, and so on, I will show you this all in a second.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:11: So for example, EC2 instances when they start, when they're stop, when they're terminated, and so on.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:12: Code Build, for example, if you have a build that fails or S3, whenever there's an event, for example, when an object is uploaded, or Trusted Advisor when you have a new finding of security in your accounts or as a good combo, you can combine EventBridge and CloudTrail and actually intercept any API call made within your AWS accounts, which is huge.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:15: For example, you say, "Hey, I only want these events for a specific bucket," for Amazon is free, for example.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:17: So which instance, for example, gets started, whether its ID, and so on.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:20: For example, you can schedule and trigger a Lambda function, you can schedule a batch in AWS Batch, you can launch an ECS task for Amazon ECS, you can send a message to SQS, to SNS, or even to a Kinesis Data Stream, you can, for example, start a Step Function, you can start a CI/CD Pipeline with CodePipeline or a build with CodeBuild so you don't actually know all these things, of course, these are different AWS services, but I'm just giving you an overview what you can do and you can also, for example, start an SSM automation or a specific EC2 action, such as starting or stopping or restarting an EC2 instance.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:21: So you can see the possibilities are endless and it really depends on what is your use case.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:24: So if you're using, for example, Zendesk, Datadog, Auth0, or others, you need to check the partner list.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:30: For example, say there is a bug in your Lambda function and you want to fix it, so you fixed it and then you want to retest the event, replay it, then you can replay these archived events, which is super handy for debugging, super handy for troubleshooting, and for fixing production as well.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:33: For example, this is an example here for a specific CodePipeline in action.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:38: For example, you can say that a specific event bus can be allowed or denied other events from other regions or accounts and the use case for it, for example, would be to have a central events bus within your AWS organization, so a set of accounts and then all these events are going to be aggregated, so how does that work?
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:39: Well, we have a central event bus with a specific account and we're going to add a specific resource based policy, allowing other accounts to send events to it and therefore, this other account, for example, will be able to do a put events and send events directly into the central event bus.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:41: So remember, you can react to events happening within your accounts, thanks to the default event bus, but also partner events and also your own events with custom buses, you have the Schema Registry capability, and then you have resource based policies, which allow you to have a cross accounts, for example, capability for event buses.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:14: For example, if you take any of these, for example, if you take Lambda, you can have a look at all these things.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:25: So we can say Equal, for example, and we are going to have several values.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:58: Well, we have all these options such as, for example, running a task on Amazon ECS or putting a records in Kinesis Data Firehose or invoking a Lambda function.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:59: So you can say, for example, in the Invoke Lambda function, and if you have a Lambda function, you can select it from here.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:68: When they happen on the event bus, then you have an archive you can look into.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:72: So if you use, for example, Auth0, then the events of Auth0 will be put and inserted into Amazon EventBridge.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:73: And then you can, for example, use a Lambda function or do something after someone has done the login in of zero.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:76: That means that, for example, if you wanted to have an event within EventBridge, but then to connect to an external HTP destination, you can also define one here.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:77: And this allows you to connect EventBridge to an outside source, for example, to have integration with your own infrastructure.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:13: Now, the use cases for Amazon Athena are to do ad hoc queries, business intelligence, analytics, reporting, and to analyze and query any kind of logs that originates from your AWS services.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:20: And to get your files into the Apache Parquet or ORC format, you must use a service that we'll see as well in this section, for example, Glue.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:21: Glue can be very helpful to convert your data as an ETL job, between, for example, CSV and Parquet.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:25: And so you're organizing, you're partitioning your data in Amazon S3, so that when you query it, you can know exactly in which folder at which path Amazon S3, you need to scan for data.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:30: And so when I do a query on Athena, and I filter for a specific year, a specific month, and a specific day, then we'll know exactly to which folder in Amazon S3 to get the data from, and therefore we'll only recover a subset of the data.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:33: So if you have many, many, many small files in Amazon S3, Athena is not going to be as performance, as if you had larger files, for example, 128 megabytes, and over, because larger files are easier to scan, and easier to retrieve.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:35: So you know that Athena can query data in S3, but actually you can query data anywhere, for example, in relational or non-relational databases, you can query objects and custom data sources, would it be on AWS or on-premises.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:39: So that could be, for example, CloudWatch Logs, DynamoDB, RDS, and so on.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:41: For example, we have Athena here, and we have a Lambda function, and you'll have one Lambda function per Data Source Connector.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:12: And we can also type, for example, Athena here.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:45: For example, I'm going to just create a new query sheet right here.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:53: So if we're looking at, for example, not found errors, we say, hey, we're not supposed to have any, not found errors, but we see 142, maybe there's a problem.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:56: For example, to see if someone is trying to get unauthorized access to to your bucket.
- 029_Amazon Athena - Troubleshooting.txt:1: So let's talk about troubleshooting especially when QuickSight is trying to use Athena but there are insufficient permissions.
- 029_Amazon Athena - Troubleshooting.txt:6: And we'll see how to create a grant when we go into the last section, the last domain, to talk about KMS, we talk about KMS grants in details.
- 030_[SAA] CloudTrail.txt:6: And you can create a trail to be applied to all regions or a single region, if you wanted to accumulate all these history of events accumulated across all regions into one specific, for example, S3 buckets.
- 030_[SAA] CloudTrail.txt:7: And when we use CloudTrail, for example, we'll say someone went ahead and deleted something in AWS.
- 030_[SAA] CloudTrail.txt:8: For example, say that an EC2 instance was being terminated and you wanna figure out who did it?
- 030_[SAA] CloudTrail.txt:9: Well, the answer is to look into CloudTrail because CloudTrail will have that API Call in it and will be able to get to the bottom of it and understand who did what and when.
- 030_[SAA] CloudTrail.txt:16: For example, whenever someone configures security, they will use the API Call called IAM AttachRolePolicy.
- 030_[SAA] CloudTrail.txt:24: For example, someone is listing all the users in IAM or listing all the EC2 instances in EC2, these kind of things.
- 030_[SAA] CloudTrail.txt:26: For example, someone deletes or tries to delete a DynamoDB table.
- 030_[SAA] CloudTrail.txt:32: Well, you have Amazon S3 object level activity for example, GetObject, DeleteObject, PutObject.
- 030_[SAA] CloudTrail.txt:37: So whenever someone uses the Invoke API so you can get insights about how many times your Lambda functions are being evoked.
- 030_[SAA] CloudTrail.txt:42: So when we have so many Management Events across all types of services and so many APIs happening very quickly in your accounts, it can be quite difficult to understand what looks odd, what looks unusual and what doesn't.
- 030_[SAA] CloudTrail.txt:44: So with CloudTrail Insights and you have to enable it and you have to pay for it, it will analyze your events and try to detect unusual activity in your accounts.
- 030_[SAA] CloudTrail.txt:45: For example, in accurate resource provisioning, hitting service limits, burst of AWS IAM actions, gaps in periodic maintenance activity.
- 030_[SAA] CloudTrail.txt:47: So whenever something is changed or try to be changed to detect unusual patterns.
- 030_[SAA] CloudTrail.txt:51: So in CloudWatch event is going to be generated in case you need to automate on top of these CloudTrail Insights, for example, to send an email.
- 030_[SAA] CloudTrail.txt:59: And when you're ready to analyze them, you would use the Athena service, which is a serverless service to query data in S3 to find the events Okay I hope you like this lecture, and I will see you in the next lecture.
- 031_[CCP_SAA_DVA_SOA] CloudTrail Hands On.txt:6: So what I wanna do for example, is that I want to look in my EC2 console, and I created a demo instance.
- 032_CloudTrail - Data Lake.txt:12: So, these are dashboards directly from within the CloudTrail Lake console, and you have, for example, different kinds of dashboards.
- 032_CloudTrail - Data Lake.txt:14: For example, you could track the deletion of trails, you can get access denied errors in a dashboard and so on.
- 033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt:3: So what happens that whenever we do an API call in AWS, as you know, the API call itself is going to be logged in CloudTrail.
- 033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt:9: For example, say, you wanted to be notified whenever a user was assuming a role in your accounts.
- 033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt:12: Similarly, we can also intercept API calls that, for example, change the Security Group inbound rules.
- 034_[SOA] CloudTrail for SysOps.txt:4: So when you do API calls within AWS, they're going to be logged by CloudTrail and you can have these logs being sent into Amazon S3, okay, every one hour.
- 034_[SOA] CloudTrail for SysOps.txt:25: So this is not a real-time automation on top of API calls, but this is for you a way to get some kind of integration on top of any API calls made within CloudTrail when it is delivered into EventBridge.
- 035_CloudTrail to CloudWatch Metrics Filter - Example.txt:1: So let's say we have the use case of detecting whether or not we start too many EC2 instances at a time.
- 035_CloudTrail to CloudWatch Metrics Filter - Example.txt:3: Well, from CloudTrail, we know we can stream all the API calls being made in two CloudWatch logs, and from CloudWatch logs, we can define a metrics filter and we can set a threshold, for example, and look for the EC2 StartInstances API call and say that we want to trigger a CloudWatch alarm when we detect that metric to be above 30, and from there, maybe go into an SNS topic, and we can alert the security team because too many instances are started at a time.
- 036_CloudTrail - Integration with Athena.txt:2: So the idea is that you're going to use Athena directly to query CloudTrail logs stored in Amazon S3, for example, to analyze activity for security and compliance.
- 042_[SAA_SOA] VPC Flow Logs.txt:5: They're very helpful to monitor and troubleshoot connectivity issues happening within your VPC.
- 042_[SAA_SOA] VPC Flow Logs.txt:21: So how do we use flow logs to troubleshoot security group and NACL issues?
- 042_[SAA_SOA] VPC Flow Logs.txt:38: And then we can use something called CloudWatch contributor insights, for example, to find the top 10 IP addresses that contribute to the most amount of network on your VPC or on ENI or whatever you want.
- 042_[SAA_SOA] VPC Flow Logs.txt:40: Here, we can set up a metric filter to look for example for the SSH or the RTP protocols.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:35: So to do so when you click on Set Up Permissions so let's create a role.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:75: And if I wanted to get some defense, I could for example, if this IP address was annoying me too much, I could block it at the that code level, for example and not have this traffic.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:77: But if I were to do some activity on my S3 instance and connect to Google for example, we would see some traffic with Accept as well.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:81: So this is very helpful and you'll use Amazon S3 if you wanted to do some more bigger analysis for example, using Athena.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:133: So we can get a lot of information from Athena and we can start doing some complex queries to try to group for example, by IP addresses, see who is attacking us the most where we're attacked the most, and so on.
- 045_[SAA_SOA] VPC Traffic Mirroring.txt:23: So the use cases for VPC traffic mirroring is going to be around content inspection, threat monitoring, or troubleshooting from a networking perspective, okay.
- 046_VPC Traffic Mirroring - Architectures.txt:9: So in this case, we have the same EC2 instances we want to monitor but then we're going to, in a private subnet, create different kind of EC2 instances based on their function.
- 046_VPC Traffic Mirroring - Architectures.txt:18: There's also a way to automate VPC traffic mirroring.
- 047_VPC Network Access Analyzer.txt:3: So for example you say, hey, a requirement of my network is that none of the resources should be publicly available.
- 047_VPC Network Access Analyzer.txt:11: So let's say for example, you have a VPC and a public subnet and within it, you have created an Amazon RDS database, and your network administrator arrives and says that, "Hey, I don't want any of my internet databases to be public and open." So this is a network access scope and then automatically, it's going to be sent to Network Access Analyzer and we're going to run an analysis.
- 048_Route 53 - Query Logging.txt:7: For example, by your EC2 instances, your Lambda functions, and so on.
- 048_Route 53 - Query Logging.txt:19: Well, for example all the DNS logs can be sent into CloudWatch Logs, from which we can use CloudWatch Logs insights to find specific data.
- 048_Route 53 - Query Logging.txt:20: Or we can use CloudWatch Contributor insights to find the most common DNS queries amongst our CloudWatch logs and try to understand whether or not we're being attacked, for example.
- 049_[SAA] OpenSearch.txt:22: For example, to do a partial search with the item name and then find the item ID out of it.
- 050_OpenSearch - Advanced.txt:10: So what you have to remember out of public access is that if you want to restrict by IP, for example, this is based on public IP, of course.
- 050_OpenSearch - Advanced.txt:19: For example, this policy grants the IAM user full access on all the OpenSearch domain sub-resources because we have action es star for a specific principal for a user on the domain test domain, which is our test domain for OpenSearch slash star, so any resources there.
- 015_CloudTrail.txt:6: And you can create a trail to be applied to all regions or a single region, if you wanted to accumulate all these history of events accumulated across all regions into one specific, for example, S3 buckets.
- 015_CloudTrail.txt:7: And when we use CloudTrail, for example, we'll say someone went ahead and deleted something in AWS.
- 015_CloudTrail.txt:8: For example, say that an EC2 instance was being terminated and you wanna figure out who did it?
- 015_CloudTrail.txt:9: Well, the answer is to look into CloudTrail because CloudTrail will have that API Call in it and will be able to get to the bottom of it and understand who did what and when.
- 015_CloudTrail.txt:16: For example, whenever someone configures security, they will use the API Call called IAM AttachRolePolicy.
- 015_CloudTrail.txt:24: For example, someone is listing all the users in IAM or listing all the EC2 instances in EC2, these kind of things.
- 015_CloudTrail.txt:26: For example, someone deletes or tries to delete a DynamoDB table.
- 015_CloudTrail.txt:32: Well, you have Amazon S3 object level activity for example, GetObject, DeleteObject, PutObject.
- 015_CloudTrail.txt:37: So whenever someone uses the Invoke API so you can get insights about how many times your Lambda functions are being evoked.
- 015_CloudTrail.txt:42: So when we have so many Management Events across all types of services and so many APIs happening very quickly in your accounts, it can be quite difficult to understand what looks odd, what looks unusual and what doesn't.
- 015_CloudTrail.txt:44: So with CloudTrail Insights and you have to enable it and you have to pay for it, it will analyze your events and try to detect unusual activity in your accounts.
- 015_CloudTrail.txt:45: For example, in accurate resource provisioning, hitting service limits, burst of AWS IAM actions, gaps in periodic maintenance activity.
- 015_CloudTrail.txt:47: So whenever something is changed or try to be changed to detect unusual patterns.
- 015_CloudTrail.txt:51: So in CloudWatch event is going to be generated in case you need to automate on top of these CloudTrail Insights, for example, to send an email.
- 015_CloudTrail.txt:59: And when you're ready to analyze them, you would use the Athena service, which is a serverless service to query data in S3 to find the events Okay I hope you like this lecture, and I will see you in the next lecture.
- 016_CloudTrail - EventBridge Integration.txt:3: So what happens that whenever we do an API call in AWS, as you know, the API call itself is going to be logged in CloudTrail.
- 016_CloudTrail - EventBridge Integration.txt:9: For example, say, you wanted to be notified whenever a user was assuming a role in your accounts.
- 016_CloudTrail - EventBridge Integration.txt:12: Similarly, we can also intercept API calls that, for example, change the Security Group inbound rules.
- 017_CloudTrail - SA Pro.txt:2: So the first one is around how to deliver files from CloudTrail to S3 and the type of use case that it opens up.
- 017_CloudTrail - SA Pro.txt:8: When a file is delivered into S3, you can leverage S3 events to notify either an SQS queue, an SNS topic, or a Lambda function.
- 017_CloudTrail - SA Pro.txt:23: Because from CloudTrail, in combining this with S3 and all these notifications, we can have a bunch of use case being opened up.
- 017_CloudTrail - SA Pro.txt:35: The second is that if Account A needs to access you know, the logs for the CloudTrail bucket we can create, for example, a cross-account role and assume the role in the security account.
- 017_CloudTrail - SA Pro.txt:38: But it's really interesting here to see that there's different options to provide the reads access to S3 based on the use case.
- 017_CloudTrail - SA Pro.txt:43: Say you want to create alerts when certain API calls are done.
- 017_CloudTrail - SA Pro.txt:46: And then from CloudWatch Logs you can open up a bunch of use case.
- 017_CloudTrail - SA Pro.txt:52: And maybe your CloudWatch alarm is set up to be triggered whenever the metric filter is equals to one, in which case the CloudWatch alarm can deliver to an SNS topic.
- 017_CloudTrail - SA Pro.txt:59: So you can be counting the occurrences of a specific API, for example terminate EC2 instances or count the API calls per user or detect a high level of denied API calls.
- 017_CloudTrail - SA Pro.txt:64: So if you have AWS organizations, for example, you have a management account, and then you have several OUs with other member accounts, then it is possible for you to set up a organizational trail directly in the management accounts.
- 017_CloudTrail - SA Pro.txt:79: So this is when you wanna see if someone is trying too fast to log into your accounts, that kind of things that could be a trigger for maybe an attack.
- 017_CloudTrail - SA Pro.txt:85: So based on use case you have, if you want to react to an event right away, it's EventBridge.

### 5. Constraints / Limitations
- 016_[SOA] Logging in AWS for Security and Compliance.txt:21: Now also, you should know that if you do put all these audit and security logs and compliance logs and you put them in S3, it is great to encrypt these logs and then for the bucket where you put all these logs, you can control the access using IAM and bucket policies, and even multi-factor authentication.
- 016_[SOA] Logging in AWS for Security and Compliance.txt:22: Finally, if you need to retain these logs for a very long time, remember you need to move these logs to Glacier for cost saving, or if you need all Glacier vault log then as we've seen, then we get compliance and saying no one can touch these logs for maybe seven years, or whatever.
- 016_[SOA] Logging in AWS for Security and Compliance.txt:24: But this is enough for you to understand basically the scope of all this logging that exists in AWS, how we can analyze it, how we should store it, and how we should have cost saying and compliance on top of it.
- 017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt:6: So the idea is that, if you wanted to get the memory metric from within your EC2 instances, the only way you could do it is using the CloudWatch Unified Agent.
- 017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt:13: So they're important because you are interacting with possibly the SSM Parameter Store, as well as the CloudWatch Logs and CloudWatch metrics services.
- 017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt:14: They need to be able to have the correct IAM permissions attached to your IAM role on your EC2 instance, or attached to your access keys that are deployed on your on-premises servers.
- 017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt:17: So, something you need to know that comes up in the exam is that there is a procstat Plugin, sorry, on the CloudWatch Agent.
- 017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt:23: So again, what we need to remember out of this is that if you wanted to get some information around the processes running and their associated metrics, the only way to do it would be to use the Unified CloudWatch Agents deployed on your institute's instances and configured to use that plugin.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:5: So we need to create an EC2 instance role and then we click on next.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:7: Next, we need to find permission policies to apply to this role.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:13: And then the role name should be, for example Amazon EC2 role for CloudWatch.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:22: We don't need to select a key pair if we don't want to, which is fine.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:24: Then we need to create a new security group and we'll allow SSH and HTTP traffic the third one, from the internet because we'll be launching a web server and we'll get the log from that server.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:44: And we need to just start our HTTPD server.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:54: So also, should there be any errors we can do /error_log and we'll get a list of all the errors that are happening for our HTTPD server.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:63: And it will be retrieved at run time if we need to.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:83: And it must be installed or the agent will fail to start.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:92: Again, something this is only possible by doing metric collection from within the EC2 instance.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:120: And now we need to enter the log file path.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:143: So to do so, we need to store the config.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:144: We need to store the config, this one in the SSM parameter store And to do so we need the right permissions.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:148: And of course, we'll do security and then modify IAM role and we'll need to attach this Amazon EC2 role for CloudWatch that I just created.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:152: So on one instance, we need to add the permissions to attach a policy and I will just type CloudWatch agent again and this time we'll attach the admin policy which has sufficient permission to put the parameter into SSM.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:153: And this is only needed when you do the setup of the CloudWatch unified agents.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:156: And now my EC2 instance should be able to perform this next action.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:166: Now which credential should be used?
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:189: So this should work.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:195: And as you can see, it says that the configuration version is succeeded and then it should be good to go.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:207: And again, if you went into the error log you will find the log stream right here that contains the error log stream, if we need to.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:230: So just to be done, if you are in the DevOps course you need to keep this instance running.
- 019_CloudWatch Unified Agent - Troubleshooting.txt:1: So you need to be able to troubleshoot issues with the Unified CloudWatch Agent.
- 019_CloudWatch Unified Agent - Troubleshooting.txt:2: So, in case the agents fails to start, it may be an issue with the configuration file, in which case, you should go into this file logs at this place on your EC2 instance, which is going to give you some configuration validation, and information.
- 019_CloudWatch Unified Agent - Troubleshooting.txt:3: If you cannot find the metrics collected by the CloudWatch Agent, of course, check whether or not you are in the correct namespace.
- 019_CloudWatch Unified Agent - Troubleshooting.txt:10: Check your IAM permissions, of course, because you may need to have a Custom Policy if you're missing it, or you can just use Managed Policies as well if you want to use a shortcut.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:3: And to do so, you must first define log groups.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:33: You can calculate aggregate statistics, you can sort events, limit the number of events, and so on.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:37: And so as such, it will only query historical data when you run the query.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:43: Instead, you must use the CloudWatch Logs subscription.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:56: So the nitty gritty of how this works is that you must use what's called destinations.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:17: Okay, And then we need to select for example, a custom data, for example, this log stream and then we test a pattern and it's going to give us three matches out of five in the simple logs.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:54: So it gives you, for example, if you should click on these, some nice insights to how the query language works for CloudWatch logs insights.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:14: So now let's talk about Composite Alarms, because we know that CloudWatch Alarms are on a single metric, but then if you wanted to have multiple metrics, you would need to use Composite Alarms.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:17: So it's very helpful to reduce alarm noise because you can create complex Composite Alarms and saying, for example, if the CPU is high and the network is high, then don't alert me because I only wanna know when the CPU is high and the network is a low, these kind of things.
- 023_[SAA_DVA_SOA] CloudWatch Alarms Hands On.txt:5: So we don't need to keep it or anything like this, we just want the instance to be launched.
- 023_[SAA_DVA_SOA] CloudWatch Alarms Hands On.txt:7: So we need to select a metric.
- 023_[SAA_DVA_SOA] CloudWatch Alarms Hands On.txt:8: And so for this, we need to choose a metric.
- 023_[SAA_DVA_SOA] CloudWatch Alarms Hands On.txt:9: So we need to go and find our EC2 instance.
- 023_[SAA_DVA_SOA] CloudWatch Alarms Hands On.txt:30: Okay, and it will say, hey, if you are in alarm, okay, then just terminate this instance because maybe I know that my application sometimes has a huge failure and the CPU installation will be at a 95% or a 100% for a very long time, And the only way to resolve this is to just terminate the instance.
- 023_[SAA_DVA_SOA] CloudWatch Alarms Hands On.txt:33: So now this alarm obviously does have insufficient data, so we need to wait 15 minutes for it to be okay, and it's not going to be triggered unless we make it so.
- 023_[SAA_DVA_SOA] CloudWatch Alarms Hands On.txt:38: And so we need to do set alarm state the alarm name and the state value and the state reason.
- 023_[SAA_DVA_SOA] CloudWatch Alarms Hands On.txt:40: So AWS CloudWatch set alarm states, and then we need to set multiple parameters.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:15: For example, you say, "Hey, I only want these events for a specific bucket," for Amazon is free, for example.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:24: So if you're using, for example, Zendesk, Datadog, Auth0, or others, you need to check the partner list.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:31: Now, EventBridge receives a lot of events from different places and so therefore, you need to understand what the events are going to look like and remember, these events are in this adjacent format we just saw.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:11: So we need to create a rule, and what we want to do is to react to any event where an instance is going to be terminated or shut down.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:42: Then we'll need to have an exception role to be able to send a message into this topic.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:62: Other things that you need to be looking at is event buses.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:10: You don't need to provision any database again, because the whole service is serverless.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:11: So Athena is commonly used with another tool, called Amazon QuickSight to create reports and dashboards.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:15: So as an exam tip, anytime you need to analyze data in Amazon S3 using a serverless SQL engine, you can think about Athena.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:17: So first of all, because you pay for the amount of data scanned per terabyte, you need to use a type of data where you're going to scan less data.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:18: And for this, you can use a columnar data type for cost-savings, because you only scan the columns you need.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:20: And to get your files into the Apache Parquet or ORC format, you must use a service that we'll see as well in this section, for example, Glue.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:22: Now, also because we want to scan less data, we need to compress data for smaller retrievals.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:25: And so you're organizing, you're partitioning your data in Amazon S3, so that when you query it, you can know exactly in which folder at which path Amazon S3, you need to scan for data.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:30: And so when I do a query on Athena, and I filter for a specific year, a specific month, and a specific day, then we'll know exactly to which folder in Amazon S3 to get the data from, and therefore we'll only recover a subset of the data.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:32: Finally, the last performance improvement you need to do, is to use bigger files, it's to minimize your overheads.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:2: So I'm going to launch the query editor, and here we have access to our UI, and before we run our first query, we need to set up a query result location in Amazon S3.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:4: In here you must enter an S3 bucket where you're going to put your query results.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:7: Alright, so this should be a unique bucket name.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:18: So what I need to do is that I need to go into my code editor right here and then we first create a database.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:28: And the only thing you have to modify is to actually change the location.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:29: So we need to have the target bucket name and the prefix in there.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:33: But if you had a folder, you need to add the prefix as well by adding a slash and then the name of the prefix.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:35: So I'm going to run this query and we need to have a trailing slash at the end.
- 029_Amazon Athena - Troubleshooting.txt:3: Number one is that QuickSight must be able to access your S3 buckets that are used by Athena.
- 029_Amazon Athena - Troubleshooting.txt:5: The second thing is that if the data in the S3 bucket is encrypted using a KMS key, so using the SSE-KMS type of encryption, then you make sure the QuickSight IAM role must be granted access to decrypt with the key, to do a kms:Decrypt.
- 029_Amazon Athena - Troubleshooting.txt:7: But you need to do a grant on what's called the IAM role of QuickSight to grant the role access to the underlying KMS key of the S3 buckets.
- 029_Amazon Athena - Troubleshooting.txt:9: It doesn't really matter, you don't need to know them, okay?
- 029_Amazon Athena - Troubleshooting.txt:11: And whatever role QuickSight is using should be the one you grant access to the KMS key.
- 030_[SAA] CloudTrail.txt:28: Whereas the Read Events is just to get information which are still very important, but maybe less destructive.
- 030_[SAA] CloudTrail.txt:45: For example, in accurate resource provisioning, hitting service limits, burst of AWS IAM actions, gaps in periodic maintenance activity.
- 030_[SAA] CloudTrail.txt:51: So in CloudWatch event is going to be generated in case you need to automate on top of these CloudTrail Insights, for example, to send an email.
- 032_CloudTrail - Data Lake.txt:7: The store is immutable, that means you can't change anything, can't remove it, and you have retention up to 10 years of data in there.
- 033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt:1: A very important cultural integration you need to know about is the one with Amazon EventBridge to intercept any API calls.
- 034_[SOA] CloudTrail for SysOps.txt:2: So here are a few things you need to know for CloudTrail going into the exam.
- 034_[SOA] CloudTrail for SysOps.txt:17: Finally, you should protect CloudTrail using IAM if you want to make sure that CloudTrail keeps on delivering these log files into Amazon S3.
- 034_[SOA] CloudTrail for SysOps.txt:32: And the member accounts cannot remove or modify the organization trail which is good for compliance.
- 034_[SOA] CloudTrail for SysOps.txt:33: They can only view that it exists.
- 034_[SOA] CloudTrail for SysOps.txt:34: So that's it for all the additional stuff you need to know on CloudTrail.
- 037_Monitoring Account Activity.txt:3: So first of all if you wanted to have the configuration history you must enable AWS config with a configuration recorder on and that gives you all the configuration of all your resources over time.
- 037_Monitoring Account Activity.txt:4: Then if you look at API history you must look into CloudTrail and CloudTrail Event history is going to give you the API history for the past 90 days from which you can filter by resource name, resource type, event name or even by IAM user or assumed IAM role session name or access key if you needed to.
- 042_[SAA_SOA] VPC Flow Logs.txt:10: And you don't need to remember this at a high-level, right?
- 042_[SAA_SOA] VPC Flow Logs.txt:29: But if we have a inbound accept and an outbound reject, it can only mean a NACL issue.
- 042_[SAA_SOA] VPC Flow Logs.txt:36: But if you get an outbound accept and inbound reject, then it must mean a NACL issue.
- 042_[SAA_SOA] VPC Flow Logs.txt:46: So there is an IAM service role associated with the VPC flow logs service, and it must have the required permissions to publish logs to CloudWatch Logs.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:9: So how long you need to wait to aggregate.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:15: We can send the destination to CloudWatch Logs And we need to specify a log group, we need to we can also send it to an Amazon S3 bucket.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:16: We need to specify the S3 bucket ARN or we can send it to Kinesis Data Firehose in the same account or in a different account.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:21: Now view the details of the bucket and now we need to get the bucket ARN.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:33: And we need to create a log group and an IAM role.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:84: So I'm going to click on New Settings, Manage and then I need to specify an S3 bucket where I'm going to store my results.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:86: So I call this one demo-athena-stephane-v2, and this should work.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:88: So I need to just do slash and then Athena.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:92: And now we have this query location being saved and I need to go ahead and start creating a database and then create some data.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:93: So what I need to do is to go in here and I will type AWS VPC flow logs Athena and this is going to take me into a tutorial on how to do it.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:94: So to do so, we need to create a table.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:98: And we need to specify where the data is.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:115: Now the second thing we need to do is to run another statement.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:118: And again, we need to specify a date and as well as the entire replacement for month, year, and day.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:122: And then we need to add a partition.
- 044_VPC Flow Logs - Advanced.txt:3: So, you have the traffic to the Amazon DNS Server, so only the custom DNS Server traffic is logged.
- 045_[SAA_SOA] VPC Traffic Mirroring.txt:22: We need to have the source and the targets to be in the same VPC, or it could be across different VPC, and if we have enabled VPC Peering.
- 045_[SAA_SOA] VPC Traffic Mirroring.txt:24: It's very hard to demonstrate this in a demo, but this diagram should be enough.
- 046_VPC Traffic Mirroring - Architectures.txt:11: In this case, what we need to do is to do traffic mirroring into what we call a Cloud Packet Broker.
- 046_VPC Traffic Mirroring - Architectures.txt:22: So that instance is in my VPC, but first we need to make sure from the Lambda function that we launch a virtual monitoring appliance to receive that mirror traffic.
- 047_VPC Network Access Analyzer.txt:3: So for example you say, hey, a requirement of my network is that none of the resources should be publicly available.
- 048_Route 53 - Query Logging.txt:3: So, this is applicable only to public hosted zones and then the logs are sent only to CloudWatch.
- 049_[SAA] OpenSearch.txt:4: So in DynamoDB, just to do a comparison, you can only query the data by primary key or if you have indexes on your database.
- 050_OpenSearch - Advanced.txt:11: For VPC access, we need to specify the VPC, the subnets, security groups, and IAM role into which we deploy our OpenSearch cluster, we need to define VPC endpoints, absolutely, and ENIs will be created.
- 050_OpenSearch - Advanced.txt:12: And because now your OpenSearch cluster is deployed within your VPC, if you wanted to access it from within your own machine, you will need to be connected to the local network of AWS, so either using a VPN or transit gateway or managed network or a side-to-side VPN or proxy server, whatever you want, but you would need to be connected through the VPC.
- 050_OpenSearch - Advanced.txt:18: Well, we have something called the domain access policy which we're going to specify only in VPC which actions the principal can can perform on the domain sub-resources, so the indexes or the specific APIs.
- 050_OpenSearch - Advanced.txt:20: And this policy right here only allows HTTP GET and HTTP PUT on the commerce data within the test domain.
- 015_CloudTrail.txt:28: Whereas the Read Events is just to get information which are still very important, but maybe less destructive.
- 015_CloudTrail.txt:45: For example, in accurate resource provisioning, hitting service limits, burst of AWS IAM actions, gaps in periodic maintenance activity.
- 015_CloudTrail.txt:51: So in CloudWatch event is going to be generated in case you need to automate on top of these CloudTrail Insights, for example, to send an email.
- 016_CloudTrail - EventBridge Integration.txt:1: A very important cultural integration you need to know about is the one with Amazon EventBridge to intercept any API calls.
- 017_CloudTrail - SA Pro.txt:7: You could set up a lifecycle policy on your S3 buckets to deliver files to the Glacier tier in case they're archives and you don't need to have them around for a long time or you just wanna archive them and make sure that if you need to access them you can wait maybe for 6, 12 hours before you analyze these.
- 017_CloudTrail - SA Pro.txt:14: Okay, on top of it, you need to think about all the enhancements we can have from S3.
- 017_CloudTrail - SA Pro.txt:21: And you can even have a feature to perform CloudTrail log file integrity validation that will verify that the files delivered in S3 are exactly as they should be and they have not been tempered with, they have not been modified.
- 017_CloudTrail - SA Pro.txt:32: And so the only way for us to do it is to define an S3 bucket policy.
- 017_CloudTrail - SA Pro.txt:33: And the S3 bucket policy should allow CloudTrail to deliver files into S3.
- 017_CloudTrail - SA Pro.txt:63: Okay, so there is another feature of CloudTrail need to know about, which is the organizational trail.
- 017_CloudTrail - SA Pro.txt:65: Okay, so it's very important for you to remember this trail is created in the management accounts and not in the children accounts, in the member accounts of your organization.

### 6. Patterns / Architectures
- 016_[SOA] Logging in AWS for Security and Compliance.txt:13: And the cool things is that all these logs, you can put them in S3 and then you can analyze them using AWS Athena.
- 016_[SOA] Logging in AWS for Security and Compliance.txt:17: Where we can use Athena plus ELB Access Logs plus S3, and that's the combination.
- 016_[SOA] Logging in AWS for Security and Compliance.txt:18: So just remember that a lot of services, and we've seen them in this course, do provide logs, they are able to put these logs into S3, and then we've seen how to analyze these log into S3 using Athena, so this is the idea.
- 016_[SOA] Logging in AWS for Security and Compliance.txt:19: If you google Athena analyze CloudFront Logs, you'll get the query right away.
- 017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt:7: Then, if you wanted to configure your agent, you can configure it by using the SSM Parameter Store and storing the configuration in a central place.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:9: For example, to export them in batch into Amazon S3 or to stream them into Kinesis Data Streams, Kinesis Data Firehose, AWS Lambda, Amazon OpenSearch.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:17: Lambda will send logs from the functions themselves.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:45: So, you can send this data into multiple places such as Kinesis Data Streams, Kinesis Data Firehose, or Lambda.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:48: This would be a great choice if you wanted to use, for example, the integration with Kinesis Data Firehose, Kinesis Data Analytics, or Amazon EC2, or Lambda.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:50: From there, you can send it in near real-time fashion into Amazon S3, or for example, the OpenSearch Service, or you have Lambda.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:51: So you can write your own custom Lambda function, or you can use a managed Lambda function that is sending data in real-time into the OpenSearch Service.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:3: For example, this one was created by Lambda.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:32: So Elasticsearch, Kinesis, datastreams, Kinesis Firehose or a Lambda subscription filter if you want to send data into custom lambda functions.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:53: Or, you can look at some simple queries and view the use cases of losing log insights for example, view the latency statistics for a five minute interval on Lambda, or get the top 10 by transfers by source and destination IP addresses for VPC flow logs.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:13: And the last one is to send a notification to the SNS service, for example, and from the SNS service, we can hook it to a Lambda function and have the Lambda function do pretty much anything we want based on an alarm being breached.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:21: And therefore, if Alarm A is in alarm and Alarm B is in alarm, and this is something we have to define ourselves, then the Composite Alarm itself will be an alarm and can trigger, for example, an SNS notification.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:30: And you can also send an alert to your SNS topic to get alerted that the EC2 instance was being recovered.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:34: And then when we receive too many instances of a specific word, for example, the word error, then do an alert and send a message into Amazon SNS.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:1: So now let's talk about Amazon EventBridge, and Amazon EventBridge used to be formally known as CloudWatch Events so you will see EventBridge in the exam, but just so you know, if you come from old AWS experience, then it used to be named the CloudWatch Events.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:2: So with EventBridge, you can do a lot of things.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:4: For example, we say, "Hey, every hour please trigger a Lambda function," and that Lambda function will run a script.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:5: So the events are generated every hour, hence the name Amazon EventBridge, but not just a schedule like every hour, it can also react to an event pattern.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:8: So when that happens, maybe you want to send a message into an SNS topic and receive an email notification, so that if anyone is using the root account, then you will receive an email, which may be a good security feature for your accounts.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:9: Also, for example, you have different destinations, you can trigger Lambda functions, send SNS and SQS messages, and so on, I will show you this all in a second.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:10: So EventBridge sits in the middle and we have all the sources that can send events into Amazon EventBridge.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:12: Code Build, for example, if you have a build that fails or S3, whenever there's an event, for example, when an object is uploaded, or Trusted Advisor when you have a new finding of security in your accounts or as a good combo, you can combine EventBridge and CloudTrail and actually intercept any API call made within your AWS accounts, which is huge.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:14: Then these events get sent into Amazon EventBridge and you can set up a filter.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:16: Then EventBridge is going to generate adjacent document that represents the details about your events.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:20: For example, you can schedule and trigger a Lambda function, you can schedule a batch in AWS Batch, you can launch an ECS task for Amazon ECS, you can send a message to SQS, to SNS, or even to a Kinesis Data Stream, you can, for example, start a Step Function, you can start a CI/CD Pipeline with CodePipeline or a build with CodeBuild so you don't actually know all these things, of course, these are different AWS services, but I'm just giving you an overview what you can do and you can also, for example, start an SSM automation or a specific EC2 action, such as starting or stopping or restarting an EC2 instance.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:22: So Amazon EventBridge is what we call the default event bus, which is what we just saw, which represents services from AWS that send their events into the default event bus, but Amazon EventBridge has more capability.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:26: Okay, and finally, there is a custom event bus so you can create your own event buses and then your own applications can send their own events into a custom event bus and therefore, you have the same capability of sending these events to different destinations thanks to the EventBridge rules.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:30: For example, say there is a bug in your Lambda function and you want to fix it, so you fixed it and then you want to retest the event, replay it, then you can replay these archived events, which is super handy for debugging, super handy for troubleshooting, and for fixing production as well.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:31: Now, EventBridge receives a lot of events from different places and so therefore, you need to understand what the events are going to look like and remember, these events are in this adjacent format we just saw.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:32: So therefore, there is a Schema Registry and the capability is that EventBridge is going to analyze the events in your bus and then it's going to infer the schema and the schema out of the Schema Registry is going to allow you to generate code for your application that will know in advance how the data is structured in the event bus.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:33: For example, this is an example here for a specific CodePipeline in action.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:36: Now, we have resource based policies for EventBridge, what does that mean?
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:38: For example, you can say that a specific event bus can be allowed or denied other events from other regions or accounts and the use case for it, for example, would be to have a central events bus within your AWS organization, so a set of accounts and then all these events are going to be aggregated, so how does that work?
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:39: Well, we have a central event bus with a specific account and we're going to add a specific resource based policy, allowing other accounts to send events to it and therefore, this other account, for example, will be able to do a put events and send events directly into the central event bus.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:40: So that's it, we've seen EventBridge left to right, you know everything about it.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:1: So let's have a look at Amazon EventBridge.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:6: So there is now something called EventBridge schedule.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:10: So just to get started, we're going to do the first option, EventBridge rule with event pattern.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:14: For example, if you take any of these, for example, if you take Lambda, you can have a look at all these things.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:38: We have SNS topic, SQS queues, I mean so many.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:39: But what we want to do right now is to receive an alert, so we choose SNS Topic and then we want it to be our demo topic.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:41: You can just create an SNS topic very easily.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:50: And this one is going called InvokeLambdaEveryHour.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:58: Well, we have all these options such as, for example, running a task on Amazon ECS or putting a records in Kinesis Data Firehose or invoking a Lambda function.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:59: So you can say, for example, in the Invoke Lambda function, and if you have a Lambda function, you can select it from here.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:61: Once you've done this, you have a schedule in Amazon EventBridge.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:66: And here you have the ability yourself to send your own events into this event bus and so therefore you can develop custom applications that are based on Amazon EventBridge, which can be very helpful.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:72: So if you use, for example, Auth0, then the events of Auth0 will be put and inserted into Amazon EventBridge.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:73: And then you can, for example, use a Lambda function or do something after someone has done the login in of zero.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:76: That means that, for example, if you wanted to have an event within EventBridge, but then to connect to an external HTP destination, you can also define one here.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:77: And this allows you to connect EventBridge to an outside source, for example, to have integration with your own infrastructure.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:81: But this allows you to understand the shape and form the events will have in Amazon EventBridge.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:1: So now, let's talk about Amazon Athena.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:2: So Athena is a serverless query service to help you analyze the data stored in Amazon S3 buckets.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:4: Behind the scenes, Athena is built on the Presto engine, which uses the SQL language.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:5: So the idea is that users are going to load data into your S3 bucket, or you are going to load data into your S3 bucket, and then you would use the Athena service to query and analyze this data in Amazon S3 without moving it.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:6: So Athena is serverless, and it analyzes directly your data living in your S3 bucket.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:11: So Athena is commonly used with another tool, called Amazon QuickSight to create reports and dashboards.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:12: So we'll see Quicksight later in depth, but Amazon Quicksight connects to Athena, which connects to your S3 buckets.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:13: Now, the use cases for Amazon Athena are to do ad hoc queries, business intelligence, analytics, reporting, and to analyze and query any kind of logs that originates from your AWS services.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:15: So as an exam tip, anytime you need to analyze data in Amazon S3 using a serverless SQL engine, you can think about Athena.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:16: Now, I've talked about performance improvements, and you can actually improve Athena performance, and in this exam, we'll test you on this as well.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:19: So therefore, the recommended formats for Amazon Athena, are going to be Apache Parquet and ORC, and it's going to give you a huge performance improvement.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:30: And so when I do a query on Athena, and I filter for a specific year, a specific month, and a specific day, then we'll know exactly to which folder in Amazon S3 to get the data from, and therefore we'll only recover a subset of the data.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:33: So if you have many, many, many small files in Amazon S3, Athena is not going to be as performance, as if you had larger files, for example, 128 megabytes, and over, because larger files are easier to scan, and easier to retrieve.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:34: Another feature of Amazon Athena is the Federated Query.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:35: So you know that Athena can query data in S3, but actually you can query data anywhere, for example, in relational or non-relational databases, you can query objects and custom data sources, would it be on AWS or on-premises.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:38: It's a Lambda function, and that Lambda function is going to run the Federated Queries in other services.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:41: For example, we have Athena here, and we have a Lambda function, and you'll have one Lambda function per Data Source Connector.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:42: And then through Amazon Athena, you can run the query across ElastiCache, Document DB, DynamoDB, Redshift, Aurora, SQL Server, MySQL, HBase on the EMR service, or any on-premises database.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:43: They're clear from Athena, as well as, of course, Amazon S3, and you can do your drawings, and you can do your competitions, and so on.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:46: So that's it for Amazon Athena.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:1: So let's use the Athena service to query data from an S3 buckets.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:6: So I'll call this one, AWS Athena Stephane, I am in EU Central One, V two.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:12: And we can also type, for example, Athena here.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:19: So we here under S3 advanced Athena S3 Access Log that's SQL.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:23: So this is the one I want to select and we have created it from within Athena.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:24: Next we run a query and this is a query to create a table in Athena to represent our access logs.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:27: Okay, so this query, I got it from the Amazon S3 and Athena documentation, which gives you this entire query.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:43: So Athena makes it super easy for us.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:59: The idea here is that I just used the Athena service to query my data in Amazon S3, very easily, without setting up any kind of server.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:62: And we were good to go to use SQL language to query our data directly from within Athena.
- 029_Amazon Athena - Troubleshooting.txt:1: So let's talk about troubleshooting especially when QuickSight is trying to use Athena but there are insufficient permissions.
- 029_Amazon Athena - Troubleshooting.txt:3: Number one is that QuickSight must be able to access your S3 buckets that are used by Athena.
- 029_Amazon Athena - Troubleshooting.txt:12: And after granting access then these roles can do a kms:Decrypt and you will have solved your insufficient permissions problem between QuickSight and Athena.
- 030_[SAA] CloudTrail.txt:36: Another kind of event you can have in a CloudTrail are AWS Lambda function execution activities.
- 030_[SAA] CloudTrail.txt:37: So whenever someone uses the Invoke API so you can get insights about how many times your Lambda functions are being evoked.
- 030_[SAA] CloudTrail.txt:38: And again, this could be really high volumes, if your Lambda functions are executed a lot.
- 030_[SAA] CloudTrail.txt:50: They will also be sent to Amazon industry if you want to, and an EventBridge Event.
- 030_[SAA] CloudTrail.txt:56: So send them to S3, and then you would use Athena to analyze them.
- 030_[SAA] CloudTrail.txt:59: And when you're ready to analyze them, you would use the Athena service, which is a serverless service to query data in S3 to find the events Okay I hope you like this lecture, and I will see you in the next lecture.
- 032_CloudTrail - Data Lake.txt:2: So, it's a managed data lake that will let you aggregate, store and query events, and all these are stored in a central data store.
- 032_CloudTrail - Data Lake.txt:5: So, all these are going to be stored in one central place.
- 032_CloudTrail - Data Lake.txt:8: You can store events from multiple accounts and regions through AWS Organizations, and you can attach a Resource-based Policy to your Data Store.
- 032_CloudTrail - Data Lake.txt:11: On top of this data lake, you can also build dashboards.
- 033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt:1: A very important cultural integration you need to know about is the one with Amazon EventBridge to intercept any API calls.
- 033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt:2: So let's say you wanted to receive an SNS notification, anytime a user would delete a table in DynamoDB by using the DeleteTable API Call.
- 033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt:5: But then all these API calls will end up as events as well in Amazon EventBridge.
- 033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt:7: And this rule will have a destination the destination being Amazon SNS and therefore, we can create alerts.
- 033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt:8: So let me give you a few more examples on how you can integrate Amazon Eventbridge and CloudTrail.
- 033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt:11: And then using EventBridge integration, we can trigger a message into an SNS topic.
- 033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt:14: So these are going to be logged again by CloudTrail and then they will appear in EventBridge and then we can trigger a notification in SNS.
- 034_[SOA] CloudTrail for SysOps.txt:18: You can also integrate CloudTrail with EventBridge.
- 034_[SOA] CloudTrail for SysOps.txt:19: So CloudTrail can trigger EventBridge for any kind of API calls made within your AWS accounts.
- 034_[SOA] CloudTrail for SysOps.txt:20: And then from EventBridge, you can do any kind of integration you want using Lambda, SNS, SQS, and so on.
- 034_[SOA] CloudTrail for SysOps.txt:21: So if you want it to react to any API call, you know, not even something that's covered by EventBridge, but you know that will appear in CloudTrail, then you would define an EventBridge integration with CloudTrail.
- 034_[SOA] CloudTrail for SysOps.txt:25: So this is not a real-time automation on top of API calls, but this is for you a way to get some kind of integration on top of any API calls made within CloudTrail when it is delivered into EventBridge.
- 034_[SOA] CloudTrail for SysOps.txt:26: Finally, you can have organization trails, so, you can setup CloudTrail at the organization level.
- 034_[SOA] CloudTrail for SysOps.txt:28: And so your CloudTrail at your org level is going to log events for all of API calls for all your member accounts into a target S3 buckets that is organization wide.
- 034_[SOA] CloudTrail for SysOps.txt:32: And the member accounts cannot remove or modify the organization trail which is good for compliance.
- 035_CloudTrail to CloudWatch Metrics Filter - Example.txt:2: The best way to actually implement this architecture is to use CloudTrail and CloudWatch metrics filter, how?
- 035_CloudTrail to CloudWatch Metrics Filter - Example.txt:3: Well, from CloudTrail, we know we can stream all the API calls being made in two CloudWatch logs, and from CloudWatch logs, we can define a metrics filter and we can set a threshold, for example, and look for the EC2 StartInstances API call and say that we want to trigger a CloudWatch alarm when we detect that metric to be above 30, and from there, maybe go into an SNS topic, and we can alert the security team because too many instances are started at a time.
- 036_CloudTrail - Integration with Athena.txt:1: So here's a quick lecture, but it is possible to integrate CloudTrail with Athena.
- 036_CloudTrail - Integration with Athena.txt:2: So the idea is that you're going to use Athena directly to query CloudTrail logs stored in Amazon S3, for example, to analyze activity for security and compliance.
- 036_CloudTrail - Integration with Athena.txt:3: So the idea is that the Athena table you want can be directly created from the CloudTrail Console, and then you specify in which S3 bucket location you want your logs to be stored.
- 036_CloudTrail - Integration with Athena.txt:4: So once you have the event history, you create the filter you want, then you click on Create Athena Table, and then you specify the S3 bucket and you will be able to query all your CloudTrail data within Athena.
- 037_Monitoring Account Activity.txt:9: And finally, you can also use Athena.
- 037_Monitoring Account Activity.txt:10: So Athena has the ability to also help you look at API history beyond the past 90 days but also perform more advanced queries, some statistics some sums and so on.
- 042_[SAA_SOA] VPC Flow Logs.txt:19: The best way is to do Athena on S3, or if you wanted to do a streaming analysis, you could use CloudWatch logs insights.
- 042_[SAA_SOA] VPC Flow Logs.txt:37: So let's have a look at a few architectures for your VPC flow logs so they can flow into CloudWatch logs as we know.
- 042_[SAA_SOA] VPC Flow Logs.txt:41: And if we realize that there's a lot more SSH or RDP than usual, then trigger a CloudWatch alarm and send an alert into an Amazon SNS topic because something fishy may be happening on your network.
- 042_[SAA_SOA] VPC Flow Logs.txt:43: And then we send everything into an S3 bucket for storage, and we use Amazon Athena to analyze the VPC flow logs with SQL.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:62: I can click on it, look at the VPC flow logs for eu-central-1.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:81: So this is very helpful and you'll use Amazon S3 if you wanted to do some more bigger analysis for example, using Athena.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:82: So let's go ahead and practice using Athena to query this data into my S3 bucket.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:83: So in Athena, what I'm going to do is to first set up a query result location in Amazon S3.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:86: So I call this one demo-athena-stephane-v2, and this should work.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:87: Now let's click on Create these buckets, View Details, and I can just use this S3 bucket, so Properties, I will copy the ARN, back into Athena and then click on Save.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:88: So I need to just do slash and then Athena.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:93: So what I need to do is to go in here and I will type AWS VPC flow logs Athena and this is going to take me into a tutorial on how to do it.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:96: So let's go ahead and paste this in my Athena UI.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:102: This is my Athena bucket.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:109: Now we're going to copy this S3 URI directly back into Athena and I'm going to paste this in.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:133: So we can get a lot of information from Athena and we can start doing some complex queries to try to group for example, by IP addresses, see who is attacking us the most where we're attacked the most, and so on.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:137: And to Amazon S3, we've used Athena to query these logs in Amazon S3.
- 046_VPC Traffic Mirroring - Architectures.txt:1: So let's explore a couple of VPC traffic mirroring architectures.
- 046_VPC Traffic Mirroring - Architectures.txt:14: So that's a different architecture model.
- 046_VPC Traffic Mirroring - Architectures.txt:20: It's going to pass on that finding to Amazon EventBridge, and from EventBridge, we're going to invoke a Lambda function.
- 046_VPC Traffic Mirroring - Architectures.txt:21: That Lambda function is going to look at the payload of the alerts, and it's going to identify the EC2 instance and the corresponding ENI attached to that instance that needs VPC network traffic mirroring.
- 046_VPC Traffic Mirroring - Architectures.txt:22: So that instance is in my VPC, but first we need to make sure from the Lambda function that we launch a virtual monitoring appliance to receive that mirror traffic.
- 046_VPC Traffic Mirroring - Architectures.txt:24: So automatically the packets of the network are going to be forwarded, and then we can send them directly into an S3 bucket so that the logs could be analyzed later on by Athena.
- 046_VPC Traffic Mirroring - Architectures.txt:26: Finally, you can also have an architecture for VPC traffic mirroring that leverages a transit gateway between several accounts and several VPCs.
- 046_VPC Traffic Mirroring - Architectures.txt:27: But the idea is that you want to have a centralized VPC where you'll have all your security appliances and monitoring.
- 046_VPC Traffic Mirroring - Architectures.txt:28: So in that case, well, because we have set up a transit gateway, now any EC2 instance in any VPC can send their traffic directly into the network level balancer of the centralized VPC.
- 047_VPC Network Access Analyzer.txt:6: So it's going to evaluate the network access to all the resources in your VPCs, such as your EC2 instances, your RDS databases, Aurora, OpenSearch, Redshift and so on.
- 048_Route 53 - Query Logging.txt:7: For example, by your EC2 instances, your Lambda functions, and so on.
- 048_Route 53 - Query Logging.txt:18: So, what kind of architectures can we build with the Resolver query logging?
- 049_[SAA] OpenSearch.txt:1: So now, let's talk about the Amazon OpenSearch Service.
- 049_[SAA] OpenSearch.txt:2: An Amazon OpenSearch is a successor to something you may have heard before called, Amazon ElasticSearch.
- 049_[SAA] OpenSearch.txt:5: But with OpenSearch, you can actually, as the name indicates, search any fields, even for partial matches.
- 049_[SAA] OpenSearch.txt:6: So it's very common to use OpenSearch to provide search to your application.
- 049_[SAA] OpenSearch.txt:7: And so you would use OpenSearch as a compliment to another database.
- 049_[SAA] OpenSearch.txt:8: So OpenSearch can be used for search, but also as the name doesn't indicate, you can also do analytic queries on top of OpenSearch.
- 049_[SAA] OpenSearch.txt:9: So you have two modes to provision an OpenSearch Cluster.
- 049_[SAA] OpenSearch.txt:12: And OpenSearch has its own query language, it does not natively support SQL, but you can enable SQL compatibility via a plugin.
- 049_[SAA] OpenSearch.txt:15: And as I said, you can do analytics on top of the OpenSearch Service, so you can use something called OpenSearch Dashboards to create visualizations on top of your OpenSearch Data.
- 049_[SAA] OpenSearch.txt:16: So here are some common patterns to use OpenSearch.
- 049_[SAA] OpenSearch.txt:19: And then you send all the streams in a DynamoDB Stream, which is then picked up by a Lambda Function.
- 049_[SAA] OpenSearch.txt:20: And that Lambda Function will insert the data into Amazon OpenSearch in real time.
- 049_[SAA] OpenSearch.txt:24: So that's a common pattern in which OpenSearch provides the search capability, whereas your main source of data still remains your DynamoDB Table.
- 049_[SAA] OpenSearch.txt:25: There's also other ways you can ingest CloudWatch Logs into OpenSearch.
- 049_[SAA] OpenSearch.txt:26: So the first one is to use what's called a CloudWatch Log Subscription Filter, sending data in real time to a Lambda Function that is managed by AWS.
- 049_[SAA] OpenSearch.txt:27: And then the Lambda Function in real time sends all the data into Amazon OpenSearch.
- 049_[SAA] OpenSearch.txt:30: And then near real time, because this is Data Firehose, data will be inserted in Amazon OpenSearch.
- 049_[SAA] OpenSearch.txt:31: Other patterns are on Kinesis, so to send Kinesis Data Streams into Amazon OpenSearch, you have two strategies.
- 049_[SAA] OpenSearch.txt:34: You can optionally do some data transformation, using a Lambda Function and then send data into Amazon OpenSearch.
- 049_[SAA] OpenSearch.txt:35: Or you can use Kinesis Data Streams again, but this time, you would create a Lambda Function that would read the data stream in real time.
- 049_[SAA] OpenSearch.txt:36: And then you would write custom code to have the Lambda Function write to Amazon OpenSearch in real time.
- 049_[SAA] OpenSearch.txt:37: So all these patterns are valid, and now you know pretty much all the possible architectures for using Amazon OpenSearch.
- 050_OpenSearch - Advanced.txt:1: So now let's talk about OpenSearch security.
- 050_OpenSearch - Advanced.txt:2: We have two deployment modes and the first one is public access, so this makes your OpenSearch cluster accessible from the internet with a public endpoint.
- 050_OpenSearch - Advanced.txt:3: So that means you can restrict access to OpenSearch using access policies identity-based policies, and IP-based policies.
- 050_OpenSearch - Advanced.txt:9: And then OpenSearch will actually return full or partial data.
- 050_OpenSearch - Advanced.txt:11: For VPC access, we need to specify the VPC, the subnets, security groups, and IAM role into which we deploy our OpenSearch cluster, we need to define VPC endpoints, absolutely, and ENIs will be created.
- 050_OpenSearch - Advanced.txt:12: And because now your OpenSearch cluster is deployed within your VPC, if you wanted to access it from within your own machine, you will need to be connected to the local network of AWS, so either using a VPN or transit gateway or managed network or a side-to-side VPN or proxy server, whatever you want, but you would need to be connected through the VPC.
- 050_OpenSearch - Advanced.txt:14: So the authorization flow is a little bit more complicated here, but the client will be using IAM credentials to connect to OpenSearch, so whether or not it will connect to the VPC first and then go through the security group, so is everything authorized true, true perfect?
- 050_OpenSearch - Advanced.txt:15: Then we'll check whether or not the IAM credentials are valid and then whether or not the access policy allows the client to access our OpenSearch cluster.
- 050_OpenSearch - Advanced.txt:16: Then the fine-grained access control will take action and then finally, OpenSearch will return the full or partial data.
- 050_OpenSearch - Advanced.txt:19: For example, this policy grants the IAM user full access on all the OpenSearch domain sub-resources because we have action es star for a specific principal for a user on the domain test domain, which is our test domain for OpenSearch slash star, so any resources there.
- 050_OpenSearch - Advanced.txt:21: So we can go very fine grained based on the domain access policy and that's how you manage security in OpenSearch.
- 015_CloudTrail.txt:36: Another kind of event you can have in a CloudTrail are AWS Lambda function execution activities.
- 015_CloudTrail.txt:37: So whenever someone uses the Invoke API so you can get insights about how many times your Lambda functions are being evoked.
- 015_CloudTrail.txt:38: And again, this could be really high volumes, if your Lambda functions are executed a lot.
- 015_CloudTrail.txt:50: They will also be sent to Amazon industry if you want to, and an EventBridge Event.
- 015_CloudTrail.txt:56: So send them to S3, and then you would use Athena to analyze them.
- 015_CloudTrail.txt:59: And when you're ready to analyze them, you would use the Athena service, which is a serverless service to query data in S3 to find the events Okay I hope you like this lecture, and I will see you in the next lecture.
- 016_CloudTrail - EventBridge Integration.txt:1: A very important cultural integration you need to know about is the one with Amazon EventBridge to intercept any API calls.
- 016_CloudTrail - EventBridge Integration.txt:2: So let's say you wanted to receive an SNS notification, anytime a user would delete a table in DynamoDB by using the DeleteTable API Call.
- 016_CloudTrail - EventBridge Integration.txt:5: But then all these API calls will end up as events as well in Amazon EventBridge.
- 016_CloudTrail - EventBridge Integration.txt:7: And this rule will have a destination the destination being Amazon SNS and therefore, we can create alerts.
- 016_CloudTrail - EventBridge Integration.txt:8: So let me give you a few more examples on how you can integrate Amazon Eventbridge and CloudTrail.
- 016_CloudTrail - EventBridge Integration.txt:11: And then using EventBridge integration, we can trigger a message into an SNS topic.
- 016_CloudTrail - EventBridge Integration.txt:14: So these are going to be logged again by CloudTrail and then they will appear in EventBridge and then we can trigger a notification in SNS.
- 017_CloudTrail - SA Pro.txt:1: Okay, so now let's discuss CloudTrail and some solution architectures that can be interesting with CloudTrail.
- 017_CloudTrail - SA Pro.txt:8: When a file is delivered into S3, you can leverage S3 events to notify either an SQS queue, an SNS topic, or a Lambda function.
- 017_CloudTrail - SA Pro.txt:9: But you can also have CloudTrail deliver notifications directly into SNS.
- 017_CloudTrail - SA Pro.txt:10: And from SNS you could invoke SQS or Lambda.
- 017_CloudTrail - SA Pro.txt:11: So this gives you a bunch of different options you can have for this architecture.
- 017_CloudTrail - SA Pro.txt:24: So this is hopefully opening some stuff for you and helping you understand the kind of architectures we can be looking at going into the exam.
- 017_CloudTrail - SA Pro.txt:25: Okay, another architecture now.
- 017_CloudTrail - SA Pro.txt:37: So it's really up to you to see the kind of architectures then you need.
- 017_CloudTrail - SA Pro.txt:42: Okay, so yet another solution architecture.
- 017_CloudTrail - SA Pro.txt:52: And maybe your CloudWatch alarm is set up to be triggered whenever the metric filter is equals to one, in which case the CloudWatch alarm can deliver to an SNS topic.
- 017_CloudTrail - SA Pro.txt:53: And from that SNS topic, you could have a Lambda function.
- 017_CloudTrail - SA Pro.txt:63: Okay, so there is another feature of CloudTrail need to know about, which is the organizational trail.
- 017_CloudTrail - SA Pro.txt:64: So if you have AWS organizations, for example, you have a management account, and then you have several OUs with other member accounts, then it is possible for you to set up a organizational trail directly in the management accounts.
- 017_CloudTrail - SA Pro.txt:65: Okay, so it's very important for you to remember this trail is created in the management accounts and not in the children accounts, in the member accounts of your organization.
- 017_CloudTrail - SA Pro.txt:69: And this S3 bucket will contain a certain kind of organization, where as you see the suffix of the S3 prefix represents the account number that is being monitored by CloudTrail.
- 017_CloudTrail - SA Pro.txt:73: But anyways, so we have EventBridge.
- 017_CloudTrail - SA Pro.txt:85: So based on use case you have, if you want to react to an event right away, it's EventBridge.

## Step 3 — Deep Expansion (Core Logging and Monitoring Concepts)

### AWS CloudTrail
- What it is: Immutable audit trail service for AWS API activity and account actions.
- Why it exists: Provides governance, compliance evidence, incident reconstruction, and detective controls.
- Internal working: Captures management/data events and delivers logs to storage/analytics targets.
- Architecture: AWS APIs -> CloudTrail trail/event data store -> S3/CloudWatch/Athena/EventBridge consumers.
- Key components: Trails, event history, event data stores, Lake queries, integrations.

### Amazon Athena
- What it is: Serverless SQL query engine over S3 datasets.
- Why it exists: Fast ad-hoc investigation over large volumes of logs without provisioning clusters.
- Internal working: Reads S3 objects through schema definitions and executes distributed SQL queries.
- Architecture: Logs in S3 -> Glue catalog schemas -> Athena queries -> forensic outputs.
- Key components: Workgroups, databases/tables, query results, cost controls.

### Amazon CloudWatch
- What it is: Monitoring and observability platform for metrics, logs, alarms, and dashboards.
- Why it exists: Enables near real-time visibility and operational alerting.
- Internal working: Ingests metrics/log streams, evaluates alarms/filters, triggers actions.
- Architecture: Service telemetry -> CloudWatch metrics/logs -> alarms/insights -> notifications/automation.
- Key components: Metrics, Logs, Alarms, Dashboards, Contributor Insights, Agent.

### Amazon EventBridge
- What it is: Serverless event bus for routing and transforming events between producers and targets.
- Why it exists: Decouples detection from remediation and enables scalable security automation.
- Internal working: Matches events with rules, then forwards to targets like Lambda/SNS/Step Functions.
- Architecture: Findings/events -> EventBridge bus/rules -> target actions.
- Key components: Event buses, rules, event patterns, targets, archives/replay.

### Amazon OpenSearch
- What it is: Managed search and analytics engine for log indexing and exploratory analysis.
- Why it exists: Supports low-latency filtering, dashboards, and incident exploration workflows.
- Internal working: Indexes structured/semi-structured events and supports query/visualization pipelines.
- Architecture: Log pipeline -> OpenSearch indices -> dashboards/alerts.
- Key components: Domains/collections, indexes, queries, dashboards.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Audit trail of control-plane actions | CloudTrail | Azure Activity Log + Entra audit logs | Cloud Audit Logs |
| Central metrics and log monitoring | CloudWatch | Azure Monitor + Log Analytics | Cloud Monitoring + Cloud Logging |
| Event routing and rule-based automation | EventBridge | Event Grid + Azure Functions/Logic Apps | Eventarc + Pub/Sub + Cloud Functions |
| SQL-based log querying on object storage | Athena over S3 | Azure Data Explorer / Log Analytics / Synapse serverless | BigQuery over log exports |
| Search-centric operational analytics | OpenSearch | Azure AI Search + Sentinel/ADX patterns | Chronicle + OpenSearch-compatible stacks / Elastic on GCP |
| Network flow telemetry | VPC Flow Logs | NSG Flow Logs | VPC Flow Logs (GCP) |
| Packet capture/traffic mirror | VPC Traffic Mirroring | Virtual Network TAP | Packet Mirroring |
| DNS query observability | Route 53 Query Logs | Azure DNS Analytics | Cloud DNS logs |

### Trade-offs and Decision Notes
- AWS offers very tight service-native event chaining from logging to automation.
- Azure is strongest with Log Analytics plus Sentinel for SOC-centric operations.
- GCP is strongest when BigQuery-native analytics and detection engineering are central.
- Multi-cloud SOC design should centralize normalized events but keep cloud-native telemetry for fidelity.

## Phase-wise Architect-Level Organization

### Phase 1 — Foundations
- Core observability primitives: audit logs, metrics, alarms, event buses, and query workflows.
- Logging taxonomy: control plane events, data events, network telemetry, DNS telemetry.

### Phase 2 — Core Services
- CloudTrail for API audit, CloudWatch for real-time monitoring, EventBridge for response triggers.
- Athena/OpenSearch for forensic and operational analytics over centralized log stores.

### Phase 3 — Advanced Patterns
- Cross-account and cross-region telemetry centralization with policy-driven retention and indexing.
- Detection-to-response pipelines using EventBridge plus Lambda/SNS/SSM targets.

### Phase 4 — System Design
- SOC-ready architecture: distributed collection, centralized governance, layered analytics, automated remediation.
- Scaling considerations: log volume growth, query cost management, alarm quality, and latency trade-offs.
- Cost considerations: ingestion/storage/query pricing, retention windows, and automation execution overhead.

## Deduped Consolidation Snapshot

This additive section keeps original extraction untouched and provides duplicate-clean views for faster review.

### Concepts (Deduped)
- Audit Logging
- Detection Correlation
- Event-Driven Automation
- Log Analytics
- Network Telemetry
- Operational Monitoring
- Operational Monitoring Context
- Retention and Forensics

### Services (Deduped)
- AWS CloudTrail
- AWS Lambda
- Amazon Athena
- Amazon CloudWatch
- Amazon EC2
- Amazon EventBridge
- Amazon OpenSearch
- Amazon S3
- Amazon SNS
- Amazon VPC Flow Logs
- CloudWatch Alarms
- CloudWatch Contributor Insights
- CloudWatch Logs
- Route 53 Query Logging
- Unified CloudWatch Agent
- VPC Traffic Mirroring

### Features (Deduped)
- agent
- alarms
- archive
- automation
- dashboard
- event
- filter
- insights
- integration
- metrics
- query
- retention
- trail

### Use Cases (Deduped)
- 016_[SOA] Logging in AWS for Security and Compliance.txt:7: CloudWatch logs if you want to have full data retention, so for example, want to log application logs or whatever, we can do it there.
- 017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt:19: For example, you would get some information around how much time a CPU will be using, a process will be using the CPU, or how much memory a process will be using, or the process that are running directly on your EC2 instance.
- 017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt:20: So you can select which processes to monitor by PID file.
- 017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt:22: If you want it to filter again, the processes to monitor and all the metrics related to your statistics of your processes on your Linux or windows servers, we'll be starting with a procstat prefix, so procstat_time, procstat_cpu_usage, and so on.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:13: And then the role name should be, for example Amazon EC2 role for CloudWatch.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:87: Do you want to monitor any host metrics such as CPU, memory etcetera?
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:118: Now, do you want to monitor any log files?
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:124: And the log retention in days we could do minus one, for infinity or we could say, for example, five for seven day retention.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:153: And this is only needed when you do the setup of the CloudWatch unified agents.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:191: So config the JSON file that has been generated using the wizard, for example and then the agent can start the quiz from this static configuration file.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:211: And then we can go, for example, by instance ID and here find the memory used percent which represents how much ram is being used by my EC2 instance.
- 019_CloudWatch Unified Agent - Troubleshooting.txt:1: So you need to be able to troubleshoot issues with the Unified CloudWatch Agent.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:9: For example, to export them in batch into Amazon S3 or to stream them into Kinesis Data Streams, Kinesis Data Firehose, AWS Lambda, Amazon OpenSearch.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:27: This visualization can also be exported either as a result or added to a dashboard for being able to rerun it whenever you want.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:30: For example, you can find the most 25 most recent events, or you can have a look at how many events had exceptions or errors in your logs, or you can look for a specific IP and so on.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:37: And so as such, it will only query historical data when you run the query.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:48: This would be a great choice if you wanted to use, for example, the integration with Kinesis Data Firehose, Kinesis Data Analytics, or Amazon EC2, or Lambda.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:50: From there, you can send it in near real-time fashion into Amazon S3, or for example, the OpenSearch Service, or you have Lambda.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:61: And when you have all these things in place, then it is possible for you to send data from CloudWatch Logs in one account into a destination in another account.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:3: For example, this one was created by Lambda.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:5: This one was created by glue and this one was created by us when we did do an SSM runCommand and we wanted the output to be populated in this log group.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:6: So, if we take a look at this example, for example, we have six log streams and so each of them represents a different instance that we did run a specific run command on.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:11: And the idea is that, from the log for example, you can look through the keyword http and it would show you all the log lines that contain the word htp.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:12: If you just look for the word installing, for example, it will show you just maybe two or three log lines that contain the word installing.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:16: For example, installing.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:17: Okay, And then we need to select for example, a custom data, for example, this log stream and then we test a pattern and it's going to give us three matches out of five in the simple logs.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:23: When there is a filter pattern or matching occur and so, you can say one for example, to add one and to count how many times this installing lines have been filmed.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:29: But the idea is that, we could create an alarm on top of this metric filter So we can click on create alarm. and this would allow us to create an alarm in case, for example, a metric went over a specific value and again, this metric is calculated based on the filter from the log streams.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:44: So for example, we can create this one and run the query.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:53: Or, you can look at some simple queries and view the use cases of losing log insights for example, view the latency statistics for a five minute interval on Lambda, or get the top 10 by transfers by source and destination IP addresses for VPC flow logs.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:54: So it gives you, for example, if you should click on these, some nice insights to how the query language works for CloudWatch logs insights.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:8: For example, 10 seconds, 30 seconds, or multiple of 60 seconds.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:12: For example, a scale out or a scale in.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:13: And the last one is to send a notification to the SNS service, for example, and from the SNS service, we can hook it to a Lambda function and have the Lambda function do pretty much anything we want based on an alarm being breached.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:17: So it's very helpful to reduce alarm noise because you can create complex Composite Alarms and saying, for example, if the CPU is high and the network is high, then don't alert me because I only wanna know when the CPU is high and the network is a low, these kind of things.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:19: So therefore we create a first underlying alarm called the Alarm A, which is going to monitor the CPU of the EC2 instance.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:20: Then you create Alarm B, which is going to monitor the IOPS of the EC2 instance, and then the composite alarm is defined as the junction of Alarm A and Alarm B.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:21: And therefore, if Alarm A is in alarm and Alarm B is in alarm, and this is something we have to define ourselves, then the Composite Alarm itself will be an alarm and can trigger, for example, an SNS notification.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:28: So you'll monitor a specific EC2 instance, and in case the alarm is being breach, then you can start an EC2 instance recovery to make sure, for example, that you move your EC2 instance from one host to another.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:29: When you do a recovery, you get the same private, public, and elastic IP, the same metadata and the same placement group for your instance.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:34: And then when we receive too many instances of a specific word, for example, the word error, then do an alert and send a message into Amazon SNS.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:36: And this is helpful when you want to trigger an alarm, even though it didn't reach a specific threshold because you wanted to see whether or not the alarm being triggered results in the correct action for your infrastructure.
- 023_[SAA_DVA_SOA] CloudWatch Alarms Hands On.txt:25: So I will say for example, if you're a greater than 95% for a long time, so for, and here you can say, three out of three.
- 023_[SAA_DVA_SOA] CloudWatch Alarms Hands On.txt:44: And so the action is, when in alarm terminate the instance.
- 024_CloudWatch Contributor Insights.txt:4: Well, this is the use case to find the top talkers, for example, on your network and to understand who is what and what is impacting system performance.
- 024_CloudWatch Contributor Insights.txt:5: So for example, if you have network data and logs on CloudWatch Logs, then this allows you to find the bad host, to identify the heaviest network users, or to find the URLs that generate the most errors.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:3: For example, we can schedule cron jobs in the Cloud, so we can schedule scripts.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:4: For example, we say, "Hey, every hour please trigger a Lambda function," and that Lambda function will run a script.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:7: For example, you can react to the event of IAM root user sign in in the console.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:8: So when that happens, maybe you want to send a message into an SNS topic and receive an email notification, so that if anyone is using the root account, then you will receive an email, which may be a good security feature for your accounts.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:9: Also, for example, you have different destinations, you can trigger Lambda functions, send SNS and SQS messages, and so on, I will show you this all in a second.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:11: So for example, EC2 instances when they start, when they're stop, when they're terminated, and so on.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:12: Code Build, for example, if you have a build that fails or S3, whenever there's an event, for example, when an object is uploaded, or Trusted Advisor when you have a new finding of security in your accounts or as a good combo, you can combine EventBridge and CloudTrail and actually intercept any API call made within your AWS accounts, which is huge.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:15: For example, you say, "Hey, I only want these events for a specific bucket," for Amazon is free, for example.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:17: So which instance, for example, gets started, whether its ID, and so on.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:20: For example, you can schedule and trigger a Lambda function, you can schedule a batch in AWS Batch, you can launch an ECS task for Amazon ECS, you can send a message to SQS, to SNS, or even to a Kinesis Data Stream, you can, for example, start a Step Function, you can start a CI/CD Pipeline with CodePipeline or a build with CodeBuild so you don't actually know all these things, of course, these are different AWS services, but I'm just giving you an overview what you can do and you can also, for example, start an SSM automation or a specific EC2 action, such as starting or stopping or restarting an EC2 instance.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:21: So you can see the possibilities are endless and it really depends on what is your use case.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:24: So if you're using, for example, Zendesk, Datadog, Auth0, or others, you need to check the partner list.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:30: For example, say there is a bug in your Lambda function and you want to fix it, so you fixed it and then you want to retest the event, replay it, then you can replay these archived events, which is super handy for debugging, super handy for troubleshooting, and for fixing production as well.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:33: For example, this is an example here for a specific CodePipeline in action.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:38: For example, you can say that a specific event bus can be allowed or denied other events from other regions or accounts and the use case for it, for example, would be to have a central events bus within your AWS organization, so a set of accounts and then all these events are going to be aggregated, so how does that work?
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:39: Well, we have a central event bus with a specific account and we're going to add a specific resource based policy, allowing other accounts to send events to it and therefore, this other account, for example, will be able to do a put events and send events directly into the central event bus.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:41: So remember, you can react to events happening within your accounts, thanks to the default event bus, but also partner events and also your own events with custom buses, you have the Schema Registry capability, and then you have resource based policies, which allow you to have a cross accounts, for example, capability for event buses.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:14: For example, if you take any of these, for example, if you take Lambda, you can have a look at all these things.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:25: So we can say Equal, for example, and we are going to have several values.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:58: Well, we have all these options such as, for example, running a task on Amazon ECS or putting a records in Kinesis Data Firehose or invoking a Lambda function.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:59: So you can say, for example, in the Invoke Lambda function, and if you have a Lambda function, you can select it from here.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:68: When they happen on the event bus, then you have an archive you can look into.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:72: So if you use, for example, Auth0, then the events of Auth0 will be put and inserted into Amazon EventBridge.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:73: And then you can, for example, use a Lambda function or do something after someone has done the login in of zero.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:76: That means that, for example, if you wanted to have an event within EventBridge, but then to connect to an external HTP destination, you can also define one here.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:77: And this allows you to connect EventBridge to an outside source, for example, to have integration with your own infrastructure.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:13: Now, the use cases for Amazon Athena are to do ad hoc queries, business intelligence, analytics, reporting, and to analyze and query any kind of logs that originates from your AWS services.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:20: And to get your files into the Apache Parquet or ORC format, you must use a service that we'll see as well in this section, for example, Glue.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:21: Glue can be very helpful to convert your data as an ETL job, between, for example, CSV and Parquet.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:25: And so you're organizing, you're partitioning your data in Amazon S3, so that when you query it, you can know exactly in which folder at which path Amazon S3, you need to scan for data.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:30: And so when I do a query on Athena, and I filter for a specific year, a specific month, and a specific day, then we'll know exactly to which folder in Amazon S3 to get the data from, and therefore we'll only recover a subset of the data.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:33: So if you have many, many, many small files in Amazon S3, Athena is not going to be as performance, as if you had larger files, for example, 128 megabytes, and over, because larger files are easier to scan, and easier to retrieve.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:35: So you know that Athena can query data in S3, but actually you can query data anywhere, for example, in relational or non-relational databases, you can query objects and custom data sources, would it be on AWS or on-premises.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:39: So that could be, for example, CloudWatch Logs, DynamoDB, RDS, and so on.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:41: For example, we have Athena here, and we have a Lambda function, and you'll have one Lambda function per Data Source Connector.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:12: And we can also type, for example, Athena here.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:45: For example, I'm going to just create a new query sheet right here.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:53: So if we're looking at, for example, not found errors, we say, hey, we're not supposed to have any, not found errors, but we see 142, maybe there's a problem.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:56: For example, to see if someone is trying to get unauthorized access to to your bucket.
- 029_Amazon Athena - Troubleshooting.txt:1: So let's talk about troubleshooting especially when QuickSight is trying to use Athena but there are insufficient permissions.
- 029_Amazon Athena - Troubleshooting.txt:6: And we'll see how to create a grant when we go into the last section, the last domain, to talk about KMS, we talk about KMS grants in details.
- 030_[SAA] CloudTrail.txt:6: And you can create a trail to be applied to all regions or a single region, if you wanted to accumulate all these history of events accumulated across all regions into one specific, for example, S3 buckets.
- 030_[SAA] CloudTrail.txt:7: And when we use CloudTrail, for example, we'll say someone went ahead and deleted something in AWS.
- 030_[SAA] CloudTrail.txt:8: For example, say that an EC2 instance was being terminated and you wanna figure out who did it?
- 030_[SAA] CloudTrail.txt:9: Well, the answer is to look into CloudTrail because CloudTrail will have that API Call in it and will be able to get to the bottom of it and understand who did what and when.
- 030_[SAA] CloudTrail.txt:16: For example, whenever someone configures security, they will use the API Call called IAM AttachRolePolicy.
- 030_[SAA] CloudTrail.txt:24: For example, someone is listing all the users in IAM or listing all the EC2 instances in EC2, these kind of things.
- 030_[SAA] CloudTrail.txt:26: For example, someone deletes or tries to delete a DynamoDB table.
- 030_[SAA] CloudTrail.txt:32: Well, you have Amazon S3 object level activity for example, GetObject, DeleteObject, PutObject.
- 030_[SAA] CloudTrail.txt:37: So whenever someone uses the Invoke API so you can get insights about how many times your Lambda functions are being evoked.
- 030_[SAA] CloudTrail.txt:42: So when we have so many Management Events across all types of services and so many APIs happening very quickly in your accounts, it can be quite difficult to understand what looks odd, what looks unusual and what doesn't.
- 030_[SAA] CloudTrail.txt:44: So with CloudTrail Insights and you have to enable it and you have to pay for it, it will analyze your events and try to detect unusual activity in your accounts.
- 030_[SAA] CloudTrail.txt:45: For example, in accurate resource provisioning, hitting service limits, burst of AWS IAM actions, gaps in periodic maintenance activity.
- 030_[SAA] CloudTrail.txt:47: So whenever something is changed or try to be changed to detect unusual patterns.
- 030_[SAA] CloudTrail.txt:51: So in CloudWatch event is going to be generated in case you need to automate on top of these CloudTrail Insights, for example, to send an email.
- 030_[SAA] CloudTrail.txt:59: And when you're ready to analyze them, you would use the Athena service, which is a serverless service to query data in S3 to find the events Okay I hope you like this lecture, and I will see you in the next lecture.
- 031_[CCP_SAA_DVA_SOA] CloudTrail Hands On.txt:6: So what I wanna do for example, is that I want to look in my EC2 console, and I created a demo instance.
- 032_CloudTrail - Data Lake.txt:12: So, these are dashboards directly from within the CloudTrail Lake console, and you have, for example, different kinds of dashboards.
- 032_CloudTrail - Data Lake.txt:14: For example, you could track the deletion of trails, you can get access denied errors in a dashboard and so on.
- 033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt:3: So what happens that whenever we do an API call in AWS, as you know, the API call itself is going to be logged in CloudTrail.
- 033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt:9: For example, say, you wanted to be notified whenever a user was assuming a role in your accounts.
- 033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt:12: Similarly, we can also intercept API calls that, for example, change the Security Group inbound rules.
- 034_[SOA] CloudTrail for SysOps.txt:4: So when you do API calls within AWS, they're going to be logged by CloudTrail and you can have these logs being sent into Amazon S3, okay, every one hour.
- 034_[SOA] CloudTrail for SysOps.txt:25: So this is not a real-time automation on top of API calls, but this is for you a way to get some kind of integration on top of any API calls made within CloudTrail when it is delivered into EventBridge.
- 035_CloudTrail to CloudWatch Metrics Filter - Example.txt:1: So let's say we have the use case of detecting whether or not we start too many EC2 instances at a time.
- 035_CloudTrail to CloudWatch Metrics Filter - Example.txt:3: Well, from CloudTrail, we know we can stream all the API calls being made in two CloudWatch logs, and from CloudWatch logs, we can define a metrics filter and we can set a threshold, for example, and look for the EC2 StartInstances API call and say that we want to trigger a CloudWatch alarm when we detect that metric to be above 30, and from there, maybe go into an SNS topic, and we can alert the security team because too many instances are started at a time.
- 036_CloudTrail - Integration with Athena.txt:2: So the idea is that you're going to use Athena directly to query CloudTrail logs stored in Amazon S3, for example, to analyze activity for security and compliance.
- 042_[SAA_SOA] VPC Flow Logs.txt:5: They're very helpful to monitor and troubleshoot connectivity issues happening within your VPC.
- 042_[SAA_SOA] VPC Flow Logs.txt:21: So how do we use flow logs to troubleshoot security group and NACL issues?
- 042_[SAA_SOA] VPC Flow Logs.txt:38: And then we can use something called CloudWatch contributor insights, for example, to find the top 10 IP addresses that contribute to the most amount of network on your VPC or on ENI or whatever you want.
- 042_[SAA_SOA] VPC Flow Logs.txt:40: Here, we can set up a metric filter to look for example for the SSH or the RTP protocols.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:35: So to do so when you click on Set Up Permissions so let's create a role.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:75: And if I wanted to get some defense, I could for example, if this IP address was annoying me too much, I could block it at the that code level, for example and not have this traffic.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:77: But if I were to do some activity on my S3 instance and connect to Google for example, we would see some traffic with Accept as well.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:81: So this is very helpful and you'll use Amazon S3 if you wanted to do some more bigger analysis for example, using Athena.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:133: So we can get a lot of information from Athena and we can start doing some complex queries to try to group for example, by IP addresses, see who is attacking us the most where we're attacked the most, and so on.
- 045_[SAA_SOA] VPC Traffic Mirroring.txt:23: So the use cases for VPC traffic mirroring is going to be around content inspection, threat monitoring, or troubleshooting from a networking perspective, okay.
- 046_VPC Traffic Mirroring - Architectures.txt:9: So in this case, we have the same EC2 instances we want to monitor but then we're going to, in a private subnet, create different kind of EC2 instances based on their function.
- 046_VPC Traffic Mirroring - Architectures.txt:18: There's also a way to automate VPC traffic mirroring.
- 047_VPC Network Access Analyzer.txt:3: So for example you say, hey, a requirement of my network is that none of the resources should be publicly available.
- 047_VPC Network Access Analyzer.txt:11: So let's say for example, you have a VPC and a public subnet and within it, you have created an Amazon RDS database, and your network administrator arrives and says that, "Hey, I don't want any of my internet databases to be public and open." So this is a network access scope and then automatically, it's going to be sent to Network Access Analyzer and we're going to run an analysis.
- 048_Route 53 - Query Logging.txt:7: For example, by your EC2 instances, your Lambda functions, and so on.
- 048_Route 53 - Query Logging.txt:19: Well, for example all the DNS logs can be sent into CloudWatch Logs, from which we can use CloudWatch Logs insights to find specific data.
- 048_Route 53 - Query Logging.txt:20: Or we can use CloudWatch Contributor insights to find the most common DNS queries amongst our CloudWatch logs and try to understand whether or not we're being attacked, for example.
- 049_[SAA] OpenSearch.txt:22: For example, to do a partial search with the item name and then find the item ID out of it.
- 050_OpenSearch - Advanced.txt:10: So what you have to remember out of public access is that if you want to restrict by IP, for example, this is based on public IP, of course.
- 050_OpenSearch - Advanced.txt:19: For example, this policy grants the IAM user full access on all the OpenSearch domain sub-resources because we have action es star for a specific principal for a user on the domain test domain, which is our test domain for OpenSearch slash star, so any resources there.
- 015_CloudTrail.txt:6: And you can create a trail to be applied to all regions or a single region, if you wanted to accumulate all these history of events accumulated across all regions into one specific, for example, S3 buckets.
- 015_CloudTrail.txt:7: And when we use CloudTrail, for example, we'll say someone went ahead and deleted something in AWS.
- 015_CloudTrail.txt:8: For example, say that an EC2 instance was being terminated and you wanna figure out who did it?
- 015_CloudTrail.txt:9: Well, the answer is to look into CloudTrail because CloudTrail will have that API Call in it and will be able to get to the bottom of it and understand who did what and when.
- 015_CloudTrail.txt:16: For example, whenever someone configures security, they will use the API Call called IAM AttachRolePolicy.
- 015_CloudTrail.txt:24: For example, someone is listing all the users in IAM or listing all the EC2 instances in EC2, these kind of things.
- 015_CloudTrail.txt:26: For example, someone deletes or tries to delete a DynamoDB table.
- 015_CloudTrail.txt:32: Well, you have Amazon S3 object level activity for example, GetObject, DeleteObject, PutObject.
- 015_CloudTrail.txt:37: So whenever someone uses the Invoke API so you can get insights about how many times your Lambda functions are being evoked.
- 015_CloudTrail.txt:42: So when we have so many Management Events across all types of services and so many APIs happening very quickly in your accounts, it can be quite difficult to understand what looks odd, what looks unusual and what doesn't.
- 015_CloudTrail.txt:44: So with CloudTrail Insights and you have to enable it and you have to pay for it, it will analyze your events and try to detect unusual activity in your accounts.
- 015_CloudTrail.txt:45: For example, in accurate resource provisioning, hitting service limits, burst of AWS IAM actions, gaps in periodic maintenance activity.
- 015_CloudTrail.txt:47: So whenever something is changed or try to be changed to detect unusual patterns.
- 015_CloudTrail.txt:51: So in CloudWatch event is going to be generated in case you need to automate on top of these CloudTrail Insights, for example, to send an email.
- 015_CloudTrail.txt:59: And when you're ready to analyze them, you would use the Athena service, which is a serverless service to query data in S3 to find the events Okay I hope you like this lecture, and I will see you in the next lecture.
- 016_CloudTrail - EventBridge Integration.txt:3: So what happens that whenever we do an API call in AWS, as you know, the API call itself is going to be logged in CloudTrail.
- 016_CloudTrail - EventBridge Integration.txt:9: For example, say, you wanted to be notified whenever a user was assuming a role in your accounts.
- 016_CloudTrail - EventBridge Integration.txt:12: Similarly, we can also intercept API calls that, for example, change the Security Group inbound rules.
- 017_CloudTrail - SA Pro.txt:2: So the first one is around how to deliver files from CloudTrail to S3 and the type of use case that it opens up.
- 017_CloudTrail - SA Pro.txt:8: When a file is delivered into S3, you can leverage S3 events to notify either an SQS queue, an SNS topic, or a Lambda function.
- 017_CloudTrail - SA Pro.txt:23: Because from CloudTrail, in combining this with S3 and all these notifications, we can have a bunch of use case being opened up.
- 017_CloudTrail - SA Pro.txt:35: The second is that if Account A needs to access you know, the logs for the CloudTrail bucket we can create, for example, a cross-account role and assume the role in the security account.
- 017_CloudTrail - SA Pro.txt:38: But it's really interesting here to see that there's different options to provide the reads access to S3 based on the use case.
- 017_CloudTrail - SA Pro.txt:43: Say you want to create alerts when certain API calls are done.
- 017_CloudTrail - SA Pro.txt:46: And then from CloudWatch Logs you can open up a bunch of use case.
- 017_CloudTrail - SA Pro.txt:52: And maybe your CloudWatch alarm is set up to be triggered whenever the metric filter is equals to one, in which case the CloudWatch alarm can deliver to an SNS topic.
- 017_CloudTrail - SA Pro.txt:59: So you can be counting the occurrences of a specific API, for example terminate EC2 instances or count the API calls per user or detect a high level of denied API calls.
- 017_CloudTrail - SA Pro.txt:64: So if you have AWS organizations, for example, you have a management account, and then you have several OUs with other member accounts, then it is possible for you to set up a organizational trail directly in the management accounts.
- 017_CloudTrail - SA Pro.txt:79: So this is when you wanna see if someone is trying too fast to log into your accounts, that kind of things that could be a trigger for maybe an attack.
- 017_CloudTrail - SA Pro.txt:85: So based on use case you have, if you want to react to an event right away, it's EventBridge.

### Constraints / Limitations (Deduped)
- 016_[SOA] Logging in AWS for Security and Compliance.txt:21: Now also, you should know that if you do put all these audit and security logs and compliance logs and you put them in S3, it is great to encrypt these logs and then for the bucket where you put all these logs, you can control the access using IAM and bucket policies, and even multi-factor authentication.
- 016_[SOA] Logging in AWS for Security and Compliance.txt:22: Finally, if you need to retain these logs for a very long time, remember you need to move these logs to Glacier for cost saving, or if you need all Glacier vault log then as we've seen, then we get compliance and saying no one can touch these logs for maybe seven years, or whatever.
- 016_[SOA] Logging in AWS for Security and Compliance.txt:24: But this is enough for you to understand basically the scope of all this logging that exists in AWS, how we can analyze it, how we should store it, and how we should have cost saying and compliance on top of it.
- 017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt:6: So the idea is that, if you wanted to get the memory metric from within your EC2 instances, the only way you could do it is using the CloudWatch Unified Agent.
- 017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt:13: So they're important because you are interacting with possibly the SSM Parameter Store, as well as the CloudWatch Logs and CloudWatch metrics services.
- 017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt:14: They need to be able to have the correct IAM permissions attached to your IAM role on your EC2 instance, or attached to your access keys that are deployed on your on-premises servers.
- 017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt:17: So, something you need to know that comes up in the exam is that there is a procstat Plugin, sorry, on the CloudWatch Agent.
- 017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt:23: So again, what we need to remember out of this is that if you wanted to get some information around the processes running and their associated metrics, the only way to do it would be to use the Unified CloudWatch Agents deployed on your institute's instances and configured to use that plugin.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:5: So we need to create an EC2 instance role and then we click on next.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:7: Next, we need to find permission policies to apply to this role.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:13: And then the role name should be, for example Amazon EC2 role for CloudWatch.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:22: We don't need to select a key pair if we don't want to, which is fine.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:24: Then we need to create a new security group and we'll allow SSH and HTTP traffic the third one, from the internet because we'll be launching a web server and we'll get the log from that server.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:44: And we need to just start our HTTPD server.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:54: So also, should there be any errors we can do /error_log and we'll get a list of all the errors that are happening for our HTTPD server.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:63: And it will be retrieved at run time if we need to.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:83: And it must be installed or the agent will fail to start.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:92: Again, something this is only possible by doing metric collection from within the EC2 instance.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:120: And now we need to enter the log file path.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:143: So to do so, we need to store the config.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:144: We need to store the config, this one in the SSM parameter store And to do so we need the right permissions.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:148: And of course, we'll do security and then modify IAM role and we'll need to attach this Amazon EC2 role for CloudWatch that I just created.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:152: So on one instance, we need to add the permissions to attach a policy and I will just type CloudWatch agent again and this time we'll attach the admin policy which has sufficient permission to put the parameter into SSM.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:153: And this is only needed when you do the setup of the CloudWatch unified agents.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:156: And now my EC2 instance should be able to perform this next action.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:166: Now which credential should be used?
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:189: So this should work.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:195: And as you can see, it says that the configuration version is succeeded and then it should be good to go.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:207: And again, if you went into the error log you will find the log stream right here that contains the error log stream, if we need to.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:230: So just to be done, if you are in the DevOps course you need to keep this instance running.
- 019_CloudWatch Unified Agent - Troubleshooting.txt:1: So you need to be able to troubleshoot issues with the Unified CloudWatch Agent.
- 019_CloudWatch Unified Agent - Troubleshooting.txt:2: So, in case the agents fails to start, it may be an issue with the configuration file, in which case, you should go into this file logs at this place on your EC2 instance, which is going to give you some configuration validation, and information.
- 019_CloudWatch Unified Agent - Troubleshooting.txt:3: If you cannot find the metrics collected by the CloudWatch Agent, of course, check whether or not you are in the correct namespace.
- 019_CloudWatch Unified Agent - Troubleshooting.txt:10: Check your IAM permissions, of course, because you may need to have a Custom Policy if you're missing it, or you can just use Managed Policies as well if you want to use a shortcut.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:3: And to do so, you must first define log groups.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:33: You can calculate aggregate statistics, you can sort events, limit the number of events, and so on.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:37: And so as such, it will only query historical data when you run the query.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:43: Instead, you must use the CloudWatch Logs subscription.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:56: So the nitty gritty of how this works is that you must use what's called destinations.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:17: Okay, And then we need to select for example, a custom data, for example, this log stream and then we test a pattern and it's going to give us three matches out of five in the simple logs.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:54: So it gives you, for example, if you should click on these, some nice insights to how the query language works for CloudWatch logs insights.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:14: So now let's talk about Composite Alarms, because we know that CloudWatch Alarms are on a single metric, but then if you wanted to have multiple metrics, you would need to use Composite Alarms.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:17: So it's very helpful to reduce alarm noise because you can create complex Composite Alarms and saying, for example, if the CPU is high and the network is high, then don't alert me because I only wanna know when the CPU is high and the network is a low, these kind of things.
- 023_[SAA_DVA_SOA] CloudWatch Alarms Hands On.txt:5: So we don't need to keep it or anything like this, we just want the instance to be launched.
- 023_[SAA_DVA_SOA] CloudWatch Alarms Hands On.txt:7: So we need to select a metric.
- 023_[SAA_DVA_SOA] CloudWatch Alarms Hands On.txt:8: And so for this, we need to choose a metric.
- 023_[SAA_DVA_SOA] CloudWatch Alarms Hands On.txt:9: So we need to go and find our EC2 instance.
- 023_[SAA_DVA_SOA] CloudWatch Alarms Hands On.txt:30: Okay, and it will say, hey, if you are in alarm, okay, then just terminate this instance because maybe I know that my application sometimes has a huge failure and the CPU installation will be at a 95% or a 100% for a very long time, And the only way to resolve this is to just terminate the instance.
- 023_[SAA_DVA_SOA] CloudWatch Alarms Hands On.txt:33: So now this alarm obviously does have insufficient data, so we need to wait 15 minutes for it to be okay, and it's not going to be triggered unless we make it so.
- 023_[SAA_DVA_SOA] CloudWatch Alarms Hands On.txt:38: And so we need to do set alarm state the alarm name and the state value and the state reason.
- 023_[SAA_DVA_SOA] CloudWatch Alarms Hands On.txt:40: So AWS CloudWatch set alarm states, and then we need to set multiple parameters.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:15: For example, you say, "Hey, I only want these events for a specific bucket," for Amazon is free, for example.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:24: So if you're using, for example, Zendesk, Datadog, Auth0, or others, you need to check the partner list.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:31: Now, EventBridge receives a lot of events from different places and so therefore, you need to understand what the events are going to look like and remember, these events are in this adjacent format we just saw.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:11: So we need to create a rule, and what we want to do is to react to any event where an instance is going to be terminated or shut down.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:42: Then we'll need to have an exception role to be able to send a message into this topic.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:62: Other things that you need to be looking at is event buses.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:10: You don't need to provision any database again, because the whole service is serverless.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:11: So Athena is commonly used with another tool, called Amazon QuickSight to create reports and dashboards.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:15: So as an exam tip, anytime you need to analyze data in Amazon S3 using a serverless SQL engine, you can think about Athena.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:17: So first of all, because you pay for the amount of data scanned per terabyte, you need to use a type of data where you're going to scan less data.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:18: And for this, you can use a columnar data type for cost-savings, because you only scan the columns you need.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:20: And to get your files into the Apache Parquet or ORC format, you must use a service that we'll see as well in this section, for example, Glue.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:22: Now, also because we want to scan less data, we need to compress data for smaller retrievals.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:25: And so you're organizing, you're partitioning your data in Amazon S3, so that when you query it, you can know exactly in which folder at which path Amazon S3, you need to scan for data.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:30: And so when I do a query on Athena, and I filter for a specific year, a specific month, and a specific day, then we'll know exactly to which folder in Amazon S3 to get the data from, and therefore we'll only recover a subset of the data.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:32: Finally, the last performance improvement you need to do, is to use bigger files, it's to minimize your overheads.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:2: So I'm going to launch the query editor, and here we have access to our UI, and before we run our first query, we need to set up a query result location in Amazon S3.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:4: In here you must enter an S3 bucket where you're going to put your query results.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:7: Alright, so this should be a unique bucket name.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:18: So what I need to do is that I need to go into my code editor right here and then we first create a database.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:28: And the only thing you have to modify is to actually change the location.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:29: So we need to have the target bucket name and the prefix in there.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:33: But if you had a folder, you need to add the prefix as well by adding a slash and then the name of the prefix.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:35: So I'm going to run this query and we need to have a trailing slash at the end.
- 029_Amazon Athena - Troubleshooting.txt:3: Number one is that QuickSight must be able to access your S3 buckets that are used by Athena.
- 029_Amazon Athena - Troubleshooting.txt:5: The second thing is that if the data in the S3 bucket is encrypted using a KMS key, so using the SSE-KMS type of encryption, then you make sure the QuickSight IAM role must be granted access to decrypt with the key, to do a kms:Decrypt.
- 029_Amazon Athena - Troubleshooting.txt:7: But you need to do a grant on what's called the IAM role of QuickSight to grant the role access to the underlying KMS key of the S3 buckets.
- 029_Amazon Athena - Troubleshooting.txt:9: It doesn't really matter, you don't need to know them, okay?
- 029_Amazon Athena - Troubleshooting.txt:11: And whatever role QuickSight is using should be the one you grant access to the KMS key.
- 030_[SAA] CloudTrail.txt:28: Whereas the Read Events is just to get information which are still very important, but maybe less destructive.
- 030_[SAA] CloudTrail.txt:45: For example, in accurate resource provisioning, hitting service limits, burst of AWS IAM actions, gaps in periodic maintenance activity.
- 030_[SAA] CloudTrail.txt:51: So in CloudWatch event is going to be generated in case you need to automate on top of these CloudTrail Insights, for example, to send an email.
- 032_CloudTrail - Data Lake.txt:7: The store is immutable, that means you can't change anything, can't remove it, and you have retention up to 10 years of data in there.
- 033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt:1: A very important cultural integration you need to know about is the one with Amazon EventBridge to intercept any API calls.
- 034_[SOA] CloudTrail for SysOps.txt:2: So here are a few things you need to know for CloudTrail going into the exam.
- 034_[SOA] CloudTrail for SysOps.txt:17: Finally, you should protect CloudTrail using IAM if you want to make sure that CloudTrail keeps on delivering these log files into Amazon S3.
- 034_[SOA] CloudTrail for SysOps.txt:32: And the member accounts cannot remove or modify the organization trail which is good for compliance.
- 034_[SOA] CloudTrail for SysOps.txt:33: They can only view that it exists.
- 034_[SOA] CloudTrail for SysOps.txt:34: So that's it for all the additional stuff you need to know on CloudTrail.
- 037_Monitoring Account Activity.txt:3: So first of all if you wanted to have the configuration history you must enable AWS config with a configuration recorder on and that gives you all the configuration of all your resources over time.
- 037_Monitoring Account Activity.txt:4: Then if you look at API history you must look into CloudTrail and CloudTrail Event history is going to give you the API history for the past 90 days from which you can filter by resource name, resource type, event name or even by IAM user or assumed IAM role session name or access key if you needed to.
- 042_[SAA_SOA] VPC Flow Logs.txt:10: And you don't need to remember this at a high-level, right?
- 042_[SAA_SOA] VPC Flow Logs.txt:29: But if we have a inbound accept and an outbound reject, it can only mean a NACL issue.
- 042_[SAA_SOA] VPC Flow Logs.txt:36: But if you get an outbound accept and inbound reject, then it must mean a NACL issue.
- 042_[SAA_SOA] VPC Flow Logs.txt:46: So there is an IAM service role associated with the VPC flow logs service, and it must have the required permissions to publish logs to CloudWatch Logs.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:9: So how long you need to wait to aggregate.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:15: We can send the destination to CloudWatch Logs And we need to specify a log group, we need to we can also send it to an Amazon S3 bucket.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:16: We need to specify the S3 bucket ARN or we can send it to Kinesis Data Firehose in the same account or in a different account.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:21: Now view the details of the bucket and now we need to get the bucket ARN.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:33: And we need to create a log group and an IAM role.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:84: So I'm going to click on New Settings, Manage and then I need to specify an S3 bucket where I'm going to store my results.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:86: So I call this one demo-athena-stephane-v2, and this should work.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:88: So I need to just do slash and then Athena.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:92: And now we have this query location being saved and I need to go ahead and start creating a database and then create some data.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:93: So what I need to do is to go in here and I will type AWS VPC flow logs Athena and this is going to take me into a tutorial on how to do it.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:94: So to do so, we need to create a table.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:98: And we need to specify where the data is.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:115: Now the second thing we need to do is to run another statement.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:118: And again, we need to specify a date and as well as the entire replacement for month, year, and day.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:122: And then we need to add a partition.
- 044_VPC Flow Logs - Advanced.txt:3: So, you have the traffic to the Amazon DNS Server, so only the custom DNS Server traffic is logged.
- 045_[SAA_SOA] VPC Traffic Mirroring.txt:22: We need to have the source and the targets to be in the same VPC, or it could be across different VPC, and if we have enabled VPC Peering.
- 045_[SAA_SOA] VPC Traffic Mirroring.txt:24: It's very hard to demonstrate this in a demo, but this diagram should be enough.
- 046_VPC Traffic Mirroring - Architectures.txt:11: In this case, what we need to do is to do traffic mirroring into what we call a Cloud Packet Broker.
- 046_VPC Traffic Mirroring - Architectures.txt:22: So that instance is in my VPC, but first we need to make sure from the Lambda function that we launch a virtual monitoring appliance to receive that mirror traffic.
- 047_VPC Network Access Analyzer.txt:3: So for example you say, hey, a requirement of my network is that none of the resources should be publicly available.
- 048_Route 53 - Query Logging.txt:3: So, this is applicable only to public hosted zones and then the logs are sent only to CloudWatch.
- 049_[SAA] OpenSearch.txt:4: So in DynamoDB, just to do a comparison, you can only query the data by primary key or if you have indexes on your database.
- 050_OpenSearch - Advanced.txt:11: For VPC access, we need to specify the VPC, the subnets, security groups, and IAM role into which we deploy our OpenSearch cluster, we need to define VPC endpoints, absolutely, and ENIs will be created.
- 050_OpenSearch - Advanced.txt:12: And because now your OpenSearch cluster is deployed within your VPC, if you wanted to access it from within your own machine, you will need to be connected to the local network of AWS, so either using a VPN or transit gateway or managed network or a side-to-side VPN or proxy server, whatever you want, but you would need to be connected through the VPC.
- 050_OpenSearch - Advanced.txt:18: Well, we have something called the domain access policy which we're going to specify only in VPC which actions the principal can can perform on the domain sub-resources, so the indexes or the specific APIs.
- 050_OpenSearch - Advanced.txt:20: And this policy right here only allows HTTP GET and HTTP PUT on the commerce data within the test domain.
- 015_CloudTrail.txt:28: Whereas the Read Events is just to get information which are still very important, but maybe less destructive.
- 015_CloudTrail.txt:45: For example, in accurate resource provisioning, hitting service limits, burst of AWS IAM actions, gaps in periodic maintenance activity.
- 015_CloudTrail.txt:51: So in CloudWatch event is going to be generated in case you need to automate on top of these CloudTrail Insights, for example, to send an email.
- 016_CloudTrail - EventBridge Integration.txt:1: A very important cultural integration you need to know about is the one with Amazon EventBridge to intercept any API calls.
- 017_CloudTrail - SA Pro.txt:7: You could set up a lifecycle policy on your S3 buckets to deliver files to the Glacier tier in case they're archives and you don't need to have them around for a long time or you just wanna archive them and make sure that if you need to access them you can wait maybe for 6, 12 hours before you analyze these.
- 017_CloudTrail - SA Pro.txt:14: Okay, on top of it, you need to think about all the enhancements we can have from S3.
- 017_CloudTrail - SA Pro.txt:21: And you can even have a feature to perform CloudTrail log file integrity validation that will verify that the files delivered in S3 are exactly as they should be and they have not been tempered with, they have not been modified.
- 017_CloudTrail - SA Pro.txt:32: And so the only way for us to do it is to define an S3 bucket policy.
- 017_CloudTrail - SA Pro.txt:33: And the S3 bucket policy should allow CloudTrail to deliver files into S3.
- 017_CloudTrail - SA Pro.txt:63: Okay, so there is another feature of CloudTrail need to know about, which is the organizational trail.
- 017_CloudTrail - SA Pro.txt:65: Okay, so it's very important for you to remember this trail is created in the management accounts and not in the children accounts, in the member accounts of your organization.

### Patterns / Architectures (Deduped)
- 016_[SOA] Logging in AWS for Security and Compliance.txt:13: And the cool things is that all these logs, you can put them in S3 and then you can analyze them using AWS Athena.
- 016_[SOA] Logging in AWS for Security and Compliance.txt:17: Where we can use Athena plus ELB Access Logs plus S3, and that's the combination.
- 016_[SOA] Logging in AWS for Security and Compliance.txt:18: So just remember that a lot of services, and we've seen them in this course, do provide logs, they are able to put these logs into S3, and then we've seen how to analyze these log into S3 using Athena, so this is the idea.
- 016_[SOA] Logging in AWS for Security and Compliance.txt:19: If you google Athena analyze CloudFront Logs, you'll get the query right away.
- 017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt:7: Then, if you wanted to configure your agent, you can configure it by using the SSM Parameter Store and storing the configuration in a central place.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:9: For example, to export them in batch into Amazon S3 or to stream them into Kinesis Data Streams, Kinesis Data Firehose, AWS Lambda, Amazon OpenSearch.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:17: Lambda will send logs from the functions themselves.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:45: So, you can send this data into multiple places such as Kinesis Data Streams, Kinesis Data Firehose, or Lambda.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:48: This would be a great choice if you wanted to use, for example, the integration with Kinesis Data Firehose, Kinesis Data Analytics, or Amazon EC2, or Lambda.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:50: From there, you can send it in near real-time fashion into Amazon S3, or for example, the OpenSearch Service, or you have Lambda.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:51: So you can write your own custom Lambda function, or you can use a managed Lambda function that is sending data in real-time into the OpenSearch Service.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:3: For example, this one was created by Lambda.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:32: So Elasticsearch, Kinesis, datastreams, Kinesis Firehose or a Lambda subscription filter if you want to send data into custom lambda functions.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:53: Or, you can look at some simple queries and view the use cases of losing log insights for example, view the latency statistics for a five minute interval on Lambda, or get the top 10 by transfers by source and destination IP addresses for VPC flow logs.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:13: And the last one is to send a notification to the SNS service, for example, and from the SNS service, we can hook it to a Lambda function and have the Lambda function do pretty much anything we want based on an alarm being breached.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:21: And therefore, if Alarm A is in alarm and Alarm B is in alarm, and this is something we have to define ourselves, then the Composite Alarm itself will be an alarm and can trigger, for example, an SNS notification.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:30: And you can also send an alert to your SNS topic to get alerted that the EC2 instance was being recovered.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:34: And then when we receive too many instances of a specific word, for example, the word error, then do an alert and send a message into Amazon SNS.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:1: So now let's talk about Amazon EventBridge, and Amazon EventBridge used to be formally known as CloudWatch Events so you will see EventBridge in the exam, but just so you know, if you come from old AWS experience, then it used to be named the CloudWatch Events.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:2: So with EventBridge, you can do a lot of things.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:4: For example, we say, "Hey, every hour please trigger a Lambda function," and that Lambda function will run a script.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:5: So the events are generated every hour, hence the name Amazon EventBridge, but not just a schedule like every hour, it can also react to an event pattern.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:8: So when that happens, maybe you want to send a message into an SNS topic and receive an email notification, so that if anyone is using the root account, then you will receive an email, which may be a good security feature for your accounts.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:9: Also, for example, you have different destinations, you can trigger Lambda functions, send SNS and SQS messages, and so on, I will show you this all in a second.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:10: So EventBridge sits in the middle and we have all the sources that can send events into Amazon EventBridge.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:12: Code Build, for example, if you have a build that fails or S3, whenever there's an event, for example, when an object is uploaded, or Trusted Advisor when you have a new finding of security in your accounts or as a good combo, you can combine EventBridge and CloudTrail and actually intercept any API call made within your AWS accounts, which is huge.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:14: Then these events get sent into Amazon EventBridge and you can set up a filter.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:16: Then EventBridge is going to generate adjacent document that represents the details about your events.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:20: For example, you can schedule and trigger a Lambda function, you can schedule a batch in AWS Batch, you can launch an ECS task for Amazon ECS, you can send a message to SQS, to SNS, or even to a Kinesis Data Stream, you can, for example, start a Step Function, you can start a CI/CD Pipeline with CodePipeline or a build with CodeBuild so you don't actually know all these things, of course, these are different AWS services, but I'm just giving you an overview what you can do and you can also, for example, start an SSM automation or a specific EC2 action, such as starting or stopping or restarting an EC2 instance.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:22: So Amazon EventBridge is what we call the default event bus, which is what we just saw, which represents services from AWS that send their events into the default event bus, but Amazon EventBridge has more capability.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:26: Okay, and finally, there is a custom event bus so you can create your own event buses and then your own applications can send their own events into a custom event bus and therefore, you have the same capability of sending these events to different destinations thanks to the EventBridge rules.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:30: For example, say there is a bug in your Lambda function and you want to fix it, so you fixed it and then you want to retest the event, replay it, then you can replay these archived events, which is super handy for debugging, super handy for troubleshooting, and for fixing production as well.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:31: Now, EventBridge receives a lot of events from different places and so therefore, you need to understand what the events are going to look like and remember, these events are in this adjacent format we just saw.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:32: So therefore, there is a Schema Registry and the capability is that EventBridge is going to analyze the events in your bus and then it's going to infer the schema and the schema out of the Schema Registry is going to allow you to generate code for your application that will know in advance how the data is structured in the event bus.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:33: For example, this is an example here for a specific CodePipeline in action.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:36: Now, we have resource based policies for EventBridge, what does that mean?
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:38: For example, you can say that a specific event bus can be allowed or denied other events from other regions or accounts and the use case for it, for example, would be to have a central events bus within your AWS organization, so a set of accounts and then all these events are going to be aggregated, so how does that work?
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:39: Well, we have a central event bus with a specific account and we're going to add a specific resource based policy, allowing other accounts to send events to it and therefore, this other account, for example, will be able to do a put events and send events directly into the central event bus.
- 025_[SAA_DVA_SOA] Amazon EventBridge.txt:40: So that's it, we've seen EventBridge left to right, you know everything about it.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:1: So let's have a look at Amazon EventBridge.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:6: So there is now something called EventBridge schedule.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:10: So just to get started, we're going to do the first option, EventBridge rule with event pattern.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:14: For example, if you take any of these, for example, if you take Lambda, you can have a look at all these things.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:38: We have SNS topic, SQS queues, I mean so many.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:39: But what we want to do right now is to receive an alert, so we choose SNS Topic and then we want it to be our demo topic.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:41: You can just create an SNS topic very easily.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:50: And this one is going called InvokeLambdaEveryHour.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:58: Well, we have all these options such as, for example, running a task on Amazon ECS or putting a records in Kinesis Data Firehose or invoking a Lambda function.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:59: So you can say, for example, in the Invoke Lambda function, and if you have a Lambda function, you can select it from here.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:61: Once you've done this, you have a schedule in Amazon EventBridge.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:66: And here you have the ability yourself to send your own events into this event bus and so therefore you can develop custom applications that are based on Amazon EventBridge, which can be very helpful.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:72: So if you use, for example, Auth0, then the events of Auth0 will be put and inserted into Amazon EventBridge.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:73: And then you can, for example, use a Lambda function or do something after someone has done the login in of zero.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:76: That means that, for example, if you wanted to have an event within EventBridge, but then to connect to an external HTP destination, you can also define one here.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:77: And this allows you to connect EventBridge to an outside source, for example, to have integration with your own infrastructure.
- 026_[SAA_DVA_SOA] Amazon EventBridge - Hands On.txt:81: But this allows you to understand the shape and form the events will have in Amazon EventBridge.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:1: So now, let's talk about Amazon Athena.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:2: So Athena is a serverless query service to help you analyze the data stored in Amazon S3 buckets.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:4: Behind the scenes, Athena is built on the Presto engine, which uses the SQL language.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:5: So the idea is that users are going to load data into your S3 bucket, or you are going to load data into your S3 bucket, and then you would use the Athena service to query and analyze this data in Amazon S3 without moving it.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:6: So Athena is serverless, and it analyzes directly your data living in your S3 bucket.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:11: So Athena is commonly used with another tool, called Amazon QuickSight to create reports and dashboards.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:12: So we'll see Quicksight later in depth, but Amazon Quicksight connects to Athena, which connects to your S3 buckets.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:13: Now, the use cases for Amazon Athena are to do ad hoc queries, business intelligence, analytics, reporting, and to analyze and query any kind of logs that originates from your AWS services.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:15: So as an exam tip, anytime you need to analyze data in Amazon S3 using a serverless SQL engine, you can think about Athena.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:16: Now, I've talked about performance improvements, and you can actually improve Athena performance, and in this exam, we'll test you on this as well.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:19: So therefore, the recommended formats for Amazon Athena, are going to be Apache Parquet and ORC, and it's going to give you a huge performance improvement.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:30: And so when I do a query on Athena, and I filter for a specific year, a specific month, and a specific day, then we'll know exactly to which folder in Amazon S3 to get the data from, and therefore we'll only recover a subset of the data.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:33: So if you have many, many, many small files in Amazon S3, Athena is not going to be as performance, as if you had larger files, for example, 128 megabytes, and over, because larger files are easier to scan, and easier to retrieve.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:34: Another feature of Amazon Athena is the Federated Query.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:35: So you know that Athena can query data in S3, but actually you can query data anywhere, for example, in relational or non-relational databases, you can query objects and custom data sources, would it be on AWS or on-premises.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:38: It's a Lambda function, and that Lambda function is going to run the Federated Queries in other services.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:41: For example, we have Athena here, and we have a Lambda function, and you'll have one Lambda function per Data Source Connector.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:42: And then through Amazon Athena, you can run the query across ElastiCache, Document DB, DynamoDB, Redshift, Aurora, SQL Server, MySQL, HBase on the EMR service, or any on-premises database.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:43: They're clear from Athena, as well as, of course, Amazon S3, and you can do your drawings, and you can do your competitions, and so on.
- 027_[SAA_DVA_SOA] Amazon Athena.txt:46: So that's it for Amazon Athena.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:1: So let's use the Athena service to query data from an S3 buckets.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:6: So I'll call this one, AWS Athena Stephane, I am in EU Central One, V two.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:12: And we can also type, for example, Athena here.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:19: So we here under S3 advanced Athena S3 Access Log that's SQL.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:23: So this is the one I want to select and we have created it from within Athena.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:24: Next we run a query and this is a query to create a table in Athena to represent our access logs.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:27: Okay, so this query, I got it from the Amazon S3 and Athena documentation, which gives you this entire query.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:43: So Athena makes it super easy for us.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:59: The idea here is that I just used the Athena service to query my data in Amazon S3, very easily, without setting up any kind of server.
- 028_[SAA_DVA_SOA] Amazon Athena - Hands On.txt:62: And we were good to go to use SQL language to query our data directly from within Athena.
- 029_Amazon Athena - Troubleshooting.txt:1: So let's talk about troubleshooting especially when QuickSight is trying to use Athena but there are insufficient permissions.
- 029_Amazon Athena - Troubleshooting.txt:3: Number one is that QuickSight must be able to access your S3 buckets that are used by Athena.
- 029_Amazon Athena - Troubleshooting.txt:12: And after granting access then these roles can do a kms:Decrypt and you will have solved your insufficient permissions problem between QuickSight and Athena.
- 030_[SAA] CloudTrail.txt:36: Another kind of event you can have in a CloudTrail are AWS Lambda function execution activities.
- 030_[SAA] CloudTrail.txt:37: So whenever someone uses the Invoke API so you can get insights about how many times your Lambda functions are being evoked.
- 030_[SAA] CloudTrail.txt:38: And again, this could be really high volumes, if your Lambda functions are executed a lot.
- 030_[SAA] CloudTrail.txt:50: They will also be sent to Amazon industry if you want to, and an EventBridge Event.
- 030_[SAA] CloudTrail.txt:56: So send them to S3, and then you would use Athena to analyze them.
- 030_[SAA] CloudTrail.txt:59: And when you're ready to analyze them, you would use the Athena service, which is a serverless service to query data in S3 to find the events Okay I hope you like this lecture, and I will see you in the next lecture.
- 032_CloudTrail - Data Lake.txt:2: So, it's a managed data lake that will let you aggregate, store and query events, and all these are stored in a central data store.
- 032_CloudTrail - Data Lake.txt:5: So, all these are going to be stored in one central place.
- 032_CloudTrail - Data Lake.txt:8: You can store events from multiple accounts and regions through AWS Organizations, and you can attach a Resource-based Policy to your Data Store.
- 032_CloudTrail - Data Lake.txt:11: On top of this data lake, you can also build dashboards.
- 033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt:1: A very important cultural integration you need to know about is the one with Amazon EventBridge to intercept any API calls.
- 033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt:2: So let's say you wanted to receive an SNS notification, anytime a user would delete a table in DynamoDB by using the DeleteTable API Call.
- 033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt:5: But then all these API calls will end up as events as well in Amazon EventBridge.
- 033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt:7: And this rule will have a destination the destination being Amazon SNS and therefore, we can create alerts.
- 033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt:8: So let me give you a few more examples on how you can integrate Amazon Eventbridge and CloudTrail.
- 033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt:11: And then using EventBridge integration, we can trigger a message into an SNS topic.
- 033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt:14: So these are going to be logged again by CloudTrail and then they will appear in EventBridge and then we can trigger a notification in SNS.
- 034_[SOA] CloudTrail for SysOps.txt:18: You can also integrate CloudTrail with EventBridge.
- 034_[SOA] CloudTrail for SysOps.txt:19: So CloudTrail can trigger EventBridge for any kind of API calls made within your AWS accounts.
- 034_[SOA] CloudTrail for SysOps.txt:20: And then from EventBridge, you can do any kind of integration you want using Lambda, SNS, SQS, and so on.
- 034_[SOA] CloudTrail for SysOps.txt:21: So if you want it to react to any API call, you know, not even something that's covered by EventBridge, but you know that will appear in CloudTrail, then you would define an EventBridge integration with CloudTrail.
- 034_[SOA] CloudTrail for SysOps.txt:25: So this is not a real-time automation on top of API calls, but this is for you a way to get some kind of integration on top of any API calls made within CloudTrail when it is delivered into EventBridge.
- 034_[SOA] CloudTrail for SysOps.txt:26: Finally, you can have organization trails, so, you can setup CloudTrail at the organization level.
- 034_[SOA] CloudTrail for SysOps.txt:28: And so your CloudTrail at your org level is going to log events for all of API calls for all your member accounts into a target S3 buckets that is organization wide.
- 034_[SOA] CloudTrail for SysOps.txt:32: And the member accounts cannot remove or modify the organization trail which is good for compliance.
- 035_CloudTrail to CloudWatch Metrics Filter - Example.txt:2: The best way to actually implement this architecture is to use CloudTrail and CloudWatch metrics filter, how?
- 035_CloudTrail to CloudWatch Metrics Filter - Example.txt:3: Well, from CloudTrail, we know we can stream all the API calls being made in two CloudWatch logs, and from CloudWatch logs, we can define a metrics filter and we can set a threshold, for example, and look for the EC2 StartInstances API call and say that we want to trigger a CloudWatch alarm when we detect that metric to be above 30, and from there, maybe go into an SNS topic, and we can alert the security team because too many instances are started at a time.
- 036_CloudTrail - Integration with Athena.txt:1: So here's a quick lecture, but it is possible to integrate CloudTrail with Athena.
- 036_CloudTrail - Integration with Athena.txt:2: So the idea is that you're going to use Athena directly to query CloudTrail logs stored in Amazon S3, for example, to analyze activity for security and compliance.
- 036_CloudTrail - Integration with Athena.txt:3: So the idea is that the Athena table you want can be directly created from the CloudTrail Console, and then you specify in which S3 bucket location you want your logs to be stored.
- 036_CloudTrail - Integration with Athena.txt:4: So once you have the event history, you create the filter you want, then you click on Create Athena Table, and then you specify the S3 bucket and you will be able to query all your CloudTrail data within Athena.
- 037_Monitoring Account Activity.txt:9: And finally, you can also use Athena.
- 037_Monitoring Account Activity.txt:10: So Athena has the ability to also help you look at API history beyond the past 90 days but also perform more advanced queries, some statistics some sums and so on.
- 042_[SAA_SOA] VPC Flow Logs.txt:19: The best way is to do Athena on S3, or if you wanted to do a streaming analysis, you could use CloudWatch logs insights.
- 042_[SAA_SOA] VPC Flow Logs.txt:37: So let's have a look at a few architectures for your VPC flow logs so they can flow into CloudWatch logs as we know.
- 042_[SAA_SOA] VPC Flow Logs.txt:41: And if we realize that there's a lot more SSH or RDP than usual, then trigger a CloudWatch alarm and send an alert into an Amazon SNS topic because something fishy may be happening on your network.
- 042_[SAA_SOA] VPC Flow Logs.txt:43: And then we send everything into an S3 bucket for storage, and we use Amazon Athena to analyze the VPC flow logs with SQL.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:62: I can click on it, look at the VPC flow logs for eu-central-1.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:81: So this is very helpful and you'll use Amazon S3 if you wanted to do some more bigger analysis for example, using Athena.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:82: So let's go ahead and practice using Athena to query this data into my S3 bucket.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:83: So in Athena, what I'm going to do is to first set up a query result location in Amazon S3.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:86: So I call this one demo-athena-stephane-v2, and this should work.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:87: Now let's click on Create these buckets, View Details, and I can just use this S3 bucket, so Properties, I will copy the ARN, back into Athena and then click on Save.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:88: So I need to just do slash and then Athena.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:93: So what I need to do is to go in here and I will type AWS VPC flow logs Athena and this is going to take me into a tutorial on how to do it.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:96: So let's go ahead and paste this in my Athena UI.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:102: This is my Athena bucket.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:109: Now we're going to copy this S3 URI directly back into Athena and I'm going to paste this in.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:133: So we can get a lot of information from Athena and we can start doing some complex queries to try to group for example, by IP addresses, see who is attacking us the most where we're attacked the most, and so on.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:137: And to Amazon S3, we've used Athena to query these logs in Amazon S3.
- 046_VPC Traffic Mirroring - Architectures.txt:1: So let's explore a couple of VPC traffic mirroring architectures.
- 046_VPC Traffic Mirroring - Architectures.txt:14: So that's a different architecture model.
- 046_VPC Traffic Mirroring - Architectures.txt:20: It's going to pass on that finding to Amazon EventBridge, and from EventBridge, we're going to invoke a Lambda function.
- 046_VPC Traffic Mirroring - Architectures.txt:21: That Lambda function is going to look at the payload of the alerts, and it's going to identify the EC2 instance and the corresponding ENI attached to that instance that needs VPC network traffic mirroring.
- 046_VPC Traffic Mirroring - Architectures.txt:22: So that instance is in my VPC, but first we need to make sure from the Lambda function that we launch a virtual monitoring appliance to receive that mirror traffic.
- 046_VPC Traffic Mirroring - Architectures.txt:24: So automatically the packets of the network are going to be forwarded, and then we can send them directly into an S3 bucket so that the logs could be analyzed later on by Athena.
- 046_VPC Traffic Mirroring - Architectures.txt:26: Finally, you can also have an architecture for VPC traffic mirroring that leverages a transit gateway between several accounts and several VPCs.
- 046_VPC Traffic Mirroring - Architectures.txt:27: But the idea is that you want to have a centralized VPC where you'll have all your security appliances and monitoring.
- 046_VPC Traffic Mirroring - Architectures.txt:28: So in that case, well, because we have set up a transit gateway, now any EC2 instance in any VPC can send their traffic directly into the network level balancer of the centralized VPC.
- 047_VPC Network Access Analyzer.txt:6: So it's going to evaluate the network access to all the resources in your VPCs, such as your EC2 instances, your RDS databases, Aurora, OpenSearch, Redshift and so on.
- 048_Route 53 - Query Logging.txt:7: For example, by your EC2 instances, your Lambda functions, and so on.
- 048_Route 53 - Query Logging.txt:18: So, what kind of architectures can we build with the Resolver query logging?
- 049_[SAA] OpenSearch.txt:1: So now, let's talk about the Amazon OpenSearch Service.
- 049_[SAA] OpenSearch.txt:2: An Amazon OpenSearch is a successor to something you may have heard before called, Amazon ElasticSearch.
- 049_[SAA] OpenSearch.txt:5: But with OpenSearch, you can actually, as the name indicates, search any fields, even for partial matches.
- 049_[SAA] OpenSearch.txt:6: So it's very common to use OpenSearch to provide search to your application.
- 049_[SAA] OpenSearch.txt:7: And so you would use OpenSearch as a compliment to another database.
- 049_[SAA] OpenSearch.txt:8: So OpenSearch can be used for search, but also as the name doesn't indicate, you can also do analytic queries on top of OpenSearch.
- 049_[SAA] OpenSearch.txt:9: So you have two modes to provision an OpenSearch Cluster.
- 049_[SAA] OpenSearch.txt:12: And OpenSearch has its own query language, it does not natively support SQL, but you can enable SQL compatibility via a plugin.
- 049_[SAA] OpenSearch.txt:15: And as I said, you can do analytics on top of the OpenSearch Service, so you can use something called OpenSearch Dashboards to create visualizations on top of your OpenSearch Data.
- 049_[SAA] OpenSearch.txt:16: So here are some common patterns to use OpenSearch.
- 049_[SAA] OpenSearch.txt:19: And then you send all the streams in a DynamoDB Stream, which is then picked up by a Lambda Function.
- 049_[SAA] OpenSearch.txt:20: And that Lambda Function will insert the data into Amazon OpenSearch in real time.
- 049_[SAA] OpenSearch.txt:24: So that's a common pattern in which OpenSearch provides the search capability, whereas your main source of data still remains your DynamoDB Table.
- 049_[SAA] OpenSearch.txt:25: There's also other ways you can ingest CloudWatch Logs into OpenSearch.
- 049_[SAA] OpenSearch.txt:26: So the first one is to use what's called a CloudWatch Log Subscription Filter, sending data in real time to a Lambda Function that is managed by AWS.
- 049_[SAA] OpenSearch.txt:27: And then the Lambda Function in real time sends all the data into Amazon OpenSearch.
- 049_[SAA] OpenSearch.txt:30: And then near real time, because this is Data Firehose, data will be inserted in Amazon OpenSearch.
- 049_[SAA] OpenSearch.txt:31: Other patterns are on Kinesis, so to send Kinesis Data Streams into Amazon OpenSearch, you have two strategies.
- 049_[SAA] OpenSearch.txt:34: You can optionally do some data transformation, using a Lambda Function and then send data into Amazon OpenSearch.
- 049_[SAA] OpenSearch.txt:35: Or you can use Kinesis Data Streams again, but this time, you would create a Lambda Function that would read the data stream in real time.
- 049_[SAA] OpenSearch.txt:36: And then you would write custom code to have the Lambda Function write to Amazon OpenSearch in real time.
- 049_[SAA] OpenSearch.txt:37: So all these patterns are valid, and now you know pretty much all the possible architectures for using Amazon OpenSearch.
- 050_OpenSearch - Advanced.txt:1: So now let's talk about OpenSearch security.
- 050_OpenSearch - Advanced.txt:2: We have two deployment modes and the first one is public access, so this makes your OpenSearch cluster accessible from the internet with a public endpoint.
- 050_OpenSearch - Advanced.txt:3: So that means you can restrict access to OpenSearch using access policies identity-based policies, and IP-based policies.
- 050_OpenSearch - Advanced.txt:9: And then OpenSearch will actually return full or partial data.
- 050_OpenSearch - Advanced.txt:11: For VPC access, we need to specify the VPC, the subnets, security groups, and IAM role into which we deploy our OpenSearch cluster, we need to define VPC endpoints, absolutely, and ENIs will be created.
- 050_OpenSearch - Advanced.txt:12: And because now your OpenSearch cluster is deployed within your VPC, if you wanted to access it from within your own machine, you will need to be connected to the local network of AWS, so either using a VPN or transit gateway or managed network or a side-to-side VPN or proxy server, whatever you want, but you would need to be connected through the VPC.
- 050_OpenSearch - Advanced.txt:14: So the authorization flow is a little bit more complicated here, but the client will be using IAM credentials to connect to OpenSearch, so whether or not it will connect to the VPC first and then go through the security group, so is everything authorized true, true perfect?
- 050_OpenSearch - Advanced.txt:15: Then we'll check whether or not the IAM credentials are valid and then whether or not the access policy allows the client to access our OpenSearch cluster.
- 050_OpenSearch - Advanced.txt:16: Then the fine-grained access control will take action and then finally, OpenSearch will return the full or partial data.
- 050_OpenSearch - Advanced.txt:19: For example, this policy grants the IAM user full access on all the OpenSearch domain sub-resources because we have action es star for a specific principal for a user on the domain test domain, which is our test domain for OpenSearch slash star, so any resources there.
- 050_OpenSearch - Advanced.txt:21: So we can go very fine grained based on the domain access policy and that's how you manage security in OpenSearch.
- 015_CloudTrail.txt:36: Another kind of event you can have in a CloudTrail are AWS Lambda function execution activities.
- 015_CloudTrail.txt:37: So whenever someone uses the Invoke API so you can get insights about how many times your Lambda functions are being evoked.
- 015_CloudTrail.txt:38: And again, this could be really high volumes, if your Lambda functions are executed a lot.
- 015_CloudTrail.txt:50: They will also be sent to Amazon industry if you want to, and an EventBridge Event.
- 015_CloudTrail.txt:56: So send them to S3, and then you would use Athena to analyze them.
- 015_CloudTrail.txt:59: And when you're ready to analyze them, you would use the Athena service, which is a serverless service to query data in S3 to find the events Okay I hope you like this lecture, and I will see you in the next lecture.
- 016_CloudTrail - EventBridge Integration.txt:1: A very important cultural integration you need to know about is the one with Amazon EventBridge to intercept any API calls.
- 016_CloudTrail - EventBridge Integration.txt:2: So let's say you wanted to receive an SNS notification, anytime a user would delete a table in DynamoDB by using the DeleteTable API Call.
- 016_CloudTrail - EventBridge Integration.txt:5: But then all these API calls will end up as events as well in Amazon EventBridge.
- 016_CloudTrail - EventBridge Integration.txt:7: And this rule will have a destination the destination being Amazon SNS and therefore, we can create alerts.
- 016_CloudTrail - EventBridge Integration.txt:8: So let me give you a few more examples on how you can integrate Amazon Eventbridge and CloudTrail.
- 016_CloudTrail - EventBridge Integration.txt:11: And then using EventBridge integration, we can trigger a message into an SNS topic.
- 016_CloudTrail - EventBridge Integration.txt:14: So these are going to be logged again by CloudTrail and then they will appear in EventBridge and then we can trigger a notification in SNS.
- 017_CloudTrail - SA Pro.txt:1: Okay, so now let's discuss CloudTrail and some solution architectures that can be interesting with CloudTrail.
- 017_CloudTrail - SA Pro.txt:8: When a file is delivered into S3, you can leverage S3 events to notify either an SQS queue, an SNS topic, or a Lambda function.
- 017_CloudTrail - SA Pro.txt:9: But you can also have CloudTrail deliver notifications directly into SNS.

## Deduped Consolidation Snapshot End

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: The second is that if Account A needs to access you know, the logs for the CloudTrail bucket we can create, for example, a cross-account role and assume the role in the security account.
- Signal 2: You can also go into a different kind of setup where you have one monitoring appliance in one VPC and then by establishing VPC peering, you can have instance D and instance E directly mirror traffic into the monitorin...
- Signal 3: So that instance is in my VPC, but first we need to make sure from the Lambda function that we launch a virtual monitoring appliance to receive that mirror traffic.
- Signal 4: So service logs will include CloudTrial and here we can trace all the API calls and we've done this as a hands on so we know how that works.
- Signal 5: Transcript signals that service logs will include CloudTrial and here we can trace all the API calls and we've done this as a hands on so we know how that works.
- Signal 6: Design implication: service logs will include CloudTrial and here we can trace all the API calls and we've done this as a hands on so we know how that works.
- Signal 7: Cross-account and cross-region setup quality directly impacts security visibility.
- Signal 8: Key Insights: So service logs will include CloudTrial and here we can trace all the API calls and we've done this as a hands on so we know how that works.
- Signal 9: Key Insights: Because by default, if you launch an EC2 instance, there will be no files, no logs, that will be sent from your EC2 instance to CloudWatch Logs without using an agent, and that agent could be the CloudWatch Unified Agents.
- Signal 10: Key Insights: Then, if you wanted to configure your agent, you can configure it by using the SSM Parameter Store and storing the configuration in a central place.

### Service-Specific Lab Paths
### Activity 1: Amazon CloudWatch Lab for 09 Logging Monitoring
- AWS console path: AWS Console -> CloudWatch
- Azure equivalent: Azure Monitor
- GCP equivalent: Cloud Monitoring
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> CloudWatch.
3. Build: Create one dashboard and one alarm.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Trigger alarm condition and inspect alarm history.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete dashboard and alarm.

### Activity 2: Amazon S3 Lab for 09 Logging Monitoring
- AWS console path: AWS Console -> S3 -> Buckets
- Azure equivalent: Azure Blob Storage
- GCP equivalent: Cloud Storage
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> S3 -> Buckets.
3. Build: Create a bucket and upload one sample file.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Open object metadata and test download.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete objects and delete bucket.

### Activity 3: Amazon VPC Lab for 09 Logging Monitoring
- AWS console path: AWS Console -> VPC
- Azure equivalent: Azure Virtual Network
- GCP equivalent: VPC Network
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> VPC.
3. Build: Create a VPC with one public and one private subnet.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Validate route table associations.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete test subnets and VPC components.

### Activity 4: IAM Lab for 09 Logging Monitoring
- AWS console path: AWS Console -> IAM
- Azure equivalent: Microsoft Entra ID + RBAC
- GCP equivalent: Cloud IAM
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> IAM.
3. Build: Create a test user or role with least privilege.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Sign in or simulate policy permissions.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete the test user/role and inline policies.

### Quick Troubleshooting
- Access denied: verify role permissions or ask admin for least-privilege lab policy.
- Resource limit reached: pick another region or request quota increase.
- Unexpected charges: stop/delete resources and review cost explorer immediately.

## Cross-Cloud Thinking Mode

Use this lens to study 09 Logging Monitoring in a cloud-agnostic way: focus on capability first, provider name second.

### Capability Mapping (AWS / Azure / GCP)
| Capability | AWS | Azure | GCP |
|---|---|---|---|
| Identity | IAM / IAM Identity Center | Microsoft Entra ID + RBAC | Cloud IAM |
| Object Storage | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Virtual Machines | Amazon EC2 | Azure Virtual Machines | Compute Engine |
| Serverless Functions | AWS Lambda | Azure Functions | Cloud Functions / Cloud Run |
| Containers | Amazon EKS / ECS | AKS | GKE / Cloud Run |
| Databases | RDS / DynamoDB / ElastiCache | Azure SQL / Cosmos DB / Azure Cache | Cloud SQL / Firestore / Memorystore |
| Networking | VPC / Route 53 / ELB | VNet / DNS / Load Balancer | VPC / Cloud DNS / Cloud Load Balancing |
| Observability | CloudWatch / X-Ray / CloudTrail | Azure Monitor / App Insights / Activity Log | Cloud Monitoring / Cloud Logging / Cloud Trace |

### Same Lab Across 3 Clouds
| Lab Theme | AWS | Azure | GCP |
|---|---|---|---|
| Amazon CloudWatch | Amazon CloudWatch | Azure Monitor | Cloud Monitoring |
| Amazon S3 | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Amazon VPC | Amazon VPC | Azure Virtual Network | VPC Network |
| IAM | IAM | Microsoft Entra ID + RBAC | Cloud IAM |

### How To Think Cross-Cloud
1. Start with workload requirement: latency, throughput, security, and compliance.
2. Map requirement to capability family (identity, network, compute, data, observability).
3. Compare service behavior, not branding: limits, scaling model, and failure modes.
4. Keep a portable architecture note: what is generic vs provider-specific.
5. Test same mini-lab in at least 2 clouds and write down differences.

### Child-Friendly Practice Challenge
- Pick one simple task (for example: upload one file, run one function, read one metric).
- Do the same task in AWS, Azure, and GCP.
- Fill this mini template:
  - What was the same?
  - What had a different name?
  - What felt easier/harder and why?

<!-- END PRACTICE_ENHANCEMENTS -->

