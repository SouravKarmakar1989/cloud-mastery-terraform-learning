# 05_Network_Observability_Telemetry.md

## Scope
- Topic: VPC Flow Logs, traffic mirroring, synthetic probes, and network visibility
- Files processed: 7
- Extracted non-empty transcript lines: 593
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS Observability Knowledge Base
- Cross-domain referrals: 2

## Real Material - Architect Learning Build (Observability: Network Observability Telemetry)

This section is the study-first architecture guide for vpc flow logs, traffic mirroring, synthetic probes, and network visibility.

### Phase 1 - Foundations

#### Module: Network Observability Telemetry Mental Model
- Use network observability telemetry decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: Network Observability Telemetry Mental Model
- Primary transcript files:
- outputs/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/047_VPC Traffic Monitoring with VPC Flow logs.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/046_VPC Traffic Mirroring - Architectures.txt
- outputs/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/048_VPC Traffic Mirroring.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/045_[SAA_SOA] VPC Traffic Mirroring.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/27_Networking - VPC/344_VPC Traffic Mirroring.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/27_Networking - VPC/337_VPC Flow Logs.txt
- Top concept clusters from transcript metadata:
- Network Telemetry
- Operational Monitoring
- Log Analytics and Investigation
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 7
- Module-selected transcript files: 6
- Key insight candidates scanned (topic): 593
- Key insights inside selected files: 24
- Unique concept tags in selected files: 3

##### Transcript-Enriched Learning Notes
- So if you have VPC and multiple subnets and then multiple EC2 machines, of course, EC2 will have the ENIs and there could be other networking components like load balancers or NAT gateways, which also has ENIs inside your VPC VPC flow logs can then be sent to different systems and can be analyzed in different ways.
- That Lambda function is going to look at the payload of the alerts, and it's going to identify the EC2 instance and the corresponding ENI attached to that instance that needs VPC network traffic mirroring.
- So VPC Traffic Mirroring basically captures the traffic which flows in and out of your VPC, and then you can mirror that and send it to a potential network and security anomalies tool.
- So in a sIAMple term, VPC flow logs allow you to capture the information about the IP traffic that is going in and out of your ENIs are elastic network interfaces.
- So the use cases for VPC traffic mirroring is going to be around content inspection, threat monitoring, or troubleshooting from a networking perspective, okay.
- And with this traffic mirroring feature, all the traffic sent to the ENI or Source A is also going to be sent to our Network Load Balancer.
- Now, when you set up this traffic mirroring, you know that that there is a source ENI, there is a target ENI or Network Load Balancer.
- So hence the name, Traffic Mirroring, into our Network Load Balancer.
- But if you are interested, you can try that in your environment and just advise here if you are trying this exercise, then also, you know, disable the VPC flow logs because otherwise there will be a charge for Cloudwatch logs group and I will also do that after this lecture, but just be aware of that.
- And in that case, you can use this action field which is like ACCEPT or REJECT and you can analyze your traffic flow and understand that whether this traffic was blocked because there was no security group or because there was no Network-ACL rule.
- So just remember that because sometimes you try to ping to the EC2 instance and despite everything is all well setup, but still you are not able to ping because security group or network ACL doesn't have ICMP rule added in that.
- And these VPC flow logs you can enable at the VPC level at the Subnet level or individual ENI level, which means if you enable the flow logs at the VPC level, then the flow logs will be enabled for all the ENIs in that VPC.

##### Polished Architect Notes
- Transcript signals that so if you have VPC and multiple subnets and then multiple EC2 machines, of course, EC2 will have the ENIs and there could be other networking components like load balancers or NAT gateways, which also has ENIs inside your VPC VPC flow logs can then be sent to different systems and can be analyzed in different ways.
- Transcript signals that that Lambda function is going to look at the payload of the alerts, and it's going to identify the EC2 instance and the corresponding ENI attached to that instance that needs VPC network traffic mirroring.
- Transcript signals that so VPC Traffic Mirroring basically captures the traffic which flows in and out of your VPC, and then you can mirror that and send it to a potential network and security anomalies tool.
- Transcript signals that so in a sIAMple term, VPC flow logs allow you to capture the information about the IP traffic that is going in and out of your ENIs are elastic network interfaces.
- Transcript signals that so the use cases for VPC traffic mirroring is going to be around content inspection, threat monitoring, or troubleshooting from a networking perspective, okay.
- Transcript signals that and with this traffic mirroring feature, all the traffic sent to the ENI or Source A is also going to be sent to our Network Load Balancer.
- Transcript signals that now, when you set up this traffic mirroring, you know that that there is a source ENI, there is a target ENI or Network Load Balancer.
- Transcript signals that so hence the name, Traffic Mirroring, into our Network Load Balancer.
- Transcript signals that but if you are interested, you can try that in your environment and just advise here if you are trying this exercise, then also, you know, disable the VPC flow logs because otherwise there will be a charge for Cloudwatch logs group and I will also do that after this lecture, but just be aware of that.
- Transcript signals that and in that case, you can use this action field which is like ACCEPT or REJECT and you can analyze your traffic flow and understand that whether this traffic was blocked because there was no security group or because there was no Network-ACL rule.
- Transcript signals that so just remember that because sometimes you try to ping to the EC2 instance and despite everything is all well setup, but still you are not able to ping because security group or network ACL doesn't have ICMP rule added in that.
- Transcript signals that and these VPC flow logs you can enable at the VPC level at the Subnet level or individual ENI level, which means if you enable the flow logs at the VPC level, then the flow logs will be enabled for all the ENIs in that VPC.

##### Architect Synthesis (Transcript-Derived)
- Treat Network Telemetry as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Monitoring as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Log Analytics and Investigation as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so if you have VPC and multiple subnets and then multiple EC2 machines, of course, EC2 will have the ENIs and there could be other networking components like load balancers or NAT gateways, which also has ENIs inside your VPC VPC flow logs can then be sent to different systems and can be analyzed in different ways.
- Design implication: that Lambda function is going to look at the payload of the alerts, and it's going to identify the EC2 instance and the corresponding ENI attached to that instance that needs VPC network traffic mirroring.
- Design implication: so VPC Traffic Mirroring basically captures the traffic which flows in and out of your VPC, and then you can mirror that and send it to a potential network and security anomalies tool.
- Design implication: so in a sIAMple term, VPC flow logs allow you to capture the information about the IP traffic that is going in and out of your ENIs are elastic network interfaces.
- Design implication: so the use cases for VPC traffic mirroring is going to be around content inspection, threat monitoring, or troubleshooting from a networking perspective, okay.

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/047_VPC Traffic Monitoring with VPC Flow logs.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/046_VPC Traffic Mirroring - Architectures.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/27_Networking - VPC/337_VPC Flow Logs.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/045_[SAA_SOA] VPC Traffic Mirroring.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/27_Networking - VPC/344_VPC Traffic Mirroring.txt
- outputs/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/048_VPC Traffic Mirroring.txt
- Top concept clusters from transcript metadata:
- Network Telemetry
- Log Analytics and Investigation
- Operational Monitoring
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 7
- Module-selected transcript files: 6
- Key insight candidates scanned (topic): 593
- Key insights inside selected files: 24
- Unique concept tags in selected files: 3

##### Transcript-Enriched Learning Notes
- So if you have VPC and multiple subnets and then multiple EC2 machines, of course, EC2 will have the ENIs and there could be other networking components like load balancers or NAT gateways, which also has ENIs inside your VPC VPC flow logs can then be sent to different systems and can be analyzed in different ways.
- And in that case, you can use this action field which is like ACCEPT or REJECT and you can analyze your traffic flow and understand that whether this traffic was blocked because there was no security group or because there was no Network-ACL rule.
- So just remember that because sometimes you try to ping to the EC2 instance and despite everything is all well setup, but still you are not able to ping because security group or network ACL doesn't have ICMP rule added in that.
- This is ENI now there is a source address from where the packet was sent and then the destination address where the packet is going sIAMilarly the source port and the destination port and then network protocol.
- That Lambda function is going to look at the payload of the alerts, and it's going to identify the EC2 instance and the corresponding ENI attached to that instance that needs VPC network traffic mirroring.
- And then we can use something called CloudWatch contributor insights, for example, to find the top 10 IP addresses that contribute to the most amount of network on your VPC or on ENI or whatever you want.
- And if we realize that there's a lot more SSH or RDP than usual, then trigger a CloudWatch alarm and send an alert into an Amazon SNS topic because something fishy may be happening on your network.
- So to do so we're going to set up a Load Balancer and behind this Network Load Balancer, we're going to have an auto scaling group of EC2 instances that will have some security software on it.
- So if you go to the public Subnet in which I have EC2 instance, and if you go to the Network-Access-Control-List, which is here, let's remove the outbound rule and let's remove this rule.
- So VPC Traffic Mirroring basically captures the traffic which flows in and out of your VPC, and then you can mirror that and send it to a potential network and security anomalies tool.
- So in that case, well, because we have set up a transit gateway, now any EC2 instance in any VPC can send their traffic directly into the network level balancer of the centralized VPC.
- So automatically the packets of the network are going to be forwarded, and then we can send them directly into an S3 bucket so that the logs could be analyzed later on by Athena.

##### Polished Architect Notes
- Transcript signals that so if you have VPC and multiple subnets and then multiple EC2 machines, of course, EC2 will have the ENIs and there could be other networking components like load balancers or NAT gateways, which also has ENIs inside your VPC VPC flow logs can then be sent to different systems and can be analyzed in different ways.
- Transcript signals that and in that case, you can use this action field which is like ACCEPT or REJECT and you can analyze your traffic flow and understand that whether this traffic was blocked because there was no security group or because there was no Network-ACL rule.
- Transcript signals that so just remember that because sometimes you try to ping to the EC2 instance and despite everything is all well setup, but still you are not able to ping because security group or network ACL doesn't have ICMP rule added in that.
- Transcript signals that this is ENI now there is a source address from where the packet was sent and then the destination address where the packet is going sIAMilarly the source port and the destination port and then network protocol.
- Transcript signals that that Lambda function is going to look at the payload of the alerts, and it's going to identify the EC2 instance and the corresponding ENI attached to that instance that needs VPC network traffic mirroring.
- Transcript signals that and then we can use something called CloudWatch contributor insights, for example, to find the top 10 IP addresses that contribute to the most amount of network on your VPC or on ENI or whatever you want.
- Transcript signals that and if we realize that there's a lot more SSH or RDP than usual, then trigger a CloudWatch alarm and send an alert into an Amazon SNS topic because something fishy may be happening on your network.
- Transcript signals that so to do so we're going to set up a Load Balancer and behind this Network Load Balancer, we're going to have an auto scaling group of EC2 instances that will have some security software on it.
- Transcript signals that so if you go to the public Subnet in which I have EC2 instance, and if you go to the Network-Access-Control-List, which is here, let's remove the outbound rule and let's remove this rule.
- Transcript signals that so VPC Traffic Mirroring basically captures the traffic which flows in and out of your VPC, and then you can mirror that and send it to a potential network and security anomalies tool.
- Transcript signals that so in that case, well, because we have set up a transit gateway, now any EC2 instance in any VPC can send their traffic directly into the network level balancer of the centralized VPC.
- Transcript signals that so automatically the packets of the network are going to be forwarded, and then we can send them directly into an S3 bucket so that the logs could be analyzed later on by Athena.

