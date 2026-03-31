# 01_Metrics_Logs_Alarms.md

## Scope
- Topic: CloudWatch metrics, logs, dashboards, alarms, agents, and operational alerting
- Files processed: 24
- Extracted non-empty transcript lines: 1176
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS Observability Knowledge Base
- Cross-domain referrals: 14

## Real Material - Architect Learning Build (Observability: Metrics Logs Alarms)

This section is the study-first architecture guide for cloudwatch metrics, logs, dashboards, alarms, agents, and operational alerting.

### Phase 1 - Foundations

#### Module: Metrics Logs Alarms Mental Model
- Use metrics logs alarms decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: Metrics Logs Alarms Mental Model
- Primary transcript files:
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/035_CloudTrail to CloudWatch Metrics Filter - Example.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/022_[SAA_DVA_SOA] CloudWatch Alarms.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/043_[SAA_SOA] VPC Flow Logs Hands On.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt
- outputs/aws-certified-developer-associate-dva-c01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/242_CloudWatch Agent & CloudWatch Logs Agent.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt
- outputs/aws-solutions-architect-professional/11_Monitoring/114_CloudWatch.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/024_CloudWatch Contributor Insights.txt
- outputs/AWS Speciality/advanced-networking-specialty/14_Direct Connect (DX)/139_DX Monitoring using CloudWatch.txt
- outputs/aws-solutions-architect-professional/11_Monitoring/115_CloudWatch Logs.txt
- Top concept clusters from transcript metadata:
- Audit Logging
- Log Analytics and Investigation
- Operational Monitoring
- Network Telemetry
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 24
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1176
- Key insights inside selected files: 24
- Unique concept tags in selected files: 4

##### Transcript-Enriched Learning Notes
- Well, from CloudTrail, we know we can stream all the API calls being made in two CloudWatch logs, and from CloudWatch logs, we can define a metrics filter and we can set a threshold, for example, and look for the EC2 StartInstances API call and say that we want to trigger a CloudWatch alarm when we detect that metric to be above 30, and from there, maybe go into an SNS topic, and we can alert the security team because too many instances are started at a time.
- So now let's talk about Composite Alarms, because we know that CloudWatch Alarms are on a single metric, but then if you wanted to have multiple metrics, you would need to use Composite Alarms.
- So you use CloudWatch Logs, if you want to have some kind of metrics filter to do some real-time analysis in case you're being attacked and a lot of traffic is being rejected and so on.
- So on-premises, you would still install the Unified CloudWatch Agent, you would specify IAM permissions and then it would be able to push the logs and push the metrics.
- Now let's talk about how we can use something called the CloudWatch Agents to take logs from EC2 instances, as well as metrics and have them onto CloudWatch.
- So they're important because you are interacting with possibly the SSM Parameter Store, as well as the CloudWatch Logs and CloudWatch metrics services.
- And what we want to do is to just boot up from this configuration from the SSM parameter store and start sending metrics and logs into CloudWatch.
- So you have your EC2 instance with a Unified CloudWatch Agent and you want to send metrics and logs to CloudWatch.
- Finally, your CloudWatch dashboards can display metrics and alarms and can show the metrics of multiple regions.
- And this role will allow us to send metrics and logs to CloudWatch.
- So let's say we have our VPC flow logs, then we are going to export them and stream them into CloudWatch logs, and then we're going to use the CloudWatch Contributor Insights to figure out the top 10 IP addresses on my network, because that may indicate that some EC2 instances are not behaving correctly or that we're being under attack.
- So essentially the CloudWatch metrics that are available for DirectConnect connection, as well as for the virtual interfaces and together with all these metrics, you can definitely look at the performance and you can probably then troubleshoot if you're not getting enough bandwidth or do you see that the connection is down.

##### Polished Architect Notes
- Transcript signals that well, from CloudTrail, we know we can stream all the API calls being made in two CloudWatch logs, and from CloudWatch logs, we can define a metrics filter and we can set a threshold, for example, and look for the EC2 StartInstances API call and say that we want to trigger a CloudWatch alarm when we detect that metric to be above 30, and from there, maybe go into an SNS topic, and we can alert the security team because too many instances are started at a time.
- Transcript signals that so now let's talk about Composite Alarms, because we know that CloudWatch Alarms are on a single metric, but then if you wanted to have multiple metrics, you would need to use Composite Alarms.
- Transcript signals that so you use CloudWatch Logs, if you want to have some kind of metrics filter to do some real-time analysis in case you're being attacked and a lot of traffic is being rejected and so on.
- Transcript signals that so on-premises, you would still install the Unified CloudWatch Agent, you would specify IAM permissions and then it would be able to push the logs and push the metrics.
- Transcript signals that now let's talk about how we can use something called the CloudWatch Agents to take logs from EC2 instances, as well as metrics and have them onto CloudWatch.
- Transcript signals that so they're important because you are interacting with possibly the SSM Parameter Store, as well as the CloudWatch Logs and CloudWatch metrics services.
- Transcript signals that and what we want to do is to just boot up from this configuration from the SSM parameter store and start sending metrics and logs into CloudWatch.
- Transcript signals that so you have your EC2 instance with a Unified CloudWatch Agent and you want to send metrics and logs to CloudWatch.
- Transcript signals that finally, your CloudWatch dashboards can display metrics and alarms and can show the metrics of multiple regions.
- Transcript signals that and this role will allow us to send metrics and logs to CloudWatch.
- Transcript signals that so let's say we have our VPC flow logs, then we are going to export them and stream them into CloudWatch logs, and then we're going to use the CloudWatch Contributor Insights to figure out the top 10 IP addresses on my network, because that may indicate that some EC2 instances are not behaving correctly or that we're being under attack.
- Transcript signals that so essentially the CloudWatch metrics that are available for DirectConnect connection, as well as for the virtual interfaces and together with all these metrics, you can definitely look at the performance and you can probably then troubleshoot if you're not getting enough bandwidth or do you see that the connection is down.

##### Architect Synthesis (Transcript-Derived)
- Treat Audit Logging as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Log Analytics and Investigation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Monitoring as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Network Telemetry as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: well, from CloudTrail, we know we can stream all the API calls being made in two CloudWatch logs, and from CloudWatch logs, we can define a metrics filter and we can set a threshold, for example, and look for the EC2 StartInstances API call and say that we want to trigger a CloudWatch alarm when we detect that metric to be above 30, and from there, maybe go into an SNS topic, and we can alert the security team because too many instances are started at a time.
- Design implication: so now let's talk about Composite Alarms, because we know that CloudWatch Alarms are on a single metric, but then if you wanted to have multiple metrics, you would need to use Composite Alarms.
- Design implication: so you use CloudWatch Logs, if you want to have some kind of metrics filter to do some real-time analysis in case you're being attacked and a lot of traffic is being rejected and so on.
- Design implication: so on-premises, you would still install the Unified CloudWatch Agent, you would specify IAM permissions and then it would be able to push the logs and push the metrics.
- Design implication: now let's talk about how we can use something called the CloudWatch Agents to take logs from EC2 instances, as well as metrics and have them onto CloudWatch.

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/019_CloudWatch Unified Agent - Troubleshooting.txt
- outputs/aws-solutions-architect-professional/11_Monitoring/115_CloudWatch Logs.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt
- outputs/aws-certified-developer-associate-dva-c01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/242_CloudWatch Agent & CloudWatch Logs Agent.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/020_[SAA_DVA_SOA] CloudWatch Logs.txt
- outputs/aws-solutions-architect-professional/11_Monitoring/114_CloudWatch.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/035_CloudTrail to CloudWatch Metrics Filter - Example.txt
- Top concept clusters from transcript metadata:
- Audit Logging
- Operational Monitoring
- Log Analytics and Investigation
- Observability Operational Context
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 24
- Module-selected transcript files: 8
- Key insight candidates scanned (topic): 1176
- Key insights inside selected files: 24
- Unique concept tags in selected files: 4

##### Transcript-Enriched Learning Notes
- And the reason we do so is that we want to be able to put metric data into CloudWatch also to send logs and finally to get parameters from SSM because it is possible for us to retrieve a CloudWatch unified agent configuration directly from SSM as we will see in this lecture.
- So, in case the agents fails to start, it may be an issue with the configuration file, in which case, you should go into this file logs at this place on your EC2 instance, which is going to give you some configuration validation, and information.
- So good to know the CloudWatch Logs Agent can be installed on EC2 machines, but not only it can be installed on your on-premise Vms or on any server you want as long as it has logs and you wanna send them into CloudWatch Logs.
- Because by default, if you launch an EC2 instance, there will be no files, no logs, that will be sent from your EC2 instance to CloudWatch Logs without using an agent, and that agent could be the CloudWatch Unified Agents.
- So it's possible for you to have your services, virtual servers like VM-ware on premises and you install the exact same agent, which is a small Linux Program and your logs will end up in CloudWatch Logs as well.
- And if you wanted to analyze your logs within CloudWatch Logs, you could use something called CloudWatch Logs Insights to query logs directly, and even keep these queries and add them to a CloudWatch Dashboard.
- On top of it, if the CloudWatch Agent is not publishing log events, then look at the CloudWatch Agent version, test connectivity from the Agent into the Logs endpoint of AWS.
- So on-premises, you would still install the Unified CloudWatch Agent, you would specify IAM permissions and then it would be able to push the logs and push the metrics.
- Now let's talk about how we can use something called the CloudWatch Agents to take logs from EC2 instances, as well as metrics and have them onto CloudWatch.
- So the idea, is that your easy EC2 instances will have the CloudWatch Log Agents, for example running sending the logs into CloudWatch Logs for it to work.
- So these two logs, the error log as well as the access log are the logs that I want to send into CloudWatch logs using the CloudWatch unify agents.
- And then I will go into log groups and underneath we find access log and error log which are the two logs created by my unified agents.

##### Polished Architect Notes
- Transcript signals that and the reason we do so is that we want to be able to put metric data into CloudWatch also to send logs and finally to get parameters from SSM because it is possible for us to retrieve a CloudWatch unified agent configuration directly from SSM as we will see in this lecture.
- Transcript signals that so, in case the agents fails to start, it may be an issue with the configuration file, in which case, you should go into this file logs at this place on your EC2 instance, which is going to give you some configuration validation, and information.
- Transcript signals that so good to know the CloudWatch Logs Agent can be installed on EC2 machines, but not only it can be installed on your on-premise Vms or on any server you want as long as it has logs and you wanna send them into CloudWatch Logs.
- Transcript signals that because by default, if you launch an EC2 instance, there will be no files, no logs, that will be sent from your EC2 instance to CloudWatch Logs without using an agent, and that agent could be the CloudWatch Unified Agents.
- Transcript signals that so it's possible for you to have your services, virtual servers like VM-ware on premises and you install the exact same agent, which is a small Linux Program and your logs will end up in CloudWatch Logs as well.
- Transcript signals that and if you wanted to analyze your logs within CloudWatch Logs, you could use something called CloudWatch Logs Insights to query logs directly, and even keep these queries and add them to a CloudWatch Dashboard.
- Transcript signals that on top of it, if the CloudWatch Agent is not publishing log events, then look at the CloudWatch Agent version, test connectivity from the Agent into the Logs endpoint of AWS.
- Transcript signals that so on-premises, you would still install the Unified CloudWatch Agent, you would specify IAM permissions and then it would be able to push the logs and push the metrics.
- Transcript signals that now let's talk about how we can use something called the CloudWatch Agents to take logs from EC2 instances, as well as metrics and have them onto CloudWatch.
- Transcript signals that so the idea, is that your easy EC2 instances will have the CloudWatch Log Agents, for example running sending the logs into CloudWatch Logs for it to work.
- Transcript signals that so these two logs, the error log as well as the access log are the logs that I want to send into CloudWatch logs using the CloudWatch unify agents.
- Transcript signals that and then I will go into log groups and underneath we find access log and error log which are the two logs created by my unified agents.

##### Architect Synthesis (Transcript-Derived)
- Treat Audit Logging as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Monitoring as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Log Analytics and Investigation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Observability Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: and the reason we do so is that we want to be able to put metric data into CloudWatch also to send logs and finally to get parameters from SSM because it is possible for us to retrieve a CloudWatch unified agent configuration directly from SSM as we will see in this lecture.
- Design implication: so, in case the agents fails to start, it may be an issue with the configuration file, in which case, you should go into this file logs at this place on your EC2 instance, which is going to give you some configuration validation, and information.
- Design implication: so good to know the CloudWatch Logs Agent can be installed on EC2 machines, but not only it can be installed on your on-premise Vms or on any server you want as long as it has logs and you wanna send them into CloudWatch Logs.
- Design implication: because by default, if you launch an EC2 instance, there will be no files, no logs, that will be sent from your EC2 instance to CloudWatch Logs without using an agent, and that agent could be the CloudWatch Unified Agents.
- Design implication: so it's possible for you to have your services, virtual servers like VM-ware on premises and you install the exact same agent, which is a small Linux Program and your logs will end up in CloudWatch Logs as well.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/035_CloudTrail to CloudWatch Metrics Filter - Example.txt
- outputs/aws-solutions-architect-professional/11_Monitoring/115_CloudWatch Logs.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt
- outputs/aws-certified-developer-associate-dva-c01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/242_CloudWatch Agent & CloudWatch Logs Agent.txt
- outputs/aws-solutions-architect-professional/11_Monitoring/114_CloudWatch.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/024_CloudWatch Contributor Insights.txt
- outputs/AWS Speciality/advanced-networking-specialty/14_Direct Connect (DX)/139_DX Monitoring using CloudWatch.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/022_[SAA_DVA_SOA] CloudWatch Alarms.txt
- outputs/AWS Speciality/Security/03_Domain 1 - Detection/043_[SAA_SOA] VPC Flow Logs Hands On.txt
- Top concept clusters from transcript metadata:
- Audit Logging
- Log Analytics and Investigation
- Operational Monitoring
- Network Telemetry
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 24
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1176
- Key insights inside selected files: 24
- Unique concept tags in selected files: 4

##### Transcript-Enriched Learning Notes
- Well, from CloudTrail, we know we can stream all the API calls being made in two CloudWatch logs, and from CloudWatch logs, we can define a metrics filter and we can set a threshold, for example, and look for the EC2 StartInstances API call and say that we want to trigger a CloudWatch alarm when we detect that metric to be above 30, and from there, maybe go into an SNS topic, and we can alert the security team because too many instances are started at a time.
- And if you wanted to analyze your logs within CloudWatch Logs, you could use something called CloudWatch Logs Insights to query logs directly, and even keep these queries and add them to a CloudWatch Dashboard.
- So on-premises, you would still install the Unified CloudWatch Agent, you would specify IAM permissions and then it would be able to push the logs and push the metrics.
- Now let's talk about how we can use something called the CloudWatch Agents to take logs from EC2 instances, as well as metrics and have them onto CloudWatch.
- So you have your EC2 instance with a Unified CloudWatch Agent and you want to send metrics and logs to CloudWatch.
- Finally, your CloudWatch dashboards can display metrics and alarms and can show the metrics of multiple regions.
- So let's say we have our VPC flow logs, then we are going to export them and stream them into CloudWatch logs, and then we're going to use the CloudWatch Contributor Insights to figure out the top 10 IP addresses on my network, because that may indicate that some EC2 instances are not behaving correctly or that we're being under attack.
- So essentially the CloudWatch metrics that are available for DirectConnect connection, as well as for the virtual interfaces and together with all these metrics, you can definitely look at the performance and you can probably then troubleshoot if you're not getting enough bandwidth or do you see that the connection is down.
- So again, what we need to remember out of this is that if you wanted to get some information around the processes running and their associated metrics, the only way to do it would be to use the Unified CloudWatch Agents deployed on your institute's instances and configured to use that plugin.
- And the reason we do so is that we want to be able to put metric data into CloudWatch also to send logs and finally to get parameters from SSM because it is possible for us to retrieve a CloudWatch unified agent configuration directly from SSM as we will see in this lecture.
- So good to know the CloudWatch Logs Agent can be installed on EC2 machines, but not only it can be installed on your on-premise Vms or on any server you want as long as it has logs and you wanna send them into CloudWatch Logs.
- Because by default, if you launch an EC2 instance, there will be no files, no logs, that will be sent from your EC2 instance to CloudWatch Logs without using an agent, and that agent could be the CloudWatch Unified Agents.

