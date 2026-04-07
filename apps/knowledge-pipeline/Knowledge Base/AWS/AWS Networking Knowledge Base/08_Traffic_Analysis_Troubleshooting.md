# 08_Traffic_Analysis_Troubleshooting.md

## Scope
- Topic: VPC Flow Logs, traffic mirroring, reachability/network access analysis, troubleshooting methodology and telemetry
- Files processed: 10
- Extracted non-empty transcript lines: 872
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 8: Traffic Analysis and Troubleshooting)

This section is the study-first operations guide for network telemetry, path validation, packet visibility, and disciplined troubleshooting in AWS environments.

### Phase 1 - Foundations

#### Module 1: Troubleshooting Mental Model
- Most network incidents are path, policy, or visibility problems before they are tool problems.
- Effective troubleshooting requires knowing what kind of evidence each AWS tool provides.
- Observability design should exist before incidents, not be invented during them.




##### Source Transcript Details
- Module focus: Troubleshooting Mental Model
- Primary transcript files:
- outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/047_VPC Traffic Monitoring with VPC Flow logs.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/051_Walkthrough_ VPC Reachability Analyzer.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/050_VPC Reachability Analyzer.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/046_Section Introduction.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/052_Walkthrough_ VPC Network Access Analyzer.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/048_VPC Traffic Mirroring.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/049_VPC features for Network Analysis.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/27_Networking - VPC/337_VPC Flow Logs.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/27_Networking - VPC/344_VPC Traffic Mirroring.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/27_Networking - VPC/338_VPC Flow Logs Hands On + Athena.txt
- Top concept clusters from transcript metadata:
- Traffic Analysis Operational Context
- Path Analysis and Reachability
- Operational Observability
- Security Control Verification
- Telemetry and Packet Visibility
- Troubleshooting Methodology
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 10
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 872
- Key insights inside selected files: 872
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- Hello and welcome to this lecture, VPC traffic monitoring with VPC flow logs.
- Now, in this section introduction lecture, we talked about various tools which you can use for traffic monitoring, troubleshooting and analysis.
- So in a sIAMple term, VPC flow logs allow you to capture the information about the IP traffic that is going in and out of your ENIs are elastic network interfaces.
- Now, in that case, you can go and check the VPC flow logs and see which ENI is denying that traffic.
- And in that case, you can also perform analysis like this is my ENI or this is my IP address and show me how many requests has hit this IP address.
- So a lot of such analysis you can do once you capture this VPC flow logs.
- Further, there is additional field called traffic path, which is used for the egress traffic.
- And in this case, it is an ingress traffic and that's where you see this field is not populated.
- And finally, other IAMportant field is the traffic flow direction which tells you whether it was ingress traffic or egress traffic.
- Now, in this case, it's an ingress traffic and finally, the log status, which is OK.
- So in order to generate some traffic, what I can do is I can just go here and just hit this web server over port 80.
- And then this page appears that means traffic is going to my EC2 instance over port 80.
- Now, one more thing like sometimes it happens that your security group or Network-ACL blocks some traffic or say they do not allow the traffic.
- And in that case, you can use this action field which is like ACCEPT or REJECT and you can analyze your traffic flow and understand that whether this traffic was blocked because there was no security group or because...
- So one scenario is if your inbound traffic is rejected, in that case, the reason could be either SG or NACL, right?
- But if your inbound traffic was accepted, but the outbound was rejected.
- Then the problem is with NACL, that's because security groups are stateful, which means they automatically allow the return traffic.
- If the outbound traffic is rejected, then the reason could be either SG or NACL.

##### Polished Architect Notes
- Transcript signals that and welcome to this lecture, VPC traffic monitoring with VPC flow logs.
- Transcript signals that in this section introduction lecture, we talked about various tools which you can use for traffic monitoring, troubleshooting and analysis.
- Transcript signals that in a sIAMple term, VPC flow logs allow you to capture the information about the IP traffic that is going in and out of your ENIs are elastic network interfaces.
- Transcript signals that in that case, you can go and check the VPC flow logs and see which ENI is denying that traffic.
- Transcript signals that in that case, you can also perform analysis like this is my ENI or this is my IP address and show me how many requests has hit this IP address.
- Transcript signals that a lot of such analysis you can do once you capture this VPC flow logs.
- Transcript signals that further, there is additional field called traffic path, which is used for the egress traffic.
- Transcript signals that in this case, it is an ingress traffic and that's where you see this field is not populated.
- Transcript signals that finally, other IAMportant field is the traffic flow direction which tells you whether it was ingress traffic or egress traffic.
- Transcript signals that in this case, it's an ingress traffic and finally, the log status, which is OK.
- Transcript signals that in order to generate some traffic, what I can do is I can just go here and just hit this web server over port 80.
- Transcript signals that then this page appears that means traffic is going to my EC2 instance over port 80.

##### Architect Synthesis (Transcript-Derived)
- Treat Traffic Analysis Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Path Analysis and Reachability as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Observability as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Security Control Verification as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Telemetry and Packet Visibility as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: and welcome to this lecture, VPC traffic monitoring with VPC flow logs.
- Design implication: in this section introduction lecture, we talked about various tools which you can use for traffic monitoring, troubleshooting and analysis.
- Design implication: in a sIAMple term, VPC flow logs allow you to capture the information about the IP traffic that is going in and out of your ENIs are elastic network interfaces.
#### Module 2: Visibility Levels
- Flow logs show metadata-level traffic acceptance and rejection patterns.
- Reachability and access analyzers evaluate control-plane path logic.
- Traffic mirroring provides deeper packet-level visibility when metadata is insufficient.




##### Source Transcript Details
- Module focus: Visibility Levels
- Primary transcript files:
- outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/047_VPC Traffic Monitoring with VPC Flow logs.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/048_VPC Traffic Mirroring.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/051_Walkthrough_ VPC Reachability Analyzer.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/050_VPC Reachability Analyzer.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/052_Walkthrough_ VPC Network Access Analyzer.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/046_Section Introduction.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/049_VPC features for Network Analysis.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/27_Networking - VPC/338_VPC Flow Logs Hands On + Athena.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/27_Networking - VPC/344_VPC Traffic Mirroring.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/27_Networking - VPC/337_VPC Flow Logs.txt
- Top concept clusters from transcript metadata:
- Traffic Analysis Operational Context
- Path Analysis and Reachability
- Telemetry and Packet Visibility
- Operational Observability
- Security Control Verification
- Troubleshooting Methodology
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 10
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 872
- Key insights inside selected files: 872
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- Hello and welcome to this lecture, VPC traffic monitoring with VPC flow logs.
- Now, in this section introduction lecture, we talked about various tools which you can use for traffic monitoring, troubleshooting and analysis.
- So in a sIAMple term, VPC flow logs allow you to capture the information about the IP traffic that is going in and out of your ENIs are elastic network interfaces.
- Now, in that case, you can go and check the VPC flow logs and see which ENI is denying that traffic.
- And in that case, you can also perform analysis like this is my ENI or this is my IP address and show me how many requests has hit this IP address.
- So a lot of such analysis you can do once you capture this VPC flow logs.
- Further, there is additional field called traffic path, which is used for the egress traffic.
- And in this case, it is an ingress traffic and that's where you see this field is not populated.
- And finally, other IAMportant field is the traffic flow direction which tells you whether it was ingress traffic or egress traffic.
- Now, in this case, it's an ingress traffic and finally, the log status, which is OK.
- So in order to generate some traffic, what I can do is I can just go here and just hit this web server over port 80.
- And then this page appears that means traffic is going to my EC2 instance over port 80.
- Now, one more thing like sometimes it happens that your security group or Network-ACL blocks some traffic or say they do not allow the traffic.
- And in that case, you can use this action field which is like ACCEPT or REJECT and you can analyze your traffic flow and understand that whether this traffic was blocked because there was no security group or because...
- So one scenario is if your inbound traffic is rejected, in that case, the reason could be either SG or NACL, right?
- But if your inbound traffic was accepted, but the outbound was rejected.
- Then the problem is with NACL, that's because security groups are stateful, which means they automatically allow the return traffic.
- If the outbound traffic is rejected, then the reason could be either SG or NACL.

##### Polished Architect Notes
- Transcript signals that and welcome to this lecture, VPC traffic monitoring with VPC flow logs.
- Transcript signals that in this section introduction lecture, we talked about various tools which you can use for traffic monitoring, troubleshooting and analysis.
- Transcript signals that in a sIAMple term, VPC flow logs allow you to capture the information about the IP traffic that is going in and out of your ENIs are elastic network interfaces.
- Transcript signals that in that case, you can go and check the VPC flow logs and see which ENI is denying that traffic.
- Transcript signals that in that case, you can also perform analysis like this is my ENI or this is my IP address and show me how many requests has hit this IP address.
- Transcript signals that a lot of such analysis you can do once you capture this VPC flow logs.
- Transcript signals that further, there is additional field called traffic path, which is used for the egress traffic.
- Transcript signals that in this case, it is an ingress traffic and that's where you see this field is not populated.
- Transcript signals that finally, other IAMportant field is the traffic flow direction which tells you whether it was ingress traffic or egress traffic.
- Transcript signals that in this case, it's an ingress traffic and finally, the log status, which is OK.
- Transcript signals that in order to generate some traffic, what I can do is I can just go here and just hit this web server over port 80.
- Transcript signals that then this page appears that means traffic is going to my EC2 instance over port 80.

##### Architect Synthesis (Transcript-Derived)
- Treat Traffic Analysis Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Path Analysis and Reachability as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Telemetry and Packet Visibility as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Observability as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Security Control Verification as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: and welcome to this lecture, VPC traffic monitoring with VPC flow logs.
- Design implication: in this section introduction lecture, we talked about various tools which you can use for traffic monitoring, troubleshooting and analysis.
- Design implication: in a sIAMple term, VPC flow logs allow you to capture the information about the IP traffic that is going in and out of your ENIs are elastic network interfaces.
#### Module 3: Investigation Discipline
- Start with scope and path assumptions, then validate route and policy layers.
- Use the cheapest sufficient signal first, then escalate to deeper capture.
- Centralized log destinations and query workflows reduce incident friction.






##### Source Transcript Details
- Module focus: Investigation Discipline
- Primary transcript files:
- outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/047_VPC Traffic Monitoring with VPC Flow logs.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/051_Walkthrough_ VPC Reachability Analyzer.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/050_VPC Reachability Analyzer.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/052_Walkthrough_ VPC Network Access Analyzer.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/048_VPC Traffic Mirroring.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/046_Section Introduction.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/049_VPC features for Network Analysis.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/27_Networking - VPC/344_VPC Traffic Mirroring.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/27_Networking - VPC/337_VPC Flow Logs.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/27_Networking - VPC/338_VPC Flow Logs Hands On + Athena.txt
- Top concept clusters from transcript metadata:
- Traffic Analysis Operational Context
- Path Analysis and Reachability
- Operational Observability
- Security Control Verification
- Telemetry and Packet Visibility
- Troubleshooting Methodology
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 10
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 872
- Key insights inside selected files: 872
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- Hello and welcome to this lecture, VPC traffic monitoring with VPC flow logs.
- Now, in this section introduction lecture, we talked about various tools which you can use for traffic monitoring, troubleshooting and analysis.
- So in a sIAMple term, VPC flow logs allow you to capture the information about the IP traffic that is going in and out of your ENIs are elastic network interfaces.
- Now, in that case, you can go and check the VPC flow logs and see which ENI is denying that traffic.
- And in that case, you can also perform analysis like this is my ENI or this is my IP address and show me how many requests has hit this IP address.
- So a lot of such analysis you can do once you capture this VPC flow logs.
- Further, there is additional field called traffic path, which is used for the egress traffic.
- And in this case, it is an ingress traffic and that's where you see this field is not populated.
- And finally, other IAMportant field is the traffic flow direction which tells you whether it was ingress traffic or egress traffic.
- Now, in this case, it's an ingress traffic and finally, the log status, which is OK.
- So in order to generate some traffic, what I can do is I can just go here and just hit this web server over port 80.
- And then this page appears that means traffic is going to my EC2 instance over port 80.
- Now, one more thing like sometimes it happens that your security group or Network-ACL blocks some traffic or say they do not allow the traffic.
- And in that case, you can use this action field which is like ACCEPT or REJECT and you can analyze your traffic flow and understand that whether this traffic was blocked because there was no security group or because...
- So one scenario is if your inbound traffic is rejected, in that case, the reason could be either SG or NACL, right?
- But if your inbound traffic was accepted, but the outbound was rejected.
- Then the problem is with NACL, that's because security groups are stateful, which means they automatically allow the return traffic.
- If the outbound traffic is rejected, then the reason could be either SG or NACL.

##### Polished Architect Notes
- Transcript signals that and welcome to this lecture, VPC traffic monitoring with VPC flow logs.
- Transcript signals that in this section introduction lecture, we talked about various tools which you can use for traffic monitoring, troubleshooting and analysis.
- Transcript signals that in a sIAMple term, VPC flow logs allow you to capture the information about the IP traffic that is going in and out of your ENIs are elastic network interfaces.
- Transcript signals that in that case, you can go and check the VPC flow logs and see which ENI is denying that traffic.
- Transcript signals that in that case, you can also perform analysis like this is my ENI or this is my IP address and show me how many requests has hit this IP address.
- Transcript signals that a lot of such analysis you can do once you capture this VPC flow logs.
- Transcript signals that further, there is additional field called traffic path, which is used for the egress traffic.
- Transcript signals that in this case, it is an ingress traffic and that's where you see this field is not populated.
- Transcript signals that finally, other IAMportant field is the traffic flow direction which tells you whether it was ingress traffic or egress traffic.
- Transcript signals that in this case, it's an ingress traffic and finally, the log status, which is OK.
- Transcript signals that in order to generate some traffic, what I can do is I can just go here and just hit this web server over port 80.
- Transcript signals that then this page appears that means traffic is going to my EC2 instance over port 80.

##### Architect Synthesis (Transcript-Derived)
- Treat Traffic Analysis Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Path Analysis and Reachability as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Observability as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Security Control Verification as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Telemetry and Packet Visibility as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: and welcome to this lecture, VPC traffic monitoring with VPC flow logs.
- Design implication: in this section introduction lecture, we talked about various tools which you can use for traffic monitoring, troubleshooting and analysis.
- Design implication: in a sIAMple term, VPC flow logs allow you to capture the information about the IP traffic that is going in and out of your ENIs are elastic network interfaces.
### Phase 2 - Core Services

#### Flow Logs and Telemetry Pipelines
- Flow Logs are the default metadata telemetry source for VPC traffic analysis.
- Destination choice influences retention, query speed, and investigation workflow.
- Athena and CloudWatch integration enable repeatable operational analysis.

#### Reachability and Access Analysis
- Reachability Analyzer is strong for control-plane path validation.
- Network Access Analyzer helps reason about access requirements and policy exposure.
- These tools are especially valuable before and after network changes.

#### Traffic Mirroring
- Use traffic mirroring for packet-level inspection when metadata is not enough.
- Mirror selectively; full mirroring is not a default observability strategy.
- Tie mirrored traffic collection to clear investigative or security use cases.

### Phase 3 - Advanced Patterns

#### Pattern 1: Structured Investigation Workflow
- Validate intended path first, then inspect accepted or rejected flows.
- Escalate to packet visibility only when control-plane and metadata signals are insufficient.
- Keep investigation playbooks standardized across teams.

#### Pattern 2: Pre-Change Validation
- Use analyzer tools before route and security changes hit production.
- Confirm that planned policy changes preserve required paths.
- Treat network validation as part of deployment quality, not post-change cleanup.

#### Pattern 3: Centralized Network Observability
- Aggregate logs and analysis outputs into common operational destinations.
- Standardize queries and dashboards for critical network paths.
- Good observability design shrinks incident time more than adding one more tool.

### Phase 4 - System Design (Production)

#### Reference Troubleshooting Architecture
- Central telemetry lake for VPC flow data, analyzer workflows, and selective packet inspection.
- Standard incident process linking path hypothesis, validation tooling, and evidence capture.
- Pre-change validation and post-incident review built into network operations.