##### Architect Synthesis (Transcript-Derived)
- Treat Network Telemetry as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Log Analytics and Investigation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Monitoring as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so if you have VPC and multiple subnets and then multiple EC2 machines, of course, EC2 will have the ENIs and there could be other networking components like load balancers or NAT gateways, which also has ENIs inside your VPC VPC flow logs can then be sent to different systems and can be analyzed in different ways.
- Design implication: and in that case, you can use this action field which is like ACCEPT or REJECT and you can analyze your traffic flow and understand that whether this traffic was blocked because there was no security group or because there was no Network-ACL rule.
- Design implication: so just remember that because sometimes you try to ping to the EC2 instance and despite everything is all well setup, but still you are not able to ping because security group or network ACL doesn't have ICMP rule added in that.
- Design implication: this is ENI now there is a source address from where the packet was sent and then the destination address where the packet is going sIAMilarly the source port and the destination port and then network protocol.
- Design implication: that Lambda function is going to look at the payload of the alerts, and it's going to identify the EC2 instance and the corresponding ENI attached to that instance that needs VPC network traffic mirroring.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/048_VPC Traffic Mirroring.txt
- outputs/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/047_VPC Traffic Monitoring with VPC Flow logs.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/046_VPC Traffic Mirroring - Architectures.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/045_[SAA_SOA] VPC Traffic Mirroring.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/27_Networking - VPC/344_VPC Traffic Mirroring.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/27_Networking - VPC/337_VPC Flow Logs.txt
- Top concept clusters from transcript metadata:
- Network Telemetry
- Operational Monitoring
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 7
- Module-selected transcript files: 6
- Key insight candidates scanned (topic): 593
- Key insights inside selected files: 24
- Unique concept tags in selected files: 2

##### Transcript-Enriched Learning Notes
- So VPC Traffic Mirroring basically captures the traffic which flows in and out of your VPC, and then you can mirror that and send it to a potential network and security anomalies tool.
- So if you have VPC and multiple subnets and then multiple EC2 machines, of course, EC2 will have the ENIs and there could be other networking components like load balancers or NAT gateways, which also has ENIs inside your VPC VPC flow logs can then be sent to different systems and can be analyzed in different ways.
- And in that case, you can use this action field which is like ACCEPT or REJECT and you can analyze your traffic flow and understand that whether this traffic was blocked because there was no security group or because there was no Network-ACL rule.
- So just remember that because sometimes you try to ping to the EC2 instance and despite everything is all well setup, but still you are not able to ping because security group or network ACL doesn't have ICMP rule added in that.
- That Lambda function is going to look at the payload of the alerts, and it's going to identify the EC2 instance and the corresponding ENI attached to that instance that needs VPC network traffic mirroring.
- So to do so we're going to set up a Load Balancer and behind this Network Load Balancer, we're going to have an auto scaling group of EC2 instances that will have some security software on it.
- So in a sIAMple term, VPC flow logs allow you to capture the information about the IP traffic that is going in and out of your ENIs are elastic network interfaces.
- Typically in security group, all the outbound traffic is open, but if it's not, you have to make sure that it can go to the UDP-4789 of your Network Load Balancer.
- So the use cases for VPC traffic mirroring is going to be around content inspection, threat monitoring, or troubleshooting from a networking perspective, okay.
- And for allowing the ping in your security group and Network-Access-Control-List, you have to explicitly open the ports for all ICMP-IPv4 or IPv6.
- Finally, you can also have an architecture for VPC traffic mirroring that leverages a transit gateway between several accounts and several VPCs.
- Now, one more thing like sometimes it happens that your security group or Network-ACL blocks some traffic or say they do not allow the traffic.

##### Polished Architect Notes
- Transcript signals that so VPC Traffic Mirroring basically captures the traffic which flows in and out of your VPC, and then you can mirror that and send it to a potential network and security anomalies tool.
- Transcript signals that so if you have VPC and multiple subnets and then multiple EC2 machines, of course, EC2 will have the ENIs and there could be other networking components like load balancers or NAT gateways, which also has ENIs inside your VPC VPC flow logs can then be sent to different systems and can be analyzed in different ways.
- Transcript signals that and in that case, you can use this action field which is like ACCEPT or REJECT and you can analyze your traffic flow and understand that whether this traffic was blocked because there was no security group or because there was no Network-ACL rule.
- Transcript signals that so just remember that because sometimes you try to ping to the EC2 instance and despite everything is all well setup, but still you are not able to ping because security group or network ACL doesn't have ICMP rule added in that.
- Transcript signals that that Lambda function is going to look at the payload of the alerts, and it's going to identify the EC2 instance and the corresponding ENI attached to that instance that needs VPC network traffic mirroring.
- Transcript signals that so to do so we're going to set up a Load Balancer and behind this Network Load Balancer, we're going to have an auto scaling group of EC2 instances that will have some security software on it.
- Transcript signals that so in a sIAMple term, VPC flow logs allow you to capture the information about the IP traffic that is going in and out of your ENIs are elastic network interfaces.
- Transcript signals that typically in security group, all the outbound traffic is open, but if it's not, you have to make sure that it can go to the UDP-4789 of your Network Load Balancer.
- Transcript signals that so the use cases for VPC traffic mirroring is going to be around content inspection, threat monitoring, or troubleshooting from a networking perspective, okay.
- Transcript signals that and for allowing the ping in your security group and Network-Access-Control-List, you have to explicitly open the ports for all ICMP-IPv4 or IPv6.
- Transcript signals that finally, you can also have an architecture for VPC traffic mirroring that leverages a transit gateway between several accounts and several VPCs.
- Transcript signals that now, one more thing like sometimes it happens that your security group or Network-ACL blocks some traffic or say they do not allow the traffic.

##### Architect Synthesis (Transcript-Derived)
- Treat Network Telemetry as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Monitoring as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so VPC Traffic Mirroring basically captures the traffic which flows in and out of your VPC, and then you can mirror that and send it to a potential network and security anomalies tool.
- Design implication: so if you have VPC and multiple subnets and then multiple EC2 machines, of course, EC2 will have the ENIs and there could be other networking components like load balancers or NAT gateways, which also has ENIs inside your VPC VPC flow logs can then be sent to different systems and can be analyzed in different ways.
- Design implication: and in that case, you can use this action field which is like ACCEPT or REJECT and you can analyze your traffic flow and understand that whether this traffic was blocked because there was no security group or because there was no Network-ACL rule.
- Design implication: so just remember that because sometimes you try to ping to the EC2 instance and despite everything is all well setup, but still you are not able to ping because security group or network ACL doesn't have ICMP rule added in that.
- Design implication: that Lambda function is going to look at the payload of the alerts, and it's going to identify the EC2 instance and the corresponding ENI attached to that instance that needs VPC network traffic mirroring.

### Phase 2 - Core Services
- Amazon VPC Flow Logs should be understood in terms of request path, control plane, and operational boundary.
- Amazon EC2 should be understood in terms of request path, control plane, and operational boundary.
- Amazon RDS should be understood in terms of request path, control plane, and operational boundary.
- Elastic Load Balancing should be understood in terms of request path, control plane, and operational boundary.
- Amazon CloudWatch should be understood in terms of request path, control plane, and operational boundary.

### Phase 3 - Advanced Patterns
- Pattern emphasis: Audit Logging becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Distributed Tracing and Events becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Log Analytics and Investigation becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Network Telemetry becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Observability Operational Context becomes valuable when requirements move from feature use to system design discipline.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design network observability telemetry with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when network observability telemetry decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: So just remember that because sometimes you try to ping to the EC2 instance and despite everything is all well setup, but still you are not able to ping because security group or network ACL doesn't have ICMP rule added in that.
- Signal 2: Transcript signals that so just remember that because sometimes you try to ping to the EC2 instance and despite everything is all well setup, but still you are not able to ping because security group or network ACL doesn't have ICMP rule added in that.
- Signal 3: Design implication: so just remember that because sometimes you try to ping to the EC2 instance and despite everything is all well setup, but still you are not able to ping because security group or network ACL doesn't have ICMP rule added in that.
- Signal 4: Key Insights: For example, you know that when you use AWS services like elastic Load-Balancer or RDS databases or Amazon workspaces or NAT gateways, they also create the ENI into your VPC.
- Signal 5: Key Insights: So this is a default log format and we will also see this in console.
- Signal 6: Key Insights: So first you need to create corresponding Cloudwatch log groups and then you need to create an IAM role for VPC flow logs service to send it to the Cloudwatch.
- Signal 7: Key Insights: Now let me go to AWS console and show you these things, okay.
- Signal 8: Key Insights: So I'm into my cloudwatch console in Mumbai Region and in the logs, I already have this logs group and I had just created this log group, right?
- Signal 9: Key Insights: And then I just went here and I said, create the VPC flow logs and most of the settings as default just that you have to select the destination log group and the corresponding IAM role.
- Signal 10: Key Insights: So that's the setup I already did.

### Service-Specific Lab Paths
### Activity 1: Amazon VPC Lab for VPC Flow Logs, traffic mirroring, synthetic probes, and network visibility
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

### Activity 2: Amazon CloudWatch Lab for VPC Flow Logs, traffic mirroring, synthetic probes, and network visibility
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

### Activity 3: Amazon EC2 Lab for VPC Flow Logs, traffic mirroring, synthetic probes, and network visibility
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