##### Polished Architect Notes
- Transcript signals that well, from CloudTrail, we know we can stream all the API calls being made in two CloudWatch logs, and from CloudWatch logs, we can define a metrics filter and we can set a threshold, for example, and look for the EC2 StartInstances API call and say that we want to trigger a CloudWatch alarm when we detect that metric to be above 30, and from there, maybe go into an SNS topic, and we can alert the security team because too many instances are started at a time.
- Transcript signals that and if you wanted to analyze your logs within CloudWatch Logs, you could use something called CloudWatch Logs Insights to query logs directly, and even keep these queries and add them to a CloudWatch Dashboard.
- Transcript signals that so on-premises, you would still install the Unified CloudWatch Agent, you would specify IAM permissions and then it would be able to push the logs and push the metrics.
- Transcript signals that now let's talk about how we can use something called the CloudWatch Agents to take logs from EC2 instances, as well as metrics and have them onto CloudWatch.
- Transcript signals that so you have your EC2 instance with a Unified CloudWatch Agent and you want to send metrics and logs to CloudWatch.
- Transcript signals that finally, your CloudWatch dashboards can display metrics and alarms and can show the metrics of multiple regions.
- Transcript signals that so let's say we have our VPC flow logs, then we are going to export them and stream them into CloudWatch logs, and then we're going to use the CloudWatch Contributor Insights to figure out the top 10 IP addresses on my network, because that may indicate that some EC2 instances are not behaving correctly or that we're being under attack.
- Transcript signals that so essentially the CloudWatch metrics that are available for DirectConnect connection, as well as for the virtual interfaces and together with all these metrics, you can definitely look at the performance and you can probably then troubleshoot if you're not getting enough bandwidth or do you see that the connection is down.
- Transcript signals that so again, what we need to remember out of this is that if you wanted to get some information around the processes running and their associated metrics, the only way to do it would be to use the Unified CloudWatch Agents deployed on your institute's instances and configured to use that plugin.
- Transcript signals that and the reason we do so is that we want to be able to put metric data into CloudWatch also to send logs and finally to get parameters from SSM because it is possible for us to retrieve a CloudWatch unified agent configuration directly from SSM as we will see in this lecture.
- Transcript signals that so good to know the CloudWatch Logs Agent can be installed on EC2 machines, but not only it can be installed on your on-premise Vms or on any server you want as long as it has logs and you wanna send them into CloudWatch Logs.
- Transcript signals that because by default, if you launch an EC2 instance, there will be no files, no logs, that will be sent from your EC2 instance to CloudWatch Logs without using an agent, and that agent could be the CloudWatch Unified Agents.

##### Architect Synthesis (Transcript-Derived)
- Treat Audit Logging as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Log Analytics and Investigation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Monitoring as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Network Telemetry as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: well, from CloudTrail, we know we can stream all the API calls being made in two CloudWatch logs, and from CloudWatch logs, we can define a metrics filter and we can set a threshold, for example, and look for the EC2 StartInstances API call and say that we want to trigger a CloudWatch alarm when we detect that metric to be above 30, and from there, maybe go into an SNS topic, and we can alert the security team because too many instances are started at a time.
- Design implication: and if you wanted to analyze your logs within CloudWatch Logs, you could use something called CloudWatch Logs Insights to query logs directly, and even keep these queries and add them to a CloudWatch Dashboard.
- Design implication: so on-premises, you would still install the Unified CloudWatch Agent, you would specify IAM permissions and then it would be able to push the logs and push the metrics.
- Design implication: now let's talk about how we can use something called the CloudWatch Agents to take logs from EC2 instances, as well as metrics and have them onto CloudWatch.
- Design implication: so you have your EC2 instance with a Unified CloudWatch Agent and you want to send metrics and logs to CloudWatch.

### Phase 2 - Core Services
- Amazon CloudWatch should be understood in terms of request path, control plane, and operational boundary.
- Amazon EC2 should be understood in terms of request path, control plane, and operational boundary.
- AWS Config should be understood in terms of request path, control plane, and operational boundary.
- AWS SAM should be understood in terms of request path, control plane, and operational boundary.
- AWS Batch should be understood in terms of request path, control plane, and operational boundary.

### Phase 3 - Advanced Patterns
- Pattern emphasis: Audit Logging becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Distributed Tracing and Events becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Log Analytics and Investigation becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Network Telemetry becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Observability Operational Context becomes valuable when requirements move from feature use to system design discipline.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design metrics logs alarms with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when metrics logs alarms decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: Because by default, if you launch an EC2 instance, there will be no files, no logs, that will be sent from your EC2 instance to CloudWatch Logs without using an agent, and that agent could be the CloudWatch Unified Agents.
- Signal 2: Transcript signals that because by default, if you launch an EC2 instance, there will be no files, no logs, that will be sent from your EC2 instance to CloudWatch Logs without using an agent, and that agent could be the CloudWatch Unified Agents.
- Signal 3: Design implication: because by default, if you launch an EC2 instance, there will be no files, no logs, that will be sent from your EC2 instance to CloudWatch Logs without using an agent, and that agent could be the CloudWatch Unified Agents.
- Signal 4: Key Insights: Because by default, if you launch an EC2 instance, there will be no files, no logs, that will be sent from your EC2 instance to CloudWatch Logs without using an agent, and that agent could be the CloudWatch Unified Agents.
- Signal 5: Key Insights: Then, if you wanted to configure your agent, you can configure it by using the SSM Parameter Store and storing the configuration in a central place.
- Signal 6: Key Insights: For this, you would just configure the agents and make sure you have the right permissions.
- Signal 7: Key Insights: You can configure and changes this, but at least this is the default one.
- Signal 8: Key Insights: So to do so, very simple we're first going to have to create an IAM role.
- Signal 9: Key Insights: So to do so let's go into roles, let's create a role and this is going to be a role for AWS service which is an EC2 instance.
- Signal 10: Key Insights: So we need to create an EC2 instance role and then we click on next.

### Service-Specific Lab Paths
### Activity 1: Amazon CloudWatch Lab for CloudWatch metrics, logs, dashboards, alarms, agents, and operational alerting
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

### Activity 2: Amazon EC2 Lab for CloudWatch metrics, logs, dashboards, alarms, agents, and operational alerting
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

### Activity 3: Amazon VPC Lab for CloudWatch metrics, logs, dashboards, alarms, agents, and operational alerting
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

### Activity 4: AWS Lambda Lab for CloudWatch metrics, logs, dashboards, alarms, agents, and operational alerting
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

Use this lens to study CloudWatch metrics, logs, dashboards, alarms, agents, and operational alerting in a cloud-agnostic way: focus on capability first, provider name second.

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
| Amazon EC2 | Amazon EC2 | Azure Virtual Machines | Compute Engine |
| Amazon VPC | Amazon VPC | Azure Virtual Network | VPC Network |
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
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/11_Management and Governance/259_Amazon CloudWatch - Metrics.txt (owned by AWS AI Knowledge Base)
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/11_Management and Governance/260_Amazon CloudWatch - Logs.txt (owned by AWS AI Knowledge Base)
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/11_Management and Governance/261_Amazon CloudWatch - Logs - Hands On.txt (owned by AWS AI Knowledge Base)
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/11_Management and Governance/262_Amazon CloudWatch - Logs Unified Agent.txt (owned by AWS AI Knowledge Base)
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/11_Management and Governance/263_Amazon CloudWatch - Alarms.txt (owned by AWS AI Knowledge Base)
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/11_Management and Governance/264_Amazon CloudWatch - Alarms - Hands On.txt (owned by AWS AI Knowledge Base)
- outputs/AWS AI/3. aws-generative-ai-developer-professional/08_Governance and QA/184_CloudWatch Logs.txt (owned by AWS AI Knowledge Base)
- outputs/AWS AI/3. aws-generative-ai-developer-professional/08_Governance and QA/185_CloudWatch Logs - Hands On.txt (owned by AWS AI Knowledge Base)
- outputs/AWS AI/3. aws-generative-ai-developer-professional/08_Governance and QA/186_CloudWatch Alarms.txt (owned by AWS AI Knowledge Base)
- outputs/AWS AI/3. aws-generative-ai-developer-professional/08_Governance and QA/187_CloudWatch Alarms - Hands On.txt (owned by AWS AI Knowledge Base)
- outputs/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/220_NACL, Security Groups, VPC Flow Logs.txt (owned by AWS AI Knowledge Base)
- outputs/aws-certified-developer-associate-dva-c01/21_AWS Serverless_ Lambda/274_Lambda & CloudWatch Events _ EventBridge.txt (owned by AWS Compute Knowledge Base)
- outputs/aws-certified-developer-associate-dva-c01/21_AWS Serverless_ Lambda/275_Lambda & CloudWatch Events _ EventBridge Hands On.txt (owned by AWS Compute Knowledge Base)

## CloudOps Transcript Additions — Monitoring, Metrics, Logs, and Health

### Source Files
- outputs/aws-certified-cloudops-associate/16_Monitoring, Auditing and Performance/198_CloudWatch Metrics.txt
- outputs/aws-certified-cloudops-associate/16_Monitoring, Auditing and Performance/199_CloudWatch Custom Metrics.txt
- outputs/aws-certified-cloudops-associate/16_Monitoring, Auditing and Performance/200_CloudWatch Anomaly Detection.txt
- outputs/aws-certified-cloudops-associate/16_Monitoring, Auditing and Performance/201_CloudWatch Dashboards.txt
- outputs/aws-certified-cloudops-associate/16_Monitoring, Auditing and Performance/202_CloudWatch Logs.txt
- outputs/aws-certified-cloudops-associate/16_Monitoring, Auditing and Performance/203_CloudWatch Logs - Hands On.txt
- outputs/aws-certified-cloudops-associate/16_Monitoring, Auditing and Performance/204_CloudWatch Logs - Live Tail - Hands On.txt
- outputs/aws-certified-cloudops-associate/16_Monitoring, Auditing and Performance/205_CloudWatch Logs - Data Protection.txt
- outputs/aws-certified-cloudops-associate/16_Monitoring, Auditing and Performance/206_CloudWatch Alarms.txt
- outputs/aws-certified-cloudops-associate/16_Monitoring, Auditing and Performance/207_CloudWatch Alarms Hands On.txt
- outputs/aws-certified-cloudops-associate/16_Monitoring, Auditing and Performance/208_CloudWatch Synthetics.txt
- outputs/aws-certified-cloudops-associate/16_Monitoring, Auditing and Performance/209_CloudWatch Synthetics - in a VPC.txt
- outputs/aws-certified-cloudops-associate/16_Monitoring, Auditing and Performance/210_CloudWatch Container Insights.txt
- outputs/aws-certified-cloudops-associate/16_Monitoring, Auditing and Performance/211_CloudWatch Internet Monitor.txt
- outputs/aws-certified-cloudops-associate/16_Monitoring, Auditing and Performance/212_CloudWatch Network Synthetic Monitor.txt

### CloudOps Synthesis
- CloudWatch Logs Data Protection can detect and mask sensitive data as logs are ingested, including common managed identifiers such as emails, passwords, payment data, and custom data identifiers.
- Data protection findings can feed audit destinations such as another log group, Amazon S3, or Kinesis Data Firehose, and can trigger alerts through the `LogEventsWithFindings` metric.
- Only principals with explicit unmask permissions should be able to view original sensitive values after masking.
- CloudWatch Internet Monitor is an internet-path observability service that surfaces how internet outages or degraded paths affect AWS-hosted applications and end users.
- Internet Monitor publishes its data into CloudWatch logs and metrics and emits global health events into EventBridge for alerting and automation.

## Step 1 - Line-by-Line Extraction

Every non-empty line from every primary source transcript is preserved below with extraction fields.

### File: outputs/AWS Speciality/advanced-networking-specialty/14_Direct Connect (DX)/139_DX Monitoring using CloudWatch.txt

Line 1:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Hello, and welcome to this lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: DirectConnect monitoring.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Again, this will be a very short lecture where we just touch upon how you can monitor your DirectConnect connection status using the CloudWatch.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Now, you know that CloudEdge is a service which essentially is used to monitor the health of various AWS services.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Now, there are also CloudWatch metrics, which can help you see the status of DirectConnect as well as performance of your DirectConnect connection.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 6:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So now let's look at those metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 7:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So essentially the CloudWatch metrics that are available for DirectConnect connection, as well as for the virtual interfaces and together with all these metrics, you can definitely look at the performance and you can probably then troubleshoot if you're not getting enough bandwidth or do you see that the connection is down.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 8:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Probably this is the first place you will go to the CloudWatch and then you will see the value of those metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 9:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So let's get started and let's see what all CloudWatch metrics are available for DirectConnect connection.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 10:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Now you can see there are a bunch of metrics for DX connection.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now, the most important is ConnectionState.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So 1 indicates that the connection is up and 0 indicates it's down.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So you are to make sure that you set CloudWatch alarm when your state becomes 0, probably you should know via the email or an SMS, whatever notification mechanism you want to implement.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven remediation signal.

Line 14:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So that's one important CloudWatch metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 15:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Other than that, most of the metrics are related to the traffic.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 16:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So you can see there are Egress metrics and there are Ingress metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 17:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: Egress means the traffic flowing from AWS to on-premises network and Ingress is the other way around.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: BPS is bits per second.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you can say that ConnectionBpsEngress means total number of bits per second for the outbound data from AWS side.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Similarly, the BPS for Ingress traffic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And then there is also packet per second metrics also available that is called PPS.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So how much packets per second, your DirectConnect connection is able to process.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Now then comes one another important metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Which is Error Count.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it is a total error count of all types on the AWS device site.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I think you should also be looking at this error count and see that how many errors are there in the last 24 hours and if you see consistently the error account is increasing that means you should also report it to AWS, your DirectConnect partner, and make sure that you can fix those problems.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then add the physical layer.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: You have two metrics which will help you.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 29:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: That is LightLevelTx that is transmit and LightLevel RX that is receiving.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you can see the health of fiber connection for the outbound connection as well as for the inbound connection.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So these are the two important metrics for that.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 32:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And finally, if MACSec is enabled, then you can also see the ConnectionEncryptionState.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: 1 indicates that the encryption is up and 2 indicates that encryption is done.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now as you know, the MACSec is not available for all DirectConnect connection.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It is available only on the select DirectConnect locations as well as it is applicable for dedicated connection, which is 10 GBPS and more.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 36:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Okay with that there are similar metrics available for VIFs as well.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 37:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And there is VirtualInterfaceBpsIngres, BPSEgress, similarly packet per second Egress and packet per second Ingress.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 38:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So ultimately using all these metrics, you can monitor the state of your connection, whether it's up or down with connection state and then how the data is flowing through the connection as well as various virtual interfaces.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 39:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So I think that's it about you know, monitoring your DX connections and thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt

Line 1:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: So let's talk about a way for us to collect metrics and logs from within our EC2 instances.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 2:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And this is the Unified CloudWatch Agent.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: So this is for virtual servers, it could be for your EC2 instances or your on-premise servers, and you're going to connect additional system-level metrics, such as the RAM, processes, used disk space, et cetera, et cetera.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 4:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And you can also send the logs to CloudWatch logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 5:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: Because by default, if you launch an EC2 instance, there will be no files, no logs, that will be sent from your EC2 instance to CloudWatch Logs without using an agent, and that agent could be the CloudWatch Unified Agents.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 6:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: So the idea is that, if you wanted to get the memory metric from within your EC2 instances, the only way you could do it is using the CloudWatch Unified Agent.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Then, if you wanted to configure your agent, you can configure it by using the SSM Parameter Store and storing the configuration in a central place.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Or you can specify a configuration file, alternatively.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: So you have your EC2 instance with a Unified CloudWatch Agent and you want to send metrics and logs to CloudWatch.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 10:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: For this, you would just configure the agents and make sure you have the right permissions.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This is also true if you wanted to use a server from within your own corporate data center.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So on-premises, you would still install the Unified CloudWatch Agent, you would specify IAM permissions and then it would be able to push the logs and push the metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 13:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So they're important because you are interacting with possibly the SSM Parameter Store, as well as the CloudWatch Logs and CloudWatch metrics services.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 14:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: They need to be able to have the correct IAM permissions attached to your IAM role on your EC2 instance, or attached to your access keys that are deployed on your on-premises servers.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Finally, any metrics that is being pushed by the Unified CloudWatch Agent, is starting with the prefix CWAgent, so this is going to be in this namespace.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 16:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: You can configure and changes this, but at least this is the default one.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So, something you need to know that comes up in the exam is that there is a procstat Plugin, sorry, on the CloudWatch Agent.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And that means that with this procstat Plugin, you're going to collect metrics and monitor system utilization of individual processes running on your Linux or Windows servers.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 19:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: For example, you would get some information around how much time a CPU will be using, a process will be using the CPU, or how much memory a process will be using, or the process that are running directly on your EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So you can select which processes to monitor by PID file.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you can get the PID, so the process ID number, or you can get the name that you have of the process or the pattern.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: (none explicit)
- Key Insights: If you want it to filter again, the processes to monitor and all the metrics related to your statistics of your processes on your Linux or windows servers, we'll be starting with a procstat prefix, so procstat_time, procstat_cpu_usage, and so on.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 23:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS Config, Amazon CloudWatch
- Key Insights: So again, what we need to remember out of this is that if you wanted to get some information around the processes running and their associated metrics, the only way to do it would be to use the Unified CloudWatch Agents deployed on your institute's instances and configured to use that plugin.
- Hidden/Implicit Meaning: Constraint or limitation signal; Telemetry and visibility signal.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, that's it for this lecture, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt

Line 1:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: Okay, so in this lecture we're going to install the CloudWatch unified agent to collect metrics and log for Amazon EC2 instances.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So to do so, very simple we're first going to have to create an IAM role.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And this role will allow us to send metrics and logs to CloudWatch.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 4:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So to do so let's go into roles, let's create a role and this is going to be a role for AWS service which is an EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So we need to create an EC2 instance role and then we click on next.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So EC2, just select EC2 here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Next, we need to find permission policies to apply to this role.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So for this I'm going to type CloudWatchAgent and we have two we have the Server Policy and the Admin Policy.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: The one we're going to use right now is the CloudWatchAgentServerPolicy.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS Config, Amazon CloudWatch
- Key Insights: And the reason we do so is that we want to be able to put metric data into CloudWatch also to send logs and finally to get parameters from SSM because it is possible for us to retrieve a CloudWatch unified agent configuration directly from SSM as we will see in this lecture.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is enough.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Let's click on next.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: And then the role name should be, for example Amazon EC2 role for CloudWatch.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Let's create this role.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And we're done.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So next what I have to do is to create an EC2 instance that will be leveraging this role.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So to do so let's go into the management console into the EC2 console.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And then I'm going to create an EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So I'll go into launch instance and we'll configure it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we're going to use Amazon Linux 2 AMI and then I will use t2.micro.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We don't need to select a key pair if we don't want to, which is fine.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: We'll use EC2 instance connect to connect to our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then we need to create a new security group and we'll allow SSH and HTTP traffic the third one, from the internet because we'll be launching a web server and we'll get the log from that server.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So we allow SSH to SSH to our instance and HTTP to allow port 80 traffic on to our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This is good.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Let's launch this instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's click on it and we're gonna find the instance right now.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let me wait for it to be ready.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So our EC2 instance is now created.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: Let's connect to it using the EC2 instance user connect interface.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we establish a connection directly into the instance and now I'm able to issue a few commands.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the first one I'm going to do is to elevate my privileges.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I will do sudo su and now I am a super user on my instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 38:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I will do yum install HTTPD.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This will install a web server and that web server I say yes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 40:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: That web server is going to have traffic coming from the internet.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 41:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And we'll take the log out of HTTP to connect to our instance to send that to CloudWatch logs So the HTTPD service is installed.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 42:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And now we're just going to echo "hello world" into var/www/html/index.html.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So now we have an index HTML file created.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 44:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And we need to just start our HTTPD server.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 45:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So for this, we'll do sudo systemctl start httpd This will effectively start our HTTPD service.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 46:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And if wanted to allow also it to survive through restarts we will enable it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 47:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So now back into here, this is the public IP of my EC2 instance, which is great.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 48:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so if I visit it now I get the prompt hello world.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 49:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So that means that we are indeed able to access our EC2 instance using this Apache web server.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 50:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And now what I want to show you is that out of this, this created some log entries.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 51:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So if we go into the file so I'll do cat /var/log/httpd and then we have access underscore log.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 52:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This contains the request log of all the request made into our server.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 53:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: As you can see, we can find the fact that yes we did do a get right now.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 54:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So also, should there be any errors we can do /error_log and we'll get a list of all the errors that are happening for our HTTPD server.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 55:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So these two logs, the error log as well as the access log are the logs that I want to send into CloudWatch logs using the CloudWatch unify agents.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 56:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So to do so, we can follow documentation but this is quite complicated.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 57:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: So it's to collect metrics and logs for Amazon EC2 instances and I've summarized all the instructions in the code.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 58:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So the first thing we have to do is to install the agents on Amazon Linux 2 and for this we can just run this command a sudo yum install of the Amazon CloudWatch agent.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 59:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, I say, yes and it's going to be installed.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 60:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The next thing we have to do is to run a wizard.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 61:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS Config, Amazon CloudWatch
- Key Insights: And this is to configure the CloudWatch agent.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 62:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: This is something we have to do once and then we'll store the configuration in the SSM parameter restore.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 63:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And it will be retrieved at run time if we need to.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 64:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and clear this and we're going to run the wizard.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 65:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So now it says on which OS are you planning to use the agent wave?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 66:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So Linux.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 67:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: Then is this EC2 or On-Premises?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 68:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: This is EC2.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 69:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We're going to run this as the route user.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 70:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And do you want to turn on StatsD daemon?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 71:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Why not?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 72:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Yes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 73:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I press one every time.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 74:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: What port do you want this daemon to listen to?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 75:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we'll just keep the default choice.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 76:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then what is the correct interval?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 77:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We'll just keep it as default as well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 78:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So that means that the CloudWatch unified agent can also collect stuff from StatsD.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 79:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then we have, do we want to have aggregations?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 80:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Yes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 81:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We'll aggregate them at 60 seconds interval which is the default.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 82:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Do you want to collect metrics from CollectD?
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 83:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And it must be installed or the agent will fail to start.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 84:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it turns out that I don't have CollectD on this instance, but it is possible for us to enable this if we wanted to but because if we don't have it installed the agent will fail to start.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 85:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We're just going to reply no to this answer.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 86:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I will enter two.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 87:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Do you want to monitor any host metrics such as CPU, memory etcetera?
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 88:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Yes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 89:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And as you can see, using the CloudWatch unified agent I am able to have access to memories.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 90:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So Ram is a metric you can access from within the EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 91:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: We can also collect CPU metrics at the core level.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 92:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: Again, something this is only possible by doing metric collection from within the EC2 instance.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 93:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: Do you want to add EC2 dimensions?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 94:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Absolutely.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 95:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Yes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 96:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And do you want to aggregate them?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 97:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Why not?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 98:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Then we have the high resolution metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 99:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So in case we have that we have the ability to customize which resolution will go on them.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 100:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So one second, ten seconds, 30 seconds or 60 seconds.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 101:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now to keep cost under control I will keep it as 60 seconds.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 102:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: As you can see we can have a resolution down to one second.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 103:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS Config
- Key Insights: Now, which default metrics config do you want?
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 104:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Do you want basic, standard, advanced or none?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 105:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we'll keep the default as basic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 106:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And here now I have an entire JSON document of the configuration we just did.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 107:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS Config, Amazon CloudWatch
- Key Insights: Which summarizes all the answers we have selected for the configuration of this CloudWatch unified agent.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 108:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is good enough.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 109:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can have a look.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 110:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Are we satisfied with the config?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 111:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The answer is yes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 112:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS Config, Amazon CloudWatch
- Key Insights: Now, do we have any existing CloudWatch log agents from configuration file for migration?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 113:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The answer is no.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 114:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So there used to be before the unified agent there used to be an old thing called the Amazon CloudWatch log agents.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 115:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And if you had that we could import it but we don't have this right now.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 116:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we'll say no.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 117:
- Concepts: Operational Monitoring
- Services: AWS SAM
- Key Insights: And as you can see now the unified agents does both metrics and log at the same time.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 118:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Now, do you want to monitor any log files?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 119:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We'll say yes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 120:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And now we need to enter the log file path.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 121:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So for this is going to be var/log/httpd/access_log which is the first log file I showed you.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 122:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And the group name is going to be access_log for it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 123:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And the log screen name is going to be perfect as well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 124:
- Concepts: Retention and Forensics
- Services: (none explicit)
- Key Insights: And the log retention in days we could do minus one, for infinity or we could say, for example, five for seven day retention.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 125:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And do you want to additionally specify other log files?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 126:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The answer is yes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 127:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I want to.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 128:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we enter the path again.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 129:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So var/log/httpd/error_log.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 130:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Default group name we will keep.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 131:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Default stream we keep.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 132:
- Concepts: Retention and Forensics
- Services: (none explicit)
- Key Insights: And then again, we'll have a seven day retention so I'll just enter number five.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 133:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 134:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Do you want to specify any more logs we've done?
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 135:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So just no.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 136:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And now we have another config right here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 137:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So now this contains some configuration for the logs, for our instance.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 138:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is good enough and I'm good to go.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 139:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So do you want to store this config now in the SSM parameter store?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 140:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We will answer yes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 141:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But it will not work until we have the correct permissions.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 142:
- Concepts: Audit Logging
- Services: AWS Config, Amazon EC2
- Key Insights: So currently this config file has been located and stored at this address right here, which is great for us but we want to send this into the SSM parameter store so that it can be retrieved by other EC2 instances at run time.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 143:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So to do so, we need to store the config.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 144:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: We need to store the config, this one in the SSM parameter store And to do so we need the right permissions.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 145:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: But if we go into the role we created the Amazon EC2 role for CloudWatch which by the way we did not attach to the instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 146:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now that I just remembered it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 147:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's go back here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 148:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: And of course, we'll do security and then modify IAM role and we'll need to attach this Amazon EC2 role for CloudWatch that I just created.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 149:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you see, comes full circle.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 150:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is perfect.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 151:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Even this role, if we look at the permission itself and we look at SSM it's allowed to get a parameter but not to send a parameter.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 152:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So on one instance, we need to add the permissions to attach a policy and I will just type CloudWatch agent again and this time we'll attach the admin policy which has sufficient permission to put the parameter into SSM.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 153:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And this is only needed when you do the setup of the CloudWatch unified agents.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 154:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we'll attach this policy.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 155:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now we have two policies.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 156:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And now my EC2 instance should be able to perform this next action.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 157:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I will say, yes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 158:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Do you want to store it into the SSM parameter store?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 159:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, yes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 160:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then what parameter name do you want to use?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 161:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we can just use the default choice.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 162:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Amazon Linux, Amazon CloudWatch, minus Linux, press enter.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 163:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then which region do you want to store it in?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 164:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So EUS one, which was retrieved directly from the EC2 metadata by this wizard.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 165:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Perfect.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 166:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now which credential should be used?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 167:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the one from the SDK.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 168:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I press enter.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 169:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS Config, Amazon CloudWatch
- Key Insights: And then it says successfully put config to parameter store as Amazon CloudWatch Linux and the program exits now.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 170:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that means that if we go into Amazon Web Services and then we go into the SSM parameter store.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 171:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's go into systems manager.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 172:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then find the parameter store.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 173:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: As we can see now I have one standard parameter called the Amazon CloudWatch Linux.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 174:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And if I click on it and I look at the value, as you can see the value is this entire JSON file that was generated by this wizard.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 175:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it's amazing.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 176:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So now the wizard is running and then this has been inserted into the SSM parameter store.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 177:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And now we want to boot up from this parameter.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 178:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So back onto our instance, let's clear this screen.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 179:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's assume this is a whole new instance, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 180:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS Config, Amazon CloudWatch
- Key Insights: And what we want to do is to just boot up from this configuration from the SSM parameter store and start sending metrics and logs into CloudWatch.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 181:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So to do so let's go back into our code.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 182:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And for this, we have a few options.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 183:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this one can be deleted because we don't use the CollectD.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 184:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we have options here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 185:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we can either start directly from the SSM parameter store.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 186:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this is this command right here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 187:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS Config, Amazon CloudWatch
- Key Insights: So the Amazon CloudWatch agent CTL to fetch a config from SSM at this address right here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 188:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And it's going to fetch the config we have inserted right here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 189:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this should work.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 190:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The other option is to instead provide a flat file.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 191:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So config the JSON file that has been generated using the wizard, for example and then the agent can start the quiz from this static configuration file.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 192:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: But if you plan to use multiple instances start from the same file then it may be a good idea to store it into SSM.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 193:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I will use the command that boots up from SSM.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 194:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I will paste it, press enter.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 195:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And as you can see, it says that the configuration version is succeeded and then it should be good to go.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 196:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look and see if anything works.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 197:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So let's go into the CloudWatch agents.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 198:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So let's go into the CloudWatch service.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 199:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So CloudWatch.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 200:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Perfect.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 201:
- Concepts: Observability Operational Context
- Services: AWS SAM, Amazon EC2
- Key Insights: Let's make sure to use the same region my EC2 instance is in, which is EU-west-1.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 202:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then I will go into log groups and underneath we find access log and error log which are the two logs created by my unified agents.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 203:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So under access log, I can find one log stream which represents my EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 204:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And as you can see we have the two events we saw from before.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 205:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now the cool thing is that if I refresh this page right here one or two or three times at some point the events are going to end up in this log.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 206:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So as you can see now the events have been written by the CloudWatch log agents unified agents into this log right here, which is amazing.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 207:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And again, if you went into the error log you will find the log stream right here that contains the error log stream, if we need to.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 208:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is perfect.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 209:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Now what about metrics?
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 210:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So if we go into all metrics, we can find a name space custom name space called CloudWatch agents, CW agents.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 211:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And then we can go, for example, by instance ID and here find the memory used percent which represents how much ram is being used by my EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 212:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Or the disc used percent and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 213:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And you can explore the different metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 214:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Here we have the mem used percent again, but by image ID and with other dimensions and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 215:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And here we have six metrics available to us that are right here.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 216:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And it's possible for you to explore the documentation.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 217:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And here you can find at some point you can find all the metrics that are collected by the CloudWatch agents they're right here and the explanations are self explicit.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 218:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: But you can, just to summarize collect some CPU metrics, which are very handy.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 219:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can collect as well, some disc space and IO and so on for your disc.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 220:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can also get information around your mem so active, available, cached, free and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 221:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This is very helpful.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 222:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: Some network information.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 223:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So a number of packets in and out and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 224:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And then information about your processes running on your EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 225:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So how many are idle, how many you're running et cetera, et cetera, which is very, very helpful.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 226:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And finally, the swap that you have on your machine free, used and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 227:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS Config, Amazon CloudWatch
- Key Insights: So that's it, we've successfully configured the CloudWatch AI unified agent.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 228:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: We stored the configuration in SSM and retrieved it and we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 229:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 230:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So just to be done, if you are in the DevOps course you need to keep this instance running.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 231:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But if you are in the CSOPs course then you can terminate this instance and you'll be good to go.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 232:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 233:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 234:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/019_CloudWatch Unified Agent - Troubleshooting.txt

Line 1:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So you need to be able to troubleshoot issues with the Unified CloudWatch Agent.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Audit Logging
- Services: AWS Config, Amazon EC2
- Key Insights: So, in case the agents fails to start, it may be an issue with the configuration file, in which case, you should go into this file logs at this place on your EC2 instance, which is going to give you some configuration validation, and information.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry and visibility signal.

Line 3:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: If you cannot find the metrics collected by the CloudWatch Agent, of course, check whether or not you are in the correct namespace.
- Hidden/Implicit Meaning: Constraint or limitation signal; Telemetry and visibility signal.