#### Scaling Considerations
- Log volume and query cost rise quickly with estate size.
- Too many telemetry sources without workflow discipline create analysis noise.
- Packet-level tools must be tightly governed to stay operationally useful.

#### Cost Considerations
- Flow telemetry is generally cheaper than indiscriminate packet capture.
- Query cost and retention become meaningful at scale.
- The operational cost of weak troubleshooting discipline is usually the biggest cost driver.

### Cross-Cloud Concept Mapping (Traffic Analysis and Troubleshooting)

#### Underlying Concept: Network Flow Telemetry
- AWS: VPC Flow Logs and analytics integrations
- Azure: NSG Flow Logs and Network Watcher patterns
- GCP: VPC Flow Logs and network observability tools
- Trade-off: metadata telemetry is widely available, but analysis workflow maturity differs.

#### Underlying Concept: Path Validation and Packet Inspection
- AWS: Reachability Analyzer, Network Access Analyzer, and Traffic Mirroring
- Azure: connectivity diagnostics and packet capture patterns
- GCP: connectivity tests and packet mirroring patterns
- Trade-off: all clouds provide layered visibility, but tooling integration depth varies.

### Real-World Use Cases from Transcript Signals
- Diagnose blocked paths by combining reachability analysis with flow telemetry.
- Validate planned route and security changes before deployment.
- Escalate to packet-level capture only for targeted deep investigations.

### Constraints and Exam-Relevant Traps Captured
- Flow Logs do not replace packet capture or control-plane analysis.
- Reachability success in theory does not prove application readiness.
- More telemetry is not the same as better troubleshooting.
## Step 1 â€” Line-by-Line Extraction

Every non-empty line from every source transcript is preserved below with extraction fields.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/046_Section Introduction.txt

Line 1:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Hi, welcome to this section that is VPC traffic monitoring, troubleshooting and analysis.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 2:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And in your exam, you may expect some questions around this because network troubleshooting and monitoring is also an important topic.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 3:
- Concepts: Troubleshooting Methodology
- Services: (none explicit)
- Key Insights: So as of today, there are lot of tools in AWS which can help you to monitor your traffic and also troubleshoot the networking issues.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 4:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's talk about some of the services which are important to cover here.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 5:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So in this section, we will cover VPC traffic monitoring.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 6:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: So for that the basic tool that AWS provide is VPC flow logs.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 7:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: That means you can capture all the network traffic packets which are hitting to your VPCs or Subnet or at the ENI level.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 8:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: So we will see how to use VPC flow logs and how to analyze those logs.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 9:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And then I have also provided list of some other third party tools which you can use for traffic monitoring.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 10:
- Concepts: Traffic Analysis Operational Context
- Services: Traffic Mirroring
- Key Insights: Then second is VPC traffic Mirroring.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 11:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now this is for live inspection of the traffic as it enters or leaves the VPC.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 12:
- Concepts: Telemetry and Packet Visibility
- Services: (none explicit)
- Key Insights: So what basically you can do is as the traffic is flowing in and out of your elastic network interfaces, you can mirror the traffic.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 13:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: That means you can duplicate this traffic and send the same packets to some destination.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 14:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And then there you could have some security appliances which can monitor this traffic in real time.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 15:
- Concepts: Traffic Analysis Operational Context
- Services: Traffic Mirroring
- Key Insights: So again, we will see how to set up this traffic Mirroring and what kind of source and destination you can use.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 16:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And then further, there are two additional services which AWS launched in around 2022 which are around network traffic analysis.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 17:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now, here you don't actually send the traffic to analyze your network.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 18:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: But rather you look at the your network configuration and based on the configuration, you can find out whether you will be able to reach from your source to the destination.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 19:
- Concepts: Path Analysis and Reachability
- Services: Reachability Analyzer
- Key Insights: And that's where the VPC reachability analyzer can help you detect such issues in your network.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 20:
- Concepts: Path Analysis and Reachability, Security Control Verification
- Services: Network Access Analyzer
- Key Insights: And then there is a network access analyzer.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 21:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: This is more for the security compliance.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 22:
- Concepts: Path Analysis and Reachability, Security Control Verification
- Services: Network Access Analyzer
- Key Insights: For example, network access analyzer can tell you that these are the AWS resources in your VPC which can still be accessed over the internet.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 23:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And if you don't want that, then you would have to go and modify the corresponding routes and make sure that these are private resources.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 24:
- Concepts: Path Analysis and Reachability, Security Control Verification
- Services: Network Access Analyzer
- Key Insights: So this kind of, you know, compliance check can be done using the network access analyzer.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 25:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And in this section, I'm going to cover both these services in the detail.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 26:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And I'm also going to walk you through some use cases around how to implement these.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 27:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And going forward.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 28:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: If AWS launches more services in this space, then I will add it in the same section.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 29:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So with that, let's get into this section.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 30:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/047_VPC Traffic Monitoring with VPC Flow logs.txt

Line 1:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: Hello and welcome to this lecture, VPC traffic monitoring with VPC flow logs.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 2:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now, in this section introduction lecture, we talked about various tools which you can use for traffic monitoring, troubleshooting and analysis.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 3:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: And out of those VPC flow logs is one of such IAMportant feature.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 4:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: So let's talk about what is VPC flow logs and then how to use it?
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 5:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: So in a sIAMple term, VPC flow logs allow you to capture the information about the IP traffic that is going in and out of your ENIs are elastic network interfaces.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 6:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface, VPC Flow Logs
- Key Insights: And these VPC flow logs you can enable at the VPC level at the Subnet level or individual ENI level, which means if you enable the flow logs at the VPC level, then the flow logs will be enabled for all the ENIs in that VPC.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 7:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: Now, what's the purpose of VPC flow logs?
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 8:
- Concepts: Troubleshooting Methodology
- Services: (none explicit)
- Key Insights: So typically it is used to monitor and troubleshoot any connectivity issues.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 9:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: For example, you are not able to reach to particular EC2 instance, which means all your connections request are rejected.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 10:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface, VPC Flow Logs
- Key Insights: Now, in that case, you can go and check the VPC flow logs and see which ENI is denying that traffic.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 11:
- Concepts: Security Control Verification, Troubleshooting Methodology
- Services: (none explicit)
- Key Insights: And then of course, you can check the security group roles or NACL roles and fix that connectivity problem.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 12:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Another use case is to see if any malicious IPs are trying to access your IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 13:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: And in that case, you can also perform analysis like this is my ENI or this is my IP address and show me how many requests has hit this IP address.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 14:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And if you know the malicious IPs, then you can also filter those results using that malicious IP as a source IP.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 15:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: So a lot of such analysis you can do once you capture this VPC flow logs.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 16:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And later in this lecture, we will see some of these scenarios.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 17:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface, VPC Flow Logs
- Key Insights: Now when we enable the VPC flow logs, they are not only enabled for the EC2 ENIs, but they are also enabled for the ENI which are created by AWS services.
- Hidden/Implicit Meaning: Constraint or limitation signal; Traffic visibility and telemetry signal; Operational observability signal.

Line 18:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: For example, you know that when you use AWS services like elastic Load-Balancer or RDS databases or Amazon workspaces or NAT gateways, they also create the ENI into your VPC.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 19:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: VPC Flow Logs
- Key Insights: So flow log will also capture the logs from these ENIs.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 20:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface, VPC Flow Logs
- Key Insights: And finally, one IAMportant thing to know is that enabling the flow logs doesn't IAMpact your ENI's network performance.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 21:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So do not worry about that.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 22:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: OK.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 23:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: With that, let's see how to publish the VPC flow logs.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 24:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: So if you have VPC and multiple subnets and then multiple EC2 machines, of course, EC2 will have the ENIs and there could be other networking components like load balancers or NAT gateways, which also has ENIs inside your VPC VPC flow logs can then be sent to different systems and can be analyzed in different ways.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 25:
- Concepts: Operational Observability
- Services: Amazon CloudWatch, VPC Flow Logs
- Key Insights: Now, in this lecture, we will particularly focus on delivering the flow logs to the cloudwatch and then we will analyze that using the Cloudwatch logs insights.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 26:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: OK.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 27:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: So when you enable the flow logs, then they have a particular format.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 28:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: Now that's called a default format of the VPC flow logs.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 29:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And that format looks something like this.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 30:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And we will shortly talk about this format.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 31:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: VPC Flow Logs
- Key Insights: But the default log format for the VPC flow log is version 2.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 32:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: But since then, AWS has launched new versions of VPC flow logs.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 33:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: VPC Flow Logs
- Key Insights: So currently up to version 5 are supported and accordingly VPC flow logs can have different fields depending on which version of VPC flow log you are using.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 34:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So this format, what you see here is the version 2 format.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 35:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: VPC Flow Logs
- Key Insights: Now this is a sample flow log.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 36:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And if you see here there is a version number 2, then this is AWS account ID.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 37:
- Concepts: Telemetry and Packet Visibility
- Services: Elastic Network Interface
- Key Insights: This is ENI now there is a source address from where the packet was sent and then the destination address where the packet is going sIAMilarly the source port and the destination port and then network protocol.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 38:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So you know that TCP is represented as number 6, then how many packets were sent how many bytes were sent the start tIAMe, the end tIAMe.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 39:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And the IAMportant thing here is this "action".
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 40:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: Elastic Network Interface
- Key Insights: So action is accept that means this packet was accepted by the ENI and finally the log status, which is OK, which means these logs have been captured in the destination.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 41:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: So this is a default log format and we will also see this in console.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 42:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: VPC Flow Logs
- Key Insights: Now VPC flow log format can also be customized.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 43:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: VPC Flow Logs
- Key Insights: And as I said, depending on which version of VPC flow log you are using, you can have additional fields.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 44:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: VPC Flow Logs
- Key Insights: So there are all these additional fields which you can use with custom VPC flow log format and there are more fields.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 45:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: But I think these are the fields which are interesting to you.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 46:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And in the next slide, I will explain some of these fields.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 47:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So the record will look something like this.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 48:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: Now here we are using the custom flow logs format.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 49:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: So this is not a default VPC flow logs format, but we have added additional fields.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 50:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So in here, if you see the version is number 5, because we are using the maxIAMum fields here.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 51:
- Concepts: Telemetry and Packet Visibility
- Services: (none explicit)
- Key Insights: Now additional field also supports the type of the packet.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 52:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So it's IPv4 and then number of packets 14 and number of byte is this, then there will be AWS account id.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 53:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And additionally, you can also specify, I want to have the VPC ID as well as the Subnet id.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 54:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And along with that you can also include the instance ID.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 55:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: And then of course, you can have the ENI ID itself.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 56:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And additionally, you can have AWS Region, AWS availability zone.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 57:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And additionally, there are fields like sublocation type and sublocation ID.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 58:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now this represents the Amazon wavelength zone or outpost or local zone.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 59:
- Concepts: Telemetry and Packet Visibility
- Services: Elastic Network Interface
- Key Insights: So if your ENI resides in any of these AWS locations, then these fields will be populated, then the action which is like whether this packet was accepted or rejected.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 60:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So here it is ACCEPT and then there are additional TCP flags.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 61:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now this is all about the TCP handshake and then you can refer AWS documentation what 19 means.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 62:
- Concepts: Telemetry and Packet Visibility
- Services: (none explicit)
- Key Insights: Now additionally, there are these two fields which are packet source addr and packet destination addr.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 63:
- Concepts: Telemetry and Packet Visibility
- Services: (none explicit)
- Key Insights: Now these are used to actually know the original packet IP address.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 64:
- Concepts: Telemetry and Packet Visibility
- Services: (none explicit)
- Key Insights: Now this is because if you are having intermediate devices in the flow, for example, the NAT gateways, then you know that the packet source address changes.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 65:
- Concepts: Telemetry and Packet Visibility
- Services: (none explicit)
- Key Insights: But if you want to know the original IP from where the packet was originated, then you can use this packet source addr and same applies to the packet destination addr as well.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 66:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: Further, there is additional field called traffic path, which is used for the egress traffic.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 67:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And in this case, it is an ingress traffic and that's where you see this field is not populated.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 68:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And finally, other IAMportant field is the traffic flow direction which tells you whether it was ingress traffic or egress traffic.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 69:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: Now, in this case, it's an ingress traffic and finally, the log status, which is OK.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 70:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: So you can very well have your own custom log format and you can include as many fields as you want.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 71:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So this is just an example of one of such record.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 72:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay, So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 73:
- Concepts: Operational Observability
- Services: Amazon CloudWatch, VPC Flow Logs
- Key Insights: Now with that, let me quickly show you how to capture the VPC flow logs and how to see that in Cloudwatch logs.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 74:
- Concepts: Operational Observability
- Services: Amazon CloudWatch, VPC Flow Logs
- Key Insights: So for capturing the VPC flow logs, there are some prerequisites because you are going to send these logs to the Cloudwatch log groups.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 75:
- Concepts: Operational Observability
- Services: Amazon CloudWatch, VPC Flow Logs
- Key Insights: So first you need to create corresponding Cloudwatch log groups and then you need to create an IAM role for VPC flow logs service to send it to the Cloudwatch.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 76:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And I have included this IAM role policy which you need to attach.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 77:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now let me go to AWS console and show you these things, okay.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 78:
- Concepts: Operational Observability
- Services: Amazon CloudWatch
- Key Insights: So I'm into my cloudwatch console in Mumbai Region and in the logs, I already have this logs group and I had just created this log group, right?
- Hidden/Implicit Meaning: Operational observability signal.

Line 79:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And as I said, you also need to have IAM role.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 80:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: So I had created this VPC flow logs role.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 81:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: Amazon CloudWatch, VPC Flow Logs
- Key Insights: And if you see the policy, it allows to write to the Cloudwatch logs and the trust policy is for VPC flow log service.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 82:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: So these are the prerequisites before you enable the VPC flow logs.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 83:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And of course, then you have to just go to your VPC.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 84:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now, what I have already done is that I have created a VPC with one public Subnet and inside that I have launched a single EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 85:
- Concepts: Operational Observability
- Services: VPC Flow Logs
- Key Insights: And then I just went here and I said, create the VPC flow logs and most of the settings as default just that you have to select the destination log group and the corresponding IAM role.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 86:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: VPC Flow Logs
- Key Insights: And that's where I have the VPC flow log created.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 87:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now let me show you the EC2 machine which I had launched and this machine has a web server and it has a public IP address.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 88:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So in order to generate some traffic, what I can do is I can just go here and just hit this web server over port 80.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 89:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And then this page appears that means traffic is going to my EC2 instance over port 80.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 90:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So that's the setup I already did.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 91:
- Concepts: Operational Observability
- Services: Amazon CloudWatch
- Key Insights: And now we want to analyze these logs using cloudwatch logs insights.
- Hidden/Implicit Meaning: Operational observability signal.

Line 92:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So for that, let's go here and let's go to the logs insights.
- Hidden/Implicit Meaning: Operational observability signal.

Line 93:
- Concepts: Operational Observability
- Services: Amazon CloudWatch
- Key Insights: Now logs insights provides you the custom query language which is native to Cloudwatch.
- Hidden/Implicit Meaning: Operational observability signal.

Line 94:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: And if you know about the log monitoring tool like Splunk, it also uses similar language, but this is very powerful in the sense that it automatically detects your log record format.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 95:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And then based on some deli- meter, it extracts automatically the fields from the logs.
- Hidden/Implicit Meaning: Operational observability signal.

Line 96:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: And then you can do a lot of operations with this field, for example aggregation, sum or filtering all that is possible with this query language.
- Hidden/Implicit Meaning: Operational observability signal.

Line 97:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: VPC Flow Logs
- Key Insights: And if you need some help, then you can just go here and then you can look at some sample queries, for example VPC flow log queries.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 98:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Likewise, right.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 99:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: OK.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 100:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: So the first thing that you need to do is to select the log group on which you want to run these queries.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 101:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: So I'm selecting my log group and now this is a default query.
- Hidden/Implicit Meaning: Operational observability signal.

Line 102:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now, out of this, I don't want few things.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 103:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: For example, I'm not interested in log streams.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 104:
- Concepts: Operational Observability
- Services: Amazon CloudWatch, Elastic Network Interface, VPC Flow Logs
- Key Insights: So for VPC flow logs for every ENI, the cloudwatch will create a separate log stream.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 105:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: So if you're interested, you can query a particular log stream or it will query all the log streams.
- Hidden/Implicit Meaning: Operational observability signal.