### Activity 4: AWS Lambda Lab for VPC Flow Logs, traffic mirroring, synthetic probes, and network visibility
- AWS console path: AWS Console -> Lambda -> Functions
- Azure equivalent: Azure Functions
- GCP equivalent: Cloud Functions or Cloud Run
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> Lambda -> Functions.
3. Build: Create a hello-world function from blueprint.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Run a test event and inspect CloudWatch logs.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete function and related log group if needed.

### Quick Troubleshooting
- Access denied: verify role permissions or ask admin for least-privilege lab policy.
- Resource limit reached: pick another region or request quota increase.
- Unexpected charges: stop/delete resources and review cost explorer immediately.

## Cross-Cloud Thinking Mode

Use this lens to study VPC Flow Logs, traffic mirroring, synthetic probes, and network visibility in a cloud-agnostic way: focus on capability first, provider name second.

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
| AWS Lambda | AWS Lambda | Azure Functions | Cloud Functions or Cloud Run |

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

## Cross-Domain Referrals

These transcripts are relevant to this topic but are owned by another knowledge base and are referenced here to avoid duplication.

- outputs/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/254_NACL, Security Groups, VPC Flow Logs.txt (owned by AWS AI Knowledge Base)
- outputs/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/220_NACL, Security Groups, VPC Flow Logs.txt (owned by AWS AI Knowledge Base)

## Step 1 - Line-by-Line Extraction

Every non-empty line from every primary source transcript is preserved below with extraction fields.

### File: outputs/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/047_VPC Traffic Monitoring with VPC Flow logs.txt

Line 1:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon VPC Flow Logs
- Key Insights: Hello and welcome to this lecture, VPC traffic monitoring with VPC flow logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 2:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Now, in this section introduction lecture, we talked about various tools which you can use for traffic monitoring, troubleshooting and analysis.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: And out of those VPC flow logs is one of such IAMportant feature.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 4:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: So let's talk about what is VPC flow logs and then how to use it?
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 5:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: So in a sIAMple term, VPC flow logs allow you to capture the information about the IP traffic that is going in and out of your ENIs are elastic network interfaces.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 6:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: And these VPC flow logs you can enable at the VPC level at the Subnet level or individual ENI level, which means if you enable the flow logs at the VPC level, then the flow logs will be enabled for all the ENIs in that VPC.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 7:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: Now, what's the purpose of VPC flow logs?
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 8:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So typically it is used to monitor and troubleshoot any connectivity issues.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: For example, you are not able to reach to particular EC2 instance, which means all your connections request are rejected.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: Now, in that case, you can go and check the VPC flow logs and see which ENI is denying that traffic.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then of course, you can check the security group roles or NACL roles and fix that connectivity problem.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Another use case is to see if any malicious IPs are trying to access your IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And in that case, you can also perform analysis like this is my ENI or this is my IP address and show me how many requests has hit this IP address.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And if you know the malicious IPs, then you can also filter those results using that malicious IP as a source IP.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: So a lot of such analysis you can do once you capture this VPC flow logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And later in this lecture, we will see some of these scenarios.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Network Telemetry
- Services: Amazon EC2, Amazon VPC Flow Logs
- Key Insights: Now when we enable the VPC flow logs, they are not only enabled for the EC2 ENIs, but they are also enabled for the ENI which are created by AWS services.
- Hidden/Implicit Meaning: Constraint or limitation signal; Telemetry and visibility signal.

Line 18:
- Concepts: Observability Operational Context
- Services: Amazon RDS
- Key Insights: For example, you know that when you use AWS services like elastic Load-Balancer or RDS databases or Amazon workspaces or NAT gateways, they also create the ENI into your VPC.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So flow log will also capture the logs from these ENIs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 20:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: And finally, one IAMportant thing to know is that enabling the flow logs doesn't IAMpact your ENI's network performance.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So do not worry about that.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: OK.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: With that, let's see how to publish the VPC flow logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 24:
- Concepts: Network Telemetry
- Services: Amazon EC2, Amazon VPC Flow Logs, Elastic Load Balancing
- Key Insights: So if you have VPC and multiple subnets and then multiple EC2 machines, of course, EC2 will have the ENIs and there could be other networking components like load balancers or NAT gateways, which also has ENIs inside your VPC VPC flow logs can then be sent to different systems and can be analyzed in different ways.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 25:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Now, in this lecture, we will particularly focus on delivering the flow logs to the cloudwatch and then we will analyze that using the Cloudwatch logs insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 26:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: OK.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So when you enable the flow logs, then they have a particular format.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 28:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: Now that's called a default format of the VPC flow logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 29:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And that format looks something like this.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And we will shortly talk about this format.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But the default log format for the VPC flow log is version 2.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: But since then, AWS has launched new versions of VPC flow logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 33:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: So currently up to version 5 are supported and accordingly VPC flow logs can have different fields depending on which version of VPC flow log you are using.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this format, what you see here is the version 2 format.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: Now this is a sample flow log.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And if you see here there is a version number 2, then this is AWS account ID.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: This is ENI now there is a source address from where the packet was sent and then the destination address where the packet is going sIAMilarly the source port and the destination port and then network protocol.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 38:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you know that TCP is represented as number 6, then how many packets were sent how many bytes were sent the start tIAMe, the end tIAMe.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And the IAMportant thing here is this "action".
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 40:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So action is accept that means this packet was accepted by the ENI and finally the log status, which is OK, which means these logs have been captured in the destination.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 41:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is a default log format and we will also see this in console.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now VPC flow log format can also be customized.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And as I said, depending on which version of VPC flow log you are using, you can have additional fields.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 44:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So there are all these additional fields which you can use with custom VPC flow log format and there are more fields.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 45:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But I think these are the fields which are interesting to you.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 46:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And in the next slide, I will explain some of these fields.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 47:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the record will look something like this.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 48:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now here we are using the custom flow logs format.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 49:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: So this is not a default VPC flow logs format, but we have added additional fields.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 50:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So in here, if you see the version is number 5, because we are using the maxIAMum fields here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 51:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now additional field also supports the type of the packet.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 52:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it's IPv4 and then number of packets 14 and number of byte is this, then there will be AWS account id.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 53:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And additionally, you can also specify, I want to have the VPC ID as well as the Subnet id.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 54:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And along with that you can also include the instance ID.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 55:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then of course, you can have the ENI ID itself.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 56:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And additionally, you can have AWS Region, AWS availability zone.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 57:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And additionally, there are fields like sublocation type and sublocation ID.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 58:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now this represents the Amazon wavelength zone or outpost or local zone.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 59:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So if your ENI resides in any of these AWS locations, then these fields will be populated, then the action which is like whether this packet was accepted or rejected.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 60:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So here it is ACCEPT and then there are additional TCP flags.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 61:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now this is all about the TCP handshake and then you can refer AWS documentation what 19 means.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 62:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now additionally, there are these two fields which are packet source addr and packet destination addr.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 63:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now these are used to actually know the original packet IP address.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 64:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now this is because if you are having intermediate devices in the flow, for example, the NAT gateways, then you know that the packet source address changes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 65:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: But if you want to know the original IP from where the packet was originated, then you can use this packet source addr and same applies to the packet destination addr as well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 66:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Further, there is additional field called traffic path, which is used for the egress traffic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 67:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And in this case, it is an ingress traffic and that's where you see this field is not populated.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 68:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And finally, other IAMportant field is the traffic flow direction which tells you whether it was ingress traffic or egress traffic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 69:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now, in this case, it's an ingress traffic and finally, the log status, which is OK.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 70:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you can very well have your own custom log format and you can include as many fields as you want.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 71:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is just an example of one of such record.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 72:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, So I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 73:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch, Amazon VPC Flow Logs
- Key Insights: Now with that, let me quickly show you how to capture the VPC flow logs and how to see that in Cloudwatch logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 74:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch, Amazon VPC Flow Logs
- Key Insights: So for capturing the VPC flow logs, there are some prerequisites because you are going to send these logs to the Cloudwatch log groups.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 75:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch, Amazon VPC Flow Logs
- Key Insights: So first you need to create corresponding Cloudwatch log groups and then you need to create an IAM role for VPC flow logs service to send it to the Cloudwatch.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 76:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I have included this IAM role policy which you need to attach.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 77:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now let me go to AWS console and show you these things, okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 78:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So I'm into my cloudwatch console in Mumbai Region and in the logs, I already have this logs group and I had just created this log group, right?
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 79:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And as I said, you also need to have IAM role.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 80:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: So I had created this VPC flow logs role.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 81:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And if you see the policy, it allows to write to the Cloudwatch logs and the trust policy is for VPC flow log service.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 82:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: So these are the prerequisites before you enable the VPC flow logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 83:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And of course, then you have to just go to your VPC.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 84:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: Now, what I have already done is that I have created a VPC with one public Subnet and inside that I have launched a single EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 85:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: And then I just went here and I said, create the VPC flow logs and most of the settings as default just that you have to select the destination log group and the corresponding IAM role.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 86:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And that's where I have the VPC flow log created.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 87:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: Now let me show you the EC2 machine which I had launched and this machine has a web server and it has a public IP address.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 88:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So in order to generate some traffic, what I can do is I can just go here and just hit this web server over port 80.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 89:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And then this page appears that means traffic is going to my EC2 instance over port 80.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 90:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's the setup I already did.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 91:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And now we want to analyze these logs using cloudwatch logs insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 92:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So for that, let's go here and let's go to the logs insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 93:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Now logs insights provides you the custom query language which is native to Cloudwatch.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 94:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And if you know about the log monitoring tool like Splunk, it also uses similar language, but this is very powerful in the sense that it automatically detects your log record format.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 95:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then based on some deli- meter, it extracts automatically the fields from the logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 96:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And then you can do a lot of operations with this field, for example aggregation, sum or filtering all that is possible with this query language.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 97:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: And if you need some help, then you can just go here and then you can look at some sample queries, for example VPC flow log queries.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 98:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Likewise, right.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 99:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: OK.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 100:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the first thing that you need to do is to select the log group on which you want to run these queries.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 101:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So I'm selecting my log group and now this is a default query.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 102:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now, out of this, I don't want few things.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 103:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, I'm not interested in log streams.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 104:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch, Amazon VPC Flow Logs
- Key Insights: So for VPC flow logs for every ENI, the cloudwatch will create a separate log stream.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 105:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So if you're interested, you can query a particular log stream or it will query all the log streams.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 106:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: That means all the ENIs so let's just remove this and run this query.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 107:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: OK.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 108:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So if you see it shows the entire record.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 109:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it is similar to what we had seen earlier, the default format with 2 as the flow log version, the AWS account ID, the ENI ID and the source IP, the destination IP.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 110:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And this IP is EC2 private IP and this is my public IP.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 111:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So if you go to what is my IP address, it will show you that as IP address and that's where in the flow log you will see this IP.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 112:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: Now you can also see other IPs and probably this is someone else is trying to connect to my EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 113:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And that's where you see that.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 114:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this record is exactly similar to what we already saw and it has all these fields that we already discussed about.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 115:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So likewise, you can run many other queries and I leave it up to you to explore and run more queries.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 116:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: And for your reference, I have provided some sample queries as a text document along with this lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 117:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: OK.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 118:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So going back to our discussion.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 119:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: So we already saw how to create VPC flow logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 120:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: And these are sample queries that you can use.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 121:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: Now, one more thing like sometimes it happens that your security group or Network-ACL blocks some traffic or say they do not allow the traffic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 122:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: And in that case, you can use this action field which is like ACCEPT or REJECT and you can analyze your traffic flow and understand that whether this traffic was blocked because there was no security group or because there was no Network-ACL rule.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 123:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 124:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So for the incoming request, as you know, it first hits the NACL and from there it goes to the EC2.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 125:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So one scenario is if your inbound traffic is rejected, in that case, the reason could be either SG or NACL, right?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 126:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But if your inbound traffic was accepted, but the outbound was rejected.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 127:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then the problem is with NACL, that's because security groups are stateful, which means they automatically allow the return traffic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 128:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But NACL are stateless.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 129:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And that's where if the inbound packet was accepted, but the outbound was rejected, then it's because of the NACL rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 130:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And also the other way around for the outgoing request.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 131:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: If the outbound traffic is rejected, then the reason could be either SG or NACL.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 132:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But if the outbound traffic was accepted, but the returning inbound traffic was rejected, then again, the problem is with NACL.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 133:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I have included this scenario because we have seen question in the exam around this.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 134:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Also, it is worth if we just go to AWS console and try to simulate this scenario.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 135:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: Now, here we will create a custom VPC flow logs and then we will see what impact the NACL rules have or the security group rule have.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 136:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And for that, we will use this query which just filters the traffic for myIP as a source or destination address.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 137:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 138:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: So first thing let's create the new log group and let's call it VPC flow logs, custom format and rest of the settings as default.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 139:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: And now let's go to the VPC flow logs actions and say create a flow log.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 140:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: And let's call it VPC flow logs custom format.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 141:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And we want all three type of the traffic, whether accepted, rejected or all and the aggregation level as one minute.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 142:
- Concepts: Observability Operational Context
- Services: Amazon RDS
- Key Insights: Now, depending on this aggregation interval, you might have more records or less records.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 143:
- Concepts: Network Telemetry
- Services: Amazon RDS, Amazon VPC Flow Logs
- Key Insights: So as granular as you go, you will have more records in your VPC flow logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 144:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Now, as a destination, we are sending it to the Cloudwatch logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 145:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: And here we are going to select our custom format log group and the same flow log IAM role that we had created earlier.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 146:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now, the format is custom.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 147:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's see which fields are of our interest.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 148:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we need account ID, we need "action" AZ ID not interested bytes okay, source and destination address, start and end time.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 149:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Flow direction is important where it's ingress or egress instance id, interface id, log status number of packets.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 150:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now, here we are not dealing with AWS services.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 151:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it doesn't make sense to have this.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 152:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And also we don't have intermediate gateways.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 153:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I'm not selecting this packet source or destination addr protocol is important, Region we already know.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 154:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But let's select that source address, source port, start time, sub location IDs we don't want because we know that we are operating in Region.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 155:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Subnet ID makes sense.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 156:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Traffic path is important.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 157:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then type is IPv4 or IPv6, then version ID and the VPC ID.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 158:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: OK.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 159:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So all these are our fields and that's it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 160:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Let's create the flow logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 161:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 162:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So flow logs has been created and we have to wait maximum up to 10 minutes for these logs to be delivered.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 163:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now until then we can just hit some more traffic from my IP address to this web server.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 164:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And that's this EC2 instance, right?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 165:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's do that.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 166:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And let's go to the Cloudwatch logs again and let's go to the Cloudwatch logs insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 167:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And here this time, let's select our new log group.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 168:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now, it doesn't show up here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 169:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So sometimes you have to refresh.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 170:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's see.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 171:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Let's go to the Cloudwatch logs insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 172:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And here, let's see if we have this custom format.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 173:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: Yes, we have it and let's try to run our query.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 174:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So mostly it won't have any data as of now, which is expected because it takes up to 10 minutes for these logs to be delivered.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 175:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I'm pausing this video for almost 5 to 10 minutes and I'll come back here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 176:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: OK?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 177:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So it's already been five minutes and I have just changed the query a little where I have included the field names because otherwise there will be too many fields and they could be in different order.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 178:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So let's run this query and you can see that there is the result.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 179:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So it tells me what's the interface ID, source IP address, destination address, which is the EC2 instance IP address, then source port, destination port, flow direction, action and log status.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 180:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now, what we are really interested in here is where the source IP or the destination IP is my own IP address.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 181:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So let's say filter source addr equal to my IP address, which I can get from here or we can say dstaddr equal to my IP address.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 182:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And let's run this query again.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 183:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it will show you that I'm trying to hit to port 80 then it responds with the egress traffic on ephemeral port and both ingress and egress traffic is accepted because I am able to hit this web server right now.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 184:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Let's quickly do one thing.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 185:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: Let's go to the Network-Access-Control-List and then try to block the traffic through the NACL rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 186:
- Concepts: Network Telemetry
- Services: Amazon EC2
- Key Insights: So if you go to the public Subnet in which I have EC2 instance, and if you go to the Network-Access-Control-List, which is here, let's remove the outbound rule and let's remove this rule.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 187:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now what this means.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 188:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now the inbound traffic is allowed but the outbound traffic is not allowed, that means the return traffic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 189:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And hence now, if I just open a new window, then it shouldn't really work.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 190:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now you see this coming up because it had cashed the page.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 191:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But if I do this again, then you can see that it is not able to connect.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 192:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So with that, if we run the cloudwatch logs query again, then it should show us both the accept and the reject traffic.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry and visibility signal; Investigation and forensic signal.