Line 4:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: The default for the CloudWatch Agent is CWAgent.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And then you check the configuration of the Agent itself, it's a JSON document, and this is the kind of configuration it has.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So you can check the region, you can check the debug mode, and you can check as well the run as user, because if these things go wrong, then the CloudWatch Agent may not work.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: On top of it, if the CloudWatch Agent is not publishing log events, then look at the CloudWatch Agent version, test connectivity from the Agent into the Logs endpoint of AWS.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 8:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So that includes checking your Security Group rules, and your network ACLs.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Please review your account, region, and log group configuration.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Check your IAM permissions, of course, because you may need to have a Custom Policy if you're missing it, or you can just use Managed Policies as well if you want to use a shortcut.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And verify that the system time on the instance is correctly configured, and in sync.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: Again, there's a debug file for the CloudWatch Agent Logs that you can find on your EC2 instance to give you more information.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/020_[SAA_DVA_SOA] CloudWatch Logs.txt

Line 1:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So, now let's talk about CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 2:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So CloudWatch Logs is the perfect place to store your application logs in AWS.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And to do so, you must first define log groups.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: They're whatever names you want, but usually they are representing one of your applications.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then within a log group, you will have multiple log streams, and they represent log instances within an application or specific log files or specific containers that you have as part of a cluster.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then you define your log expiration policy.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you can have the logs re being retained indefinitely to never expire, or you can choose to expire them from anywhere between one day to 10 years.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry and visibility signal.

Line 8:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: It's also possible to send your CloudWatch Logs into various destinations.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 9:
- Concepts: Log Analytics and Investigation
- Services: AWS Batch, AWS Lambda, Amazon Data Firehose, Amazon Kinesis, Amazon OpenSearch, Amazon S3
- Key Insights: For example, to export them in batch into Amazon S3 or to stream them into Kinesis Data Streams, Kinesis Data Firehose, AWS Lambda, Amazon OpenSearch.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: All the logs are encrypted by default, and you can set up your own KMS-based encryption with your own keys if you wanted to.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 11:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So, now what kind of logs data goes into CloudWatch Logs?
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 12:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Now, what types of logs can go into CloudWatch Logs?
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 13:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Well, we can send the logs using the SDK or the CloudWatch Logs Agent or the CloudWatch Unified Agent.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 14:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Now, the CloudWatch Unified Agents send logs to CloudWatch and so the CloudWatch Log Agent is now sort of deprecated.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 15:
- Concepts: Operational Monitoring
- Services: AWS Elastic Beanstalk, Amazon CloudWatch
- Key Insights: You have Elastic Beanstalk, which is used to collect logs from the application directly into CloudWatch.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 16:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon ECS
- Key Insights: ECS will send the logs directly from the containers into CloudWatch.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 17:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: Lambda will send logs from the functions themselves.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 18:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: VPC Flow Logs will send logs specific to your VPC metadata network traffic.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 19:
- Concepts: Operational Monitoring
- Services: API Gateway, Amazon CloudWatch
- Key Insights: API Gateway will send all the requests made to the API Gateway into CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 20:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: CloudTrail, you can send the logs directly based on the filter.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And Route53 will log all the DNS queries made to its service.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So, what if you wanted to query the logs in CloudWatch Logs?
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 23:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: For this, you can use CloudWatch Logs Insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 24:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So, it's a querying capability within CloudWatch Logs which allows you to write your query.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 25:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: You specify the timeframe you want to apply your query to and then automatically you're going to get a result as a visualization.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 26:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And also, you can view the specific log lines that's made this visualization.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: This visualization can also be exported either as a result or added to a dashboard for being able to rerun it whenever you want.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 28:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So this is very handy, and this will allow you to search and analyze log data within CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 29:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So there are lots of simple queries provided as part of the console for CloudWatch Logs Insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, you can find the most 25 most recent events, or you can have a look at how many events had exceptions or errors in your logs, or you can look for a specific IP and so on.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 31:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So, it provides a purpose-built query language.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 32:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: All the fields to allow you to build your queries are automatically detected from CloudWatch Logs, and then you can filter based on conditions.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 33:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can calculate aggregate statistics, you can sort events, limit the number of events, and so on.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 34:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon RDS
- Key Insights: So as I said, you can save the queries and also add them to CloudWatch Dashboards.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And you have the capability to query multiple log groups at a time, even if they are in different accounts.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 36:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So remember, CloudWatch Logs Insights is a query engine, not a real-time engine.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 37:
- Concepts: Log Analytics and Investigation, Retention and Forensics
- Services: (none explicit)
- Key Insights: And so as such, it will only query historical data when you run the query.
- Hidden/Implicit Meaning: Constraint or limitation signal; Investigation and forensic signal.

Line 38:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So as mentioned, CloudWatch Logs can be exported into several destinations.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 39:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: The first one is Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 40:
- Concepts: Observability Operational Context
- Services: AWS Batch, Amazon S3
- Key Insights: So this is for a batch export to send all your logs into Amazon S3, and this export can take up to 12 hours to be completed.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 41:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: The API call to initiate this export is called CreateExportTask.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Observability Operational Context
- Services: AWS Batch
- Key Insights: So because this is a batch export, this is not real-time or near real-time.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Instead, you must use the CloudWatch Logs subscription.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry and visibility signal.

Line 44:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So these allow you to get a real-time stream of these log events, and you can do processing and analysis.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 45:
- Concepts: Observability Operational Context
- Services: AWS Lambda, Amazon Data Firehose, Amazon Kinesis
- Key Insights: So, you can send this data into multiple places such as Kinesis Data Streams, Kinesis Data Firehose, or Lambda.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 46:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And you can specify a subscription filter to say which kind of log events you want to be delivered to your destination.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 47:
- Concepts: Log Analytics and Investigation
- Services: Amazon Kinesis
- Key Insights: So, the subscription filter can send data into Kinesis Data Streams.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 48:
- Concepts: Observability Operational Context
- Services: AWS Lambda, Amazon Data Firehose, Amazon EC2, Amazon Kinesis
- Key Insights: This would be a great choice if you wanted to use, for example, the integration with Kinesis Data Firehose, Kinesis Data Analytics, or Amazon EC2, or Lambda.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 49:
- Concepts: Observability Operational Context
- Services: Amazon Data Firehose, Amazon Kinesis
- Key Insights: You can also directly send it into Kinesis Data Firehose.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 50:
- Concepts: Log Analytics and Investigation
- Services: AWS Lambda, Amazon OpenSearch, Amazon S3
- Key Insights: From there, you can send it in near real-time fashion into Amazon S3, or for example, the OpenSearch Service, or you have Lambda.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 51:
- Concepts: Log Analytics and Investigation
- Services: AWS Lambda, Amazon OpenSearch
- Key Insights: So you can write your own custom Lambda function, or you can use a managed Lambda function that is sending data in real-time into the OpenSearch Service.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 52:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch, Amazon Kinesis
- Key Insights: On top of it, thanks to these subscription filters, it is possible for you to aggregate data from different CloudWatch Logs into different accounts and different regions into a common destination such as the Kinesis Data Stream in one specific accounts.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 53:
- Concepts: Observability Operational Context
- Services: Amazon Data Firehose, Amazon Kinesis
- Key Insights: And then Kinesis Data Firehose.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 54:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: And then in near real-time into Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 55:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that is very possible, and that is a way for you to perform log aggregation.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 56:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the nitty gritty of how this works is that you must use what's called destinations.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 57:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, let's say you have a sender account and the recipient accounts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 58:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch, Amazon Kinesis
- Key Insights: So you create a CloudWatch Log subscription filter, and then this gets sent into a subscription destination, which is a virtual representant of the Kinesis Data Stream in the recipient accounts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 59:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then you attach a destination access policy to allow the first account to actually send data into this destination.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 60:
- Concepts: Observability Operational Context
- Services: Amazon Kinesis, Amazon RDS
- Key Insights: Then you create an IAM role in the recipient account, which has the permission to send records into your Kinesis Data Stream, and you make sure that this role can be assumed by the first account.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 61:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And when you have all these things in place, then it is possible for you to send data from CloudWatch Logs in one account into a destination in another account.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 62:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 63:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt

Line 1:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Okay, So I am in CloudWatch logs and we can see all the log groups we have right now.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, we have eight of them and they were created by some services.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: For example, this one was created by Lambda.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: AWS DataSync
- Key Insights: This one was created by datasync.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: AWS Glue
- Key Insights: This one was created by glue and this one was created by us when we did do an SSM runCommand and we wanted the output to be populated in this log group.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, if we take a look at this example, for example, we have six log streams and so each of them represents a different instance that we did run a specific run command on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: So, this is the same runcommond ID across the six.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Here, we have a different instance ID for each of the six, so two and two and then we have, stdout and stderr.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So if you look at stdout, we can look at all the logs that was generated by this command and we can have a look at all the log lines and so on.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is quite (indistinct).
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that, from the log for example, you can look through the keyword http and it would show you all the log lines that contain the word htp.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: If you just look for the word installing, for example, it will show you just maybe two or three log lines that contain the word installing.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's certainly (indistinct).
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so we have, for stdout, stderr, so we can see really the idea behind different log streams.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: Now, we can create metric filters in here, and these metric filters is a way for us to find a filter pattern.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, installing.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, And then we need to select for example, a custom data, for example, this log stream and then we test a pattern and it's going to give us three matches out of five in the simple logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 18:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: Now, if you went ahead with entering this filter name, as we can see, it could call it DemoFilter and DemometricFilter.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this is a new namespace, okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And here is DemoMetric.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So this is DemoMetric filter namespace, and this is a DemometricFilter.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then, the metric value, okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: When there is a filter pattern or matching occur and so, you can say one for example, to add one and to count how many times this installing lines have been filmed.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And the default value and the unit if you want it to, then click on next, create and this will give you a new metrics so, if you went into CloudWatch metric right here and we're going to clear this graph and we're going to find a new metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh this page.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Maybe this is going to help us.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: Okay, so if we go to all new spaces, as soon as this metric filter would appear, it would appear right here and we could visualize it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But currently, because we don't send any log output, then we don't see it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: But the idea is that, we could create an alarm on top of this metric filter So we can click on create alarm. and this would allow us to create an alarm in case, for example, a metric went over a specific value and again, this metric is calculated based on the filter from the log streams.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 30:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: We could also create subscription filters.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So as you can see here, we can create a filter for different outcomes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Log Analytics and Investigation
- Services: AWS Lambda, Amazon Data Firehose, Amazon Kinesis
- Key Insights: So Elasticsearch, Kinesis, datastreams, Kinesis Firehose or a Lambda subscription filter if you want to send data into custom lambda functions.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And, we can create up to two subscription filters per log group according to this, okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Retention and Forensics
- Services: (none explicit)
- Key Insights: Now, we can also edit the retention settings.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, we can see that the logs can never expire all the way up to 120 months.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry and visibility signal.

Line 36:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, so 10 years.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: And then, we can also export the data into Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 38:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: So you can click on export data You can choose a range of data to export and then, the stream prefix, if you wanted to just get specific log streams, and then the S3 buckets and the bucket prefix, and you'd be good to go.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And the finally, in here, you can create a log group (indistinct) demo-log-group.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 40:
- Concepts: Retention and Forensics
- Services: (none explicit)
- Key Insights: Okay, you can set up the retention settings.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 41:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: KMS key, if you wanted to encrypt that log group and then click on create.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so, the encryption setting would appear then here, if a KMS key ID was specified.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Okay and then finally, CloudWatch Logs Insights, is allowing you to use a nice query language to query some specific log groups.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 44:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So for example, we can create this one and run the query.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 45:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then, this is not going to give us any data because we're looking for data from the past hour.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 46:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: But if we look at data from the past 60 days and run this query, maybe we'll find something.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 47:
- Concepts: Log Analytics and Investigation
- Services: Amazon RDS
- Key Insights: So you can see, we found 18 records from this query.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 48:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And so, this gives us a nice query language to start gaining some insights on top of our logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 49:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And on top of it, you can export the results if you want it to.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 50:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And on the right hand side, you can see that you can save your queries.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 51:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 52:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So you can query and save them here.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 53:
- Concepts: Log Analytics and Investigation, Network Telemetry
- Services: AWS Lambda, Amazon VPC Flow Logs
- Key Insights: Or, you can look at some simple queries and view the use cases of losing log insights for example, view the latency statistics for a five minute interval on Lambda, or get the top 10 by transfers by source and destination IP addresses for VPC flow logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 54:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So it gives you, for example, if you should click on these, some nice insights to how the query language works for CloudWatch logs insights.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry and visibility signal; Investigation and forensic signal.

Line 55:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So this is CloudWatch logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 56:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/022_[SAA_DVA_SOA] CloudWatch Alarms.txt

Line 1:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Now let's discuss CloudWatch Alarms.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 2:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So alarms, as we know, they're used to trigger notifications from any metric.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 3:
- Concepts: Distributed Tracing and Events, Operational Monitoring
- Services: AWS SAM, Amazon Lex
- Key Insights: And you can define complex alarms and on various options such as sampling or doing percentage or maximum, and so on.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Alarm has three states, OK, it means that it's not triggered, INSUFFICIENT_DATA means that there's not enough data for the alarm to determine a state and ALARM, which is that your threshold has been breached and therefore a notification will be sent.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The period is how long you want the alarm to evaluate for on the metric.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so it could be very, very short, very, very long.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And it can apply also to high resolution customer metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, 10 seconds, 30 seconds, or multiple of 60 seconds.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Now, alarms have three main targets.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 10:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: The first one is actions on EC2 instances such as stopping it, terminating it, rebooting it, or recovering any instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The second one is to trigger an auto-scaling action.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, a scale out or a scale in.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: And the last one is to send a notification to the SNS service, for example, and from the SNS service, we can hook it to a Lambda function and have the Lambda function do pretty much anything we want based on an alarm being breached.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 14:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So now let's talk about Composite Alarms, because we know that CloudWatch Alarms are on a single metric, but then if you wanted to have multiple metrics, you would need to use Composite Alarms.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Event-driven remediation signal.

Line 15:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So because composite alarms are actually monitoring the states of multiple other alarms, and these alarms can be each relying on one different metric.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 16:
- Concepts: Operational Monitoring
- Services: Amazon Lex
- Key Insights: So the Composite Alarm is the action of combining all these other alarms together, and you can use AND or OR conditions to be able to be very flexible in terms of the condition you're checking for.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 17:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon Lex
- Key Insights: So it's very helpful to reduce alarm noise because you can create complex Composite Alarms and saying, for example, if the CPU is high and the network is high, then don't alert me because I only wanna know when the CPU is high and the network is a low, these kind of things.
- Hidden/Implicit Meaning: Constraint or limitation signal; Event-driven remediation signal.

Line 18:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So let's take an example, we have an EC2 instance, and we're going to create a composite alarm on top of it.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 19:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: So therefore we create a first underlying alarm called the Alarm A, which is going to monitor the CPU of the EC2 instance.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 20:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: Then you create Alarm B, which is going to monitor the IOPS of the EC2 instance, and then the composite alarm is defined as the junction of Alarm A and Alarm B.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And therefore, if Alarm A is in alarm and Alarm B is in alarm, and this is something we have to define ourselves, then the Composite Alarm itself will be an alarm and can trigger, for example, an SNS notification.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 22:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So as you can see, you can get quite creative with the Composite Alarms.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 23:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So let's talk about EC2 instance recovery.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So we have the status checks and we have the instance status check, which is going to check the EC2 virtual machine.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And we have the system status check, which is going to check the underlying layer hardware of our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: Amazon EBS
- Key Insights: And finally, the attached EBS status check, which is going to check any attached EBS volumes health.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And you can define a CloudWatch Alarm on these checks, okay?
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 28:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: So you'll monitor a specific EC2 instance, and in case the alarm is being breach, then you can start an EC2 instance recovery to make sure, for example, that you move your EC2 instance from one host to another.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 29:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: When you do a recovery, you get the same private, public, and elastic IP, the same metadata and the same placement group for your instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And you can also send an alert to your SNS topic to get alerted that the EC2 instance was being recovered.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now, the cloud alarm has some good stuff.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 32:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: To know that, first of all is that as we've seen, we can create an alarm on top of a CloudWatch logs metric filter.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Event-driven remediation signal.