Line 106:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: That means all the ENIs so let's just remove this and run this query.
- Hidden/Implicit Meaning: Operational observability signal.

Line 107:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: OK.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 108:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So if you see it shows the entire record.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 109:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: Elastic Network Interface, VPC Flow Logs
- Key Insights: So it is similar to what we had seen earlier, the default format with 2 as the flow log version, the AWS account ID, the ENI ID and the source IP, the destination IP.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 110:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And this IP is EC2 private IP and this is my public IP.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 111:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: VPC Flow Logs
- Key Insights: So if you go to what is my IP address, it will show you that as IP address and that's where in the flow log you will see this IP.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 112:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now you can also see other IPs and probably this is someone else is trying to connect to my EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 113:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And that's where you see that.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 114:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So this record is exactly similar to what we already saw and it has all these fields that we already discussed about.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 115:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So likewise, you can run many other queries and I leave it up to you to explore and run more queries.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 116:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And for your reference, I have provided some sample queries as a text document along with this lecture.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 117:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: OK.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 118:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So going back to our discussion.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 119:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: So we already saw how to create VPC flow logs.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 120:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And these are sample queries that you can use.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 121:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: Now, one more thing like sometimes it happens that your security group or Network-ACL blocks some traffic or say they do not allow the traffic.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 122:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: And in that case, you can use this action field which is like ACCEPT or REJECT and you can analyze your traffic flow and understand that whether this traffic was blocked because there was no security group or because there was no Network-ACL rule.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 123:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 124:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: So for the incoming request, as you know, it first hits the NACL and from there it goes to the EC2.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 125:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: So one scenario is if your inbound traffic is rejected, in that case, the reason could be either SG or NACL, right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 126:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: But if your inbound traffic was accepted, but the outbound was rejected.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 127:
- Concepts: Security Control Verification, Troubleshooting Methodology
- Services: (none explicit)
- Key Insights: Then the problem is with NACL, that's because security groups are stateful, which means they automatically allow the return traffic.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 128:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: But NACL are stateless.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 129:
- Concepts: Security Control Verification, Telemetry and Packet Visibility
- Services: (none explicit)
- Key Insights: And that's where if the inbound packet was accepted, but the outbound was rejected, then it's because of the NACL rules.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 130:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And also the other way around for the outgoing request.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 131:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: If the outbound traffic is rejected, then the reason could be either SG or NACL.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 132:
- Concepts: Security Control Verification, Troubleshooting Methodology
- Services: (none explicit)
- Key Insights: But if the outbound traffic was accepted, but the returning inbound traffic was rejected, then again, the problem is with NACL.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 133:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So I have included this scenario because we have seen question in the exam around this.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 134:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Also, it is worth if we just go to AWS console and try to simulate this scenario.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 135:
- Concepts: Security Control Verification
- Services: VPC Flow Logs
- Key Insights: Now, here we will create a custom VPC flow logs and then we will see what impact the NACL rules have or the security group rule have.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 136:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: And for that, we will use this query which just filters the traffic for myIP as a source or destination address.
- Hidden/Implicit Meaning: Operational observability signal.

Line 137:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 138:
- Concepts: Operational Observability
- Services: VPC Flow Logs
- Key Insights: So first thing let's create the new log group and let's call it VPC flow logs, custom format and rest of the settings as default.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 139:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: VPC Flow Logs
- Key Insights: And now let's go to the VPC flow logs actions and say create a flow log.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 140:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: And let's call it VPC flow logs custom format.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 141:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And we want all three type of the traffic, whether accepted, rejected or all and the aggregation level as one minute.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 142:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now, depending on this aggregation interval, you might have more records or less records.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 143:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: So as granular as you go, you will have more records in your VPC flow logs.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 144:
- Concepts: Operational Observability
- Services: Amazon CloudWatch
- Key Insights: Now, as a destination, we are sending it to the Cloudwatch logs.
- Hidden/Implicit Meaning: Operational observability signal.

Line 145:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: VPC Flow Logs
- Key Insights: And here we are going to select our custom format log group and the same flow log IAM role that we had created earlier.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 146:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now, the format is custom.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 147:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's see which fields are of our interest.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 148:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So we need account ID, we need "action" AZ ID not interested bytes okay, source and destination address, start and end time.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 149:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: Flow direction is important where it's ingress or egress instance id, interface id, log status number of packets.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Traffic visibility and telemetry signal.

Line 150:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now, here we are not dealing with AWS services.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 151:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So it doesn't make sense to have this.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 152:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And also we don't have intermediate gateways.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 153:
- Concepts: Telemetry and Packet Visibility
- Services: (none explicit)
- Key Insights: So I'm not selecting this packet source or destination addr protocol is important, Region we already know.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Traffic visibility and telemetry signal.

Line 154:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: But let's select that source address, source port, start time, sub location IDs we don't want because we know that we are operating in Region.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 155:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Subnet ID makes sense.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 156:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: Traffic path is important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Path-validation and troubleshooting signal.

Line 157:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Then type is IPv4 or IPv6, then version ID and the VPC ID.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 158:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: OK.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 159:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So all these are our fields and that's it.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 160:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: Let's create the flow logs.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 161:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 162:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: So flow logs has been created and we have to wait maximum up to 10 minutes for these logs to be delivered.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 163:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now until then we can just hit some more traffic from my IP address to this web server.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 164:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And that's this EC2 instance, right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 165:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's do that.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 166:
- Concepts: Operational Observability
- Services: Amazon CloudWatch
- Key Insights: And let's go to the Cloudwatch logs again and let's go to the Cloudwatch logs insights.
- Hidden/Implicit Meaning: Operational observability signal.

Line 167:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: And here this time, let's select our new log group.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 168:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now, it doesn't show up here.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 169:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So sometimes you have to refresh.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 170:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's see.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 171:
- Concepts: Operational Observability
- Services: Amazon CloudWatch
- Key Insights: Let's go to the Cloudwatch logs insights.
- Hidden/Implicit Meaning: Operational observability signal.

Line 172:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And here, let's see if we have this custom format.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 173:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: Yes, we have it and let's try to run our query.
- Hidden/Implicit Meaning: Operational observability signal.

Line 174:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So mostly it won't have any data as of now, which is expected because it takes up to 10 minutes for these logs to be delivered.
- Hidden/Implicit Meaning: Operational observability signal.

Line 175:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So I'm pausing this video for almost 5 to 10 minutes and I'll come back here.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 176:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: OK?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 177:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: So it's already been five minutes and I have just changed the query a little where I have included the field names because otherwise there will be too many fields and they could be in different order.
- Hidden/Implicit Meaning: Operational observability signal.

Line 178:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: So let's run this query and you can see that there is the result.
- Hidden/Implicit Meaning: Operational observability signal.

Line 179:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: So it tells me what's the interface ID, source IP address, destination address, which is the EC2 instance IP address, then source port, destination port, flow direction, action and log status.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 180:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now, what we are really interested in here is where the source IP or the destination IP is my own IP address.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 181:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's say filter source addr equal to my IP address, which I can get from here or we can say dstaddr equal to my IP address.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 182:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: And let's run this query again.
- Hidden/Implicit Meaning: Operational observability signal.

Line 183:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So it will show you that I'm trying to hit to port 80 then it responds with the egress traffic on ephemeral port and both ingress and egress traffic is accepted because I am able to hit this web server right now.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 184:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Let's quickly do one thing.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 185:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: Let's go to the Network-Access-Control-List and then try to block the traffic through the NACL rules.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 186:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So if you go to the public Subnet in which I have EC2 instance, and if you go to the Network-Access-Control-List, which is here, let's remove the outbound rule and let's remove this rule.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 187:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now what this means.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 188:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now the inbound traffic is allowed but the outbound traffic is not allowed, that means the return traffic.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 189:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And hence now, if I just open a new window, then it shouldn't really work.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 190:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now you see this coming up because it had cashed the page.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 191:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: But if I do this again, then you can see that it is not able to connect.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 192:
- Concepts: Operational Observability
- Services: Amazon CloudWatch
- Key Insights: So with that, if we run the cloudwatch logs query again, then it should show us both the accept and the reject traffic.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Operational observability signal.

Line 193:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: But as you know, it will take some time.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 194:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So I'm again pausing this video for maybe five minutes and then I'll come back.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 195:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: OK.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 196:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: It's been almost three minutes.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 197:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's try to run this again and OK, there are many records and OK, if you see this.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 198:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So this entry is like I'm hitting on this EC2 instance on port 80.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 199:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And then the next entry should be the response from the EC2 to my IP address.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 200:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And this is a destination ephemeral port from where I had requested this connection.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 201:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And it says the egress is rejected because as you know, the Network-ACL is blocking that traffic.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 202:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So this is what we wanted to simulate.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 203:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 204:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So that's what we wanted to see.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 205:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: I haven't really done the security group rule thing.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 206:
- Concepts: Operational Observability
- Services: Amazon CloudWatch, VPC Flow Logs
- Key Insights: But if you are interested, you can try that in your environment and just advise here if you are trying this exercise, then also, you know, disable the VPC flow logs because otherwise there will be a charge for Cloudwatch logs group and I will also do that after this lecture, but just be aware of that.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 207:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: OK?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 208:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: So just few more things about the flow logs limitation that VPC flow logs currently do not record the traffic for Amazon DNS server which runs on VPC base address + 2 IP address.
- Hidden/Implicit Meaning: Constraint or limitation signal; Traffic visibility and telemetry signal; Operational observability signal.

Line 209:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And you already know about Amazon DNS server.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 210:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So these logs are not captured any logs, which is about the communication with EC2 metadata service or Time sync service is also not captured.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 211:
- Concepts: Telemetry and Packet Visibility
- Services: (none explicit)
- Key Insights: The DHCP traffic is not captured and same with windows license activation server or mirror traffic.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 212:
- Concepts: Telemetry and Packet Visibility
- Services: (none explicit)
- Key Insights: Now, in the next lecture, we are going to see how to mirror the traffic.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 213:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: VPC Flow Logs
- Key Insights: Now, apart from the native tools like VPC flow log, you can also use traditional networking tools to capture the packets.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 214:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: For example, you can use wireshark or tcpdump or you can use other tools like traceroute which shows you hop by hop the connection to the destination.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 215:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: You can use telnet or nslookup kind of tools for DNS resolution.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 216:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And simplest of all these to check the connectivity is the PING protocol which gives you the RTT that is round trip time and it uses the ICMP protocol for that.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 217:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now ICMP is not a TCP or a UDP protocol.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 218:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: It is internet control message protocol.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 219:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: And for allowing the ping in your security group and Network-Access-Control-List, you have to explicitly open the ports for all ICMP-IPv4 or IPv6.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 220:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: So just remember that because sometimes you try to ping to the EC2 instance and despite everything is all well setup, but still you are not able to ping because security group or network ACL doesn't have ICMP rule added in that.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 221:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: OK.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 222:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: With that, we'll stop here.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 223:
- Concepts: Telemetry and Packet Visibility
- Services: VPC Flow Logs
- Key Insights: So I hope you now understand what is VPC flow logs and how to enable VPC flow logs to capture the packet information.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/048_VPC Traffic Mirroring.txt

Line 1:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Hi, and welcome to this lecture.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 2:
- Concepts: Traffic Analysis Operational Context
- Services: Traffic Mirroring
- Key Insights: VPC Traffic Mirroring.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 3:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So in the last lecture we saw, monitoring your VPC traffic, right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 4:
- Concepts: Operational Observability
- Services: Amazon CloudWatch, Amazon S3
- Key Insights: Where traffic can be captured in a CloudWatch or S3, and then you can analyze this traffic for maybe any anomalies, or you want to see a certain pattern of the traffic, right?
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 5:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: But that happens typically in, I would say offline mode, or maybe you first capture the logs and then you do analysis.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 6:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: But in certain cases you want to do, you know, real-time monitoring of your traffic.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 7:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And now, one way could be to have the IPS and IDS system in place and all the traffic should be going through that IDS-IPS system.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And from there, it is routed to your destination application host, right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 9:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: But again, it adds additional hops to your traffic, right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 10:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And it may degrade your latency or performance of overall network, right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 11:
- Concepts: Traffic Analysis Operational Context
- Services: Traffic Mirroring
- Key Insights: There is a better way to do this, which called VPC Traffic Mirroring.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 12:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: As the word suggests, the mirroring.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 13:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: That means whatever traffic flows in and out of your network, or particularly through ENI, the same traffic in real time can be mirrored to another target.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 14:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And then you can run your network monitoring system on that target to see any malicious behavior into your traffic.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 15:
- Concepts: Traffic Analysis Operational Context
- Services: Traffic Mirroring
- Key Insights: So that's the use case for this VPC Traffic Mirroring.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 16:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's talk shortly about this.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 17:
- Concepts: Traffic Analysis Operational Context
- Services: Traffic Mirroring
- Key Insights: This I haven't seen much coming into the exam, but as we are talking about monitoring the traffic, it is good to know about this traffic mirroring.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 18:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: So what it means is it copies your network traffic from ENI, of EC2 instances, of course.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 19:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And then it sends that traffic to another monitoring appliances, or content inspection or threat monitoring system, or maybe for troubleshooting, right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 20:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So this is a relatively new feature.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 21:
- Concepts: Telemetry and Packet Visibility
- Services: (none explicit)
- Key Insights: And in the VPC console, you can see these options where you can define the Mirror Targets, Mirror Filters, and the Mirror Sessions.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 22:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: And once these sessions are started, all the traffic, which hits the ENI is mirrored to another target, where you can monitor that.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 23:
- Concepts: Telemetry and Packet Visibility
- Services: Traffic Mirroring
- Key Insights: So the steps to configure the traffic mirroring is you create a mirror target first.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 24:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now target could be another EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 25:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: Ultimately an ENI.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 26:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Or you can also send all the traffic to Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 27:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now those could be your target.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 28:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Then you can define the filter.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 29:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now, what does filter means?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 30:
- Concepts: Telemetry and Packet Visibility
- Services: (none explicit)
- Key Insights: You can actually filter which traffic you want to mirror, right?
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 31:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Maybe from particular source IP or for particular destination IP, or from, for a particular source port or destination port.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 32:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: All these kind of filters you can apply so that you know, you don't inspect all the traffic all the time.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 33:
- Concepts: Telemetry and Packet Visibility
- Services: (none explicit)
- Key Insights: Only interested traffic or interested packets, you can mirror and then inspect, right?
- Hidden/Implicit Meaning: Constraint or limitation signal; Traffic visibility and telemetry signal.

Line 34:
- Concepts: Telemetry and Packet Visibility
- Services: (none explicit)
- Key Insights: And finally you create a mirror session once you have the mirror target and define the filter.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 35:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So if you look at this diagram. in the first subnet, I have a traffic source, which is EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 36:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: And as you know, EC2 has ENI.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 37:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface, Traffic Mirroring
- Key Insights: And now I can define the traffic mirroring for that ENI as a source.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 38:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: And the destination is another ENI, and which is attached to another traffic analyzer application.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 39:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: And I can now define the session where it captures all the traffic from this ENI to this ENI, right?
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 40:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: Now here, ENI is a target.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 41:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: As I said, the target could also be NLB, Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 42:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So source remains the same, but in target system now I have a NLB and then you have the traffic analyzer applications running on maybe a single or multiple instances.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 43:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And this is how you can, you can capture the traffic through NLB as well.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 44:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So either of the configuration is okay, depending on how much traffic you capture and how many applications you are running.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 45:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: You can have NLB or a single ENI.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 46:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now you can also define filters, as I said.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 47:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So, this is say a source EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 48:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: Which is say, instance A traffic goes in and out of this instance, and while the traffic flows in and out, you can define the filter which captures this and then mirrors to ENI or NLB.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 49:
- Concepts: Telemetry and Packet Visibility
- Services: (none explicit)
- Key Insights: So, the center block here represents the mirror target basically.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 50:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And then these filters, you can apply to multiple instances in your VPC.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 51:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: And according to the filter, all the traffic from all those sources will be going to your target, ENI or NLB.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 52:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So, traffic filter parameters are like inbound or outbound.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 53:
- Concepts: Telemetry and Packet Visibility
- Services: (none explicit)
- Key Insights: You can decide which traffic to capture or which traffic to mirror, whether inbound or outbound.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 54:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Whether accepted or rejected traffic has to be mirrored.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 55:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Which protocol?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 56:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So it supports L4, layer 4 protocol only.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 57:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Then a source port and destination port range that you want to capture.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 58:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And then, source CIDR block and destination CIDR block.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 59:
- Concepts: Telemetry and Packet Visibility
- Services: (none explicit)
- Key Insights: So you can very well define the filter using all these parameters and only interesting traffic you can mirror, right?
- Hidden/Implicit Meaning: Constraint or limitation signal; Traffic visibility and telemetry signal.