Line 193:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But as you know, it will take some time.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 194:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I'm again pausing this video for maybe five minutes and then I'll come back.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 195:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: OK.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 196:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It's been almost three minutes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 197:
- Concepts: Observability Operational Context
- Services: Amazon RDS
- Key Insights: So let's try to run this again and OK, there are many records and OK, if you see this.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 198:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So this entry is like I'm hitting on this EC2 instance on port 80.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 199:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And then the next entry should be the response from the EC2 to my IP address.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 200:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this is a destination ephemeral port from where I had requested this connection.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 201:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: And it says the egress is rejected because as you know, the Network-ACL is blocking that traffic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 202:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is what we wanted to simulate.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 203:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 204:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's what we wanted to see.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 205:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I haven't really done the security group rule thing.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 206:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch, Amazon VPC Flow Logs
- Key Insights: But if you are interested, you can try that in your environment and just advise here if you are trying this exercise, then also, you know, disable the VPC flow logs because otherwise there will be a charge for Cloudwatch logs group and I will also do that after this lecture, but just be aware of that.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 207:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: OK?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 208:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: So just few more things about the flow logs limitation that VPC flow logs currently do not record the traffic for Amazon DNS server which runs on VPC base address + 2 IP address.
- Hidden/Implicit Meaning: Constraint or limitation signal; Telemetry and visibility signal.

Line 209:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And you already know about Amazon DNS server.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 210:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So these logs are not captured any logs, which is about the communication with EC2 metadata service or Time sync service is also not captured.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 211:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: The DHCP traffic is not captured and same with windows license activation server or mirror traffic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 212:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now, in the next lecture, we are going to see how to mirror the traffic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 213:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: Now, apart from the native tools like VPC flow log, you can also use traditional networking tools to capture the packets.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 214:
- Concepts: Distributed Tracing and Events
- Services: (none explicit)
- Key Insights: For example, you can use wireshark or tcpdump or you can use other tools like traceroute which shows you hop by hop the connection to the destination.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 215:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can use telnet or nslookup kind of tools for DNS resolution.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 216:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And simplest of all these to check the connectivity is the PING protocol which gives you the RTT that is round trip time and it uses the ICMP protocol for that.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 217:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now ICMP is not a TCP or a UDP protocol.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 218:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It is internet control message protocol.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 219:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: And for allowing the ping in your security group and Network-Access-Control-List, you have to explicitly open the ports for all ICMP-IPv4 or IPv6.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 220:
- Concepts: Network Telemetry
- Services: Amazon EC2
- Key Insights: So just remember that because sometimes you try to ping to the EC2 instance and despite everything is all well setup, but still you are not able to ping because security group or network ACL doesn't have ICMP rule added in that.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 221:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: OK.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 222:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: With that, we'll stop here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 223:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: So I hope you now understand what is VPC flow logs and how to enable VPC flow logs to capture the packet information.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

### File: outputs/AWS Speciality/advanced-networking-specialty/07_VPC traffic Monitoring, Troubleshooting & Analysis/048_VPC Traffic Mirroring.txt