Line 33:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So remember, the CloudWatch logs are having a metric filter, which is hooked to CloudWatch Alarm.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Event-driven remediation signal.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then when we receive too many instances of a specific word, for example, the word error, then do an alert and send a message into Amazon SNS.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so if you wanted to test alarm and notifications, you can use a CLI call called set alarm states.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 36:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this is helpful when you want to trigger an alarm, even though it didn't reach a specific threshold because you wanted to see whether or not the alarm being triggered results in the correct action for your infrastructure.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 37:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So that's it for alarms, I hope you liked it, and I will see you in the next lecture for some practice.
- Hidden/Implicit Meaning: Event-driven remediation signal.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/023_[SAA_DVA_SOA] CloudWatch Alarms Hands On.txt

Line 1:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Okay, so we are in CloudWatch Alarms, so let's go and create an alarm.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 2:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So first of all, I'm going to create an EC2 instance very quickly, and we're going to create an alarm on top of the CPU utilization.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 3:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So we're going ahead and create an EC2 instance of t2 micro.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I will go quickly to preview and launch and then say, yes, I have this.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we don't need to keep it or anything like this, we just want the instance to be launched.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that we want to create an alarm that will terminate the instance, if the CPU goes to 100%, so let's create this alarm.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we need to select a metric.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so for this, we need to choose a metric.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So we need to go and find our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is our instance ID, right here, and search for it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I'm maybe a little bit too quick, okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's wait for the instance to be launched.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: I will go into EC2 per instance metric, and then I will wait for it to be populating.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So it took about five minutes for some metrics to appear in that cloud dashboard for my instance.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 15:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So now I can probably refresh this page and I will get the chance to find the metrics I'm looking for.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let me select a metric and then paste the instance in perfect, I have it, and I will go and find the CPU utilization of my instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is this metric right here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, well, select this metric.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: As you can see, we have the eight here and then we can choose a way to compute this metric, so average, sum, maximum, and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The period we want to evaluate this alarm on.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 21:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So five minutes is good because this metric gets populated every five minutes, if we don't enable detailed monitoring.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now we get some conditions in terms of the threshold.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So is it Static or is it an Anomaly detection?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Is it a greater than, equal than, and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I will say for example, if you're a greater than 95% for a long time, so for, and here you can say, three out of three.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that means that for 15 minutes, you're stuck at 95%, then probably something is up with this machine.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so in that case, I could choose a notification.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: Auto Scaling
- Key Insights: I could choose a Auto Scaling action.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: I could choose an EC2 action, or in a systems manager action, but I'm going to choose an EC2 action.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, and it will say, hey, if you are in alarm, okay, then just terminate this instance because maybe I know that my application sometimes has a huge failure and the CPU installation will be at a 95% or a 100% for a very long time, And the only way to resolve this is to just terminate the instance.
- Hidden/Implicit Meaning: Constraint or limitation signal; Event-driven remediation signal.

Line 31:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So I will choose this, and then click on next, and say terminate, EC2 on high CPU.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Click on next to verify everything, and we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So now this alarm obviously does have insufficient data, so we need to wait 15 minutes for it to be okay, and it's not going to be triggered unless we make it so.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 34:
- Concepts: Audit Logging
- Services: Amazon EC2
- Key Insights: So, we could go into the EC2 instance and launch a way to get the CPU very high for 15 minutes, but this would be a very, very long, or we can use the API call name, Set alarm state, to really see what would happen if this alarm went into the breach phase.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This is the history of the alarm, okay.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 37:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And what I'm going to do is that I'm going to set the alarm to say, so I type AWS CloudWatch, set alarm states, and we'll look at the API reference.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 38:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so we need to do set alarm state the alarm name and the state value and the state reason.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 39:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we'll do, in here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 40:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So AWS CloudWatch set alarm states, and then we need to set multiple parameters.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 41:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the alarm name is going to be this one, then the alarm, so the states value is going to be alarm.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 42:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And the state reason, is going to be testing.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We press enter, and now this alarm, if we refer to this page is now in the alarm state, as you can see, it says in alarm.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 44:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so the action is, when in alarm terminate the instance.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 45:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And so if you look at the history, it says that the alarm updated from OK, to in alarm and then an action was made and it's, successfully executed the action to terminate my EC2 instance.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 46:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So if I go into my EC2 instances here, and I refresh, as we can see is shutting down and is being terminated because while there was an alarm that was triggered on top of this EC2 instance, and we did set up the alarm to do this specific action.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 47:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it, I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 48:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope this makes sense to you.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 49:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/024_CloudWatch Contributor Insights.txt

Line 1:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So just a short lecture on this feature in CloudWatch called Contributor Insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this allows you to analyze log data, and then you create time series that will display contributor data.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And what is contributor data?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: Well, this is the use case to find the top talkers, for example, on your network and to understand who is what and what is impacting system performance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So for example, if you have network data and logs on CloudWatch Logs, then this allows you to find the bad host, to identify the heaviest network users, or to find the URLs that generate the most errors.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is about ranking and doing some computation.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: This works for any AWS-generated logs, so it could be your VPC flow logs, your DNS logs, and whatever.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And you can use the built-in rules created by AWS or you can build your own rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let me give you a concrete example for you to understand this feature.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Log Analytics and Investigation, Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch, Amazon EC2, Amazon VPC Flow Logs
- Key Insights: So let's say we have our VPC flow logs, then we are going to export them and stream them into CloudWatch logs, and then we're going to use the CloudWatch Contributor Insights to figure out the top 10 IP addresses on my network, because that may indicate that some EC2 instances are not behaving correctly or that we're being under attack.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So hopefully, you understand the value of this feature.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/035_CloudTrail to CloudWatch Metrics Filter - Example.txt

Line 1:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So let's say we have the use case of detecting whether or not we start too many EC2 instances at a time.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Audit Logging, Log Analytics and Investigation, Operational Monitoring
- Services: AWS CloudTrail, Amazon CloudWatch
- Key Insights: The best way to actually implement this architecture is to use CloudTrail and CloudWatch metrics filter, how?
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 3:
- Concepts: Audit Logging, Log Analytics and Investigation, Operational Monitoring
- Services: AWS CloudTrail, Amazon CloudWatch, Amazon EC2
- Key Insights: Well, from CloudTrail, we know we can stream all the API calls being made in two CloudWatch logs, and from CloudWatch logs, we can define a metrics filter and we can set a threshold, for example, and look for the EC2 StartInstances API call and say that we want to trigger a CloudWatch alarm when we detect that metric to be above 30, and from there, maybe go into an SNS topic, and we can alert the security team because too many instances are started at a time.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal; Event-driven remediation signal.

Line 4:
- Concepts: Audit Logging, Log Analytics and Investigation, Operational Monitoring
- Services: AWS CloudTrail
- Key Insights: So the advantage of using CloudTrail with metrics filter is that you have the ability to be able to set thresholds on a specific period for detection of API calls, and that really enhances the CloudTrail feature, so that's it.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It was a quick lecture, but hopefully that makes sense, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/042_[SAA_SOA] VPC Flow Logs.txt

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

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/043_[SAA_SOA] VPC Flow Logs Hands On.txt

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

### File: outputs/AWS Speciality/Security/03_Domain 1 - Detection/044_VPC Flow Logs - Advanced.txt

Line 1:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: So just a quick lecture about VPC Flow Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Some traffic is not captured by it, and this can come up in one question on the exam, so watch out for it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, you have the traffic to the Amazon DNS Server, so only the custom DNS Server traffic is logged.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 4:
- Concepts: Network Telemetry
- Services: Amazon EC2, Elastic Load Balancing
- Key Insights: The traffic for Amazon Windows license activation, the traffic to the EC2 instance metadata service, and the Amazon Time Sync service, all DHCP traffic, all mirrored traffic, and the traffic to the VPC router reserved IP address, this is the first IP of your VPC, and the traffic between your VPC Endpoint ENI and the Network Load Balancer ENI.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's a short one.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS Speciality/Security/05_Domain 3 - Infrastructure Security/114_AWS Shield Advanced - Metrics.txt

Line 1:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So here is a very short lecture about Shield Advanced because you can get CloudWatch metrics out of it and they're going to help you figure out, if there is a DDoS attack happening right now on your infrastructure.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So there is a metric called DDoSDetected which indicates whether there's a DDoS event happening for a specific resource.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: There is a DDoSAttackBitsPerSecond, which gives you the number of bits attacking a specific resource.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: There is the DDoSAttackPacketsPerSecond which gives you the number of packets being sent for a specific resource.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then the DDoSAttackRequestsPerSecond, which gives you an idea of how many requests are happening on a specific resource.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And all these things combined is, basically, allowing you to understand what is happening and how the attack is being conducted.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it, short lecture I promised, but I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/159_S3 Access Logs - Permissions.txt