Line 60:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: To the target, okay?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 61:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So with that, let's recap what we just learned, and this is important for your exam to remember.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 62:
- Concepts: Telemetry and Packet Visibility
- Services: Traffic Mirroring
- Key Insights: So VPC Traffic Mirroring basically captures the traffic which flows in and out of your VPC, and then you can mirror that and send it to a potential network and security anomalies tool.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 63:
- Concepts: Traffic Analysis Operational Context
- Services: Traffic Mirroring
- Key Insights: That's the purpose of VPC Traffic Mirroring.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 64:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: The source of the traffic is always ENI, Elastic Network Interface, which is attached to your EC2 instance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 65:
- Concepts: Telemetry and Packet Visibility
- Services: Elastic Network Interface
- Key Insights: Now mirror target could be either another ENI, which is attached to EC2 instance, or it could be Network Load Balancer.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 66:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now remember that in case of Network Load Balancer, the UDP port is 4789.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 67:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So on the Network Load Balancer site, this port should be open.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 68:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And also remember that on your port site, the target port should also be open.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 69:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: Typically in security group, all the outbound traffic is open, but if it's not, you have to make sure that it can go to the UDP-4789 of your Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 70:
- Concepts: Telemetry and Packet Visibility
- Services: (none explicit)
- Key Insights: Now, when the mirror traffic happens, you can also do the filtering.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 71:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And why we need filtering?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 72:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: As I said, because you want to only capture certain type of the traffic.
- Hidden/Implicit Meaning: Constraint or limitation signal; Traffic visibility and telemetry signal.

Line 73:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now that could be based on the source CIDR or destination CIDR.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 74:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: It could be based on the protocols.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 75:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: It could be based on the ports as well.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 76:
- Concepts: Traffic Analysis Operational Context
- Services: Traffic Mirroring
- Key Insights: And you can define multiple rules for your traffic mirroring, and these rules are numbered.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 77:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And of course you would have multiple rules because maybe for UDP traffic you want to send those packets to a different destination where you can analyze that.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 78:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: For UDP traffic you want to send it to a different destination for mirroring the traffic.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 79:
- Concepts: Telemetry and Packet Visibility
- Services: (none explicit)
- Key Insights: Or in some cases, if the traffic is coming from particular source IP address, you want to again send it to a different target mirror, mirror target basically.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 80:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: That all you can define in the rules and whatever rules matches, according to the number, it would send the traffic to a respective target.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 81:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface, Traffic Mirroring
- Key Insights: Now, when you set up this traffic mirroring, you know that that there is a source ENI, there is a target ENI or Network Load Balancer.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 82:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now these two things could be either in the same VPC or they could also be in different VPCs.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 83:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: But again, the limitation is this VPC should be in the same region.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 84:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: But then you can connect these VPCs using intra-Region VPC peering or intra-Region transit gateway.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 85:
- Concepts: Telemetry and Packet Visibility
- Services: (none explicit)
- Key Insights: So if your target VPCs in different regions, that wouldn't be possible as of now, but otherwise there is no restriction that the traffic source and the mirror target should be in the same VPC.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Traffic visibility and telemetry signal.

Line 86:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: They can very well be across the VPCs.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 87:
- Concepts: Telemetry and Packet Visibility
- Services: (none explicit)
- Key Insights: Further, the Source and Destination ENIs, or you can say mirror source and mirror target could be in different AWS accounts as well.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 88:
- Concepts: Telemetry and Packet Visibility
- Services: (none explicit)
- Key Insights: Now, this is interesting because many a times maybe you are hosting your network packet analysis tool into your VPC and you want to give that as a service to your customers.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 89:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now, in that case your customers would have their VPC in their own AWS account, and then you can set up a VPC peering between these two VPCs.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 90:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Though these VPCs are owned by different entities, you can still monitor the traffic from your customers VPC.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 91:
- Concepts: Traffic Analysis Operational Context
- Services: Traffic Mirroring
- Key Insights: So that is kind of a use case you can also implement using the VPC Traffic Mirroring.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 92:
- Concepts: Traffic Analysis Operational Context
- Services: Traffic Mirroring
- Key Insights: So I think that's it, what you need to know about VPC Traffic Mirroring.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 93:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And I haven't seen that, this coming much into the exam, but as we are learning everything about networking, it's good to know.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 94:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So that's it about this lecture.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 95:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: See you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 96:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/049_VPC features for Network Analysis.txt

Line 1:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Hi.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 2:
- Concepts: Troubleshooting Methodology
- Services: (none explicit)
- Key Insights: So in this section, we have already seen a couple of ways in which you can troubleshoot the network traffic issues and how to monitor your VPC traffic.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 3:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: But AWS now also provides different ways to analyze the network traffic.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 4:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And it basically helps you accelerate your troubleshooting issues or making sure that your network traffic is compliant to your security policies.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 5:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So in this space at this moment, there are two tools that AWS provides and I think it will be beneficial if you just understand at high level how these tools work.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 6:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So this comes under VPC network analysis and natively AWS provides two ways.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 7:
- Concepts: Path Analysis and Reachability, Security Control Verification
- Services: Network Access Analyzer, Reachability Analyzer
- Key Insights: First reachability analyzer and second network access analyzer.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 8:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now, what's the difference between two?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 9:
- Concepts: Path Analysis and Reachability
- Services: Reachability Analyzer
- Key Insights: So reachability analyzer will tell you if you provide the source and the destination of the traffic, can you reach to the destination from your source?
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 10:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So in that hop, there could be internet Gateway, there could be Network-Access-Control-List security groups, VPC peering connections, all these things.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 11:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So at the end of your analysis, it will tell you whether you can reach to the destination from your source.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 12:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So this is very helpful in use cases, something like you are not able to reach to a particular EC2 instance in another VPC or from your workstation to your EC2 machine over SSH, right.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 13:
- Concepts: Path Analysis and Reachability
- Services: Reachability Analyzer
- Key Insights: So for this kind of connectivity issues, you can use reachability analyzer.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 14:
- Concepts: Path Analysis and Reachability, Security Control Verification
- Services: Network Access Analyzer
- Key Insights: Now the second tool is network access analyzer.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 15:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now this also works in a similar fashion.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 16:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: But the difference is that here you are trying to analyze which all paths exist to go from source to the destination.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 17:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And whether those paths are as per the security policies that you have for an example, if there is a source and there is a destination as two different EC2 machines in different VPCs.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 18:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And you want to make sure that all the traffic goes through your Firewall or through a particular EC2 instance or through a NAT Gateway.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 19:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: For example.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 20:
- Concepts: Path Analysis and Reachability, Security Control Verification
- Services: Network Access Analyzer
- Key Insights: Now, in that case, you can use network access analyzer and it will tell you which all paths exist between the source or destination.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 21:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: And then you can see, OK, I see that this path is going over the internet, which I did not want.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 22:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: So you can mark that path as a non compliant and then you can modify your routes.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 23:
- Concepts: Path Analysis and Reachability, Security Control Verification
- Services: Network Access Analyzer
- Key Insights: So that next time you scan your network network access analyzer shows you that this path now doesn't exist.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 24:
- Concepts: Path Analysis and Reachability, Security Control Verification
- Services: Network Access Analyzer
- Key Insights: So basically network access analyzer is used to make sure that you have the compliant network.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 25:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So that is at high level, these two services provide.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 26:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And now let's talk about these individual services.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/050_VPC Reachability Analyzer.txt

Line 1:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Hi.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 2:
- Concepts: Path Analysis and Reachability
- Services: Reachability Analyzer
- Key Insights: So in this lecture, let's understand VPC reachability analyzer.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 3:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So as I said in the previous lecture, it is used to analyze whether you can reach from source to the destination.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 4:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And if given this kind of architecture where you have VPC, internet Gateway, couple of public subnets, private subnets.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 5:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: And of course, in the VPC, you have additional components like security groups and then Network-Access-Control-List and these components are also analyzed for testing the reachability to the destination.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 6:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So if source is internet Gateway and the destination is one of the instance in a public Subnet, maybe your web server tier, then you can configure that instance as a destination and then you can run this analysis.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 7:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And in the analysis result, it will show you whether from the source, you can reach to the destination.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 8:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: And also if required, you want to track the reverse path.
- Hidden/Implicit Meaning: Constraint or limitation signal; Path-validation and troubleshooting signal.

Line 9:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Right now, In here, the source is internet Gateway and the destination is EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 10:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: But the source can be anything right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 11:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: It could be your EC2 instance in one of the Subnet and the destination could be again internet Gateway or another EC2 instance in the same VPC or this instance can also be in a different VPC.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 12:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And sometimes this traffic can go through the NAT gateways to the internet Gateway.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 13:
- Concepts: Path Analysis and Reachability
- Services: Reachability Analyzer
- Key Insights: So VPC reachability analyzer will tell you hop by hop how the traffic is flowing from source to the destination.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 14:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: So it produces hop by hop details of the virtual network path.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 15:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Also it will tell you that what is blocking that traffic.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 16:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: For example, if you have security group, which doesn't have the allow rules for the source IP address, then it will tell you that this security group is not allowing that traffic.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 17:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Or if you have Network-Access-Control-List, which is blocking that traffic, then it will also flag that as a blocking component and we will see that shortly during the exercise.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 18:
- Concepts: Path Analysis and Reachability, Troubleshooting Methodology
- Services: Reachability Analyzer
- Key Insights: But the point here is that the VPC reachability analyzer will exactly tell you where is the problem and then you can go and fix that and just one more thing while doing this analysis, it doesn't actually send any traffic.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 19:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So it all works based on your network configuration in your AWS account.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 20:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So it just analyzes all the networking components and their configurations and then give you the result without actually sending any traffic.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 21:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So what are the use cases?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 22:
- Concepts: Troubleshooting Methodology
- Services: (none explicit)
- Key Insights: Of course, the first use case is to troubleshoot the network connectivity issues.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 23:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And more than that, I think one another important use case is to automate the testing of your network.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 24:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: For example, if you are using infrastructure as a code for deploying your networks.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 25:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And whenever you make any changes to your network configuration, you want to make sure that everything is working as expected.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 26:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: That means your web server tier is accessible over the internet or your database tier is accessible from your web tier.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 27:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: All that can be done in an automated manner.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 28:
- Concepts: Path Analysis and Reachability
- Services: Reachability Analyzer
- Key Insights: If you have corresponding VPC reachability analyzer test included in your CI/CD pipeline.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 29:
- Concepts: Troubleshooting Methodology
- Services: (none explicit)
- Key Insights: And if any of the test fails, then you can stop your CI/CD pipeline and raise that as an issue.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 30:
- Concepts: Path Analysis and Reachability
- Services: Reachability Analyzer
- Key Insights: So that's another good example of use case where you can use VPC reachability analyzer right now, what are the sources and the destination of the traffic that it supports?
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 31:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So there are a bunch of components here and you can see that on this slide, right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 32:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And few limitations that you need to know at this moment.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 33:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And of course, AWS will probably launch more features to address these limitations.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 34:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: But as of now, the source and the destination of the traffic must be in the same AWS Region, which means source and destination can be in the same VPC or they could be in different VPCs in the same AWS Region.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 35:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And then the connectivity between these two VPCs could be over Transit Gateway or the VPC peering connection.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 36:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And the good thing is that it can work across AWS account in a given AWS organization.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 37:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So this is useful where you have multi account setup, where you have a separate account for network and rest of the accounts for say application deployment.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 38:
- Concepts: Path Analysis and Reachability
- Services: Reachability Analyzer
- Key Insights: Then also you can use VPC reachability analyzer.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 39:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 40:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And just last thing that it currently supports only IPv4 traffic, which means it doesn't support IPv6 traffic, but in the future, AWS may support that.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 41:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So just look at the AWS announcements for that.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 42:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 43:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now with that, let's quickly see how the successful connection looks like and unsuccessful connection look like.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 44:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: So on the left side, you can see the destination is reachable and it will trace down all the components in that path.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 45:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So in this example, we are using source as internet Gateway and destination as our EC2 machine.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 46:
- Concepts: Security Control Verification
- Services: Elastic Network Interface
- Key Insights: And it shows that the traffic is coming from internet Gateway and then it is hitting the Network-ACL for the Subnet in which you have launched your EC2 instance and then it hits the security group and finally it hits the ENI which is attached to this instance.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 47:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: And on the right side, it is the same case, but we have the security group which doesn't have the allow rule.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 48:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And that's where it is flagged as you know, not allowing that traffic to flow in.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 49:
- Concepts: Troubleshooting Methodology
- Services: (none explicit)
- Key Insights: So if you get this kind of map, then you can very well see where is the problem and then you can go and fix that problem.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 50:
- Concepts: Path Analysis and Reachability
- Services: Reachability Analyzer
- Key Insights: So that's essentially is VPC reachability analyzer.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 51:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And if you're interested to further see this in action, then we are going to do a quick exercise in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 52:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/051_Walkthrough_ VPC Reachability Analyzer.txt