Line 1:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Hi, and welcome to this lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: VPC Traffic Mirroring.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So in the last lecture we saw, monitoring your VPC traffic, right?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon S3
- Key Insights: Where traffic can be captured in a CloudWatch or S3, and then you can analyze this traffic for maybe any anomalies, or you want to see a certain pattern of the traffic, right?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But that happens typically in, I would say offline mode, or maybe you first capture the logs and then you do analysis.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 6:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: But in certain cases you want to do, you know, real-time monitoring of your traffic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And now, one way could be to have the IPS and IDS system in place and all the traffic should be going through that IDS-IPS system.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And from there, it is routed to your destination application host, right?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But again, it adds additional hops to your traffic, right?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: And it may degrade your latency or performance of overall network, right?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: There is a better way to do this, which called VPC Traffic Mirroring.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: As the word suggests, the mirroring.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Network Telemetry
- Services: AWS SAM
- Key Insights: That means whatever traffic flows in and out of your network, or particularly through ENI, the same traffic in real time can be mirrored to another target.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Network Telemetry, Operational Monitoring
- Services: (none explicit)
- Key Insights: And then you can run your network monitoring system on that target to see any malicious behavior into your traffic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: So that's the use case for this VPC Traffic Mirroring.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's talk shortly about this.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Network Telemetry, Operational Monitoring
- Services: VPC Traffic Mirroring
- Key Insights: This I haven't seen much coming into the exam, but as we are talking about monitoring the traffic, it is good to know about this traffic mirroring.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Network Telemetry
- Services: Amazon EC2
- Key Insights: So what it means is it copies your network traffic from ENI, of EC2 instances, of course.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And then it sends that traffic to another monitoring appliances, or content inspection or threat monitoring system, or maybe for troubleshooting, right?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is a relatively new feature.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And in the VPC console, you can see these options where you can define the Mirror Targets, Mirror Filters, and the Mirror Sessions.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And once these sessions are started, all the traffic, which hits the ENI is mirrored to another target, where you can monitor that.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Audit Logging, Network Telemetry
- Services: AWS Config, VPC Traffic Mirroring
- Key Insights: So the steps to configure the traffic mirroring is you create a mirror target first.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: Now target could be another EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Ultimately an ENI.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Network Telemetry
- Services: Elastic Load Balancing
- Key Insights: Or you can also send all the traffic to Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now those could be your target.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: Then you can define the filter.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: Now, what does filter means?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: You can actually filter which traffic you want to mirror, right?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Maybe from particular source IP or for particular destination IP, or from, for a particular source port or destination port.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: All these kind of filters you can apply so that you know, you don't inspect all the traffic all the time.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Only interested traffic or interested packets, you can mirror and then inspect, right?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 34:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And finally you create a mirror session once you have the mirror target and define the filter.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So if you look at this diagram. in the first subnet, I have a traffic source, which is EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And as you know, EC2 has ENI.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: And now I can define the traffic mirroring for that ENI as a source.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 38:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And the destination is another ENI, and which is attached to another traffic analyzer application.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I can now define the session where it captures all the traffic from this ENI to this ENI, right?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 40:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now here, ENI is a target.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 41:
- Concepts: Network Telemetry
- Services: Elastic Load Balancing
- Key Insights: As I said, the target could also be NLB, Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Observability Operational Context
- Services: AWS SAM, Elastic Load Balancing
- Key Insights: So source remains the same, but in target system now I have a NLB and then you have the traffic analyzer applications running on maybe a single or multiple instances.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Observability Operational Context
- Services: Elastic Load Balancing
- Key Insights: And this is how you can, you can capture the traffic through NLB as well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 44:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So either of the configuration is okay, depending on how much traffic you capture and how many applications you are running.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 45:
- Concepts: Observability Operational Context
- Services: Elastic Load Balancing
- Key Insights: You can have NLB or a single ENI.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 46:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: Now you can also define filters, as I said.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 47:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So, this is say a source EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 48:
- Concepts: Log Analytics and Investigation
- Services: Elastic Load Balancing
- Key Insights: Which is say, instance A traffic goes in and out of this instance, and while the traffic flows in and out, you can define the filter which captures this and then mirrors to ENI or NLB.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 49:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, the center block here represents the mirror target basically.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 50:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And then these filters, you can apply to multiple instances in your VPC.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 51:
- Concepts: Log Analytics and Investigation
- Services: Elastic Load Balancing
- Key Insights: And according to the filter, all the traffic from all those sources will be going to your target, ENI or NLB.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 52:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So, traffic filter parameters are like inbound or outbound.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 53:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can decide which traffic to capture or which traffic to mirror, whether inbound or outbound.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 54:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Whether accepted or rejected traffic has to be mirrored.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 55:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Which protocol?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 56:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it supports L4, layer 4 protocol only.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 57:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then a source port and destination port range that you want to capture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 58:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then, source CIDR block and destination CIDR block.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 59:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So you can very well define the filter using all these parameters and only interesting traffic you can mirror, right?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 60:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: To the target, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 61:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So with that, let's recap what we just learned, and this is important for your exam to remember.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 62:
- Concepts: Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: So VPC Traffic Mirroring basically captures the traffic which flows in and out of your VPC, and then you can mirror that and send it to a potential network and security anomalies tool.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 63:
- Concepts: Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: That's the purpose of VPC Traffic Mirroring.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 64:
- Concepts: Network Telemetry
- Services: Amazon EC2
- Key Insights: The source of the traffic is always ENI, Elastic Network Interface, which is attached to your EC2 instance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 65:
- Concepts: Network Telemetry
- Services: Amazon EC2, Elastic Load Balancing
- Key Insights: Now mirror target could be either another ENI, which is attached to EC2 instance, or it could be Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 66:
- Concepts: Network Telemetry
- Services: Elastic Load Balancing
- Key Insights: Now remember that in case of Network Load Balancer, the UDP port is 4789.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 67:
- Concepts: Network Telemetry
- Services: Elastic Load Balancing
- Key Insights: So on the Network Load Balancer site, this port should be open.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 68:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And also remember that on your port site, the target port should also be open.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 69:
- Concepts: Network Telemetry
- Services: Elastic Load Balancing
- Key Insights: Typically in security group, all the outbound traffic is open, but if it's not, you have to make sure that it can go to the UDP-4789 of your Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 70:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: Now, when the mirror traffic happens, you can also do the filtering.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 71:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And why we need filtering?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 72:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: As I said, because you want to only capture certain type of the traffic.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 73:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now that could be based on the source CIDR or destination CIDR.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 74:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It could be based on the protocols.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 75:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It could be based on the ports as well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 76:
- Concepts: Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: And you can define multiple rules for your traffic mirroring, and these rules are numbered.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 77:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And of course you would have multiple rules because maybe for UDP traffic you want to send those packets to a different destination where you can analyze that.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 78:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For UDP traffic you want to send it to a different destination for mirroring the traffic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 79:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Or in some cases, if the traffic is coming from particular source IP address, you want to again send it to a different target mirror, mirror target basically.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 80:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: That all you can define in the rules and whatever rules matches, according to the number, it would send the traffic to a respective target.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 81:
- Concepts: Network Telemetry
- Services: Elastic Load Balancing, VPC Traffic Mirroring
- Key Insights: Now, when you set up this traffic mirroring, you know that that there is a source ENI, there is a target ENI or Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 82:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: Now these two things could be either in the same VPC or they could also be in different VPCs.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 83:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: But again, the limitation is this VPC should be in the same region.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 84:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But then you can connect these VPCs using intra-Region VPC peering or intra-Region transit gateway.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 85:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: So if your target VPCs in different regions, that wouldn't be possible as of now, but otherwise there is no restriction that the traffic source and the mirror target should be in the same VPC.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 86:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: They can very well be across the VPCs.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 87:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Further, the Source and Destination ENIs, or you can say mirror source and mirror target could be in different AWS accounts as well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 88:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: Now, this is interesting because many a times maybe you are hosting your network packet analysis tool into your VPC and you want to give that as a service to your customers.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 89:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now, in that case your customers would have their VPC in their own AWS account, and then you can set up a VPC peering between these two VPCs.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 90:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Though these VPCs are owned by different entities, you can still monitor the traffic from your customers VPC.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 91:
- Concepts: Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: So that is kind of a use case you can also implement using the VPC Traffic Mirroring.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 92:
- Concepts: Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: So I think that's it, what you need to know about VPC Traffic Mirroring.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 93:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: And I haven't seen that, this coming much into the exam, but as we are learning everything about networking, it's good to know.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 94:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it about this lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 95:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: See you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 96:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/045_[SAA_SOA] VPC Traffic Mirroring.txt

Line 1:
- Concepts: Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: So here is a very cool security feature called the VPC, Traffic Mirroring.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: The idea is that we want to capture and inspect network traffic in our VPC, but to do it in a non-intrusive manner.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So to do so, we want to route the traffic to security appliances that we manage.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And to do so, we're going to capture the traffic, so we're going to define which are the source ENIs we want to capture the traffic from.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Network Telemetry
- Services: Elastic Load Balancing
- Key Insights: And then the targets, so where do we want to send that traffic to, our own ENIs or maybe a Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So to do an example.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Network Telemetry
- Services: Amazon EC2
- Key Insights: So we have an EC2 instance and we have an Elastic Network Interface, so an ENI attached to it and works really well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: Our EC2 instance is accessing the internet and is being accessed.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And so we get a lot of inbound and outbound traffic on the ENI to the EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But we wanted to analyze our traffic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Network Telemetry
- Services: Amazon EC2, Auto Scaling, Elastic Load Balancing
- Key Insights: So to do so we're going to set up a Load Balancer and behind this Network Load Balancer, we're going to have an auto scaling group of EC2 instances that will have some security software on it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now we want to be able to capture all the traffic from Source A without disrupting the functioning of Source A.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Log Analytics and Investigation, Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: So to do so, we're going to set up a VPC traffic mirroring, and optionally, we can have a filter, if you want you to get just some information, not everything.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Network Telemetry
- Services: Elastic Load Balancing, VPC Traffic Mirroring
- Key Insights: And with this traffic mirroring feature, all the traffic sent to the ENI or Source A is also going to be sent to our Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So our Source A, our EC2 instance is still working fine.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It still doesn't know what's happening, but on top of it, the traffic is being mirrored.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Network Telemetry
- Services: Elastic Load Balancing, VPC Traffic Mirroring
- Key Insights: So hence the name, Traffic Mirroring, into our Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And from there, we can analyze the traffic itself.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this applies not just to one source, but to multiple sources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Network Telemetry
- Services: Amazon EC2, Elastic Load Balancing
- Key Insights: So if you had a second EC2 instance with another ENI, yet again, we can mirror the traffic into our Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: We need to have the source and the targets to be in the same VPC, or it could be across different VPC, and if we have enabled VPC Peering.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Network Telemetry, Operational Monitoring
- Services: VPC Traffic Mirroring
- Key Insights: So the use cases for VPC traffic mirroring is going to be around content inspection, threat monitoring, or troubleshooting from a networking perspective, okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It's very hard to demonstrate this in a demo, but this diagram should be enough.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/046_VPC Traffic Mirroring - Architectures.txt