Line 1:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: So here is a quick lecture around the permissions to enable the S3 access logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we have a source bucket, and the logs are sent into a destination bucket.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The destination bucket must have a bucket policy.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And it looks like this.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: The important thing to note here is that the resource this bucket applies to should be the destination-bucket/*, saying that any path on this bucket should be allowed the operation s3:PutObject as long as the source arn, so that means the source bucket, the source origin of this request is the arn of the source bucket on the left-hand side.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: If you understand this, then you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It's a simple policy, but you need to see it once.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/10_VPC Fundamentals/110_NACL, SG, VPC Flow Logs.txt

Line 1:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So now that we've seen all the aspect about defining the network in our VPC let's talk about this network security.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So let's talk about the concept of network ACL and security groups.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we're back in our VPC.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: It has 1 public subnet and 1 EC2 instance in it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: We can create a NACL or network ACL.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Which is a firewall that controls traffic from and to the subnets.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this can have allow and deny rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we can allow traffic or deny traffic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And that's explicit.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You attach these NACL's at the subnet level and the rules only include IP addresses.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you're saying, Hey all the traffic coming from this IP address is allowed, or all the traffic coming from these IP addresses are denied, and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the NACL is here and it is the first mechanism of defense of our public subnets, and it's at the subnet level.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So as we can see the traffic coming to and from the internet is going to go first through the network ACL.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: But it hasn't reached our EC2 instance just yet.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Next we have security groups and we've seen them already in this course.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Network Telemetry
- Services: Amazon EC2
- Key Insights: So security groups is a firewall that controls traffic to and from an ENI so elastic network interface or an EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: In this security groups as we've seen can only have the allow rules and they can reference either IP addresses or other security groups.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this is something we have seen already in this course.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So we attach a security group to our EC2 instance and now the traffic can flow all the way through to our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And we have the second mechanism of defense.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we've seen security groups at depth in this course but we haven't really touched NACL's.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Because when you have a default VPC the default NACL allows everything in and allows everything out.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: And this is why we haven't had to change the network ACL in this course and we will not do any hands-on on it either.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Network Telemetry
- Services: Amazon EC2
- Key Insights: But just know that before the internet traffic reaches your EC2 instance it has to go through this network ACL which acts as a firewall.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So they're very different than network SCL and the security Group.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And there is a table that summarizes it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You don't need to remember it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This is more something for the Solutions Architect Associate or the certified Sysap's Associate.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: But the idea is that the security group is attached to an instance or an ENI whereas the network ACL is at the subnet level.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: The Security Group is only allow rules whereas for network ACL it's allow and deny rules.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 32:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Is stateful, so that means any traffic that comes that return traffic is automatically allowed regardless of any roles.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: Whereas here for the network ACL you need to allow the traffic in and out.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And here you can look at the rest but this is pretty irrelevant for the certification.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is just if you're curious.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So now that we have all this traffic flowing through our VPC, through the network ACL and the security groups, we're curious about can we get a information about all this traffic flowing through?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Can we get a log from it?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 38:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this is called a VPC flow log.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is going to capture information about all the IP traffic going into your interfaces.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 40:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: That includes the VPC flow logs, the Subnet flow logs and the ENI flow logs or Elastic Network Interface flow logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 41:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So anytime you have network going through your VPC it will be logged in a flow log.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And so this is to help you monitor and troubleshoot connectivity issues.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, if you want to know why your subnet cannot access the internet or why a subnet can talk or cannot talk to another subnets or internet to subnet et cetera, et cetera.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 44:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: So anytime you have a network issue and you need to be able to troubleshoot it, you need to look at the VPC flow logs because they will give you everything.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 45:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: All the information around the allowed and the denied traffic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 46:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: It will capture network information as well from anything that is managed by AWS.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 47:
- Concepts: Network Telemetry
- Services: Amazon Aurora, Amazon ElastiCache, Amazon RDS, Amazon VPC Flow Logs, Elastic Load Balancing
- Key Insights: So the Elastic Load Balancers, your ElastiCache, RDS, Aurora all this will appear in your VPC flow logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 48:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch, Amazon Data Firehose, Amazon Kinesis, Amazon S3, Amazon VPC Flow Logs
- Key Insights: So in case of connectivity issues you can look there right away And the VPC flow logs data can be sent to Amazon S3 it can be sent to CloudWatch Logs and Kinesis Data Firehose so you can send it to many places in AWS.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 49:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 50:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 51:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: We've seen NACL's, security groups and VPC flow logs and I will see you and the next lecture.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

### File: outputs/aws-certified-developer-associate-dva-c01/15_CloudFront/166_CloudFront - Real Time Logs.txt

Line 1:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So here is a short lecture on real-time logs in CloudFront.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 2:
- Concepts: Observability Operational Context
- Services: Amazon Kinesis
- Key Insights: So it's possible for you to get all the requests that are received by CloudFront to be sent in real time to a Kinesis Data Stream.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: The goal of this is, for example, to monitor, analyze, and take actions based on content delivery performance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: Amazon Kinesis
- Key Insights: So just to give you an overview, the users are going to do a lot of requests into CloudFront and then if you enable the real-time logs, all these requests are going to be logged into a Kinesis Data Stream.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 5:
- Concepts: Observability Operational Context
- Services: AWS Lambda, Amazon Kinesis, Amazon RDS
- Key Insights: And then, for example, you can use a Lambda function to process these records from your Kinesis Data Stream.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: AWS Batch, AWS SAM, Amazon Data Firehose, Amazon Kinesis, Amazon RDS, Amazon S3
- Key Insights: If you need to do near real-time processing, you will do the exact same first part, because CloudFront can only send to Kinesis Data Stream, but then you would use Kinesis Data Firehose to process these records by batches and maybe send them into Amazon S3 or Open Search, or whatever destination you may have in mind.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM, Amazon Kinesis
- Key Insights: So this allows you to choose, as well, the sampling rate, which is the percentage of the request you want to receive in your Kinesis Data Stream.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: Because if you have a very high traffic type of API or endpoint, you may not want to have all requests in there, just a sample.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: Amazon Kinesis
- Key Insights: And also, you can specify which fields and which cache behaviors or path patterns you want to have access to in your Kinesis Data Stream.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So for example, you say, "Hey, I only wanna have (indistinct) slash images type of cache behavior, because I just wanna see the request done to this path specifically." Okay, that's it for this lecture.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/242_CloudWatch Agent & CloudWatch Logs Agent.txt

Line 1:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: Now let's talk about how we can use something called the CloudWatch Agents to take logs from EC2 instances, as well as metrics and have them onto CloudWatch.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 2:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: So by default, no logs are going from your EC2 instance from CloudWatch.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 3:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: For this, you need to create and start an agent which is a small program on your EC2 instances that will push the log files that you want.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: So the idea, is that your easy EC2 instances will have the CloudWatch Log Agents, for example running sending the logs into CloudWatch Logs for it to work.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 5:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: Your EC2 instance must have an IAM role that allows it to send the log to CloudWatch Logs, that make sense?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry and visibility signal.

Line 6:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And good to notice that this CloudWatch log agents can also be setup on-premises servers.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Operational Monitoring
- Services: AWS SAM, Amazon CloudWatch
- Key Insights: So it's possible for you to have your services, virtual servers like VM-ware on premises and you install the exact same agent, which is a small Linux Program and your logs will end up in CloudWatch Logs as well.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 8:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Now, there are two different agents you can find in CloudWatch.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: You have the CloudWatch Logs Agent, which is the older one and the CloudWatch Unified Agent, which is the newer one.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 10:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So they're both for virtual servers EC2 instances on premises servers, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: The CloudWatch Logs Agents is the old version and can only send logs to CloudWatch Logs.
- Hidden/Implicit Meaning: Constraint or limitation signal; Telemetry and visibility signal.

Line 12:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Whereas the Unified Agents, will collect additional system level metrics which has RAM, processes.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 13:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: I'll show you this in the very next slide, and also send the logs into CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now it's unified.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: It's better because it can do both metrics and logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Hence, the name Unified Agent.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: But also you can configure that agents very easily using the SSM Parameter Store, which is a feature that the previous agent did not have.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So you can do centralized configuration, for all your Unified Agents.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So the CloudWatch Unified Agent can send, logs to CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 20:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: But let's have a look at the metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 21:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So if you install it, on your Institute instances or your Linux servers you can collect metrics, and what are they?
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 22:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Well, we can collect the CPU metrics but at a way more granular levels, for example: active, guest, idle, system, user, steal.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You don't need to know them at all.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: I'm just giving you the granularity of all these metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 25:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Disc metrics of free use total.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 26:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Disc IO in terms of number of writes, reads, bytes, iops.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: RAM so free, inactive, used, total, cached.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Netstats with number of TCP and UDP connections, net packets, bytes to get some information around the processes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So in total number of process, I mean your dead, bloqued, idle, running, sleep.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And Swap Space, which is a memory spilling on disc.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So how much is free use and use percentage?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So why don't you remember is just take a a mental screenshot of these things.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: The bottom line is the CloudWatch Unified Agent allows it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: You get a lot more metrics at a lot more granular details than the normal monitoring for EC2 instances.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 35:
- Concepts: Network Telemetry
- Services: Amazon EC2
- Key Insights: As a reminder out of the box for EC2, you get some information on disk, CPU, and network not memory not swap, but all of this at a high level, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: If you want more granularity think CloudWatch Unified Agents, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it for me.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 38:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/aws-certified-developer-associate-dva-c01/30_AWS Security & Encryption_ KMS, Encryption SDK, SSM Parameter Store, IAM & STS/430_CloudWatch Logs Encryption.txt

Line 1:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So, one short lecture on the CloudWatch Logs encryption.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 2:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So, you can encrypt your CloudWatch Logs with KMS keys.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And the encryption happens at the log group level.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, not with log streams but the log group level.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And that you can either associate a CMK with an existing log group, or you can create a new log group with a CMK.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: But you cannot associate a CMK with a log group using the CloudWatch console; you have to use the CloudWatch Logs API for the CLI and the SDK, so we'll be using the CLI in this lecture.
- Hidden/Implicit Meaning: Constraint or limitation signal; Telemetry and visibility signal.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And we have two comments to note.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The first one is called associate KMS key.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: To associate a KMS key with an existing log group or create-log-group to create a log group that doesn't exist yet and directly associate it with a KMS key.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, let's go into the hands on to see how that works.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So, here I am in CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to go to my log groups and I have 23 of them right now.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: And, so, if we take any of those, for example, the aws/lambda/hello-world log group, we can see that there is no KMS key ID associated with that log group yet.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And we can not do any of that through the UI, so the UI does not allow us to associate a KMS key ID with this log group.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, what we want to do is to take this key that we've encrypted from before, the tutorial key, and associate it with this log group.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For this we have to use the CLI.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and play it out.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So, I'm going to go into my CloudWatch Logs code directory and open this command.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And, so, this first command is to associate a KMS key with an existing log group.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, there is simply, I copy this command, and I paste it here, and this takes my KMS key.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I paste in the log group name as an argument, as well as my KMS key ID.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And finally, I paste in the region.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I press enter, and I'm getting an access denied exception saying that this associate KNM key operation did not work.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Either the key does not exist, but I know it exists for sure, or it's not allowed to be used with this log group, and this is the second options that's right.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, indeed, the key has not been authorized to be used with this log group.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, we need to apply a certain key policy.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, if we go here, there is a key policy that Jason filed.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And we need to apply it to my specific key.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, I'm gonna get the second part here, that's what's interesting.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, I'm gonna get the second part and the comma, and I'm gonna go into my KMS key consul, and in here I have a key policy.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I'm going to switch to policy view and I'm going to edit this key policy.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, this key policy right now is the default key policy which allows any user or role within my account to use my KMS key, but doesn't allow any service.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So, we need to allow the service of CloudWatch Logs to access this key.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, I'm going to paste this here, and so there's a comma that has been added in this statement.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And, so, here we allow logs dot, and we need to paste in the region, so EU-west-2.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 36:
- Concepts: Observability Operational Context
- Services: Amazon ECR
- Key Insights: So, logs.EU-west-2.amamazonaws.com is allowed to do encrypt, decrypt, re-encrypt, generate data key, and describe on this key.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 37:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, I'll save these changes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 38:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And, now I have applied a key policy which should allow more things to access including CloudWatch Log.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 39:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, we should try again our command, and, hopefully, this time it will work.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 40:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, I will run this command again, and this time it has worked.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 41:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, we get the end and it is applied.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, how do I know this?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Well, we could refresh this UI and now we can see that out KNS key ID, right here, is associated with out CloudWatch Logs, and so that mean that this log group is going to be fully encrypted with this KMS key ID.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 44:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I could try the second command, which is to create a new log group with this example I called, example encrypted, directly passing in the KMS key ID.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 45:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, I paste this in and press enter, and it says end.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 46:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, if I go back to my log groups and then refresh, I can find at the very bottom my example encrypted log group.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 47:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this one is also associated with out KMS key ID.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 48:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So, this is the two ways to create an associate KMS key ID with the log groups in CloudWatch Log.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 49:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, it cannot be done through the consul.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 50:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And I really like the fact that we had to modify a key policy to allow CloudWatch Logs to access out KMS key, which I think is a tremendous example in security.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 51:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 52:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/aws-solutions-architect-professional/04_Security/037_AWS Managed Logs.txt

Line 1:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now let's talk about AWS managed logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is the kind of logs that can be produced by the AWS services that can be helpful for your solution architecture.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 3:
- Concepts: Observability Operational Context
- Services: Elastic Load Balancing
- Key Insights: The first one is the load balancer access logs to get details of all the requests meant to your load balancers.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 4:
- Concepts: Observability Operational Context
- Services: Elastic Load Balancing
- Key Insights: And so it's for the ALB, the NLB and the CLB.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: And you can export these lugs into S3.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS CloudTrail, Amazon CloudWatch, Amazon S3
- Key Insights: CloudTrail Logs which are the logs of all the API calls met within your accounts, and this can be exported to S3 and CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 7:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: VPC Flow Logs, which is going to give you information about all the IP traffic going to and from your network interfaces, in your VPC.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 8:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon Data Firehose, Amazon Kinesis, Amazon S3
- Key Insights: And this can be sent to S3, to CloudWatch Logs and to Kinesis Data Firehose.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 9:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: You have Route 53 Access Logs and these can be sent and streamed directly into CloudWatch Logs and they will log information about all the queries that Route 53 is receiving.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 10:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: S3 Access Logs where you can send this to another S3 bucket which is giving you some information about all these access logins that happens for the request made within your bucket.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 11:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: CloudFront Access Logs to S3 which is going to give you detailed information about every user request that CloudFront will receive.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 12:
- Concepts: Audit Logging
- Services: AWS Config, Amazon S3
- Key Insights: And finally, all the config information can be exported into S3, so you can get all your configuration exported as a backup and do some analysis on them.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for all you need to know just a very small informational lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/aws-solutions-architect-professional/11_Monitoring/114_CloudWatch.txt

Line 1:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Okay, so next let's get into CloudWatch.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So CloudWatch has been everywhere through our discussions, but now it's time we take a deeper look at CloudWatch in specifics.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So the first part is CloudWatch Metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 4:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And we already know that all the AWS services many of them provide you CloudWatch Metrics out of the box.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 5:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And for EC2 it's particular by default.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: The resolution is five minutes for EC2 standard monitoring.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: But you can enable detailed monitoring for EC2 which gives you EC2 metrics every one minute.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 8:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon EC2
- Key Insights: We know the EC2 metrics or CPU network disc in case you have an instant store.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But we know that RAM is not a built-in metric.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So if you want to get the memory usage of your EC2 instance out of your EC2 you need to create a custom metric.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Maybe use the CloudWatch unified agent to send that metric back into CloudWatch.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Okay, in terms of custom metrics we can create them ourselves.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The standard resolution of a custom metric is one minute but you can enable high resolution mode for your custom metric and get that down all the way to one second.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Now the CloudWatch alarms can trigger three things and you need to remember it absolutely.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 15:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So you can trigger an EC2 action.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 16:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And your EC2 action can be to reboot, stop, terminate or recover your EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can have auto-scaling actions or SNS.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Distributed Tracing and Events, Operational Monitoring
- Services: Amazon CloudWatch, Amazon EventBridge
- Key Insights: And finally, alarm events can be intercepted by Amazon EventBridge, opening up many possible integrations for CloudWatch alarms.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 19:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon RDS
- Key Insights: Finally, your CloudWatch dashboards can display metrics and alarms and can show the metrics of multiple regions.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Event-driven remediation signal.

Line 20:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: CloudWatch logs will get its own little discussion at the end of this lecture.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 21:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Okay, so CloudWatch alarm, it's extremely important we understand the integrations.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 22:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: So the CloudWatch alarm can be set to do an EC2 action which is to stop, terminate, reboot, or recover.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 23:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: And so a very common use case is for you to monitor a critical EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And with the CloudHSM alarm, if the status check of that instance fails then we will trigger a recover action to recover our EC2 instance which will keep its private IP, its public IP, and so on.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 25:
- Concepts: Observability Operational Context
- Services: Auto Scaling
- Key Insights: Okay, other things is Auto Scaling.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Auto Scaling
- Key Insights: So we have an Auto Scaling group and we want to scale based on different CloudWatch alarms.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This is a perfect use case.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And finally, in case any alarm is triggered, we may want to have some emails being sent some alerting being done.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 29:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so SNS is a great way to do it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And from SNS, we can even send this to one or many SQS queues.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: We fan out or use a Lambda function to react to it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Distributed Tracing and Events, Operational Monitoring
- Services: Amazon CloudWatch, Amazon EventBridge
- Key Insights: As I said, from CloudWatch alarm you can send events to Amazon EventBridge.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 33:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that means that you can enable any kind of integration you want from there.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Observability Operational Context
- Services: AWS Lambda, Amazon Kinesis
- Key Insights: For example, you can send data into Kinesis or you can trigger a step function workflow or you can trigger a Lambda function as well.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 35:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: So as you can see, there's not only one way of doing things in AWS, and Amazon EventBridge really opens up a way to intercept any alarm in your accounts.
- Hidden/Implicit Meaning: Constraint or limitation signal; Event-driven remediation signal.

Line 36:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Next, we have CloudWatch Synthetics Canary which is a way for you to run a script.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Operational Monitoring
- Services: Amazon EBS
- Key Insights: And that script is going to monitor your APIs, your URLs on your websites.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 38:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So you want to run some sort of health checks from within Synthetics Canary.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that the script is going to reproduce what your customers actually do with some code to find issues before your customers are actually impacted.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 40:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And then based on these health checks, run regularly by CloudWatch, then you can check the availability and the latency of your endpoints, and you can store the load time data and the screenshots of the UI directly from within CloudWatch Synthetics Canary.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 41:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is great to check your API against real workflow.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So let's say we developed an API on an EC2 instance in US-East-1 and the users are accessing our instance using Route 53.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: Then we're going to create a CloudWatch Synthetics Canary which is going to monitor our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 44:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: For example, every one minute it's going to send an API call or a few API calls or execute a series of actions.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 45:
- Concepts: Observability Operational Context
- Services: AWS SAM, Amazon EC2
- Key Insights: Now if the EC2 instance does not respond well then we can see that one of our users may encounter the same problem, and therefore something is wrong with our application.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 46:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it doesn't detect, not only if our application is down but also if something is wrong with our application.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 47:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Meaning if the answer provided by our app is erroneous in that case from CloudWatch Synthetics Canary you can trigger a CloudWatch alarm.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 48:
- Concepts: Operational Monitoring
- Services: AWS Lambda, Amazon CloudWatch, Amazon EC2
- Key Insights: And of course then you can talk to a Lambda function from the CloudWatch alarm, which could update the DNS record in Route 53 to link all traffic to a second EC2 instance, that may not be buggy.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 49:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So these scripts that are running on CloudWatch Synthetic Canary can be written in Node.JS or Python.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 50:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And from this you get access to Google Chrome browser that's had less, meaning that you don't actually get the UI you just have access directly to the API or Google Chrome.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 51:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this script can be run once or on the regular schedule.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 52:
- Concepts: Observability Operational Context
- Services: Amazon EBS, Amazon EC2
- Key Insights: So it's actually a full blown test against your EC2 instances, or your applications, or your websites and APIs and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 53:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: But with a dashboard and summary within CloudWatch, which is great.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 54:
- Concepts: Network Telemetry, Operational Monitoring, Retention and Forensics
- Services: Amazon CloudWatch
- Key Insights: So of course to get you started on CloudWatch Synthetics Canary you have blueprints which allow you to, for example, run a heartbeat monitor to load a URL, store a screenshot, and then do an HTP archive file.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 55:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Or API Canary to do basic test read, and also write functions for your REST APIs, or broken link checkers to check that if all the links inside of your URLs that you're testing are correct.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 56:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Visual monitoring to compare, If a screenshot taken during a Canary is similar to a baseline screenshots.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 57:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch, Amazon EBS
- Key Insights: Canary recorder, which is used to actually record your own actions on the website, and then it will generate a script for that that you can run on CloudWatch Synthetics Recorder.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 58:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Or the GUI Workflow Builder to verify that the actions taken on your webpage, for example, you can test a webpage with a login form using this.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 59:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Okay, so that's it for CloudWatch, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/aws-solutions-architect-professional/11_Monitoring/115_CloudWatch Logs.txt

Line 1:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Now let's talk about the more important topic for you to remember, which is CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 2:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: CloudWatch Logs is going to be very important going into the SA Pro exam.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 3:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And so first you need to know how to get data into CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 4:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So the first way to get data is through the SDK, or the CloudWatch Logs Agent, or the CloudWatch Unified Agent.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I will show you the difference between the Logs Agent and the Unified Agent in a slide in this lecture.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 6:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Now we can also get data in CloudWatch Logs through some integration with AWS services.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 7:
- Concepts: Operational Monitoring
- Services: AWS Elastic Beanstalk, Amazon CloudWatch
- Key Insights: So for example, Elastic Beanstalk can help you collect all the logs from your application and send that to CloudWatch Logs directly.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 8:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon ECS
- Key Insights: ECS also has a log driver to collect log from the containers and send that into CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 9:
- Concepts: Operational Monitoring
- Services: AWS Lambda, Amazon CloudWatch
- Key Insights: Lambda has a direct integration with CloudWatch Logs and will give you all the function logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 10:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch, Amazon VPC Flow Logs
- Key Insights: The VPC Flow Logs can be sent to CloudWatch.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 11:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: API Gateway, AWS CloudTrail
- Key Insights: API Gateway Access Logs, and CloudTrail based on the filter you wanna set.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 12:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: So good to know the CloudWatch Logs Agent can be installed on EC2 machines, but not only it can be installed on your on-premise Vms or on any server you want as long as it has logs and you wanna send them into CloudWatch Logs.
- Hidden/Implicit Meaning: Constraint or limitation signal; Telemetry and visibility signal.

Line 13:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Finally, you can also get DNS queries logged from Route53 into CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 14:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Okay, so next, how does CloudWatch Logs work in details?
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we have log groups, and you can give any name you want that usually represents an application.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And within your log groups you're going to have log streams which are going to be instances within your application of the log files or your containers.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it's up to you to organize this the way you want, and usually it doesn't really matter.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: What matters is what inside log stream is, which is your log itself.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can define log expiration policies, so your log can be chosen to never expire, or expire after 30 days, et cetera, et cetera.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 20:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And if you do expire your logs, obviously, you need to make sure that they're going to be persisted somewhere in case you need to analyze them in the future.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 21:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So it is possible for you to encrypt your CloudWatch Logs with KMS.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 22:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And CloudWatch Logs has the possibility to send these logs to other destinations.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 23:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: So we'll see this in a second where we have Amazon S3 where we can create exports.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon Kinesis
- Key Insights: We have Kinesis Data Stream if you wanted to stream the CloudWatch Logs into something that gives you more ability to analyze them in real time.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 25:
- Concepts: Observability Operational Context
- Services: Amazon Data Firehose, Amazon Kinesis, Amazon Redshift, Amazon S3
- Key Insights: Kinesis Data Firehose, again, if you want to export these logs into S3, ElasticSearch, Redshift, or Splunk.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 26:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: And Lambda and ElasticSearch through a Lambda integration.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We'll go over those in a second.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: But now let's talk about CloudWatch Logs Metric Filters and Insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 29:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So CloudWatch Logs can use a filter expression, and these filter expression can result in creating a metric, hence the name Logs Metric Filter.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 30:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So for example, say you are looking for a specific IP inside of a log and you want to have an alarm or a metric at least based on how many times that IP has been found, then you would create a metric filter.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 31:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Or if you wanted to count the number of occurrences of the word error in your logs, for example, if you wanted to get alerted in case your application goes crazy and has too many errors, then that could be a very good use case for CloudWatch Logs Metric Filter as well.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 32:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And these metric filters can be used to trigger CloudWatch alarms, and from this you have all your automations you need.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 33:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And if you wanted to analyze your logs within CloudWatch Logs, you could use something called CloudWatch Logs Insights to query logs directly, and even keep these queries and add them to a CloudWatch Dashboard.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 34:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So the cool thing about CloudWatch Logs Insights is that it has also simple queries of what you can do directly from within CloudWatch.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, you can have the number of exceptions logged every five minutes, or the list of log events that are not exceptions.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Network Telemetry
- Services: AWS Lambda, Amazon VPC Flow Logs
- Key Insights: Or something specific to Lambda or Route53 or VPC Flow Logs, et cetera, et cetera.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 37:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Okay, so say you wanted to not analyze your logs within CloudWatch Logs, but you wanted to analyze them with your own tools.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 38:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And so for this you need to export the data of CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 39:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: So the first thing we have to know is the S3 export.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 40:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon S3
- Key Insights: Very simple, we take the CloudWatch Logs and we send it into Amazon S3.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 41:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: There is a feature directly made for that.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: And to send these logs to Amazon S3 you must encrypt them.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry and visibility signal.

Line 43:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: And so this feature supports SSE-S3 and SSE-KMS as encryption mechanisms.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 44:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: On top of it, log data can take up to 12 hours to become available for an export.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 45:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is definitely not real time, and this is not automated.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 46:
- Concepts: Audit Logging, Operational Monitoring
- Services: Amazon CloudWatch, Amazon S3
- Key Insights: You have to use the API call named CreateExportTask to get the data from CloudWatch Logs into Amazon S3.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 47:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it's not near-real time, it's not real time.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 48:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: For this, we can use CloudWatch Logs Subscriptions instead.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 49:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So let's talk about CloudWatch Logs Subscription now.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 50:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So your CloudWatch Logs can get a subscription filter and you can filter the type of logs you want out of CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 51:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And this subscription filter can send data to many different outputs.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 52:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: So the first one is a managed Lambda function by AWS, and that Lambda function is meant to send data to Amazon ElasticSearch in real time.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 53:
- Concepts: Log Analytics and Investigation
- Services: AWS Lambda
- Key Insights: But it's very possible for you to define your own Lambda function and do whatever you want in real time on top of the subscription filter.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 54:
- Concepts: Log Analytics and Investigation
- Services: Amazon Data Firehose, Amazon Kinesis
- Key Insights: Then you have the option to also use a subscription filter with Kinesis Data Firehose.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 55:
- Concepts: Observability Operational Context
- Services: Amazon Data Firehose, Amazon Kinesis, Amazon S3
- Key Insights: And we know Kinesis Data Firehose now, so we can send data near-real time into Amazon S3, or into Amazon ElasticSearch.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 56:
- Concepts: Observability Operational Context
- Services: AWS Lambda, Amazon Data Firehose, Amazon Kinesis, Amazon S3
- Key Insights: So the question is, should we use Kinesis Data Firehose or Lambda to send data to Amazon ES or Amazon S3?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 57:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Well, it really depends on your requirements.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 58:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: If you have the real time requirements, you have to use a Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 59:
- Concepts: Observability Operational Context
- Services: Amazon Data Firehose, Amazon Kinesis
- Key Insights: But if you're willing to have one minute of lag, for example, and you are okay with near-real time, then Kinesis Data Firehose is going to be a better choice probably, a bit less expensive, and more scalable.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 60:
- Concepts: Log Analytics and Investigation
- Services: Amazon Kinesis
- Key Insights: Finally, it is possible for you to take these logs from the subscription filter into Kinesis Data Streams, and from it we can use whatever tool we would need.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 61:
- Concepts: Observability Operational Context
- Services: AWS Lambda, Amazon Data Firehose, Amazon EC2, Amazon Kinesis
- Key Insights: So Kinesis Data Firehose, Kinesis Data Analytics, EC2 instances that are running the KCL, or a Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 62:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Another good architecture to know with CloudWatch Logs is that you can do it for multi-account and multi-region Log Aggregation.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 63:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So say you have an Account A, Region 1, you create the CloudWAtch Logs and a subscription filter.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 64:
- Concepts: Observability Operational Context
- Services: Amazon Kinesis
- Key Insights: And then this sends it into a Kinesis Data Stream in a central logging account.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 65:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: Same for another account.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 66:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So Account B, Region 2.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 67:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch, Amazon Kinesis
- Key Insights: We have the CloudWatch Logs, subscription filter, and send this into a Kinesis Data stream in the central logging account.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 68:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And for account B I just showed that it has another region, so it could be multi-account and multi-region.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 69:
- Concepts: Observability Operational Context
- Services: Amazon Kinesis
- Key Insights: And from this it has to be into Kinesis Data Stream.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 70:
- Concepts: Observability Operational Context
- Services: Amazon Data Firehose, Amazon Kinesis, Amazon S3
- Key Insights: You can define your own Kinesis Data Firehose and sync that data near-real time into Amazon S3, and this will be into your central security or logging account.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 71:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this could be very good, and this is a very, very common architecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 72:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: Now you can use the CloudWatch Agent to actually get logs from your EC2 instances.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 73:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And there is tight integration using the CloudWatch Agent and Systems Manager.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 74:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So you can install the CloudWatch Agent, for example, using the SSM Run Command.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 75:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So say we have an EC2 instance, it has the SSM agent running and it's set up with Systems Manager.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 76:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS Config, Amazon CloudWatch, Amazon EC2
- Key Insights: Then using a Run Command called ConfigureAWSPackage, and the package is AmazonCloudWatchAgent, then the CloudWatch Agent will be automatically set up on your EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 77:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And the alternative is, again, to use an EC2 instance with the SSM agent installed on it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 78:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: But this time instead of Run Command you use the Systems Manager State Manager feature to make sure that, again, the CloudWatch Agent is installed on your EC2 instance, and it's two ways of doing it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 79:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: And finally, if you don't have the SSM agent installed but you still want to use SSM, the EC2 instance can actually be installed with the CloudWatch agent itself.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 80:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you can install it with some commands.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 81:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS Config, Amazon CloudWatch
- Key Insights: And then when you configure and start the CloudWatch agent you can instruct it to actually download the agent configuration directly from the SSM Parameter Store, therefore making the CloudWatch Agent very complete and configured out of the box.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 82:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 83:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/aws-solutions-architect-professional/11_Monitoring/118_AWS Personal Health Dashboard.txt

Line 1:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: If you wanted to know how events in AWS affects your services and your resources, then you would use the personal health dashboard.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, this is the little bell icon you see on the top right corner of your console, and it is a global service and it will show how outages happening within AWS will directly impact you.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: Amazon EBS, Amazon EC2
- Key Insights: It will show you the impact on your resources so you can see if your EC2 instances or EBS volumes have maintenance upcoming, and it will list issues and actions you can do to remediate them.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, the important thing to know is that it show you all the maintenance events from AWS and this is a keyword to look for in the exam.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: You can also access all this information programmatically using an API called the AWS Health API.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And finally, there's a capability, if you have enabled AWS Organizations, to aggregate all the information from all your accounts in your organization in one place, and here is the URL in case you need it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now, let's talk about health event notifications.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Distributed Tracing and Events, Operational Monitoring
- Services: Amazon CloudWatch, Amazon EventBridge
- Key Insights: So, you can use if EventBridge or CloudWatch Events to react to changes to your health events for your accounts.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 9:
- Concepts: Distributed Tracing and Events, Operational Monitoring
- Services: Amazon CloudWatch, Amazon EventBridge
- Key Insights: So we have the personal health dashboard that will trigger an event in CloudWatch Events or EventBridge, okay?
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 10:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: For example, you may want to receive notification whenever EC2 instances in your accounts are scheduled for updates.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: In this case, you would set up this notification and then you would line it up with a target.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So this can not be used to return public events, so, all the service health dashboard events cannot be intercepted here.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: They have to be using the RSS if you remember.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But with this, we can enable use cases to capture notifications for our accounts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, sending notifications, capture event information, or take automatic corrective actions, if you know how to do so using some automation.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 16:
- Concepts: Distributed Tracing and Events, Operational Monitoring
- Services: AWS Lambda, Amazon CloudWatch, Amazon EventBridge, Amazon Kinesis
- Key Insights: So, CloudWatch Events or EventBridge can invoke Lambda, SNS, SQS, or Kinesis Data Streams.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 17:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: And then for example, if you have Lambda, you can do whatever you want with it and take some corrective action if this is something that happens a lot in your accounts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, that's it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Now let's have a look at the health dashboard.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So what I'm going to do now is click on this bell icon.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: As you can see right now, there's zero open issues, schedule changes, or other notifications.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But I can click on "Event Log" and see what has happened in my accounts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Log Analytics and Investigation
- Services: Amazon Athena, Amazon EC2
- Key Insights: And so, as you can see, some days, for example, June 30th, there was an Athena engine version auto upgrade notification and one entity was affected or an EC2 instance recovery, no action, because it's something I triggered during my recording and it affected one resource.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you can see all these kind of issues and whether or not they were closed.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: For example, there was an EC2 operational issue right here, and it gives you the region, so US-East-2, the category, whether or not it affected some resources, and what was the description of that issue, which was right here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can also get some information around the affected resources here if you have many.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this becomes very, very, very helpful.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Then there is a dashboard, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And the dashboard shows you how many issues in the past seven days, scheduled changes, and other notifications.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And as you can see, you can create a CloudWatch Event rule to create rules and receive notifications for events that might affect your infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Distributed Tracing and Events, Operational Monitoring
- Services: Amazon CloudWatch, Amazon EventBridge
- Key Insights: So what I'm going to do is go to CloudWatch Events, but actually I'm going to go into EventBridge to show you the newer interface, because they're similar.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 33:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And here we have a rule, and we can create a rule, and I'll call it "PHD Demo Rule." And then we have to look for an event pattern by service and the service provider is going to be "AWS" and the service name is going to be "Health," okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then we select an event type.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we can have all events or specific health events, but we're going to use "All Events." And then it shows you what a simple event can be for this.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So for example, this is an elastic load balancing issue with a start date and an end date and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So we can get notified of all these events right here through CloudWatch Events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 38:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: And then, the cool thing is that you can select targets and invoke a Lambda function or send a message to an SNS topic and so on, or all really the destinations are listed right here for your health events to be intercepted.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is one way of doing it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 40:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And the other way is to query all this information using the health API.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 41:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: As you can see, you can also get an organization-wide view.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so the idea is that you set up organizations and then you enable organizational view for AWS Health, and you'll be good to go.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I'm pretty lucky because I just got an issue with my PHD.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 44:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So I'm trying to launch to EC2 instances right now for another lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 45:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And it turns out that they're in pending states for a long time.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 46:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And for me this looks a bit odd.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 47:
- Concepts: Operational Monitoring
- Services: Amazon RDS
- Key Insights: So, I looked at my personal health dashboards and see that there's one open issue.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 48:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I can click on it and see that there is an open issue that's affecting me right now.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 49:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I'm pretty unlucky, but pretty lucky regarding recording purpose.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 50:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And so, as we can see, in EU-Central-1 there is an EC2 operational issue.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 51:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And the event data is showing me that there is an instance connectivity issue.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 52:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So there is increased error rates and latencies for the EC2 API and connectivity issues for some instances within a single AZ in the EU central region.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 53:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it doesn't detect that my instances are affected.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 54:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It's probably because my instances are not launched just yet, but as you can see, this was shown in my PHD.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 55:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And so I can explain what is happening regarding my EC2 instances just yet, even though I find it extremely annoying.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 56:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, the only thing I have to do is to wait for this to be resolved.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 57:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So hopefully that makes sense of what you understand now, the usefulness of the service.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 58:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked this lecture and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/aws-solutions-architect-professional/15_VPC/159_VPC Flow Logs.txt

Line 1:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: So now let's talk about VPC Flow Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 2:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: VPC Flow Logs allow you to capture information from IP traffic going into your interfaces.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 3:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So that could be at the VPC level, the subnet level, or the elastic network interface, ENI level.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you have three kinds of flow logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 5:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: They're very helpful to monitor and troubleshoot connectivity issues happening within your VPC.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon Data Firehose, Amazon Kinesis, Amazon S3
- Key Insights: So these flow logs can be sent to Amazon S3, CloudWatch Logs, and Kinesis Data Firehose.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 7:
- Concepts: Observability Operational Context
- Services: Amazon ElastiCache, Amazon RDS, Amazon Redshift, Elastic Load Balancing
- Key Insights: And they will capture information for also AWS managed interfaces such as ELB, RDS, ElastiCache, Redshift, WorkSpaces, your NAT gateway, your transit gateway, and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So in this graph, well, it's very simple.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon S3
- Key Insights: Your flow logs are at the VPC level, for example, or subnet or ENI level and they're sent to CloudWatch and Amazon S3.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is what a VPC Flow Log looks like.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So there is a format associated with it but there is a version, account-id, interface-id, source address, destination address, source port, destination port, protocol, packets, bytes, start, and action, and log-status.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So this is metadata about the network packets going into your VPC.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And you don't need to remember this at a high level, right?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But let's have a look at what information we can get out of these flow logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the source address and the destination address help identify problematic IP.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This is where you see if an IP is repeatedly being denied, maybe there is something wrong with that IP or maybe you're being attacked by a specific IP.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Srcport and dstport helps you identify the problematic ports.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Action is going to be either accept or reject, and so it's going to say whether or not it's a success or failure at the SG or NACL level, and we'll see this in the very next slide.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: And so this can be used, the VPC Flow Logs to do analytics on usage patterns or detect malicious behavior, port scans, and so on.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 20:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: Now, to query these flow logs, you have two ways of doing it.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 21:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon Athena, Amazon CloudWatch, Amazon S3
- Key Insights: The best way is to do Athena on S3, or if you wanted to do a streaming analysis you could use CloudWatch Logs Insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So here are some examples that you can have a look on your own time for Flow Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So how do we use Flow Logs to troubleshoot security group and NACL issues?
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Well, we look at the ACTION field.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at the typical incoming request for your NACL and your subnet.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So remember, your NACLs are stateless and your security groups are stateful.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So what happens?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: Well, if we get an inbound reject, so we see that the inbound request coming from the outside to our EC2 instance is rejected.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: That can mean that either from this graph the NACL is refusing the request, or the security group is refusing the request.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this makes sense, right?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But if we have a inbound accept and an outbound reject, it can only mean a NACL issue.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 32:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Well, because your security group is stateful, and if the inbound is allowed because of the accept, automatically, the outbound will be allowed thanks to the statefulness of your security group.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So after outgoing requests, similar analysis, right?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This is the diagram we know already.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so if you get an outbound reject, then you have a NACL or a security group issue.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But if you get an outbound accept and an inbound reject, then it must mean a NACL issue.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 38:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: So let's have a look at a few architectures for your VPC Flow Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 39:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So they can flow into CloudWatch Logs, as we know.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 40:
- Concepts: Log Analytics and Investigation, Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And then we can use something called CloudWatch Contributor Insights, for example, to find the top 10 IP addresses that contribute to the most amount of network on your VPC.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 41:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Or an ENI, or whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch, Amazon VPC Flow Logs
- Key Insights: You can also use VPC Flow Logs to send them again into CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 43:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: Here we can set up a metric filter to look, for example for the SSH or the RDP protocols.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 44:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And if we realize that there is a lot more SSH or RDP than usual, then trigger a CloudWatch alarm and send an alert into an Amazon SNS topic, because something fishy may be happening on your network.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 45:
- Concepts: Log Analytics and Investigation, Network Telemetry
- Services: Amazon Athena, Amazon S3, Amazon VPC Flow Logs
- Key Insights: Or we can use a VPC Flow Log, and then we send everything into an S3 bucket for storage, and we use Amazon Athena to analyze the VPC Flow Logs with SQL.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 46:
- Concepts: Observability Operational Context
- Services: Amazon QuickSight
- Key Insights: And we can even visualize that with Amazon QuickSight.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 47:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: So there is one case where you have VPC Flow Logs with a NAT gateway, and it turns out that you have this use case and it seems weird to you.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 48:
- Concepts: Network Telemetry
- Services: Amazon VPC Flow Logs
- Key Insights: So the VPC Flow Logs show Action = ACCEPT for incoming traffic from public IP addresses onto your VPC.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 49:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But you know that NAT gateways don't accept traffic from the internet.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 50:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you're wondering if your NAT gateway is actually accepting inbound traffic from the internet because you still see it in your VPC Flow Log.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 51:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is the architecture where the internet goes through and talks to your NAT gateway and maybe to your private subnets, so you wanna verify this.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 52:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So in that case, that is possible if the inbound traffic is permitted by the security group or the NACLs of your NAT gateway itself.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 53:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But when it arrives to your NAT gateway, it's going to be dropped because the NAT gateway itself doesn't allow traffic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 54:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So to confirm this behavior, you run the following query in your CloudWatch Log Group's insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 55:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: You do a filter, and in the filter you look for the destination address to be xxx.xxx where this is the first two octets of your VPC CIDR.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 56:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you look at destination being within your VPC, and your source address to be like the public IP that's trying to reach you.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 57:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you're going to analyze whether or not you see any traffic from public IP that's trying to reach you onto your VPC.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 58:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then you sum the bytes as the byte transferred by source address and destination address.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 59:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this is going to view a list of all the traffic between the public IP and your VPC.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 60:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: And it turns out that you will see the traffic on the private IP of the NAT gateway because it is accepting traffic because of the security group or the network ACL.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 61:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But then you will not see any other line than this one, because the unsolicited traffic onto your NAT gateway has then been dropped.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 62:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, I hope you liked it, and I will see you in the next lecture.
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
- API Gateway
- AWS Batch
- AWS CloudTrail
- AWS Config
- AWS DataSync
- AWS Elastic Beanstalk
- AWS Glue
- AWS Lambda
- AWS SAM
- Amazon Athena
- Amazon Aurora
- Amazon CloudWatch
- Amazon Data Firehose
- Amazon EBS
- Amazon EC2
- Amazon ECR
- Amazon ECS
- Amazon ElastiCache
- Amazon EventBridge
- Amazon Kinesis
- Amazon Lex
- Amazon OpenSearch
- Amazon QuickSight
- Amazon RDS
- Amazon Redshift
- Amazon S3
- Amazon VPC Flow Logs
- Auto Scaling
- Elastic Load Balancing

### 3. Features List
- alarms
- athena
- cloudtrail
- cloudwatch
- config
- eventbridge
- flow logs
- logs
- metrics
- opensearch

### 4. Use Cases
- 139_DX Monitoring using CloudWatch.txt:13: So you are to make sure that you set CloudWatch alarm when your state becomes 0, probably you should know via the email or an SMS, whatever notification mechanism you want to implement.
- 017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt:19: For example, you would get some information around how much time a CPU will be using, a process will be using the CPU, or how much memory a process will be using, or the process that are running directly on your EC2 instance.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:13: And then the role name should be, for example Amazon EC2 role for CloudWatch.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:25: So we allow SSH to SSH to our instance and HTTP to allow port 80 traffic on to our EC2 instance.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:46: And if wanted to allow also it to survive through restarts we will enable it.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:124: And the log retention in days we could do minus one, for infinity or we could say, for example, five for seven day retention.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:153: And this is only needed when you do the setup of the CloudWatch unified agents.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:191: So config the JSON file that has been generated using the wizard, for example and then the agent can start the quiz from this static configuration file.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:211: And then we can go, for example, by instance ID and here find the memory used percent which represents how much ram is being used by my EC2 instance.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:9: For example, to export them in batch into Amazon S3 or to stream them into Kinesis Data Streams, Kinesis Data Firehose, AWS Lambda, Amazon OpenSearch.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:27: This visualization can also be exported either as a result or added to a dashboard for being able to rerun it whenever you want.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:30: For example, you can find the most 25 most recent events, or you can have a look at how many events had exceptions or errors in your logs, or you can look for a specific IP and so on.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:32: All the fields to allow you to build your queries are automatically detected from CloudWatch Logs, and then you can filter based on conditions.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:37: And so as such, it will only query historical data when you run the query.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:48: This would be a great choice if you wanted to use, for example, the integration with Kinesis Data Firehose, Kinesis Data Analytics, or Amazon EC2, or Lambda.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:50: From there, you can send it in near real-time fashion into Amazon S3, or for example, the OpenSearch Service, or you have Lambda.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:59: Then you attach a destination access policy to allow the first account to actually send data into this destination.
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
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:21: And therefore, if Alarm A is in alarm and Alarm B is in alarm, and this is something we have to define ourselves, then the Composite Alarm itself will be an alarm and can trigger, for example, an SNS notification.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:28: So you'll monitor a specific EC2 instance, and in case the alarm is being breach, then you can start an EC2 instance recovery to make sure, for example, that you move your EC2 instance from one host to another.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:29: When you do a recovery, you get the same private, public, and elastic IP, the same metadata and the same placement group for your instance.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:34: And then when we receive too many instances of a specific word, for example, the word error, then do an alert and send a message into Amazon SNS.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:36: And this is helpful when you want to trigger an alarm, even though it didn't reach a specific threshold because you wanted to see whether or not the alarm being triggered results in the correct action for your infrastructure.
- 023_[SAA_DVA_SOA] CloudWatch Alarms Hands On.txt:25: So I will say for example, if you're a greater than 95% for a long time, so for, and here you can say, three out of three.

### 5. Constraints / Limitations
- 139_DX Monitoring using CloudWatch.txt:13: So you are to make sure that you set CloudWatch alarm when your state becomes 0, probably you should know via the email or an SMS, whatever notification mechanism you want to implement.
- 139_DX Monitoring using CloudWatch.txt:26: So I think you should also be looking at this error count and see that how many errors are there in the last 24 hours and if you see consistently the error account is increasing that means you should also report it to AWS, your DirectConnect partner, and make sure that you can fix those problems.
- 139_DX Monitoring using CloudWatch.txt:35: It is available only on the select DirectConnect locations as well as it is applicable for dedicated connection, which is 10 GBPS and more.
- 017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt:6: So the idea is that, if you wanted to get the memory metric from within your EC2 instances, the only way you could do it is using the CloudWatch Unified Agent.
- 017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt:23: So again, what we need to remember out of this is that if you wanted to get some information around the processes running and their associated metrics, the only way to do it would be to use the Unified CloudWatch Agents deployed on your institute's instances and configured to use that plugin.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:13: And then the role name should be, for example Amazon EC2 role for CloudWatch.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:54: So also, should there be any errors we can do /error_log and we'll get a list of all the errors that are happening for our HTTPD server.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:83: And it must be installed or the agent will fail to start.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:92: Again, something this is only possible by doing metric collection from within the EC2 instance.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:153: And this is only needed when you do the setup of the CloudWatch unified agents.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:156: And now my EC2 instance should be able to perform this next action.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:166: Now which credential should be used?
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:189: So this should work.
- 018_[SOA_DOP] CloudWatch - Unified CloudWatch Agent - Hands On.txt:195: And as you can see, it says that the configuration version is succeeded and then it should be good to go.
- 019_CloudWatch Unified Agent - Troubleshooting.txt:2: So, in case the agents fails to start, it may be an issue with the configuration file, in which case, you should go into this file logs at this place on your EC2 instance, which is going to give you some configuration validation, and information.
- 019_CloudWatch Unified Agent - Troubleshooting.txt:3: If you cannot find the metrics collected by the CloudWatch Agent, of course, check whether or not you are in the correct namespace.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:3: And to do so, you must first define log groups.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:33: You can calculate aggregate statistics, you can sort events, limit the number of events, and so on.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:37: And so as such, it will only query historical data when you run the query.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:43: Instead, you must use the CloudWatch Logs subscription.
- 020_[SAA_DVA_SOA] CloudWatch Logs.txt:56: So the nitty gritty of how this works is that you must use what's called destinations.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:54: So it gives you, for example, if you should click on these, some nice insights to how the query language works for CloudWatch logs insights.
- 022_[SAA_DVA_SOA] CloudWatch Alarms.txt:17: So it's very helpful to reduce alarm noise because you can create complex Composite Alarms and saying, for example, if the CPU is high and the network is high, then don't alert me because I only wanna know when the CPU is high and the network is a low, these kind of things.
- 023_[SAA_DVA_SOA] CloudWatch Alarms Hands On.txt:30: Okay, and it will say, hey, if you are in alarm, okay, then just terminate this instance because maybe I know that my application sometimes has a huge failure and the CPU installation will be at a 95% or a 100% for a very long time, And the only way to resolve this is to just terminate the instance.
- 042_[SAA_SOA] VPC Flow Logs.txt:29: But if we have a inbound accept and an outbound reject, it can only mean a NACL issue.
- 042_[SAA_SOA] VPC Flow Logs.txt:36: But if you get an outbound accept and inbound reject, then it must mean a NACL issue.
- 042_[SAA_SOA] VPC Flow Logs.txt:46: So there is an IAM service role associated with the VPC flow logs service, and it must have the required permissions to publish logs to CloudWatch Logs.
- 043_[SAA_SOA] VPC Flow Logs Hands On.txt:86: So I call this one demo-athena-stephane-v2, and this should work.
- 044_VPC Flow Logs - Advanced.txt:3: So, you have the traffic to the Amazon DNS Server, so only the custom DNS Server traffic is logged.
- 159_S3 Access Logs - Permissions.txt:3: The destination bucket must have a bucket policy.
- 159_S3 Access Logs - Permissions.txt:5: The important thing to note here is that the resource this bucket applies to should be the destination-bucket/*, saying that any path on this bucket should be allowed the operation s3:PutObject as long as the source arn, so that means the source bucket, the source origin of this request is the arn of the source bucket on the left-hand side.
- 110_NACL, SG, VPC Flow Logs.txt:10: You attach these NACL's at the subnet level and the rules only include IP addresses.
- 110_NACL, SG, VPC Flow Logs.txt:17: In this security groups as we've seen can only have the allow rules and they can reference either IP addresses or other security groups.
- 110_NACL, SG, VPC Flow Logs.txt:31: The Security Group is only allow rules whereas for network ACL it's allow and deny rules.
- 110_NACL, SG, VPC Flow Logs.txt:43: For example, if you want to know why your subnet cannot access the internet or why a subnet can talk or cannot talk to another subnets or internet to subnet et cetera, et cetera.
- 166_CloudFront - Real Time Logs.txt:6: If you need to do near real-time processing, you will do the exact same first part, because CloudFront can only send to Kinesis Data Stream, but then you would use Kinesis Data Firehose to process these records by batches and maybe send them into Amazon S3 or Open Search, or whatever destination you may have in mind.
- 166_CloudFront - Real Time Logs.txt:10: So for example, you say, "Hey, I only wanna have (indistinct) slash images type of cache behavior, because I just wanna see the request done to this path specifically." Okay, that's it for this lecture.
- 242_CloudWatch Agent & CloudWatch Logs Agent.txt:5: Your EC2 instance must have an IAM role that allows it to send the log to CloudWatch Logs, that make sense?
- 242_CloudWatch Agent & CloudWatch Logs Agent.txt:11: The CloudWatch Logs Agents is the old version and can only send logs to CloudWatch Logs.
- 430_CloudWatch Logs Encryption.txt:6: But you cannot associate a CMK with a log group using the CloudWatch console; you have to use the CloudWatch Logs API for the CLI and the SDK, so we'll be using the CLI in this lecture.

### 6. Patterns / Architectures
- 017_[SOA] CloudWatch - Unified CloudWatch Agent - Overview.txt:21: So you can get the PID, so the process ID number, or you can get the name that you have of the process or the pattern.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:15: Now, we can create metric filters in here, and these metric filters is a way for us to find a filter pattern.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:17: Okay, And then we need to select for example, a custom data, for example, this log stream and then we test a pattern and it's going to give us three matches out of five in the simple logs.
- 021_[SAA_DVA_SOA] CloudWatch Logs Hands On.txt:23: When there is a filter pattern or matching occur and so, you can say one for example, to add one and to count how many times this installing lines have been filmed.
- 035_CloudTrail to CloudWatch Metrics Filter - Example.txt:2: The best way to actually implement this architecture is to use CloudTrail and CloudWatch metrics filter, how?
- 042_[SAA_SOA] VPC Flow Logs.txt:17: And so this can be used the VPC logs to do analytics on usage patterns or detect manage behavior, port scans, and so on.
- 042_[SAA_SOA] VPC Flow Logs.txt:37: So let's have a look at a few architectures for your VPC flow logs so they can flow into CloudWatch logs as we know.
- 166_CloudFront - Real Time Logs.txt:9: And also, you can specify which fields and which cache behaviors or path patterns you want to have access to in your Kinesis Data Stream.
- 037_AWS Managed Logs.txt:2: So this is the kind of logs that can be produced by the AWS services that can be helpful for your solution architecture.
- 114_CloudWatch.txt:34: For example, you can send data into Kinesis or you can trigger a step function workflow or you can trigger a Lambda function as well.
- 114_CloudWatch.txt:41: So this is great to check your API against real workflow.
- 114_CloudWatch.txt:58: Or the GUI Workflow Builder to verify that the actions taken on your webpage, for example, you can test a webpage with a login form using this.
- 115_CloudWatch Logs.txt:62: Another good architecture to know with CloudWatch Logs is that you can do it for multi-account and multi-region Log Aggregation.
- 115_CloudWatch Logs.txt:71: So this could be very good, and this is a very, very common architecture.
- 118_AWS Personal Health Dashboard.txt:33: And here we have a rule, and we can create a rule, and I'll call it "PHD Demo Rule." And then we have to look for an event pattern by service and the service provider is going to be "AWS" and the service name is going to be "Health," okay?
- 159_VPC Flow Logs.txt:19: And so this can be used, the VPC Flow Logs to do analytics on usage patterns or detect malicious behavior, port scans, and so on.
- 159_VPC Flow Logs.txt:38: So let's have a look at a few architectures for your VPC Flow Logs.
- 159_VPC Flow Logs.txt:51: So this is the architecture where the internet goes through and talks to your NAT gateway and maybe to your private subnets, so you wanna verify this.

## Step 3 - Deep Expansion (Observability Concepts)

### Core Services in This Topic
- API Gateway: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Batch: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS CloudTrail: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Config: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS DataSync: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Elastic Beanstalk: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Glue: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Lambda: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS SAM: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Athena: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.

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