Line 1:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 2:
- Concepts: Path Analysis and Reachability
- Services: Reachability Analyzer
- Key Insights: This is a quick exercise for VPC reachability analyzer.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 3:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: The setup is pretty simple where we have VPC and a Subnet in which we have EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 4:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And then we want to access this instance over SSH from our workstation.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 5:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So the connectivity will look something like this.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 6:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now here we'll try a few scenarios.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 7:
- Concepts: Path Analysis and Reachability
- Services: Reachability Analyzer
- Key Insights: So very first thing that we will do is purposefully we will launch this instance in a private Subnet and then see what the network reachability analyzer tells us, right?
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 8:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Then we'll modify the Subnet and make it public and then further, we'll modify the Network-ACL rule not to allow the traffic.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 9:
- Concepts: Path Analysis and Reachability, Security Control Verification
- Services: Reachability Analyzer
- Key Insights: And then finally, we will update the security group and test the connectivity through the reachability analyzer.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 10:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now, for you, a word of caution, there is a charge for, you know, every analysis that you perform.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 11:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And in my opinion, this charge is little higher than I would have expected.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 12:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So for this lab, you might get four times this cost because we are going to run this analysis four times, right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 13:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So bear that in mind.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 14:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's go to AWS console and set this up Okay.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 15:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So I am in Mumbai Region and I'm in my VPC console.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 16:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: First thing I'm just going to do is to create my VPC with the name demo and some CIDR and just create the VPC.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 17:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And again, I want to create internet Gateway so that I can later connect over the internet.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 18:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And I also want to attach this to my VPC, right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 19:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And now I want to create a Subnet and this time, I'm not going to create the public Subnet and that's purposefully because we want to see the connectivity.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 20:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's call it a demo Subnet and in one of the availability zone and let's give it some CIDR range, that's it.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 21:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: And we also want to create corresponding route table.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 22:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's call it demo root table in this VPC.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 23:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: And I'm not going to create a public route here, but just one thing, make sure that you associate this route table with our Subnet.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 24:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 25:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Everything is done.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 26:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now, let's go to the EC2 instance and launch one of the instance.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 27:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Let's call it demo again.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 28:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And here make sure that you use your key pair and edit this network to select your VPC and then your Subnet.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 29:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now, here we want to assign the public IP to the instance because ultimately, we want to connect over the public IP.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 30:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And this is how typically, you know, when you start with AWS, your setup will look like, right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 31:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And most of the time some students make mistakes where they accidentally launch the instance in a private Subnet and then they are not able to connect.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 32:
- Concepts: Troubleshooting Methodology
- Services: (none explicit)
- Key Insights: So I would say this is one of the, you know, very basic problem that most of, you know, newcomers in AWS face.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 33:
- Concepts: Path Analysis and Reachability
- Services: Reachability Analyzer
- Key Insights: And in that case VPC reachability analyzer can help you to detect such problems.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 34:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Ok.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 35:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Moving on.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 36:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: So we are assigning the public IP and we are going to create our own security group and in the security group, we are going to open SSH from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 37:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: That's it we want, and that's it.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 38:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Let's launch the instance.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 39:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now at this moment, if you see the instance, it has a public IP and once it is in a running state, we will try to connect it over SSH.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 40:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let me pause this video for maybe 30 seconds till the time instance comes in running state.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 41:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 42:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So instance is in running state.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 43:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: I'm just grabbing its public IP.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 44:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: OK?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 45:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let me put the public IP and then load my SSH key which will be of course your private key.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 46:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So I'm loading my PPK file and opening this connection and as expected, it won't work because we launched this instance in a private Subnet.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 47:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 48:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So you may get something like this which is expected.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 49:
- Concepts: Path Analysis and Reachability
- Services: Reachability Analyzer
- Key Insights: Now let's go to the VPC reachability analyzer and also check from there.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 50:
- Concepts: Path Analysis and Reachability
- Services: Reachability Analyzer
- Key Insights: Now earlier this reachability analyzer was part of the VPC console.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 51:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: But now AWS started moving this kind of, you know, tools into a Network Manager.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 52:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So in your case, it could be under the Network Manager.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 53:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: So open the Network Manager and if you go on the left side, you will see this reachability, analyzer under monitoring and troubleshooting.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 54:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now here make sure that you are in the Mumbai Region.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 55:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: And what we want to do is to create and analyze the path.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 56:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: So let's give it a name, demo, EC2 path and then source type is internet Gateway and let's select demo, internet Gateway and destination is EC2 instance which is here.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 57:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And that's our demo instance.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 58:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now protocol, it supports TCP and UDP.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 59:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So SSH works on the TCP.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 60:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: So let's select that and now let's create and analyze the path.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 61:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: So it generally takes like 10-15 seconds for this path to be tested.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 62:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's wait for a couple of seconds.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 63:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: You can just refresh this.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 64:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So if you want, you can just wait and refresh this.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 65:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: OK?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 66:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: So it has analyzed the path and it says it's not reachable and this was expected, right?
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 67:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: And if you just go down and see the reason, it tells that the route table does not have the route to the internet Gateway.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 68:
- Concepts: Troubleshooting Methodology
- Services: (none explicit)
- Key Insights: And that's exactly what's the problem.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 69:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: And if you just do something like reverse the path, it will tell you that this route table which is demo RT doesn't have route to the destination.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 70:
- Concepts: Troubleshooting Methodology
- Services: (none explicit)
- Key Insights: And this is how you exactly know where the problem is.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 71:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: Now, of course, what you can do is you can just go to your route table and now modify this route table and say if the traffic is going to the internet or coming from the internet, then it has to go through the internet Gateway.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 72:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: Now, once you do that, you can just come here again and you already have this path.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 73:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: So you can just analyze the path again.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 74:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: So just say confirm and then it will again, start analyzing the path.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 75:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's wait for again a couple of seconds.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 76:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 77:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: Now this time, it says the reachability status is reachable and it will exactly show you how the path is getting traversed.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 78:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: OK.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 79:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So this was expected.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 80:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now let's modify the Network-Access-Control-List and then see how it affects the traffic.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 81:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's go here and let's go to the subnets.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 82:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So we have this demo Subnet and there is a Network-Access-Control-List.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 83:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So you can just go down here and click the Network-Access-Control-List.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 84:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So it will take you here then look at the inbound rules.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 85:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So this is inbound rule which allows all the traffic.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 86:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's go and remove this rule and save the changes.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 87:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: Now again, let's go here and analyze the path and confirm, okay, it failed as expected.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 88:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And if you just go down, it tells you that Network-ACL does not allow the inbound traffic from this Subnet to the VPC, right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 89:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And it is exactly the reason also shown or marked as in the red.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 90:
- Concepts: Troubleshooting Methodology
- Services: (none explicit)
- Key Insights: So you know that what's the problem?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 91:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: Now, let's try the last scenario which is blocking at the security group level.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 92:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's go back to the Network-ACL, let's go back to the inbound rule and make sure that we add our inbound rule back with all the traffic from everywhere.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 93:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: And now instead let's go to the security groups here and we had this demo security group and in the inbound rules, we had this rule.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 94:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's now delete this rule and save the changes.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 95:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: Okay, let's go back here and analyze the path again.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 96:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So it will start the test again and now let's wait again for a couple of seconds.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 97:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 98:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So as expected, the result is not reachable.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 99:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And here it exactly tells you that SG rule mismatch, that means there is no rule which allows the inbound traffic and that's what we were expecting.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 100:
- Concepts: Path Analysis and Reachability
- Services: Reachability Analyzer
- Key Insights: So that essentially is the network reachability analyzer.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 101:
- Concepts: Troubleshooting Methodology
- Services: (none explicit)
- Key Insights: And it is very helpful when you want to troubleshoot any kind of networking issues between any source and the destination.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 102:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Finally, if you have done this exercise, just go and terminate your machines because you may be otherwise paying for those.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 103:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 104:
- Concepts: Path Analysis and Reachability, Security Control Verification
- Services: Network Access Analyzer
- Key Insights: And next, we will see network access analyzer which is quite similar, but the purpose is different.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 105:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So see you in the next lecture
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/052_Walkthrough_ VPC Network Access Analyzer.txt

Line 1:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Hi.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 2:
- Concepts: Path Analysis and Reachability, Security Control Verification
- Services: Network Access Analyzer
- Key Insights: So as discussed in the previous lecture, now let's look at the network access analyzer.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 3:
- Concepts: Path Analysis and Reachability
- Services: Reachability Analyzer
- Key Insights: Now this works similar to the reachability analyzer, but just that the purpose is different.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 4:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now, we are saying that we want to analyze if there are any non compliant paths exist in our network configuration.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 5:
- Concepts: Path Analysis and Reachability, Security Control Verification
- Services: Network Access Analyzer
- Key Insights: So what's the purpose of VPC network access analyzer?
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 6:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: So it identifies unintended network access to the AWS resources.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 7:
- Concepts: Path Analysis and Reachability, Security Control Verification
- Services: Network Access Analyzer
- Key Insights: Now, this is the other way around in the sense that you have to define that this is the connectivity that you don't want and then you specify as a network scope and then the network access analyzer will figure out whether that kind of connectivity is there in your deployment and it will flag it as findings and we will see a short demo of that.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 8:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So you can use it to say isolate network segments.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 9:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: For example, there is a development VPC and the production VPC and you want to make sure that there is no connectivity between these two VPCs.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 10:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: Now you can go as granular as Subnet level or the ENI level or EC2 instances level.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 11:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: All that is possible when you configure the network scope.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 12:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Another use case is to see if there is no internet inbound or outbound connectivity for your resources.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 13:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: For example, if there are database instances, then they should not be reachable from the internet and the other way around.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 14:
- Concepts: Path Analysis and Reachability, Security Control Verification
- Services: Network Access Analyzer
- Key Insights: So that can also be analyzed using the network access analyzer further, you can also look at the trusted network paths.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 15:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: That means when the traffic goes from the source to the destination, you want to make sure that it crosses through a particular device, for example, through the NAT gateways or through a particular Firewall.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 16:
- Concepts: Path Analysis and Reachability, Security Control Verification
- Services: Network Access Analyzer
- Key Insights: Now, this can also be verified using network access analyzer.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 17:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: And finally, you can have the trusted network access in the sense that you can mention that the traffic can only come from a particular IP address range or a particular port or particular AWS resource.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now, in order to do this, you have to define the network scope and then verify that whether it meets your compliance requirement or not.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 19:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: I know that just from the slides, it doesn't really tell you what exactly it does and how it does.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 20:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So better, let's look at the example and see that in action.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 21:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's try to analyze one of the use case.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 22:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So for example, we have two VPCs and VPC-A is kind of development VPC and VPC-B is production VPC and we don't want to have any network connectivity between them.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 23:
- Concepts: Path Analysis and Reachability, Security Control Verification
- Services: Network Access Analyzer
- Key Insights: So to begin with, we will have these two VPCs isolated and then we'll create the network access analyzer scope which says that these two VPCs should be isolated and then we'll see what the result comes out to be.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Path-validation and troubleshooting signal.

Line 24:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And later, we will set up a VPC peering connection so that we violate that rule.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 25:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And then we will again analyze this network scope and see the findings.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 26:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So that's the purpose.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 27:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And now to save the time, what I have done is I have already created these two VPCs which are completely isolated.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 28:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And currently there is no VPC peering between them.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 29:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let me take you to the AWS console and show you that okay.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 30:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: You can see my AWS VPC console.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 31:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: I'm in Mumbai Region and I have two VPCs and then I have one public Subnet in each VPC.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 32:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And further I have launched EC2 instances in both the VPCs.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 33:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now these are isolated VPCs.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 34:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: That means this two machine cannot reach to each other over the private IP address, right?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 35:
- Concepts: Path Analysis and Reachability, Security Control Verification
- Services: Network Access Analyzer
- Key Insights: And now in order to go to the network access analyzer, you have to go to the network manager console which is here.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 36:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And if you go on the left side, you will see this option here.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 37:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now make sure that you are in the Mumbai Region.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 38:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 39:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: So before we create our own network access scope, let's talk about these default scopes which comes along with your AWS account.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 40:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And AWS has provided these scopes for us for easy troubleshooting So if you just read the purpose of this scope, if you just talk about this one, right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 41:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: AWS VPC Ingress.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 42:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So what it does is it identifies the Ingress paths into your VPC from internet Gateway or peering connection or VPC endpoints or VPN or Transit Gateway.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 43:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: That means any VPC resources which can be reached out from any of these components, then it will flag it as finding.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 44:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: Similarly, there is this egress IGW path which is any resource in your VPC.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 45:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: If it can reach to the internet as an outbound traffic, then it will flag those network interfaces.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 46:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Similarly, there is VPC egress which is corresponding to the first scope, which is, if your VPC resource can go out to the internet or the peering connection or to the VPC endpoints.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 47:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Likewise, then it will flag those resources.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 48:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And similarly the fourth one.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 49:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So to start with, let's look at the first one.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 50:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's select this one and analyze this.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 51:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now it will take maybe a couple of minutes for this analysis.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 52:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So I'm just pausing this video here.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 53:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 54:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So it took around one minute for this analysis to finish.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 55:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And if you read this, it has detected 2 findings, right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 56:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So if you go down, you will see this 2 violations for this rule.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 57:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So first one is this which says sorry, it directly opens the network interface.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 58:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: But if you just go down here, it will say that from the internet Gateway you can reach out to this ENI which is attached to this particular EC2 instance, which we don't want because network scope is all about what you don't want, right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 59:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So it has flagged it as your violation and it also checks about the destination ports.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 60:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: As of now, you can reach to only port 22.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 61:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: But if you open the security group and allow port 80 then it will also talk about that port, right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 62:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And similarly, this is for another instance in VPC-B right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 63:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So it has flagged both these as non-compliant rules.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 64:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And now similarly, you can also run the analysis for rest of the scopes.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 65:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 66:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 67:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now let's do our bit.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 68:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: That means we want to create our own scope and then AWS provides some templates to get started with.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 69:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: For example, if you want to locate databases which are accessible from the internet or non HTTPS access to the web server, all these are, you know, violation to our security policies.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 70:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So you can get started with any of these templates.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 71:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: But here let's start with our own empty template and let's call it say no connectivity between Dave and PROD VPC, right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 72:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And we have to then define the match conditions as in what is the source VPC and what's the destination VPC.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 73:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's add a match condition and our source is VPC.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 74:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's say resource id and the type is VPC and then resource id is VPC-A.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 75:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And now you can also optionally define the traffic type, whether it's a TCP or a UDP or what's the port, which allows this communication.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 76:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: But here we are just talking about generic connectivity between the two VPCs.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 77:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So we won't add anything here.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 78:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And now you have to define the destination.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 79:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So again, the destination is the resource id of the type VPC.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 80:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And here the destination is VPC B, right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 81:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: That's it and say next.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 82:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So it will give you the Jason and create this scope.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 83:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now, once you create the scope, you just say analyze and again, it will take maybe a minute or so.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 84:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So I'm just pausing this video again.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 85:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 86:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So analysis has finished and you see there are no findings, that means both these VPCs cannot communicate with each other.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 87:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And this is what we wanted basically.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 88:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So everything is fine and this is what we had expected.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 89:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now, let's do one thing.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 90:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Let's go here and let's create a VPC peering connection between these two VPCs which is here.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 91:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And let's create a peering connection which is between VPC A and VPC B, right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 92:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And then let's create the peering connection.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 93:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So as you know, the peering has to be accepted, so let's accept the peering and that's it.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 94:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: Now we just have a peering connection, but we haven't added anything in our route table.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 95:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So at this point, let's go here and analyze this again.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 96:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So again, let me pause this video for a minute.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 97:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 98:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: So you see that still there are no findings even though there is a VPC peering connection, but traffic cannot flow because there are no route tables which takes the traffic from VPC A to VPC B.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 99:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: So now let's finally go to our route table and let's go to the VPC A route table and say if the traffic is going to VPC B which is 172.16 0.00 16, then it has to go through the VPC peering connection and save it.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 100:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: And similarly, let's also go to the VPC B root table and let's edit this route and say if the traffic is going to VPCA, then it has to also go through the peering connection.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 101:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 102:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 103:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And now let's come back here and analyze this again.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 104:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So pause this video.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 105:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 106:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So now if you see there are findings detected and there are two network interfaces which are in violation.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 107:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So start is VPC and A and VPC B and the traffic can flow from VPC A to VPC B.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 108:
- Concepts: Path Analysis and Reachability, Security Control Verification
- Services: Elastic Network Interface
- Key Insights: And if you see this is a VPC peering which is allowing this traffic, so traffic can go right from VPCA instance ENI to the security group, outbound rule to the Network-ACL of the VPCA Subnet to the route table to the VPC peering connection to the Network-Access-Control-List inbound rule of VPC B Subnet, then the EC2 instance B security group to the EC2 instance B so end to end traffic is now allowed which we did not want.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 109:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And that's where it has been flagged off.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 110:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So this is how you define the scope and then you run this analysis to find out if there are any findings detected, right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 111:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 112:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: OK, just word of caution, if you have also implemented this, just go and terminate everything that you created specifically these two instances because you might not be in the free tier quota.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 113:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And once you do that also tear down your VPC peering connection and also delete your VPCs.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 114:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: And just one more thing which I should have probably stated earlier, there is also some small charge for this excess analyzer that is $0.002 per ENI that is being analyzed.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 115:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now, in our case, there were two ENIs and hence you multiply that by this number for every analysis, which is not a very huge price, but still there is some charge.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 116:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So just bear that in mind.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 117:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 118:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So with that, we will stop here.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 119:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So just to recap in the last couple of lectures, we saw two ways to analyze the network traffic.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 120:
- Concepts: Path Analysis and Reachability
- Services: Reachability Analyzer
- Key Insights: One is through the VPC reachability analyzer where it tells you that whether from the source you can reach to the destination and if not, then what is blocking that traffic.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 121:
- Concepts: Path Analysis and Reachability, Security Control Verification
- Services: Network Access Analyzer
- Key Insights: And the second is network access analyzer which can flag the unintended network path between the source and the destination.
- Hidden/Implicit Meaning: Path-validation and troubleshooting signal.

Line 122:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So that will stop here and we'll move to the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 123:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/27_Networking - VPC/337_VPC Flow Logs.txt