Line 1:
- Concepts: Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: So let's explore a couple of VPC traffic mirroring architectures.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Observability Operational Context
- Services: AWS SAM, Amazon EC2, Auto Scaling
- Key Insights: So in the first case, we can have the traffic distributed across EC2 instances in an ASG and that will be the same security appliance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: So we have our VPC with a public subnet, a private subnet, and then we've created another private subnet with an autoscaling group of EC2 instances that are security monitoring appliances.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: We put a network level balancer in front of them so that we can receive any kind of traffic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Network Telemetry
- Services: Amazon EC2, VPC Traffic Mirroring
- Key Insights: And then we're going to enable traffic mirroring from the EC2 instance in my public subnet and my private subnet.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And all that traffic is going to flow and scale because we're using an autoscaling group.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: And this is going to go to the same kind of security appliance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: We have another kind where we want to distribute traffic to multiple EC2 instances that have different security appliances.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Operational Monitoring
- Services: AWS SAM, Amazon EC2
- Key Insights: So in this case, we have the same EC2 instances we want to monitor but then we're going to, in a private subnet, create different kind of EC2 instances based on their function.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So different partner solutions for security.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: In this case, what we need to do is to do traffic mirroring into what we call a Cloud Packet Broker.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It's a third party appliance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this allows you to actually redirect the correct traffic to the correct security appliance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's a different architecture model.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Now, if you want to go distributed you can have two VPCs, and in each VPC you'll have a different monitoring appliance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: So in this instance, the EC2 instance A is monitored by the Appliance 1 and the EC2 instance B is monitored by the Appliance 2.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: You can also go into a different kind of setup where you have one monitoring appliance in one VPC and then by establishing VPC peering, you can have instance D and instance E directly mirror traffic into the monitoring Appliance number 3.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: There's also a way to automate VPC traffic mirroring.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So let's take an example of GuardDuty and GuardDuty has found an alert on one of our EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Distributed Tracing and Events
- Services: AWS Lambda, Amazon EventBridge
- Key Insights: It's going to pass on that finding to Amazon EventBridge, and from EventBridge, we're going to invoke a Lambda function.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 21:
- Concepts: Network Telemetry
- Services: AWS Lambda, Amazon EC2, VPC Traffic Mirroring
- Key Insights: That Lambda function is going to look at the payload of the alerts, and it's going to identify the EC2 instance and the corresponding ENI attached to that instance that needs VPC network traffic mirroring.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Operational Monitoring
- Services: AWS Lambda
- Key Insights: So that instance is in my VPC, but first we need to make sure from the Lambda function that we launch a virtual monitoring appliance to receive that mirror traffic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Network Telemetry
- Services: Amazon EC2, VPC Traffic Mirroring
- Key Insights: So we launch it and then we enable VPC traffic mirroring on my EC2 instance that was detected by GuardDuty.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Log Analytics and Investigation, Network Telemetry
- Services: Amazon Athena, Amazon S3
- Key Insights: So automatically the packets of the network are going to be forwarded, and then we can send them directly into an S3 bucket so that the logs could be analyzed later on by Athena.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And all of this is automated, so hopefully that opens up your mind.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: Finally, you can also have an architecture for VPC traffic mirroring that leverages a transit gateway between several accounts and several VPCs.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: But the idea is that you want to have a centralized VPC where you'll have all your security appliances and monitoring.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Network Telemetry
- Services: Amazon EC2
- Key Insights: So in that case, well, because we have set up a transit gateway, now any EC2 instance in any VPC can send their traffic directly into the network level balancer of the centralized VPC.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this works great and this scales great, but you will have higher data transfer cost because everything goes through a transit gateway.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/27_Networking - VPC/337_VPC Flow Logs.txt

Line 1:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: So now, let's talk about VPC Flow Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: VPP flow logs allow you to capture information from IP traffic going into your interfaces.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 3:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So that could be at the VPC level, the subnet level, or the elastic network interface, ENI level.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we have three kinds of flow logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 5:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: They're very helpful to monitor and troubleshoot connectivity issues happening within your VPC.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon Data Firehose, Amazon Kinesis, Amazon RDS, Amazon Redshift, Amazon S3, Elastic Load Balancing
- Key Insights: So these flow logs can be sent to Amazon S3, CloudWatch Logs, and Kinesis Data Firehose, and they will capture information for also AWS managed interfaces such as ELB, RDS, ElasticCache, Redshift, Workspaces, your net gateway, your transit gateway, and so on.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is what a VPC flow log looks like.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So there is a format associated with it, but there is a version, account ID, interface ID, source address, destination address, source port, destination port, protocol packets by start and action and log status.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So this is metadata about the network packets going into your VPC.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And you don't need to remember this at a high-level, right?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But let's have a look at what information we can get out of these flow logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the source address and the destination address help identify problematic IP.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This is where you see if an IP is repeatedly being denied, maybe there is something wrong with that IP, or maybe you're being attacked by a specific IP, source port and destination port helps you identify the probiotic ports.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Action is going to be either accept or reject.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so it's going to say whether or not it's a success or failure at the SG or NACL level.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And we'll see this in the very next slide.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so this can be used the VPC logs to do analytics on usage patterns or detect manage behavior, port scans, and so on.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 18:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: Now, to query these flow logs, you have two ways of doing it.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 19:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon Athena, Amazon CloudWatch, Amazon S3
- Key Insights: The best way is to do Athena on S3, or if you wanted to do a streaming analysis, you could use CloudWatch logs insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 20:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So here are some examples that you can have a look on your own time for flow logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So how do we use flow logs to troubleshoot security group and NACL issues?
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Well, we look at the action field.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at the typical incoming request for your NACL and your subnet.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So remember, your NACL are stateless and your security groups are stateful.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So what happens?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: Well, if we get an inbound reject, so we see that the inbound request from from the outside to our EC2 instance is rejected.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: That can means that either from this graph, the NACL is refusing the request or the security group is refusing the request.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this makes sense, right?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But if we have a inbound accept and an outbound reject, it can only mean a NACL issue.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Or because your security group is stateful.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And if the inbound is allowed because of the accept, automatically the outbound will be allowed thanks to the statefulness of your security group.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So for outgoing request, similar analysis, right?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This is the diagram we know already.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so if you get an outbound reject, then you have a NACL or a security group issue.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But if you get an outbound accept and inbound reject, then it must mean a NACL issue.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 37:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch, Amazon VPC Flow Logs
- Key Insights: So let's have a look at a few architectures for your VPC flow logs so they can flow into CloudWatch logs as we know.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 38:
- Concepts: Log Analytics and Investigation, Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And then we can use something called CloudWatch contributor insights, for example, to find the top 10 IP addresses that contribute to the most amount of network on your VPC or on ENI or whatever you want.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 39:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch, Amazon VPC Flow Logs
- Key Insights: You can also use VPC flow logs to send them again into CloudWatch logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 40:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: Here, we can set up a metric filter to look for example for the SSH or the RTP protocols.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 41:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And if we realize that there's a lot more SSH or RDP than usual, then trigger a CloudWatch alarm and send an alert into an Amazon SNS topic because something fishy may be happening on your network.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 42:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Or we can use a VPC flow log.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Log Analytics and Investigation, Network Telemetry
- Services: Amazon Athena, Amazon S3, Amazon VPC Flow Logs
- Key Insights: And then we send everything into an S3 bucket for storage, and we use Amazon Athena to analyze the VPC flow logs with SQL.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 44:
- Concepts: Observability Operational Context
- Services: Amazon QuickSight
- Key Insights: And we can even visualize that with Amazon QuickSight.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 45:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: Now a little bit of security, so you need permissions for VPC flow logs to work.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 46:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch, Amazon VPC Flow Logs
- Key Insights: So there is an IAM service role associated with the VPC flow logs service, and it must have the required permissions to publish logs to CloudWatch Logs.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Telemetry and visibility signal.

Line 47:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So to do so, it needs the logs, create log group, logs create log stream or logs put log events permissions, and then these permissions together will allow the VPC for log service through its IAM role to send logs into CloudWatch logs without any errors.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 48:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 49:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/27_Networking - VPC/338_VPC Flow Logs Hands On + Athena.txt