Line 1:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: So now, let's talk about VPC Flow Logs.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 2:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: VPP flow logs allow you to capture information from IP traffic going into your interfaces.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 3:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: So that could be at the VPC level, the subnet level, or the elastic network interface, ENI level.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 4:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: So we have three kinds of flow logs.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 5:
- Concepts: Troubleshooting Methodology
- Services: (none explicit)
- Key Insights: They're very helpful to monitor and troubleshoot connectivity issues happening within your VPC.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 6:
- Concepts: Operational Observability
- Services: Amazon CloudWatch, Amazon S3, VPC Flow Logs
- Key Insights: So these flow logs can be sent to Amazon S3, CloudWatch Logs, and Kinesis Data Firehose, and they will capture information for also AWS managed interfaces such as ELB, RDS, ElasticCache, Redshift, Workspaces, your net gateway, your transit gateway, and so on.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 7:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: VPC Flow Logs
- Key Insights: So this is what a VPC flow log looks like.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 8:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: So there is a format associated with it, but there is a version, account ID, interface ID, source address, destination address, source port, destination port, protocol packets by start and action and log status.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 9:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So this is metadata about the network packets going into your VPC.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 10:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And you don't need to remember this at a high-level, right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 11:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: But let's have a look at what information we can get out of these flow logs.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 12:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So the source address and the destination address help identify problematic IP.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 13:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: This is where you see if an IP is repeatedly being denied, maybe there is something wrong with that IP, or maybe you're being attacked by a specific IP, source port and destination port helps you identify the probiotic ports.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 14:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Action is going to be either accept or reject.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 15:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: And so it's going to say whether or not it's a success or failure at the SG or NACL level.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 16:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And we'll see this in the very next slide.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 17:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And so this can be used the VPC logs to do analytics on usage patterns or detect manage behavior, port scans, and so on.
- Hidden/Implicit Meaning: Operational observability signal.

Line 18:
- Concepts: Operational Observability
- Services: VPC Flow Logs
- Key Insights: Now, to query these flow logs, you have two ways of doing it.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 19:
- Concepts: Operational Observability
- Services: Amazon Athena, Amazon CloudWatch, Amazon S3
- Key Insights: The best way is to do Athena on S3, or if you wanted to do a streaming analysis, you could use CloudWatch logs insights.
- Hidden/Implicit Meaning: Operational observability signal.

Line 20:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: So here are some examples that you can have a look on your own time for flow logs.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 21:
- Concepts: Security Control Verification, Troubleshooting Methodology
- Services: VPC Flow Logs
- Key Insights: So how do we use flow logs to troubleshoot security group and NACL issues?
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 22:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Well, we look at the action field.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 23:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: So let's have a look at the typical incoming request for your NACL and your subnet.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 24:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: So remember, your NACL are stateless and your security groups are stateful.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 25:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So what happens?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 26:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Well, if we get an inbound reject, so we see that the inbound request from from the outside to our EC2 instance is rejected.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 27:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: That can means that either from this graph, the NACL is refusing the request or the security group is refusing the request.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 28:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And this makes sense, right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 29:
- Concepts: Security Control Verification, Troubleshooting Methodology
- Services: (none explicit)
- Key Insights: But if we have a inbound accept and an outbound reject, it can only mean a NACL issue.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 30:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 31:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: Or because your security group is stateful.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 32:
- Concepts: Security Control Verification
- Services: (none explicit)
- Key Insights: And if the inbound is allowed because of the accept, automatically the outbound will be allowed thanks to the statefulness of your security group.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 33:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So for outgoing request, similar analysis, right?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 34:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: This is the diagram we know already.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 35:
- Concepts: Security Control Verification, Troubleshooting Methodology
- Services: (none explicit)
- Key Insights: And so if you get an outbound reject, then you have a NACL or a security group issue.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 36:
- Concepts: Security Control Verification, Troubleshooting Methodology
- Services: (none explicit)
- Key Insights: But if you get an outbound accept and inbound reject, then it must mean a NACL issue.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 37:
- Concepts: Operational Observability
- Services: Amazon CloudWatch, VPC Flow Logs
- Key Insights: So let's have a look at a few architectures for your VPC flow logs so they can flow into CloudWatch logs as we know.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 38:
- Concepts: Operational Observability
- Services: Amazon CloudWatch, Elastic Network Interface
- Key Insights: And then we can use something called CloudWatch contributor insights, for example, to find the top 10 IP addresses that contribute to the most amount of network on your VPC or on ENI or whatever you want.
- Hidden/Implicit Meaning: Operational observability signal.

Line 39:
- Concepts: Operational Observability
- Services: Amazon CloudWatch, VPC Flow Logs
- Key Insights: You can also use VPC flow logs to send them again into CloudWatch logs.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 40:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Here, we can set up a metric filter to look for example for the SSH or the RTP protocols.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 41:
- Concepts: Operational Observability
- Services: Amazon CloudWatch
- Key Insights: And if we realize that there's a lot more SSH or RDP than usual, then trigger a CloudWatch alarm and send an alert into an Amazon SNS topic because something fishy may be happening on your network.
- Hidden/Implicit Meaning: Operational observability signal.

Line 42:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: VPC Flow Logs
- Key Insights: Or we can use a VPC flow log.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 43:
- Concepts: Operational Observability
- Services: Amazon Athena, Amazon S3, VPC Flow Logs
- Key Insights: And then we send everything into an S3 bucket for storage, and we use Amazon Athena to analyze the VPC flow logs with SQL.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 44:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And we can even visualize that with Amazon QuickSight.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 45:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: Now a little bit of security, so you need permissions for VPC flow logs to work.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 46:
- Concepts: Operational Observability
- Services: Amazon CloudWatch, VPC Flow Logs
- Key Insights: So there is an IAM service role associated with the VPC flow logs service, and it must have the required permissions to publish logs to CloudWatch Logs.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Traffic visibility and telemetry signal; Operational observability signal.

Line 47:
- Concepts: Operational Observability
- Services: Amazon CloudWatch
- Key Insights: So to do so, it needs the logs, create log group, logs create log stream or logs put log events permissions, and then these permissions together will allow the VPC for log service through its IAM role to send logs into CloudWatch logs without any errors.
- Hidden/Implicit Meaning: Operational observability signal.

Line 48:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 49:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/27_Networking - VPC/338_VPC Flow Logs Hands On + Athena.txt

Line 1:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: Okay, so now we're going to practice VPC flow logs.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 2:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: VPC Flow Logs
- Key Insights: And to do so well, we'll go into our demo VPC under Flow Logs and we can create a flow log.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 3:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: So we have a few types of flow logs.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 4:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So I'll call this one DemoS3FlowLog.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 5:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And we have a filter, do we want the accept type, reject type or all kind of traffic?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 6:
- Concepts: Troubleshooting Methodology
- Services: (none explicit)
- Key Insights: So if you're trying to debug why some traffic is not going through, maybe reject is more relevant.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 7:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Otherwise, all or accept are good as well.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 8:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: The maximum aggregation interval.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 9:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So how long you need to wait to aggregate.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 10:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And you can look at the info.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 11:
- Concepts: Operational Observability
- Services: Amazon CloudWatch, Amazon S3
- Key Insights: So you can optionally specify a one minute aggregation, but if you do so then there's gonna be more records being created, because it's possible that you have lots of records getting created over time and obviously every one minute written to S3 or CloudWatch Logs can be very expensive.
- Hidden/Implicit Meaning: Operational observability signal.

Line 12:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's just do one minute just for the sake of the demo to go quicker.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 13:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: But 10 minutes is usually a better option if you're looking at it, especially after a little bit of time.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 14:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So a few options.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 15:
- Concepts: Operational Observability
- Services: Amazon CloudWatch, Amazon S3
- Key Insights: We can send the destination to CloudWatch Logs And we need to specify a log group, we need to we can also send it to an Amazon S3 bucket.
- Hidden/Implicit Meaning: Operational observability signal.

Line 16:
- Concepts: Traffic Analysis Operational Context
- Services: Amazon S3
- Key Insights: We need to specify the S3 bucket ARN or we can send it to Kinesis Data Firehose in the same account or in a different account.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 17:
- Concepts: Traffic Analysis Operational Context
- Services: Amazon S3
- Key Insights: But we'll use Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 18:
- Concepts: Traffic Analysis Operational Context
- Services: Amazon S3
- Key Insights: So to do so, I'm going to go into the S3 service in here and I will create a bucket and create demo-stephane-vpc-flow-logs-v2, okay?
- Hidden/Implicit Meaning: Operational observability signal.

Line 19:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: In the same region where my VPC is obviously.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 20:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And then I will create this bucket.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 21:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now view the details of the bucket and now we need to get the bucket ARN.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 22:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So to do so, here it is I can just copy it from the Properties.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 23:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's paste this in.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 24:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And as we can see, a resource-based policy will be created for you and attached to the target bucket.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 25:
- Concepts: Traffic Analysis Operational Context
- Services: Amazon S3
- Key Insights: So bucket policy will be created for us automatically so that the VPC service can send data into our S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 26:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now the format looks like this.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 27:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: This is the default format of AWS.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 28:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: VPC Flow Logs
- Key Insights: And next I will click on Create Flow Log.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 29:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: VPC Flow Logs
- Key Insights: Okay, so this first flow log has been created, perfect.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 30:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: VPC Flow Logs
- Key Insights: And I will go ahead and create a second flow log now.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 31:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: VPC Flow Logs
- Key Insights: So I'll create flow log.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 32:
- Concepts: Operational Observability
- Services: Amazon CloudWatch
- Key Insights: And this one is going to be DemoFlowLog CloudWatch Logs all kind of traffic, one minute interval, to CloudWatch logs.
- Hidden/Implicit Meaning: Operational observability signal.

Line 33:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: And we need to create a log group and an IAM role.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 34:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's do both of these things.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 35:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So to do so when you click on Set Up Permissions so let's create a role.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 36:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So we are going to create a role this is a custom trust policy.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 37:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And in here for principle, just go to the new line.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 38:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: You're going to enter Service in between quotes, then colon and then Service is vpc-flow-logs.amazonaws.com.
- Hidden/Implicit Meaning: Operational observability signal.

Line 39:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So make sure you have this in between quotes as well.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 40:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: So this is going to say that this role can be assumed by VPC flow logs.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 41:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Click on Next.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 42:
- Concepts: Operational Observability
- Services: Amazon CloudWatch
- Key Insights: Now for permissions policy we need CloudWatch Logs full access.
- Hidden/Implicit Meaning: Operational observability signal.

Line 43:
- Concepts: Operational Observability
- Services: Amazon CloudWatch
- Key Insights: So we're going to have this one CloudWatch Log full access which is enough.
- Hidden/Implicit Meaning: Operational observability signal.

Line 44:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Then click on Next.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 45:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And this role name is going to be flowlogsrole.
- Hidden/Implicit Meaning: Operational observability signal.

Line 46:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Then create this role.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 47:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And now this role is created.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 48:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: VPC Flow Logs
- Key Insights: So if I refresh this and look for flow log roles, here we go.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 49:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: It is created.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 50:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: And now we need a log group.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 51:
- Concepts: Operational Observability
- Services: Amazon CloudWatch
- Key Insights: So let's go into the CloudWatch Logs console.
- Hidden/Implicit Meaning: Operational observability signal.

Line 52:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's click on it here.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 53:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: And under Logs, Log Groups, I'm going to create a log group.
- Hidden/Implicit Meaning: Operational observability signal.

Line 54:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: I'll call it VPCFlowLogs.
- Hidden/Implicit Meaning: Operational observability signal.

Line 55:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: And I will set the retention to one day and click on Create, click on this log group here.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 56:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now refresh this and the VPCFlowLogs is appearing.
- Hidden/Implicit Meaning: Operational observability signal.

Line 57:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 58:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: VPC Flow Logs
- Key Insights: Now let's create this flow log.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 59:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: And yet again, so now we have two flow logs.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 60:
- Concepts: Operational Observability
- Services: Amazon CloudWatch, Amazon S3
- Key Insights: One flowing into Amazon S3 and one flowing into CloudWatch Logs.
- Hidden/Implicit Meaning: Operational observability signal.

Line 61:
- Concepts: Traffic Analysis Operational Context
- Services: Amazon S3
- Key Insights: So into Amazon S3 under my Objects, I can refresh this and as we can see some AWSLogs have already been created.
- Hidden/Implicit Meaning: Operational observability signal.

Line 62:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: I can click on it, look at the VPC flow logs for eu-central-1.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 63:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: And then we have a timestamp, and we have here the VPC flow logs available to us.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 64:
- Concepts: Operational Observability
- Services: Amazon CloudWatch
- Key Insights: So now let's go into the CloudWatch Logs and refresh this and have two log streams.
- Hidden/Implicit Meaning: Operational observability signal.

Line 65:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: And these log streams correspond to the enis within my accounts.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 66:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: So if we ever a look at the eni of my BastionHost, this one, and we have a look at the eni number.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 67:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: So we go under Networking, and what I'm going to do is put this up a little bit and look for the eni id.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 68:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: So the eni id is 0835.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 69:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's go into here and look for 0835, this one, perfect.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 70:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So this is showing us the kind of traffic that is happening onto my EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 71:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And if you look at it, well, it seems that some people are trying to access my EC2 instance, but it's getting rejected.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 72:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: So this is the version, this is like all these fields, okay the eni id and this IP address, which is the public IP address is trying to access my EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 73:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And this is really like this kind of attackers were attacking your instance and just scanning the web for holes and so on.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 74:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So you're gonna have a lot of this kind of traffic.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 75:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And if I wanted to get some defense, I could for example, if this IP address was annoying me too much, I could block it at the that code level, for example and not have this traffic.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 76:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: But as we can see, a lot of traffic is appearing in here and it's all Reject.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 77:
- Concepts: Traffic Analysis Operational Context
- Services: Amazon S3
- Key Insights: But if I were to do some activity on my S3 instance and connect to Google for example, we would see some traffic with Accept as well.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 78:
- Concepts: Traffic Analysis Operational Context
- Services: Amazon S3
- Key Insights: And the same kind of data is going to appear on Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 79:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So if I go here, you will have a lot of data, okay?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 80:
- Concepts: Operational Observability
- Services: Amazon CloudWatch
- Key Insights: So you use CloudWatch Logs, if you want to have some kind of metrics filter to do some real-time analysis in case you're being attacked and a lot of traffic is being rejected and so on.
- Hidden/Implicit Meaning: Operational observability signal.

Line 81:
- Concepts: Operational Observability
- Services: Amazon Athena, Amazon S3
- Key Insights: So this is very helpful and you'll use Amazon S3 if you wanted to do some more bigger analysis for example, using Athena.
- Hidden/Implicit Meaning: Operational observability signal.

Line 82:
- Concepts: Operational Observability
- Services: Amazon Athena, Amazon S3
- Key Insights: So let's go ahead and practice using Athena to query this data into my S3 bucket.
- Hidden/Implicit Meaning: Operational observability signal.

Line 83:
- Concepts: Operational Observability
- Services: Amazon Athena, Amazon S3
- Key Insights: So in Athena, what I'm going to do is to first set up a query result location in Amazon S3.
- Hidden/Implicit Meaning: Operational observability signal.

Line 84:
- Concepts: Traffic Analysis Operational Context
- Services: Amazon S3
- Key Insights: So I'm going to click on New Settings, Manage and then I need to specify an S3 bucket where I'm going to store my results.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 85:
- Concepts: Traffic Analysis Operational Context
- Services: Amazon S3
- Key Insights: So back into Amazon S3 what I'm going to do is just quickly create an S3 bucket, because this wasn't set up for this account.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 86:
- Concepts: Operational Observability
- Services: Amazon Athena
- Key Insights: So I call this one demo-athena-stephane-v2, and this should work.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Operational observability signal.

Line 87:
- Concepts: Operational Observability
- Services: Amazon Athena, Amazon S3
- Key Insights: Now let's click on Create these buckets, View Details, and I can just use this S3 bucket, so Properties, I will copy the ARN, back into Athena and then click on Save.
- Hidden/Implicit Meaning: Operational observability signal.

Line 88:
- Concepts: Operational Observability
- Services: Amazon Athena
- Key Insights: So I need to just do slash and then Athena.
- Hidden/Implicit Meaning: Operational observability signal.

Line 89:
- Concepts: Traffic Analysis Operational Context
- Services: Amazon S3
- Key Insights: And then something like, ah, S3://, here we go.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 90:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay, this is good.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 91:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's click on Save.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 92:
- Concepts: Operational Observability
- Services: (none explicit)
- Key Insights: And now we have this query location being saved and I need to go ahead and start creating a database and then create some data.
- Hidden/Implicit Meaning: Operational observability signal.