Line 1:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: Okay, so now we're going to practice VPC flow logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And to do so well, we'll go into our demo VPC under Flow Logs and we can create a flow log.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we have a few types of flow logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 4:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: So I'll call this one DemoS3FlowLog.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And we have a filter, do we want the accept type, reject type or all kind of traffic?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So if you're trying to debug why some traffic is not going through, maybe reject is more relevant.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Otherwise, all or accept are good as well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The maximum aggregation interval.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So how long you need to wait to aggregate.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And you can look at the info.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon RDS, Amazon S3
- Key Insights: So you can optionally specify a one minute aggregation, but if you do so then there's gonna be more records being created, because it's possible that you have lots of records getting created over time and obviously every one minute written to S3 or CloudWatch Logs can be very expensive.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's just do one minute just for the sake of the demo to go quicker.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But 10 minutes is usually a better option if you're looking at it, especially after a little bit of time.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So a few options.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon S3
- Key Insights: We can send the destination to CloudWatch Logs And we need to specify a log group, we need to we can also send it to an Amazon S3 bucket.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 16:
- Concepts: Observability Operational Context
- Services: AWS SAM, Amazon Data Firehose, Amazon Kinesis, Amazon S3
- Key Insights: We need to specify the S3 bucket ARN or we can send it to Kinesis Data Firehose in the same account or in a different account.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: But we'll use Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: So to do so, I'm going to go into the S3 service in here and I will create a bucket and create demo-stephane-vpc-flow-logs-v2, okay?
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 19:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: In the same region where my VPC is obviously.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then I will create this bucket.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now view the details of the bucket and now we need to get the bucket ARN.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So to do so, here it is I can just copy it from the Properties.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's paste this in.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And as we can see, a resource-based policy will be created for you and attached to the target bucket.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: So bucket policy will be created for us automatically so that the VPC service can send data into our S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now the format looks like this.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This is the default format of AWS.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And next I will click on Create Flow Log.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this first flow log has been created, perfect.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I will go ahead and create a second flow log now.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I'll create flow log.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And this one is going to be DemoFlowLog CloudWatch Logs all kind of traffic, one minute interval, to CloudWatch logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 33:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And we need to create a log group and an IAM role.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's do both of these things.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So to do so when you click on Set Up Permissions so let's create a role.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we are going to create a role this is a custom trust policy.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And in here for principle, just go to the new line.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 38:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You're going to enter Service in between quotes, then colon and then Service is vpc-flow-logs.amazonaws.com.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 39:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So make sure you have this in between quotes as well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 40:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: So this is going to say that this role can be assumed by VPC flow logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 41:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Click on Next.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Now for permissions policy we need CloudWatch Logs full access.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 43:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So we're going to have this one CloudWatch Log full access which is enough.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 44:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then click on Next.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 45:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this role name is going to be flowlogsrole.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 46:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then create this role.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 47:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And now this role is created.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 48:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So if I refresh this and look for flow log roles, here we go.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 49:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It is created.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 50:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And now we need a log group.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 51:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So let's go into the CloudWatch Logs console.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 52:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's click on it here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 53:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And under Logs, Log Groups, I'm going to create a log group.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 54:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I'll call it VPCFlowLogs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 55:
- Concepts: Retention and Forensics
- Services: (none explicit)
- Key Insights: And I will set the retention to one day and click on Create, click on this log group here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 56:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now refresh this and the VPCFlowLogs is appearing.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 57:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 58:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now let's create this flow log.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 59:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And yet again, so now we have two flow logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 60:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon S3
- Key Insights: One flowing into Amazon S3 and one flowing into CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 61:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: So into Amazon S3 under my Objects, I can refresh this and as we can see some AWSLogs have already been created.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 62:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: I can click on it, look at the VPC flow logs for eu-central-1.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 63:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: And then we have a timestamp, and we have here the VPC flow logs available to us.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 64:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So now let's go into the CloudWatch Logs and refresh this and have two log streams.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 65:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And these log streams correspond to the enis within my accounts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 66:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So if we ever a look at the eni of my BastionHost, this one, and we have a look at the eni number.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 67:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So we go under Networking, and what I'm going to do is put this up a little bit and look for the eni id.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 68:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the eni id is 0835.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 69:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's go into here and look for 0835, this one, perfect.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 70:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So this is showing us the kind of traffic that is happening onto my EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 71:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And if you look at it, well, it seems that some people are trying to access my EC2 instance, but it's getting rejected.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 72:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So this is the version, this is like all these fields, okay the eni id and this IP address, which is the public IP address is trying to access my EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 73:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this is really like this kind of attackers were attacking your instance and just scanning the web for holes and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 74:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you're gonna have a lot of this kind of traffic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 75:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And if I wanted to get some defense, I could for example, if this IP address was annoying me too much, I could block it at the that code level, for example and not have this traffic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 76:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But as we can see, a lot of traffic is appearing in here and it's all Reject.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 77:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: But if I were to do some activity on my S3 instance and connect to Google for example, we would see some traffic with Accept as well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 78:
- Concepts: Observability Operational Context
- Services: AWS SAM, Amazon S3
- Key Insights: And the same kind of data is going to appear on Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 79:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So if I go here, you will have a lot of data, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 80:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So you use CloudWatch Logs, if you want to have some kind of metrics filter to do some real-time analysis in case you're being attacked and a lot of traffic is being rejected and so on.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 81:
- Concepts: Log Analytics and Investigation
- Services: Amazon Athena, Amazon S3
- Key Insights: So this is very helpful and you'll use Amazon S3 if you wanted to do some more bigger analysis for example, using Athena.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 82:
- Concepts: Log Analytics and Investigation
- Services: Amazon Athena, Amazon S3
- Key Insights: So let's go ahead and practice using Athena to query this data into my S3 bucket.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 83:
- Concepts: Log Analytics and Investigation
- Services: Amazon Athena, Amazon S3
- Key Insights: So in Athena, what I'm going to do is to first set up a query result location in Amazon S3.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 84:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: So I'm going to click on New Settings, Manage and then I need to specify an S3 bucket where I'm going to store my results.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 85:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: So back into Amazon S3 what I'm going to do is just quickly create an S3 bucket, because this wasn't set up for this account.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 86:
- Concepts: Log Analytics and Investigation
- Services: Amazon Athena
- Key Insights: So I call this one demo-athena-stephane-v2, and this should work.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 87:
- Concepts: Log Analytics and Investigation
- Services: Amazon Athena, Amazon S3
- Key Insights: Now let's click on Create these buckets, View Details, and I can just use this S3 bucket, so Properties, I will copy the ARN, back into Athena and then click on Save.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 88:
- Concepts: Log Analytics and Investigation
- Services: Amazon Athena
- Key Insights: So I need to just do slash and then Athena.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 89:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: And then something like, ah, S3://, here we go.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 90:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, this is good.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 91:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's click on Save.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 92:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And now we have this query location being saved and I need to go ahead and start creating a database and then create some data.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 93:
- Concepts: Log Analytics and Investigation, Network Telemetry
- Services: Amazon Athena, Amazon VPC Flow Logs
- Key Insights: So what I need to do is to go in here and I will type AWS VPC flow logs Athena and this is going to take me into a tutorial on how to do it.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 94:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So to do so, we need to create a table.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 95:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this whole statement right here shows you how.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 96:
- Concepts: Log Analytics and Investigation
- Services: Amazon Athena
- Key Insights: So let's go ahead and paste this in my Athena UI.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 97:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So here we go.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 98:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And we need to specify where the data is.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 99:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the log bucket, the prefixed logs and then account id VBC flow logs and region code.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 100:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's find it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 101:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's go back in here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 102:
- Concepts: Log Analytics and Investigation
- Services: Amazon Athena
- Key Insights: This is my Athena bucket.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 103:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: No, this is my VPC flow logs bucket.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 104:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Here we go.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 105:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's go to the top of it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 106:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Just to go back.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 107:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: So logs, account id, VPC flow logs, region.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 108:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, we got it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 109:
- Concepts: Log Analytics and Investigation
- Services: Amazon Athena, Amazon S3
- Key Insights: Now we're going to copy this S3 URI directly back into Athena and I'm going to paste this in.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 110:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, perfect.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 111:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And let's run this statement.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 112:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this completed, and now we have a VPC flow log table in here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 113:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, and it is partitioned.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 114:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we can see we have all the information in here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 115:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now the second thing we need to do is to run another statement.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 116:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's go here and find this alter table, to create partitions to read this data.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 117:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's copy this, paste this in.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 118:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And again, we need to specify a date and as well as the entire replacement for month, year, and day.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 119:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's go ahead and do this.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 120:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: So back into Amazon S3, into my Objects I will click, click and click, go back to Properties and paste this, copy and paste this in.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 121:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 122:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then we need to add a partition.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 123:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So 2021-10-06.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 124:
- Concepts: Observability Operational Context
- Services: AWS Glue
- Key Insights: And this is quite manual, but Glue can help with automating this.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 125:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now let's run this statement.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 126:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And the statement was successfully completed.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 127:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So now we have added one partition into our table.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 128:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And then finally we can query the flow logs just by doing a select.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 129:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's do this to find all the reject traffic and then click on Run.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 130:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this is worked.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 131:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And now we have 46 results and we can have a look.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 132:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So day, date, interface id, source address, action reject, protocol 6.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 133:
- Concepts: Log Analytics and Investigation
- Services: Amazon Athena, Amazon Lex
- Key Insights: So we can get a lot of information from Athena and we can start doing some complex queries to try to group for example, by IP addresses, see who is attacking us the most where we're attacked the most, and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 134:
- Concepts: Observability Operational Context
- Services: AWS Batch
- Key Insights: So this could be quite helpful for doing some batch analysis, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 135:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: But that's it, we've seen how to set VPC flow logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 136:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: We send to CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 137:
- Concepts: Log Analytics and Investigation
- Services: Amazon Athena, Amazon S3
- Key Insights: And to Amazon S3, we've used Athena to query these logs in Amazon S3.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 138:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So very complete demo.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 139:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And what I'm going to do now is just disable all these logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 140:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I'm going to delete them, just not to run any ongoing cost.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 141:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 142:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/27_Networking - VPC/344_VPC Traffic Mirroring.txt

Line 1:
- Concepts: Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: So here is a very cool security feature called the VPC, Traffic Mirroring.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: The idea is that we want to capture and inspect network traffic in our VPC, but to do it in a non-intrusive manner.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So to do so, we want to route the traffic to security appliances that we manage.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And to do so, we're going to capture the traffic, so we're going to define which are the source ENIs we want to capture the traffic from.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Network Telemetry
- Services: Elastic Load Balancing
- Key Insights: And then the targets, so where do we want to send that traffic to, our own ENIs or maybe a Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So to do an example.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Network Telemetry
- Services: Amazon EC2
- Key Insights: So we have an EC2 instance and we have an Elastic Network Interface, so an ENI attached to it and works really well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: Our EC2 instance is accessing the internet and is being accessed.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And so we get a lot of inbound and outbound traffic on the ENI to the EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But we wanted to analyze our traffic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Network Telemetry
- Services: Amazon EC2, Auto Scaling, Elastic Load Balancing
- Key Insights: So to do so we're going to set up a Load Balancer and behind this Network Load Balancer, we're going to have an auto scaling group of EC2 instances that will have some security software on it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now we want to be able to capture all the traffic from Source A without disrupting the functioning of Source A.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Log Analytics and Investigation, Network Telemetry
- Services: VPC Traffic Mirroring
- Key Insights: So to do so, we're going to set up a VPC traffic mirroring, and optionally, we can have a filter, if you want you to get just some information, not everything.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Network Telemetry
- Services: Elastic Load Balancing, VPC Traffic Mirroring
- Key Insights: And with this traffic mirroring feature, all the traffic sent to the ENI or Source A is also going to be sent to our Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So our Source A, our EC2 instance is still working fine.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It still doesn't know what's happening, but on top of it, the traffic is being mirrored.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Network Telemetry
- Services: Elastic Load Balancing, VPC Traffic Mirroring
- Key Insights: So hence the name, Traffic Mirroring, into our Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And from there, we can analyze the traffic itself.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this applies not just to one source, but to multiple sources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Network Telemetry
- Services: Amazon EC2, Elastic Load Balancing
- Key Insights: So if you had a second EC2 instance with another ENI, yet again, we can mirror the traffic into our Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: We need to have the source and the targets to be in the same VPC, or it could be across different VPC, and if we have enabled VPC Peering.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Network Telemetry, Operational Monitoring
- Services: VPC Traffic Mirroring
- Key Insights: So the use cases for VPC traffic mirroring is going to be around content inspection, threat monitoring, or troubleshooting from a networking perspective, okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It's very hard to demonstrate this in a demo, but this diagram should be enough.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

## Step 2 - Consolidation

### 1. Concepts List
- Audit Logging
- Distributed Tracing and Events
- Log Analytics and Investigation
- Network Telemetry
- Observability Operational Context
- Operational Monitoring
- Retention and Forensics

### 2. Services List
- AWS Batch
- AWS Config
- AWS Glue
- AWS Lambda
- AWS SAM
- Amazon Athena
- Amazon CloudWatch
- Amazon Data Firehose
- Amazon EC2
- Amazon EventBridge
- Amazon Kinesis
- Amazon Lex
- Amazon QuickSight
- Amazon RDS
- Amazon Redshift
- Amazon S3
- Amazon VPC Flow Logs
- Auto Scaling
- Elastic Load Balancing
- VPC Traffic Mirroring

### 3. Features List
- athena
- cloudwatch
- config
- eventbridge
- flow logs
- logs
- metrics
- traffic mirroring

### 4. Use Cases
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:9: For example, you are not able to reach to particular EC2 instance, which means all your connections request are rejected.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:12: Another use case is to see if any malicious IPs are trying to access your IP addresses.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:17: Now when we enable the VPC flow logs, they are not only enabled for the EC2 ENIs, but they are also enabled for the ENI which are created by AWS services.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:18: For example, you know that when you use AWS services like elastic Load-Balancer or RDS databases or Amazon workspaces or NAT gateways, they also create the ENI into your VPC.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:27: So when you enable the flow logs, then they have a particular format.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:64: Now this is because if you are having intermediate devices in the flow, for example, the NAT gateways, then you know that the packet source address changes.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:96: And then you can do a lot of operations with this field, for example aggregation, sum or filtering all that is possible with this query language.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:97: And if you need some help, then you can just go here and then you can look at some sample queries, for example VPC flow log queries.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:103: For example, I'm not interested in log streams.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:214: For example, you can use wireshark or tcpdump or you can use other tools like traceroute which shows you hop by hop the connection to the destination.
- 048_VPC Traffic Mirroring.txt:15: So that's the use case for this VPC Traffic Mirroring.
- 048_VPC Traffic Mirroring.txt:70: Now, when the mirror traffic happens, you can also do the filtering.
- 048_VPC Traffic Mirroring.txt:81: Now, when you set up this traffic mirroring, you know that that there is a source ENI, there is a target ENI or Network Load Balancer.
- 048_VPC Traffic Mirroring.txt:91: So that is kind of a use case you can also implement using the VPC Traffic Mirroring.
- 045_[SAA_SOA] VPC Traffic Mirroring.txt:3: So to do so, we want to route the traffic to security appliances that we manage.
- 045_[SAA_SOA] VPC Traffic Mirroring.txt:23: So the use cases for VPC traffic mirroring is going to be around content inspection, threat monitoring, or troubleshooting from a networking perspective, okay.
- 337_VPC Flow Logs.txt:38: And then we can use something called CloudWatch contributor insights, for example, to find the top 10 IP addresses that contribute to the most amount of network on your VPC or on ENI or whatever you want.
- 337_VPC Flow Logs.txt:40: Here, we can set up a metric filter to look for example for the SSH or the RTP protocols.
- 338_VPC Flow Logs Hands On + Athena.txt:35: So to do so when you click on Set Up Permissions so let's create a role.
- 338_VPC Flow Logs Hands On + Athena.txt:75: And if I wanted to get some defense, I could for example, if this IP address was annoying me too much, I could block it at the that code level, for example and not have this traffic.
- 338_VPC Flow Logs Hands On + Athena.txt:77: But if I were to do some activity on my S3 instance and connect to Google for example, we would see some traffic with Accept as well.
- 338_VPC Flow Logs Hands On + Athena.txt:81: So this is very helpful and you'll use Amazon S3 if you wanted to do some more bigger analysis for example, using Athena.
- 338_VPC Flow Logs Hands On + Athena.txt:133: So we can get a lot of information from Athena and we can start doing some complex queries to try to group for example, by IP addresses, see who is attacking us the most where we're attacked the most, and so on.
- 344_VPC Traffic Mirroring.txt:3: So to do so, we want to route the traffic to security appliances that we manage.
- 344_VPC Traffic Mirroring.txt:23: So the use cases for VPC traffic mirroring is going to be around content inspection, threat monitoring, or troubleshooting from a networking perspective, okay.

### 5. Constraints / Limitations
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:17: Now when we enable the VPC flow logs, they are not only enabled for the EC2 ENIs, but they are also enabled for the ENI which are created by AWS services.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:189: And hence now, if I just open a new window, then it shouldn't really work.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:192: So with that, if we run the cloudwatch logs query again, then it should show us both the accept and the reject traffic.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:199: And then the next entry should be the response from the EC2 to my IP address.
- 047_VPC Traffic Monitoring with VPC Flow logs.txt:208: So just few more things about the flow logs limitation that VPC flow logs currently do not record the traffic for Amazon DNS server which runs on VPC base address + 2 IP address.
- 048_VPC Traffic Mirroring.txt:7: And now, one way could be to have the IPS and IDS system in place and all the traffic should be going through that IDS-IPS system.
- 048_VPC Traffic Mirroring.txt:33: Only interested traffic or interested packets, you can mirror and then inspect, right?
- 048_VPC Traffic Mirroring.txt:56: So it supports L4, layer 4 protocol only.
- 048_VPC Traffic Mirroring.txt:59: So you can very well define the filter using all these parameters and only interesting traffic you can mirror, right?
- 048_VPC Traffic Mirroring.txt:67: So on the Network Load Balancer site, this port should be open.
- 048_VPC Traffic Mirroring.txt:68: And also remember that on your port site, the target port should also be open.
- 048_VPC Traffic Mirroring.txt:72: As I said, because you want to only capture certain type of the traffic.
- 048_VPC Traffic Mirroring.txt:83: But again, the limitation is this VPC should be in the same region.
- 048_VPC Traffic Mirroring.txt:85: So if your target VPCs in different regions, that wouldn't be possible as of now, but otherwise there is no restriction that the traffic source and the mirror target should be in the same VPC.
- 045_[SAA_SOA] VPC Traffic Mirroring.txt:24: It's very hard to demonstrate this in a demo, but this diagram should be enough.
- 337_VPC Flow Logs.txt:29: But if we have a inbound accept and an outbound reject, it can only mean a NACL issue.
- 337_VPC Flow Logs.txt:36: But if you get an outbound accept and inbound reject, then it must mean a NACL issue.
- 337_VPC Flow Logs.txt:46: So there is an IAM service role associated with the VPC flow logs service, and it must have the required permissions to publish logs to CloudWatch Logs.
- 338_VPC Flow Logs Hands On + Athena.txt:86: So I call this one demo-athena-stephane-v2, and this should work.
- 344_VPC Traffic Mirroring.txt:24: It's very hard to demonstrate this in a demo, but this diagram should be enough.

### 6. Patterns / Architectures
- 048_VPC Traffic Mirroring.txt:4: Where traffic can be captured in a CloudWatch or S3, and then you can analyze this traffic for maybe any anomalies, or you want to see a certain pattern of the traffic, right?
- 046_VPC Traffic Mirroring - Architectures.txt:1: So let's explore a couple of VPC traffic mirroring architectures.
- 046_VPC Traffic Mirroring - Architectures.txt:14: So that's a different architecture model.
- 046_VPC Traffic Mirroring - Architectures.txt:26: Finally, you can also have an architecture for VPC traffic mirroring that leverages a transit gateway between several accounts and several VPCs.
- 337_VPC Flow Logs.txt:17: And so this can be used the VPC logs to do analytics on usage patterns or detect manage behavior, port scans, and so on.
- 337_VPC Flow Logs.txt:37: So let's have a look at a few architectures for your VPC flow logs so they can flow into CloudWatch logs as we know.

## Step 3 - Deep Expansion (Observability Concepts)

### Core Services in This Topic
- AWS Batch: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Config: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Glue: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Lambda: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS SAM: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Athena: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon CloudWatch: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Data Firehose: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EC2: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EventBridge: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.

### Architect-Level Concept Expansion
- Audit Logging: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Distributed Tracing and Events: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Log Analytics and Investigation: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Network Telemetry: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Observability Operational Context: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Operational Monitoring: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Retention and Forensics: treat this as a design lever that changes topology, risk posture, or operational workflow.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Metrics and dashboards | CloudWatch | Azure Monitor | Cloud Monitoring |
| Audit trail and config state | CloudTrail / Config | Activity Log / Resource Graph / Policy | Cloud Audit Logs / Asset Inventory / Config Validator |
| Tracing | X-Ray / OpenTelemetry on AWS | Application Insights / Azure Monitor OpenTelemetry | Cloud Trace / OpenTelemetry |
| Log analytics | CloudWatch Logs Insights / Athena / OpenSearch | Log Analytics / Data Explorer / Sentinel | Cloud Logging / BigQuery / Chronicle patterns |
| Event-driven automation | EventBridge | Event Grid / Logic Apps | Eventarc / Pub/Sub / Workflows |
| Network telemetry | VPC Flow Logs / Traffic Mirroring / synthetics | NSG Flow Logs / Connection Monitor | VPC Flow Logs / Packet Mirroring / Network Intelligence |

### Trade-offs and Decision Notes
- Observability Knowledge Base is strongest when design decisions are expressed as control objectives rather than vendor-only terminology.
- Cross-cloud portability improves when service choice, failure behavior, and governance model are documented together.
- Cloud-native implementations should still preserve comparable intent across AWS, Azure, and GCP.

## Phase-wise Architect-Level Organization

### Phase 1 - Foundations
- Observability quality depends on the relationship between telemetry generation, retention, and response workflows.
- Metrics, logs, traces, and audit data answer different questions and should not be conflated.

### Phase 2 - Core Services
- Implement monitoring, audit, and query workflows as complementary controls tied to operational decisions.
- Treat event routing and log analytics as part of investigation design, not optional reporting extras.

### Phase 3 - Advanced Patterns
- Use tracing and event-driven automation to shorten mean time to detect and mean time to remediate.
- Keep network telemetry distinct enough to preserve packet and path fidelity during outages.

### Phase 4 - System Design
- Reference architecture: telemetry producers, aggregation layers, analytics plane, and response targets.
- Scaling considerations: metric cardinality, log retention costs, cross-account aggregation, and query fan-out.
- Cost considerations: excessive high-cardinality metrics, duplicate log pipelines, and over-retention without use cases.