Line 93:
- Concepts: Operational Observability
- Services: Amazon Athena, VPC Flow Logs
- Key Insights: So what I need to do is to go in here and I will type AWS VPC flow logs Athena and this is going to take me into a tutorial on how to do it.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 94:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So to do so, we need to create a table.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 95:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And this whole statement right here shows you how.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 96:
- Concepts: Operational Observability
- Services: Amazon Athena
- Key Insights: So let's go ahead and paste this in my Athena UI.
- Hidden/Implicit Meaning: Operational observability signal.

Line 97:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So here we go.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 98:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And we need to specify where the data is.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 99:
- Concepts: Operational Observability
- Services: VPC Flow Logs
- Key Insights: So the log bucket, the prefixed logs and then account id VBC flow logs and region code.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 100:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's find it.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 101:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's go back in here.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 102:
- Concepts: Operational Observability
- Services: Amazon Athena
- Key Insights: This is my Athena bucket.
- Hidden/Implicit Meaning: Operational observability signal.

Line 103:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: No, this is my VPC flow logs bucket.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 104:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Here we go.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 105:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's go to the top of it.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 106:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Just to go back.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 107:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: So logs, account id, VPC flow logs, region.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 108:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay, we got it.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 109:
- Concepts: Operational Observability
- Services: Amazon Athena, Amazon S3
- Key Insights: Now we're going to copy this S3 URI directly back into Athena and I'm going to paste this in.
- Hidden/Implicit Meaning: Operational observability signal.

Line 110:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay, perfect.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 111:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And let's run this statement.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 112:
- Concepts: Operational Observability, Telemetry and Packet Visibility
- Services: VPC Flow Logs
- Key Insights: So this completed, and now we have a VPC flow log table in here.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 113:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay, and it is partitioned.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 114:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So we can see we have all the information in here.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 115:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now the second thing we need to do is to run another statement.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 116:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's go here and find this alter table, to create partitions to read this data.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 117:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's copy this, paste this in.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 118:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And again, we need to specify a date and as well as the entire replacement for month, year, and day.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 119:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's go ahead and do this.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 120:
- Concepts: Traffic Analysis Operational Context
- Services: Amazon S3
- Key Insights: So back into Amazon S3, into my Objects I will click, click and click, go back to Properties and paste this, copy and paste this in.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 121:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 122:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And then we need to add a partition.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 123:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So 2021-10-06.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 124:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And this is quite manual, but Glue can help with automating this.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 125:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now let's run this statement.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 126:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And the statement was successfully completed.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 127:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So now we have added one partition into our table.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 128:
- Concepts: Operational Observability
- Services: VPC Flow Logs
- Key Insights: And then finally we can query the flow logs just by doing a select.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 129:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So let's do this to find all the reject traffic and then click on Run.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 130:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And this is worked.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 131:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And now we have 46 results and we can have a look.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 132:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So day, date, interface id, source address, action reject, protocol 6.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 133:
- Concepts: Operational Observability
- Services: Amazon Athena
- Key Insights: So we can get a lot of information from Athena and we can start doing some complex queries to try to group for example, by IP addresses, see who is attacking us the most where we're attacked the most, and so on.
- Hidden/Implicit Meaning: Operational observability signal.

Line 134:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So this could be quite helpful for doing some batch analysis, okay?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 135:
- Concepts: Traffic Analysis Operational Context
- Services: VPC Flow Logs
- Key Insights: But that's it, we've seen how to set VPC flow logs.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal; Operational observability signal.

Line 136:
- Concepts: Operational Observability
- Services: Amazon CloudWatch
- Key Insights: We send to CloudWatch Logs.
- Hidden/Implicit Meaning: Operational observability signal.

Line 137:
- Concepts: Operational Observability
- Services: Amazon Athena, Amazon S3
- Key Insights: And to Amazon S3, we've used Athena to query these logs in Amazon S3.
- Hidden/Implicit Meaning: Operational observability signal.

Line 138:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So very complete demo.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 139:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And what I'm going to do now is just disable all these logs.
- Hidden/Implicit Meaning: Operational observability signal.

Line 140:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: I'm going to delete them, just not to run any ongoing cost.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 141:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 142:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/27_Networking - VPC/344_VPC Traffic Mirroring.txt

Line 1:
- Concepts: Traffic Analysis Operational Context
- Services: Traffic Mirroring
- Key Insights: So here is a very cool security feature called the VPC, Traffic Mirroring.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 2:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: The idea is that we want to capture and inspect network traffic in our VPC, but to do it in a non-intrusive manner.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 3:
- Concepts: Path Analysis and Reachability
- Services: (none explicit)
- Key Insights: So to do so, we want to route the traffic to security appliances that we manage.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 4:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And to do so, we're going to capture the traffic, so we're going to define which are the source ENIs we want to capture the traffic from.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 5:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And then the targets, so where do we want to send that traffic to, our own ENIs or maybe a Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 6:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So to do an example.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 7:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: So we have an EC2 instance and we have an Elastic Network Interface, so an ENI attached to it and works really well.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 8:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Our EC2 instance is accessing the internet and is being accessed.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 9:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface
- Key Insights: And so we get a lot of inbound and outbound traffic on the ENI to the EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 10:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: But we wanted to analyze our traffic.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 11:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So to do so we're going to set up a Load Balancer and behind this Network Load Balancer, we're going to have an auto scaling group of EC2 instances that will have some security software on it.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 12:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: Now we want to be able to capture all the traffic from Source A without disrupting the functioning of Source A.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 13:
- Concepts: Traffic Analysis Operational Context
- Services: Traffic Mirroring
- Key Insights: So to do so, we're going to set up a VPC traffic mirroring, and optionally, we can have a filter, if you want you to get just some information, not everything.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 14:
- Concepts: Traffic Analysis Operational Context
- Services: Elastic Network Interface, Traffic Mirroring
- Key Insights: And with this traffic mirroring feature, all the traffic sent to the ENI or Source A is also going to be sent to our Network Load Balancer.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 15:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So our Source A, our EC2 instance is still working fine.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 16:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: It still doesn't know what's happening, but on top of it, the traffic is being mirrored.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 17:
- Concepts: Traffic Analysis Operational Context
- Services: Traffic Mirroring
- Key Insights: So hence the name, Traffic Mirroring, into our Network Load Balancer.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 18:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And from there, we can analyze the traffic itself.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 19:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And this applies not just to one source, but to multiple sources.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 20:
- Concepts: Telemetry and Packet Visibility
- Services: Elastic Network Interface
- Key Insights: So if you had a second EC2 instance with another ENI, yet again, we can mirror the traffic into our Network Load Balancer.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 21:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 22:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: We need to have the source and the targets to be in the same VPC, or it could be across different VPC, and if we have enabled VPC Peering.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 23:
- Concepts: Traffic Analysis Operational Context
- Services: Traffic Mirroring
- Key Insights: So the use cases for VPC traffic mirroring is going to be around content inspection, threat monitoring, or troubleshooting from a networking perspective, okay.
- Hidden/Implicit Meaning: Traffic visibility and telemetry signal.

Line 24:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: It's very hard to demonstrate this in a demo, but this diagram should be enough.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 25:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: So hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

Line 26:
- Concepts: Traffic Analysis Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes traffic analysis operational detail.

## Step 2 â€” Consolidation

### 1. Concepts List
- Operational Observability
- Path Analysis and Reachability
- Security Control Verification
- Telemetry and Packet Visibility
- Traffic Analysis Operational Context
- Troubleshooting Methodology

### 2. Services List
- Amazon Athena
- Amazon CloudWatch
- Amazon S3
- Elastic Network Interface
- Network Access Analyzer
- Reachability Analyzer
- Traffic Mirroring
- VPC Flow Logs

### 3. Features List
- athena
- cloudwatch
- flow logs
- network access analyzer
- reachability analyzer
- s3
- traffic mirroring

### 4. Use Cases
- 046_Section Introduction.txt:8: So we will see how to use VPC flow logs and how to analyze those logs.
- 046_Section Introduction.txt:17: Now, here you don't actually send the traffic to analyze your network.
- 046_Section Introduction.txt:22: For example, network access analyzer can tell you that these are the AWS resources in your VPC which can still be accessed over the internet.
- 046_Section Introduction.txt:26: And I'm also going to walk you through some use cases around how to implement these.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:9: For example, you are not able to reach to particular EC2 instance, which means all your connections request are rejected.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:12: Another use case is to see if any malicious IPs are trying to access your IP addresses.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:17: Now when we enable the VPC flow logs, they are not only enabled for the EC2 ENIs, but they are also enabled for the ENI which are created by AWS services.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:18: For example, you know that when you use AWS services like elastic Load-Balancer or RDS databases or Amazon workspaces or NAT gateways, they also create the ENI into your VPC.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:27: So when you enable the flow logs, then they have a particular format.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:64: Now this is because if you are having intermediate devices in the flow, for example, the NAT gateways, then you know that the packet source address changes.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:91: And now we want to analyze these logs using cloudwatch logs insights.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:96: And then you can do a lot of operations with this field, for example aggregation, sum or filtering all that is possible with this query language.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:97: And if you need some help, then you can just go here and then you can look at some sample queries, for example VPC flow log queries.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:103: For example, I'm not interested in log streams.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:214: For example, you can use wireshark or tcpdump or you can use other tools like traceroute which shows you hop by hop the connection to the destination.
- 048_VPC Traffic Mirroring.txt:15: So that's the use case for this VPC Traffic Mirroring.
- 048_VPC Traffic Mirroring.txt:70: Now, when the mirror traffic happens, you can also do the filtering.
- 048_VPC Traffic Mirroring.txt:81: Now, when you set up this traffic mirroring, you know that that there is a source ENI, there is a target ENI or Network Load Balancer.
- 048_VPC Traffic Mirroring.txt:91: So that is kind of a use case you can also implement using the VPC Traffic Mirroring.
- 049_VPC features for Network Analysis.txt:3: But AWS now also provides different ways to analyze the network traffic.
- 049_VPC features for Network Analysis.txt:12: So this is very helpful in use cases, something like you are not able to reach to a particular EC2 instance in another VPC or from your workstation to your EC2 machine over SSH, right.
- 049_VPC features for Network Analysis.txt:16: But the difference is that here you are trying to analyze which all paths exist to go from source to the destination.
- 049_VPC features for Network Analysis.txt:19: For example.
- 050_VPC Reachability Analyzer.txt:3: So as I said in the previous lecture, it is used to analyze whether you can reach from source to the destination.
- 050_VPC Reachability Analyzer.txt:16: For example, if you have security group, which doesn't have the allow rules for the source IP address, then it will tell you that this security group is not allowing that traffic.
- 050_VPC Reachability Analyzer.txt:21: So what are the use cases?
- 050_VPC Reachability Analyzer.txt:22: Of course, the first use case is to troubleshoot the network connectivity issues.
- 050_VPC Reachability Analyzer.txt:23: And more than that, I think one another important use case is to automate the testing of your network.
- 050_VPC Reachability Analyzer.txt:24: For example, if you are using infrastructure as a code for deploying your networks.
- 050_VPC Reachability Analyzer.txt:25: And whenever you make any changes to your network configuration, you want to make sure that everything is working as expected.
- 050_VPC Reachability Analyzer.txt:30: So that's another good example of use case where you can use VPC reachability analyzer right now, what are the sources and the destination of the traffic that it supports?
- 051_Walkthrough_ VPC Reachability Analyzer.txt:30: And this is how typically, you know, when you start with AWS, your setup will look like, right?
- 051_Walkthrough_ VPC Reachability Analyzer.txt:101: And it is very helpful when you want to troubleshoot any kind of networking issues between any source and the destination.
- 052_Walkthrough_ VPC Network Access Analyzer.txt:4: Now, we are saying that we want to analyze if there are any non compliant paths exist in our network configuration.
- 052_Walkthrough_ VPC Network Access Analyzer.txt:9: For example, there is a development VPC and the production VPC and you want to make sure that there is no connectivity between these two VPCs.
- 052_Walkthrough_ VPC Network Access Analyzer.txt:11: All that is possible when you configure the network scope.
- 052_Walkthrough_ VPC Network Access Analyzer.txt:12: Another use case is to see if there is no internet inbound or outbound connectivity for your resources.
- 052_Walkthrough_ VPC Network Access Analyzer.txt:13: For example, if there are database instances, then they should not be reachable from the internet and the other way around.
- 052_Walkthrough_ VPC Network Access Analyzer.txt:15: That means when the traffic goes from the source to the destination, you want to make sure that it crosses through a particular device, for example, through the NAT gateways or through a particular Firewall.
- 052_Walkthrough_ VPC Network Access Analyzer.txt:21: So let's try to analyze one of the use case.
- 052_Walkthrough_ VPC Network Access Analyzer.txt:22: So for example, we have two VPCs and VPC-A is kind of development VPC and VPC-B is production VPC and we don't want to have any network connectivity between them.
- 052_Walkthrough_ VPC Network Access Analyzer.txt:69: For example, if you want to locate databases which are accessible from the internet or non HTTPS access to the web server, all these are, you know, violation to our security policies.
- 052_Walkthrough_ VPC Network Access Analyzer.txt:119: So just to recap in the last couple of lectures, we saw two ways to analyze the network traffic.
- 337_VPC Flow Logs.txt:21: So how do we use flow logs to troubleshoot security group and NACL issues?
- 337_VPC Flow Logs.txt:38: And then we can use something called CloudWatch contributor insights, for example, to find the top 10 IP addresses that contribute to the most amount of network on your VPC or on ENI or whatever you want.
- 337_VPC Flow Logs.txt:40: Here, we can set up a metric filter to look for example for the SSH or the RTP protocols.
- 337_VPC Flow Logs.txt:43: And then we send everything into an S3 bucket for storage, and we use Amazon Athena to analyze the VPC flow logs with SQL.
- 338_VPC Flow Logs Hands On + Athena.txt:35: So to do so when you click on Set Up Permissions so let's create a role.
- 338_VPC Flow Logs Hands On + Athena.txt:75: And if I wanted to get some defense, I could for example, if this IP address was annoying me too much, I could block it at the that code level, for example and not have this traffic.
- 338_VPC Flow Logs Hands On + Athena.txt:77: But if I were to do some activity on my S3 instance and connect to Google for example, we would see some traffic with Accept as well.
- 338_VPC Flow Logs Hands On + Athena.txt:81: So this is very helpful and you'll use Amazon S3 if you wanted to do some more bigger analysis for example, using Athena.
- 338_VPC Flow Logs Hands On + Athena.txt:133: So we can get a lot of information from Athena and we can start doing some complex queries to try to group for example, by IP addresses, see who is attacking us the most where we're attacked the most, and so on.
- 344_VPC Traffic Mirroring.txt:10: But we wanted to analyze our traffic.
- 344_VPC Traffic Mirroring.txt:23: So the use cases for VPC traffic mirroring is going to be around content inspection, threat monitoring, or troubleshooting from a networking perspective, okay.

### 5. Constraints / Limitations
- 046_Section Introduction.txt:2: And in your exam, you may expect some questions around this because network troubleshooting and monitoring is also an important topic.
- 046_Section Introduction.txt:4: So let's talk about some of the services which are important to cover here.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:17: Now when we enable the VPC flow logs, they are not only enabled for the EC2 ENIs, but they are also enabled for the ENI which are created by AWS services.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:149: Flow direction is important where it's ingress or egress instance id, interface id, log status number of packets.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:153: So I'm not selecting this packet source or destination addr protocol is important, Region we already know.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:156: Traffic path is important.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:189: And hence now, if I just open a new window, then it shouldn't really work.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:192: So with that, if we run the cloudwatch logs query again, then it should show us both the accept and the reject traffic.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:199: And then the next entry should be the response from the EC2 to my IP address.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:208: So just few more things about the flow logs limitation that VPC flow logs currently do not record the traffic for Amazon DNS server which runs on VPC base address + 2 IP address.
- 048_VPC Traffic Mirroring.txt:7: And now, one way could be to have the IPS and IDS system in place and all the traffic should be going through that IDS-IPS system.
- 048_VPC Traffic Mirroring.txt:33: Only interested traffic or interested packets, you can mirror and then inspect, right?
- 048_VPC Traffic Mirroring.txt:56: So it supports L4, layer 4 protocol only.
- 048_VPC Traffic Mirroring.txt:59: So you can very well define the filter using all these parameters and only interesting traffic you can mirror, right?
- 048_VPC Traffic Mirroring.txt:61: So with that, let's recap what we just learned, and this is important for your exam to remember.
- 048_VPC Traffic Mirroring.txt:67: So on the Network Load Balancer site, this port should be open.
- 048_VPC Traffic Mirroring.txt:68: And also remember that on your port site, the target port should also be open.
- 048_VPC Traffic Mirroring.txt:72: As I said, because you want to only capture certain type of the traffic.
- 048_VPC Traffic Mirroring.txt:83: But again, the limitation is this VPC should be in the same region.
- 048_VPC Traffic Mirroring.txt:85: So if your target VPCs in different regions, that wouldn't be possible as of now, but otherwise there is no restriction that the traffic source and the mirror target should be in the same VPC.
- 050_VPC Reachability Analyzer.txt:8: And also if required, you want to track the reverse path.
- 050_VPC Reachability Analyzer.txt:23: And more than that, I think one another important use case is to automate the testing of your network.
- 050_VPC Reachability Analyzer.txt:32: And few limitations that you need to know at this moment.
- 050_VPC Reachability Analyzer.txt:33: And of course, AWS will probably launch more features to address these limitations.
- 050_VPC Reachability Analyzer.txt:34: But as of now, the source and the destination of the traffic must be in the same AWS Region, which means source and destination can be in the same VPC or they could be in different VPCs in the same AWS Region.
- 050_VPC Reachability Analyzer.txt:40: And just last thing that it currently supports only IPv4 traffic, which means it doesn't support IPv6 traffic, but in the future, AWS may support that.
- 052_Walkthrough_ VPC Network Access Analyzer.txt:13: For example, if there are database instances, then they should not be reachable from the internet and the other way around.
- 052_Walkthrough_ VPC Network Access Analyzer.txt:17: And finally, you can have the trusted network access in the sense that you can mention that the traffic can only come from a particular IP address range or a particular port or particular AWS resource.
- 052_Walkthrough_ VPC Network Access Analyzer.txt:23: So to begin with, we will have these two VPCs isolated and then we'll create the network access analyzer scope which says that these two VPCs should be isolated and then we'll see what the result comes out to be.
- 052_Walkthrough_ VPC Network Access Analyzer.txt:34: That means this two machine cannot reach to each other over the private IP address, right?
- 052_Walkthrough_ VPC Network Access Analyzer.txt:60: As of now, you can reach to only port 22.
- 052_Walkthrough_ VPC Network Access Analyzer.txt:86: So analysis has finished and you see there are no findings, that means both these VPCs cannot communicate with each other.
- 052_Walkthrough_ VPC Network Access Analyzer.txt:98: So you see that still there are no findings even though there is a VPC peering connection, but traffic cannot flow because there are no route tables which takes the traffic from VPC A to VPC B.
- 052_Walkthrough_ VPC Network Access Analyzer.txt:114: And just one more thing which I should have probably stated earlier, there is also some small charge for this excess analyzer that is $0.002 per ENI that is being analyzed.
- 337_VPC Flow Logs.txt:29: But if we have a inbound accept and an outbound reject, it can only mean a NACL issue.
- 337_VPC Flow Logs.txt:36: But if you get an outbound accept and inbound reject, then it must mean a NACL issue.
- 337_VPC Flow Logs.txt:46: So there is an IAM service role associated with the VPC flow logs service, and it must have the required permissions to publish logs to CloudWatch Logs.
- 338_VPC Flow Logs Hands On + Athena.txt:86: So I call this one demo-athena-stephane-v2, and this should work.
- 344_VPC Traffic Mirroring.txt:24: It's very hard to demonstrate this in a demo, but this diagram should be enough.

### 6. Patterns / Architectures
- 046_Section Introduction.txt:1: Hi, welcome to this section that is VPC traffic monitoring, troubleshooting and analysis.
- 046_Section Introduction.txt:2: And in your exam, you may expect some questions around this because network troubleshooting and monitoring is also an important topic.
- 046_Section Introduction.txt:5: So in this section, we will cover VPC traffic monitoring.
- 046_Section Introduction.txt:9: And then I have also provided list of some other third party tools which you can use for traffic monitoring.
- 046_Section Introduction.txt:16: And then further, there are two additional services which AWS launched in around 2022 which are around network traffic analysis.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:1: Hello and welcome to this lecture, VPC traffic monitoring with VPC flow logs.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:2: Now, in this section introduction lecture, we talked about various tools which you can use for traffic monitoring, troubleshooting and analysis.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:13: And in that case, you can also perform analysis like this is my ENI or this is my IP address and show me how many requests has hit this IP address.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:15: So a lot of such analysis you can do once you capture this VPC flow logs.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:94: And if you know about the log monitoring tool like Splunk, it also uses similar language, but this is very powerful in the sense that it automatically detects your log record format.
- 048_VPC Traffic Mirroring.txt:3: So in the last lecture we saw, monitoring your VPC traffic, right?
- 048_VPC Traffic Mirroring.txt:5: But that happens typically in, I would say offline mode, or maybe you first capture the logs and then you do analysis.
- 048_VPC Traffic Mirroring.txt:6: But in certain cases you want to do, you know, real-time monitoring of your traffic.
- 048_VPC Traffic Mirroring.txt:14: And then you can run your network monitoring system on that target to see any malicious behavior into your traffic.
- 048_VPC Traffic Mirroring.txt:17: This I haven't seen much coming into the exam, but as we are talking about monitoring the traffic, it is good to know about this traffic mirroring.
- 048_VPC Traffic Mirroring.txt:19: And then it sends that traffic to another monitoring appliances, or content inspection or threat monitoring system, or maybe for troubleshooting, right?
- 048_VPC Traffic Mirroring.txt:88: Now, this is interesting because many a times maybe you are hosting your network packet analysis tool into your VPC and you want to give that as a service to your customers.
- 049_VPC features for Network Analysis.txt:6: So this comes under VPC network analysis and natively AWS provides two ways.
- 049_VPC features for Network Analysis.txt:11: So at the end of your analysis, it will tell you whether you can reach to the destination from your source.
- 050_VPC Reachability Analyzer.txt:4: And if given this kind of architecture where you have VPC, internet Gateway, couple of public subnets, private subnets.
- 050_VPC Reachability Analyzer.txt:6: So if source is internet Gateway and the destination is one of the instance in a public Subnet, maybe your web server tier, then you can configure that instance as a destination and then you can run this analysis.
- 050_VPC Reachability Analyzer.txt:7: And in the analysis result, it will show you whether from the source, you can reach to the destination.
- 050_VPC Reachability Analyzer.txt:18: But the point here is that the VPC reachability analyzer will exactly tell you where is the problem and then you can go and fix that and just one more thing while doing this analysis, it doesn't actually send any traffic.
- 051_Walkthrough_ VPC Reachability Analyzer.txt:10: Now, for you, a word of caution, there is a charge for, you know, every analysis that you perform.
- 051_Walkthrough_ VPC Reachability Analyzer.txt:12: So for this lab, you might get four times this cost because we are going to run this analysis four times, right?
- 051_Walkthrough_ VPC Reachability Analyzer.txt:53: So open the Network Manager and if you go on the left side, you will see this reachability, analyzer under monitoring and troubleshooting.
- 052_Walkthrough_ VPC Network Access Analyzer.txt:51: Now it will take maybe a couple of minutes for this analysis.
- 052_Walkthrough_ VPC Network Access Analyzer.txt:54: So it took around one minute for this analysis to finish.
- 052_Walkthrough_ VPC Network Access Analyzer.txt:64: And now similarly, you can also run the analysis for rest of the scopes.
- 052_Walkthrough_ VPC Network Access Analyzer.txt:86: So analysis has finished and you see there are no findings, that means both these VPCs cannot communicate with each other.
- 052_Walkthrough_ VPC Network Access Analyzer.txt:110: So this is how you define the scope and then you run this analysis to find out if there are any findings detected, right?
- 052_Walkthrough_ VPC Network Access Analyzer.txt:115: Now, in our case, there were two ENIs and hence you multiply that by this number for every analysis, which is not a very huge price, but still there is some charge.
- 337_VPC Flow Logs.txt:19: The best way is to do Athena on S3, or if you wanted to do a streaming analysis, you could use CloudWatch logs insights.
- 337_VPC Flow Logs.txt:33: So for outgoing request, similar analysis, right?
- 337_VPC Flow Logs.txt:37: So let's have a look at a few architectures for your VPC flow logs so they can flow into CloudWatch logs as we know.
- 338_VPC Flow Logs Hands On + Athena.txt:80: So you use CloudWatch Logs, if you want to have some kind of metrics filter to do some real-time analysis in case you're being attacked and a lot of traffic is being rejected and so on.
- 338_VPC Flow Logs Hands On + Athena.txt:81: So this is very helpful and you'll use Amazon S3 if you wanted to do some more bigger analysis for example, using Athena.
- 338_VPC Flow Logs Hands On + Athena.txt:134: So this could be quite helpful for doing some batch analysis, okay?
- 344_VPC Traffic Mirroring.txt:23: So the use cases for VPC traffic mirroring is going to be around content inspection, threat monitoring, or troubleshooting from a networking perspective, okay.

## Step 3 â€” Deep Expansion (Traffic Analysis Concepts)

### VPC Flow Logs
- What it is: Metadata-level network flow telemetry for VPC resources and interfaces.
- Why it exists: Helps validate traffic acceptance/rejection patterns and incident investigations.
- Internal working: Captures flow records and ships them to observability destinations for querying.
- Architecture: Centralized telemetry lake using S3/CloudWatch/Athena for investigations.
- Key components: Scope selection, destination choice, retention, analytics queries.

### Path and Access Analysis
- What it is: Control-plane analysis of route and security policy behavior across network paths.
- Why it exists: Reduces manual troubleshooting across SG/NACL/route combinations.
- Internal working: Builds expected paths and highlights blockers in the path graph.
- Architecture: Pre-change validation and incident-response-assisted troubleshooting workflow.
- Key components: Source/destination modeling, access requirements, blocker identification.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Network flow telemetry | VPC Flow Logs | NSG Flow Logs | VPC Flow Logs |
| Packet-level mirror/inspection | Traffic Mirroring | vTAP / packet capture patterns | Packet mirroring |
| Reachability/path analysis | Reachability Analyzer / Network Access Analyzer | Network Watcher connectivity tools | Connectivity Tests / Network Intelligence Center |

### Trade-offs and Decision Notes
- Flow telemetry is lower overhead than full packet capture but loses payload detail.
- Reachability tools accelerate root-cause analysis when route and policy layers interact.
- Mature operations standardize telemetry destinations and investigation workflows before incidents occur.

## Phase-wise Architect-Level Organization

### Phase 1 â€” Foundations
- Decide what visibility level is needed: flow metadata, path analysis, or full packet inspection.
- Standardize investigation entry points before incidents occur.

### Phase 2 â€” Core Services
- Enable flow telemetry, targeted mirroring, and reachability analysis for critical paths.
- Connect analysis outputs to central logging and query workflows.

### Phase 3 â€” Advanced Patterns
- Combine preventative policy checks with reactive troubleshooting telemetry.
- Use mirror and analyzer tools selectively to control cost and operational noise.

### Phase 4 â€” System Design
- Reference architecture: centralized network observability pipeline with path-validation tooling.
- Scaling considerations: telemetry volume, retention cost, investigation latency, analyst workflow quality.
- Cost considerations: logging volume, query charges, packet-mirror overhead, operational toil.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: Too many telemetry sources without workflow discipline create analysis noise.
- Signal 2: Key Insights: For example, you know that when you use AWS services like elastic Load-Balancer or RDS databases or Amazon workspaces or NAT gateways, they also create the ENI into your VPC.
- Signal 3: Key Insights: So this is a default log format and we will also see this in console.
- Signal 4: Key Insights: So first you need to create corresponding Cloudwatch log groups and then you need to create an IAM role for VPC flow logs service to send it to the Cloudwatch.
- Signal 5: Key Insights: Now let me go to AWS console and show you these things, okay.
- Signal 6: Key Insights: So I'm into my cloudwatch console in Mumbai Region and in the logs, I already have this logs group and I had just created this log group, right?
- Signal 7: Key Insights: And then I just went here and I said, create the VPC flow logs and most of the settings as default just that you have to select the destination log group and the corresponding IAM role.
- Signal 8: Key Insights: So that's the setup I already did.
- Signal 9: Key Insights: So for VPC flow logs for every ENI, the cloudwatch will create a separate log stream.
- Signal 10: Key Insights: So we already saw how to create VPC flow logs.

### Service-Specific Lab Paths
### Activity 1: Amazon VPC Lab for VPC Flow Logs, traffic mirroring, reachability/network access analysis, troubleshooting methodology and telemetry
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

### Activity 2: Amazon CloudWatch Lab for VPC Flow Logs, traffic mirroring, reachability/network access analysis, troubleshooting methodology and telemetry
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

### Activity 3: Amazon EC2 Lab for VPC Flow Logs, traffic mirroring, reachability/network access analysis, troubleshooting methodology and telemetry
- AWS console path: AWS Console -> EC2 -> Instances
- Azure equivalent: Azure Virtual Machines
- GCP equivalent: Compute Engine
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> EC2 -> Instances.
3. Build: Launch one small instance with default VPC.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Check instance running state and system status checks.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Terminate instance and remove extra volumes.

### Activity 4: Elastic Load Balancing Lab for VPC Flow Logs, traffic mirroring, reachability/network access analysis, troubleshooting methodology and telemetry
- AWS console path: AWS Console -> EC2 -> Load Balancers
- Azure equivalent: Azure Load Balancer or Application Gateway
- GCP equivalent: Cloud Load Balancing
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> EC2 -> Load Balancers.
3. Build: Create an application load balancer with one target group.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Check target health and ALB DNS response.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete ALB, listeners, and target group.

### Quick Troubleshooting
- Access denied: verify role permissions or ask admin for least-privilege lab policy.
- Resource limit reached: pick another region or request quota increase.
- Unexpected charges: stop/delete resources and review cost explorer immediately.

## Cross-Cloud Thinking Mode

Use this lens to study VPC Flow Logs, traffic mirroring, reachability/network access analysis, troubleshooting methodology and telemetry in a cloud-agnostic way: focus on capability first, provider name second.

### Capability Mapping (AWS / Azure / GCP)
| Capability | AWS | Azure | GCP |
|---|---|---|---|
| Identity | IAM / IAM Identity Center | Microsoft Entra ID + RBAC | Cloud IAM |
| Object Storage | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Virtual Machines | Amazon EC2 | Azure Virtual Machines | Compute Engine |
| Serverless Functions | AWS Lambda | Azure Functions | Cloud Functions / Cloud Run |
| Databases | RDS / DynamoDB / ElastiCache | Azure SQL / Cosmos DB / Azure Cache | Cloud SQL / Firestore / Memorystore |
| Networking | VPC / Route 53 / ELB | VNet / DNS / Load Balancer | VPC / Cloud DNS / Cloud Load Balancing |
| Observability | CloudWatch / X-Ray / CloudTrail | Azure Monitor / App Insights / Activity Log | Cloud Monitoring / Cloud Logging / Cloud Trace |
| AI/ML | SageMaker / Bedrock / AI services | Azure ML / Azure OpenAI / AI services | Vertex AI / GenAI services |

### Same Lab Across 3 Clouds
| Lab Theme | AWS | Azure | GCP |
|---|---|---|---|
| Amazon VPC | Amazon VPC | Azure Virtual Network | VPC Network |
| Amazon CloudWatch | Amazon CloudWatch | Azure Monitor | Cloud Monitoring |
| Amazon EC2 | Amazon EC2 | Azure Virtual Machines | Compute Engine |
| Elastic Load Balancing | Elastic Load Balancing | Azure Load Balancer or Application Gateway | Cloud Load Balancing |

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

