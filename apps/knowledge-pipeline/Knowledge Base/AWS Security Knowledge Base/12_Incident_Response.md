# 12_Incident_Response.md

## Scope
- Source set: Specialty Domain 2 Incident Response (all transcripts in folder)
- Files processed: 24
- Extracted non-empty transcript lines: 1061
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 2 Incident Response)

This section is the study-first build for incident response operations from preparation to recovery, using the transcript signal as production guidance.

### Phase 1 - Foundations

#### Module 1: Incident Response Lifecycle in Cloud
- Identify: detect and validate that an event is a security incident.
- Contain: stop spread and reduce blast radius quickly.
- Eradicate: remove persistence, compromised credentials, and malicious footholds.
- Recover: restore normal service posture safely and verifiably.
- Learn: convert incident output into policy, automation, and architecture improvements.


##### Source Transcript Details
- Module focus: Incident Response Lifecycle in Cloud
- Primary transcript files:
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/066_[SOA] SSM Documents & SSM Run Command.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/073_[SOA] SSM Session Manager Overview.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/068_[SAA_DVA_SOA] SSM Parameter Store Overview.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/063_[SOA] Systems Manager Overview.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/055_Compromised AWS Credentials.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/052_[CCP_SOA] Penetration Testing on AWS.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/067_[SOA] SSM Automations.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/070_[SOA] SSM Inventory & State Manager.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/069_[SAA_DVA_SOA] SSM Parameter Store Hands On (CLI).txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/059_Lost EC2 Key Pair - Linux.txt
- Top concept clusters from transcript metadata:
- Incident Response Operational Context
- Operational Remediation
- Credential Exposure Response
- Remote Access Control
- Incident Identification
- Forensic Preparedness
- Containment and Recovery
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 24
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1061
- Key insights inside selected files: 591
- Unique concept tags in selected files: 7

##### Transcript-Enriched Learning Notes
- But what we get out of this is that they sort of look like the idea behind CloudFormation, but this is at the center of SSM now we have documents and they're gonna be how we can describe what SSM does.
- It is fully integrated with IAM and CloudTrail.
- The command outputs can be shown in the console, but it can also be sent to your S3 buckets or to CloudWatch Logs.
- And finally, for automations and EventBridge for CloudWatch Events, can be used to invoke run commands.
- The outputs of the command itself can be sensed for analysis in CloudWatch Logs or Amazon history, notifications is through SNS, and events triggered in EventBridge could have a rule to trigger a run command itself.
- Now, for the output options, we can create an S3 buckets to send the output to, but I will disable it, or we can send logs to CloudWatch Logs, and for example, I will call it runCommandOutput as my log group name.
- And you can click on the CloudWatch Logs to view the logs directly of your commands into the CloudWatch Log groups.
- So you can have them being sent to Amazon S3 or CloudWatch Logs.
- And CloudTrail can also be used to intercept the StartSession events, which is when session and measure is being used to start a session onto your EC2 instance.
- So you also need access to SSM and write to S3 and write to CloudWatch to allow you to send the Log there.
- All the data of the session is going to be logged or could be logged into Amazon S3 or CloudWatch logs.
- You have full integration with CloudFormation.
- That means that CloudFormation can leverage the parameters from parameter store as input parameters for your stacks.
- So it works for both Windows and Linux OS and it's going to be fully integrated with CloudWatch metrics and dashboards.
- We have resource groups and we have operations tools such as Explorer, app center, CloudWatch dashboard.
- On top of it, because the credentials may have been used, you need to check the CloudTrail logs for any unauthorized activity.
- We need to check for CloudTrail logs for unauthorized activity, review the resources and verify the account information.
- Check CloudTrail logs for unauthorized activity, and then review all of your resources for deletions and so on.

##### Polished Architect Notes
- Transcript signals that what we get out of this is that they sort of look like the idea behind CloudFormation, but this is at the center of SSM now we have documents and they're gonna be how we can describe what SSM does.
- Transcript signals that it is fully integrated with IAM and CloudTrail.
- Transcript signals that finally, for automations and EventBridge for CloudWatch Events, can be used to invoke run commands.
- Transcript signals that the outputs of the command itself can be sensed for analysis in CloudWatch Logs or Amazon history, notifications is through SNS, and events triggered in EventBridge could have a rule to trigger a run command itself.
- Transcript signals that for the output options, we can create an S3 buckets to send the output to, but I will disable it, or we can send logs to CloudWatch Logs, and for example, I will call it runCommandOutput as my log group name.
- Transcript signals that you can have them being sent to Amazon S3 or CloudWatch Logs.
- Transcript signals that cloudTrail can also be used to intercept the StartSession events, which is when session and measure is being used to start a session onto your EC2 instance.
- Transcript signals that you also need access to SSM and write to S3 and write to CloudWatch to allow you to send the Log there.
- Transcript signals that all the data of the session is going to be logged or could be logged into Amazon S3 or CloudWatch logs.
- Transcript signals that you have full integration with CloudFormation.
- Transcript signals that that means that CloudFormation can leverage the parameters from parameter store as input parameters for your stacks.
- Transcript signals that it works for both Windows and Linux OS and it's going to be fully integrated with CloudWatch metrics and dashboards.

##### Architect Synthesis (Transcript-Derived)
- Treat Incident Response Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Remediation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Credential Exposure Response as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Remote Access Control as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Incident Identification as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: what we get out of this is that they sort of look like the idea behind CloudFormation, but this is at the center of SSM now we have documents and they're gonna be how we can describe what SSM does.
- Design implication: it is fully integrated with IAM and CloudTrail.
- Design implication: finally, for automations and EventBridge for CloudWatch Events, can be used to invoke run commands.
#### Module 2: Incident Classes Covered by Transcripts
- Compromised compute resources.
- Compromised cloud credentials and IAM identities.
- Host access lockout scenarios and key loss.
- Patch and configuration drift requiring coordinated remediation.
- Security testing boundaries and prohibited actions in cloud environments.


##### Source Transcript Details
- Module focus: Incident Classes Covered by Transcripts
- Primary transcript files:
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/066_[SOA] SSM Documents & SSM Run Command.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/067_[SOA] SSM Automations.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/070_[SOA] SSM Inventory & State Manager.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/065_[SOA] AWS Tags & SSM Resource Groups.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/069_[SAA_DVA_SOA] SSM Parameter Store Hands On (CLI).txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/059_Lost EC2 Key Pair - Linux.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/071_[SOA] SSM Patch Manager and Maintenance Windows.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/054_Compromised AWS Resources.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/068_[SAA_DVA_SOA] SSM Parameter Store Overview.txt
- Top concept clusters from transcript metadata:
- Incident Response Operational Context
- Operational Remediation
- Incident Identification
- Credential Exposure Response
- Remote Access Control
- Forensic Preparedness
- Containment and Recovery
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 24
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1061
- Key insights inside selected files: 708
- Unique concept tags in selected files: 7

##### Transcript-Enriched Learning Notes
- Now let's talk about the center of SSM, which are documents.
- And documents can be written either in JSON or YAML, in which you define parameters, to define what the document does, so actions, and then you will have the document being executed by a specific service.
- So many documents already exist in AWS and we can leverage them obviously to go faster in what we do.
- So this is what a documents may look like.
- So as you can see, there's a description, there's a bunch of parameters, and then there's some steps and each step has an action in which maybe you can run a command.
- So this is just a simple example.
- And if you start using SSM a lot you will write your own SSM documents, okay?
- But what we get out of this is that they sort of look like the idea behind CloudFormation, but this is at the center of SSM now we have documents and they're gonna be how we can describe what SSM does.
- So these documents can be simply used to run commands, and we'll see this in this lecture, but also these documents can be applied to other SSM features such as state manager, patch manager, automation, and documents...
- So let's have a look at how we can create documents right now.
- So if I scroll down on a systems manager at the very bottom under shared resources, we have documents, and documents are in this page.
- So we have documents owned by Amazon, some owned by me, but of course, none has been owned me because I haven't created one.
- If you can share documents with other people, or all documents, if you have to have the three of them.
- So in this example, I'm going to show you the documents owned by Amazon, and one of them for example, is called AWS-ApplyPatchBaseline.
- So I click on it and I can see that this is useful for scanning or installing patches from a patch baseline, as we'll see what that means in a few lecturers.
- The platform is Windows.
- We can see when it was created, okay?
- And who is the owner, and what is the latest version.

##### Polished Architect Notes
- Transcript signals that let's talk about the center of SSM, which are documents.
- Transcript signals that documents can be written either in JSON or YAML, in which you define parameters, to define what the document does, so actions, and then you will have the document being executed by a specific service.
- Transcript signals that many documents already exist in AWS and we can leverage them obviously to go faster in what we do.
- Transcript signals that this is what a documents may look like.
- Transcript signals that as you can see, there's a description, there's a bunch of parameters, and then there's some steps and each step has an action in which maybe you can run a command.
- Transcript signals that this is just a simple example.
- Transcript signals that if you start using SSM a lot you will write your own SSM documents, okay?
- Transcript signals that what we get out of this is that they sort of look like the idea behind CloudFormation, but this is at the center of SSM now we have documents and they're gonna be how we can describe what SSM does.
- Transcript signals that these documents can be simply used to run commands, and we'll see this in this lecture, but also these documents can be applied to other SSM features such as state manager, patch manager, automation, and documents...
- Transcript signals that let's have a look at how we can create documents right now.
- Transcript signals that if I scroll down on a systems manager at the very bottom under shared resources, we have documents, and documents are in this page.
- Transcript signals that we have documents owned by Amazon, some owned by me, but of course, none has been owned me because I haven't created one.

##### Architect Synthesis (Transcript-Derived)
- Treat Incident Response Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Remediation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Incident Identification as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Credential Exposure Response as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Remote Access Control as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: let's talk about the center of SSM, which are documents.
- Design implication: documents can be written either in JSON or YAML, in which you define parameters, to define what the document does, so actions, and then you will have the document being executed by a specific service.
- Design implication: many documents already exist in AWS and we can leverage them obviously to go faster in what we do.
#### Module 3: Why SSM-Centric IR Matters
- Reduces dependence on inbound SSH/RDP exposure.
- Enables repeatable runbook-style remediations.
- Supports target selection at scale through tags and resource group abstractions.


##### Source Transcript Details
- Module focus: Why SSM-Centric IR Matters
- Primary transcript files:
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/066_[SOA] SSM Documents & SSM Run Command.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/067_[SOA] SSM Automations.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/070_[SOA] SSM Inventory & State Manager.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/069_[SAA_DVA_SOA] SSM Parameter Store Hands On (CLI).txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/071_[SOA] SSM Patch Manager and Maintenance Windows.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/068_[SAA_DVA_SOA] SSM Parameter Store Overview.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/064_[SOA] Start EC2 Instances with SSM Agent.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/065_[SOA] AWS Tags & SSM Resource Groups.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/073_[SOA] SSM Session Manager Overview.txt
- outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt
- Top concept clusters from transcript metadata:
- Incident Response Operational Context
- Operational Remediation
- Remote Access Control
- Forensic Preparedness
- Containment and Recovery
- Credential Exposure Response
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 24
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1061
- Key insights inside selected files: 685
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- Now let's talk about the center of SSM, which are documents.
- And if you start using SSM a lot you will write your own SSM documents, okay?
- But what we get out of this is that they sort of look like the idea behind CloudFormation, but this is at the center of SSM now we have documents and they're gonna be how we can describe what SSM does.
- So these documents can be simply used to run commands, and we'll see this in this lecture, but also these documents can be applied to other SSM features such as state manager, patch manager, automation, and documents...
- So the first way we're going to apply our documents is using the run command SSM feature.
- And to make it easy, you can just get the code directly from the SSM directory and copy this entire file document-install-apache, okay?
- So what happens is that the SSM agent did run the commands for us, which is super helpful because we don't compromise on security.
- Now let's talk about SSM Automations.
- So the automation Runbook is the name of the document for SSM that are going to be of type Automation, okay.
- The SSM Automation is using the Runbooks.
- Now, how do you trigger an SSM Automation?
- And the target of the rule will be the SSM Automation.
- So the Console, the SDK, Maintenance Windows, EventBridge, and the Config Remediation, can all execute the automation called AWS-RestartEC2Instance from within the SSM automation service, okay.
- So this really shows the power of Automations within a SSM.
- Now let's have a look at the inventory feature of SSM.
- And to what leverage a state manager, you use SSM documents and you create an association.
- So I'll call it demo-ssm-inventory-stephane, and in this region, and then creates.
- We're good to go, so now back here, I can create this and there's an access to that so we need to make sure that there is enough permissions for SSM to sync my data into my S3 bucket.

##### Polished Architect Notes
- Transcript signals that let's talk about the center of SSM, which are documents.
- Transcript signals that if you start using SSM a lot you will write your own SSM documents, okay?
- Transcript signals that what we get out of this is that they sort of look like the idea behind CloudFormation, but this is at the center of SSM now we have documents and they're gonna be how we can describe what SSM does.
- Transcript signals that these documents can be simply used to run commands, and we'll see this in this lecture, but also these documents can be applied to other SSM features such as state manager, patch manager, automation, and documents...
- Transcript signals that the first way we're going to apply our documents is using the run command SSM feature.
- Transcript signals that to make it easy, you can just get the code directly from the SSM directory and copy this entire file document-install-apache, okay?
- Transcript signals that what happens is that the SSM agent did run the commands for us, which is super helpful because we don't compromise on security.
- Transcript signals that let's talk about SSM Automations.
- Transcript signals that the automation Runbook is the name of the document for SSM that are going to be of type Automation, okay.
- Transcript signals that the SSM Automation is using the Runbooks.
- Transcript signals that how do you trigger an SSM Automation?
- Transcript signals that the target of the rule will be the SSM Automation.

##### Architect Synthesis (Transcript-Derived)
- Treat Incident Response Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Remediation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Remote Access Control as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Forensic Preparedness as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Containment and Recovery as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: let's talk about the center of SSM, which are documents.
- Design implication: if you start using SSM a lot you will write your own SSM documents, okay?
- Design implication: what we get out of this is that they sort of look like the idea behind CloudFormation, but this is at the center of SSM now we have documents and they're gonna be how we can describe what SSM does.
### Phase 2 - Core Services

#### Security Testing Guardrails
- Pen testing in AWS has explicit allowed scopes and explicit prohibited activities.
- Key operational lesson: legal and platform constraints are part of incident readiness, not an afterthought.
- DDoS simulation and abuse scenarios require strict compliance with provider guidance.

#### Break-Glass Access and Recovery Channels
- EC2 Instance Connect for controlled short-path access.
- EC2 Serial Console for deep recovery when normal network paths fail.
- EC2 Rescue workflows for repair scenarios involving boot or credential issues.
- Lost key-pair procedures are operationally critical and should be practiced before incidents.

#### Systems Manager as Response Plane
- SSM Run Command for fleet-level command execution.
- SSM Automation for standardized incident playbooks.
- SSM Session Manager for controlled interactive shell without public inbound ports.
- SSM Patch Manager, State Manager, and Inventory for containment and hardening continuity.
- Parameter Store integration for centralized, controlled runtime configuration during response.

### Phase 3 - Advanced Patterns

#### Pattern 1: Detection-to-Runbook Orchestration
- Trigger source: security findings or operational alerts.
- Routing: event bus and workflow dispatch.
- Execution: SSM automation documents with guarded parameters and approval points.
- Closure: verification checks plus evidence capture.

#### Pattern 2: Tag-Driven Blast Radius Control
- Response actions target tagged resource cohorts instead of ad hoc host lists.
- Improves speed and lowers operator error during high-pressure containment windows.

#### Pattern 3: Recovery Pipeline with Guardrails
- Isolate or quarantine affected assets.
- Rotate credentials and revoke temporary trust paths.
- Rebuild from trusted baselines where confidence in host integrity is low.
- Re-enable service in phased rollout with post-recovery monitoring.

### Phase 4 - System Design (Production)

#### Reference Architecture: Enterprise IR Control Plane
- Detection and telemetry systems produce normalized triggers.
- Central orchestration account dispatches approved runbooks.
- Workload accounts execute scoped automation via IAM-assumed roles.
- Incident evidence and action logs are retained for audit and lessons learned.

#### Scaling Considerations
- Parallel incident handling across accounts and regions.
- Runbook idempotency and safe retry design.
- Human approval bottlenecks for sensitive remediation actions.
- Playbook drift as services and architectures evolve.

#### Cost Considerations
- IR readiness costs are primarily operational discipline and automation maintenance.
- During incidents, execution concurrency and intensive diagnostics may temporarily increase spend.
- Recovery economics favor prebuilt automation and tested baselines over manual one-off actions.

### Cross-Cloud Concept Mapping (Incident Response)

#### Underlying Concept: Fleet Remediation Control Plane
- AWS: Systems Manager suite (Run Command, Automation, Session Manager, Patch Manager)
- Azure: Azure Arc, Update Manager, Automation Runbooks, Bastion and serial-access patterns
- GCP: OS Config, Cloud Workflows plus function orchestration, IAP-assisted access patterns
- Trade-off: AWS is strongest for tightly integrated EC2-centric runbooks; multi-cloud standardization requires abstract playbook intent with provider adapters.

#### Underlying Concept: Break-Glass Recovery
- AWS: EC2 Serial Console and EC2 Rescue
- Azure: Azure Serial Console and VM repair workflows
- GCP: serial console and instance recovery workflows
- Trade-off: reliability depends on pre-provisioned permissions and tested emergency paths.

#### Underlying Concept: Security Testing Governance
- AWS: explicit pen test guidance and prohibited activity boundaries
- Azure and GCP: similarly policy-bound testing models with provider-specific constraints
- Trade-off: cross-cloud teams must maintain cloud-specific legal/operational test checklists.

### Real-World Use Cases from Transcript Signals
- Recover hosts after key compromise or lost administrative access.
- Execute fleet remediation actions rapidly during active incidents.
- Coordinate patch and state corrections after detection of security drift.
- Use managed session and command channels to avoid widening attack surface during response.
- Build repeatable response workflows that scale across account boundaries.

### Constraints and Exam-Relevant Traps Captured
- Not all security test actions are permitted by default.
- Access recovery methods differ by failure mode; no single tool solves all lockouts.
- Incident execution speed without governance can increase risk.
- Automation without verification loops can cause silent recovery failure.
## Step 1 — Line-by-Line Extraction

Every non-empty line from every source transcript is preserved below with extraction fields.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/052_[CCP_SOA] Penetration Testing on AWS.txt

Line 1:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now let's talk about penetration testing on the Cloud.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 2:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So, penetration testing is when you're trying to attack your own infrastructure to test your security.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 3:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: A customer of AWS is welcome to carry out these security assessments and penetration testing against your own infrastructure without prior approval for eight services.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 4:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So, our Amazon EC2 instances, NAT Gateways and Elastic Load Balancers, Amazon RDS, CloudFront, Aurora, the API Gateways, Lambda, and Lambda Edge functions, Lightsail resources and Elastic Beanstalk environments.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 5:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: The list can increase over time, but this is not something that you will be tested on at the exam.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 6:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Just remember that you don't need an authorization for these eight services, but if you wanted to do other type of activities that could be prohibited.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 7:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: For example, you cannot do a DNS zone walking via Amazon Route 53 Hosted Zone.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: You can not perform a distributed attack on your system, so you cannot perform a DoS or DDoS or a Simulated DoS or Simulated DDoS.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 9:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: You cannot just attack your own infrastructure with a denial of service.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: You can not do port flooding.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 11:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: You can undo protocol flooding, request flooding, which are, you know, variants of an attack.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 12:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And for any other events, you need to contact the security team at AWS to ensure that they can approve it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 13:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: If you wanted to read more, you can read more here.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 14:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So, from an exam perspective, yes, you can do pen testing on your Cloud.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 15:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Remember that some are authorized, but anything that looks like an attack such as DDoS attack or a DNS zone walking or a port flooding is not authorized because for AWS, it would seem like you're trying to attack their infrastructure and they wouldn't like it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 16:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So, I hope that was helpful and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/053_DDoS Simulation Testing on AWS.txt

Line 1:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So here is a lecture on how you can actually perform a DDoS attack on your own infrastructure on AWS as a simulation.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 2:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Of course, it must be controlled so you would do a controlled DDoS attack to make sure that your applications are resilient to this attack and also to practice event response.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 3:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: In that case, the only person that can do a DDoS is an AWS DDoS Test Partner.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 4:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And in that case, the target can either be Protected Resources or Edge-Optimized API Gateways that is subscribed to Shield Advanced.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 5:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: The attacks must not be originating from AWS resources, and on top of it, you must not exceed 20 Gigabits per second.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Finally, you cannot exceed 5 million packets per second for CloudFront and 50,000 packets per second for any other service.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: If you have all these requirements, then you're more than welcome to simulate a DDoS on AWS.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 8:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 9:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/054_Compromised AWS Resources.txt

Line 1:
- Concepts: Incident Identification
- Services: (none explicit)
- Key Insights: So what to do in case some resources in AWS are compromised.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 2:
- Concepts: Incident Identification
- Services: Amazon EC2
- Key Insights: Well, the most important one to remember is how to deal with a compromised EC2 instance because the exam will test you on that.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Incident-response trigger signal.

Line 3:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example of two AZs, one VPC two instances running in an autoscaling group and connected to a load balancer.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 4:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And the instances are having the WebApp security group.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 5:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So let's say one of these instances is compromise.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 6:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So what do we do?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 7:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Number one is we capture all of the instance metadata then we enable termination protection because we want to keep it and wanna make sure that it doesn't disappear.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 8:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We isolate the instance so we replace the instant security group with one with no outbound traffic authorized.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 9:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And so therefore, this instance cannot communicate with the outside world and at least it is contained.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Next, we can detach the instance from any auto-scaling group so we can suspend the processes of the auto-scaling group and then detach the instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 11:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And of course, we wanna de-register the instance from any ELB because we don't want that instance to be part of any network traffic.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 12:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: Now, if the attack is happening on the EC2 instance that means something was installed on the root volume maybe, or any attached volume.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 13:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we snapshot any EBS volumes attached to the instance for deeper analysis.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 14:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So we have a volume, we make a snapshot, and then we can create a forensics EC2 instance that we control and we attach all the volumes that we've snapshotted back to this instance and then we'll be able to have a look deeply into the snapshotted data, what is happening and what is the root cause of the compromise.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 15:
- Concepts: Incident Identification
- Services: AWS Tags, Amazon EC2
- Key Insights: Also, if you have an EC2 instance that is compromised please make sure to tag the EC2 instance with the investigation ticket number, for example, so that you know that well, something is wrong with that instance.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 16:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: There are two types of investigations you can do.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 17:
- Concepts: Forensic Preparedness
- Services: Amazon EC2
- Key Insights: You can do an offline investigation, so this is when you shut down the instance and you're going to look at the EBS volumes that have been snapshotted and then restored and attached to a forensic EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 18:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: That's one way.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 19:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: The second way is to do an online investigation where on top of it you're going to snapshot the memory or capture the network traffic.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 20:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: The risk is of course, that the EC2 instance is still active, but with an online investigation you can maybe understand what the EC2 instance is trying to leak to the outside world, and you can maybe do a better investigation this way.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 21:
- Concepts: Operational Remediation
- Services: AWS Systems Manager, Amazon EC2, SSM Run Command
- Key Insights: Now, to automate all these processes, you can use Lambda, and if you want to automate the memory capture of your EC2 instance, you can use the SSM run command.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 22:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So these steps should feel natural to you and remember them going into the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: Incident Identification
- Services: (none explicit)
- Key Insights: Now let's review the other kinds of resources that can be compromised.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 24:
- Concepts: Incident Identification
- Services: (none explicit)
- Key Insights: So we have an S3 bucket in this case we identify the compromised S3 bucket using GuardDuty.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 25:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We identify the source of the malicious activity Using CloudTrail or Amazon Detective and then we're going to identify whether or not the source was actually authorized to make these API calls.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 26:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Once we figure out what is happening we can reinforce the security of our S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 27:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So some recommended settings are going to be around blocking the public access making sure we have good bucket policies and good IAM policies, creating VPC endpoints for Amazon S3 using S3 pre-signed URLs, using S3 access points or they're deprecated.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 28:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: But we could also use S3 ACLs.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 29:
- Concepts: Incident Identification
- Services: (none explicit)
- Key Insights: Now for compromised ECS cluster.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 30:
- Concepts: Incident Identification
- Services: (none explicit)
- Key Insights: So you identify which cluster is compromised using GuardDuty and then you identify the source of the malicious activity.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 31:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So is it a container image, is it some tasks, and so on.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 32:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then you escalate all the impacted tasks.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 33:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So you deny them all ingress and egress traffic using a new security group similarly to what we've done to our EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 34:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then you evaluate the presence of malware or malicious activity on these containers and you figure out the root cause of it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 35:
- Concepts: Incident Identification
- Services: (none explicit)
- Key Insights: If you have a standalone cluster, container, sorry that is compromised, it's a similar process.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 36:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So you identify what is happening you isolate the container itself.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 37:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: With a new security group you can suspend all the processes within the container.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 38:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: It's called pausing the container or you can stop the container itself and look at any snapshotted data.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 39:
- Concepts: Incident Identification
- Services: (none explicit)
- Key Insights: So there is an EBS snapshot feature by GuardDuty to retain any snapshots of compromised resources.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 40:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then of course you do a forensics analysis and you detect the presence of malicious activity and you understand what is happening.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 41:
- Concepts: Incident Identification
- Services: (none explicit)
- Key Insights: You can also detect compromised RDS database instances.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 42:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So similarly it's going to be into GuardDuty to figure out which instance got affected and what is the source of malicious activity and in case it is not legitimate behavior.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 43:
- Concepts: Credential Exposure Response, Incident Identification
- Services: (none explicit)
- Key Insights: Then number one we want to restrict network access using security group and NALCs, or we want to restrict the database access for the suspected user that got compromised, because usually if your RDS database is compromised it means that user credentials leaked.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 44:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So for these users well it's good to rotate the user's password so that the attacker cannot use the user anymore.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 45:
- Concepts: Forensic Preparedness
- Services: (none explicit)
- Key Insights: You can also look at the database audit log to figure out any leaked data and on top of it you can enhance the security of your RDS database.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 46:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Some recommended settings, of course are going to be around using Secrets Manager to rotate the database passwords and of course using IAM database authentication to make sure the users can access our RDS database just through IAM policies being authorized to and not with password.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 47:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 48:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/055_Compromised AWS Credentials.txt

Line 1:
- Concepts: Credential Exposure Response, Incident Identification
- Services: (none explicit)
- Key Insights: So now let's look at what to do in case of compromised AWS credentials, IAM roles and accounts.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 2:
- Concepts: Incident Identification
- Services: (none explicit)
- Key Insights: So we have an IAM, and in IAM we have a user that has been compromised.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 3:
- Concepts: Credential Exposure Response, Incident Identification
- Services: (none explicit)
- Key Insights: So GuardDuty can detect it, and figures out that some credentials have been compromised and so therefore the first thing we have to do is to rotate the exposed credentials so that no one can use them in the future.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 4:
- Concepts: Credential Exposure Response
- Services: (none explicit)
- Key Insights: On top of it, even though security credentials have been exposed and rotated, you need to invalidate them by attaching an explicit deny policy to the affected IAM user with an STS date condition.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 5:
- Concepts: Credential Exposure Response
- Services: (none explicit)
- Key Insights: This is something I go over in the IAM section of this course, but just so you know, by attaching this policy to the IAM user then any previously issued credentials before the date of today will not be able to perform any actions in your account.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 6:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this is how to mitigate it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 7:
- Concepts: Credential Exposure Response
- Services: (none explicit)
- Key Insights: On top of it, because the credentials may have been used, you need to check the CloudTrail logs for any unauthorized activity.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 8:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then you need to review these resources in case, while there has been unauthorized activity such as deletion of resources or modifications.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 9:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And finally, always verify your account information because it could have changed.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Incident Identification
- Services: (none explicit)
- Key Insights: Now, if it's an IAM role that is compromised, for example you have enabled active directory integration or you assume a role, or whatever, then again you need to identify what is the compromised IAM role.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 11:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Then the same technique as before, we attach an explicit deny policy to deny any action for tokens issued before today's date.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 12:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So again, we'll see this in the next section.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 13:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We should revoke any access to the identity in the linked active directory.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 14:
- Concepts: Incident Identification
- Services: (none explicit)
- Key Insights: For example, if we're using SSO and the user was compromised there.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 15:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We need to check for CloudTrail logs for unauthorized activity, review the resources and verify the account information.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 16:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So some similar steps as before.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 17:
- Concepts: Incident Identification
- Services: (none explicit)
- Key Insights: And what if it's your entire account that get compromised?
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 18:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Then of course, delete and rotate any and all access keys of AWS.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 19:
- Concepts: Credential Exposure Response
- Services: (none explicit)
- Key Insights: Also, make sure that you rotate and delete any unauthorized IAM user credentials, and to rotate all of the existing IAM users passwords.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 20:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So it's question mark I have to say.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 21:
- Concepts: Credential Exposure Response
- Services: Amazon EC2
- Key Insights: Then delete and rotate all EC2 key pairs so that they cannot be used in the future to SSH into your instances.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Check CloudTrail logs for unauthorized activity, and then review all of your resources for deletions and so on.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 23:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And finally, of course, review your account information.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 24:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 25:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt

Line 1:
- Concepts: Credential Exposure Response
- Services: Amazon EC2
- Key Insights: So let's have a look at what are EC2 Key Pairs and how they work.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 2:
- Concepts: Credential Exposure Response
- Services: Amazon EC2
- Key Insights: So as a user, you're going to go into the EC2 service and you can create an instance and you can also create an EC2 Key Pair.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 3:
- Concepts: Credential Exposure Response
- Services: (none explicit)
- Key Insights: When you create a Key Pair, it's called a Key Pair because there's a private key and a public key.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 4:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: The private key is automatically downloaded from AWS onto your own machine, and then the right away AWS is going to delete it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 5:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So you are the only owner of the private key but Amazon EC2 service is going to keep a copy of the public key.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: Then when you create an EC2 instance and you select the associated key, what's actually going to happen is that on the root EBS volume of the EC2 instance, the public key is going to be stored as a copy in a file called authorized_keys in the SSH directory.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 7:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So once we have this, why does it matter?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 8:
- Concepts: Credential Exposure Response
- Services: Amazon EC2
- Key Insights: Well, because when we want to actually perform an SSH into our EC2 instance, what's going to happen is that the SSH protocol is going to present the private key to our EC2 instance, which is going to match it with the public key it has in store and say, "Yes, the user is authorized to perform SSH on me." So this is the basics of EC2 Key Pairs and SSH.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 9:
- Concepts: Containment and Recovery
- Services: (none explicit)
- Key Insights: So the idea is that your private key must be kept secure and there are no ways for you to recover a lost private key.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: You can also create your private keys outside of AWS and then upload them by just uploading a public key.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 11:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So that's, you can still create EC2 instances with keys generated outside of AWS.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 12:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And there are two formats of SSH keys that you can use.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 13:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: You have the ED type and the 2048-bit type.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 14:
- Concepts: Credential Exposure Response
- Services: Amazon EC2
- Key Insights: So what if you have a Key Pair and you delete it from the EC2 console?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 15:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: Well, in that case, what's going to happen is that it will be gone from the EC2 console, but it's not going to be removed from the EC2 instances itself.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 16:
- Concepts: Credential Exposure Response
- Services: Amazon EC2
- Key Insights: So the public key will remain on any EC2 instances that have been set up with a Key Pair on Amazon EC2.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 17:
- Concepts: Credential Exposure Response
- Services: Amazon EC2
- Key Insights: So deleting a Key Pair in Amazon EC2 doesn't do much except just deleting it there.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 18:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So on top of it, if you launch an AMI and that AMI has been built with an old public key and then you select a new public key to launch this AMI with, what's going to happen is that this new EC2 instance is going to have both the public key that was shipped with the AMI and the new public key that is shipping with the Amazon EC2 service.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 19:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So then, of course, even though you have two keys on the EC2 instance, you can still connect using any corresponding private key.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 20:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So if you have a new private key, you can match it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 21:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Or if you have also the private key for the key corresponding in the AMI, you can connect as well.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 22:
- Concepts: Credential Exposure Response
- Services: (none explicit)
- Key Insights: What happens though, if you lose your private key and it gets exposed, that means it gets put online.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 23:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So you have a few steps you need to to follow.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 24:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: You need to remove all the public keys stored in each SSH authorized_keys file on EC2 instances so that no one can use the private key to actually SSH into your EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 25:
- Concepts: Credential Exposure Response
- Services: Amazon EC2
- Key Insights: You must also create a new Key Pair and then you add the public key material to the authorized_keys on all EC2 instances.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 26:
- Concepts: Credential Exposure Response, Incident Identification
- Services: (none explicit)
- Key Insights: So the diagram, so we have the old key and it's been compromised so we're going to create a new Key Pair.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 27:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We get the private key and a public key.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 28:
- Concepts: Incident Identification
- Services: Amazon EC2
- Key Insights: We delete the compromised public keys on the EC2 instances, and then we add the new public key onto the EC2 instances and you're done.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 29:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Now, how do you automate this?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 30:
- Concepts: Operational Remediation
- Services: AWS Systems Manager, Amazon EC2, SSM Run Command
- Key Insights: Well, when what you do it is using the SSM Run Command utility, which is going to automate the process of adding and deleting public keys on EC2 instances.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 31:
- Concepts: Credential Exposure Response
- Services: Amazon EC2
- Key Insights: Alright, that's it for EC2 Key Pairs.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 32:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/057_EC2 Instance Connect.txt

Line 1:
- Concepts: Remote Access Control
- Services: Amazon EC2, EC2 Instance Connect
- Key Insights: So we've been using EC2 instance connect a lot in the courses, but now it's time to really understand what is happening when you use that service.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 2:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So we have an EC2 instance and we have a web browser that's running on the public IP.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 3:
- Concepts: Remote Access Control
- Services: Amazon EC2, EC2 Instance Connect
- Key Insights: On the EC2 instance is going to be running the EC2 instance connect agent, and that agent is going to be responsible for part of the magic.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 4:
- Concepts: Remote Access Control
- Services: Amazon EC2, EC2 Instance Connect
- Key Insights: Now when we use the EC2 instance connect, we use its API, so either using the EC2 console or the CLI.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 5:
- Concepts: Remote Access Control
- Services: Amazon EC2, EC2 Instance Connect
- Key Insights: And what's going to happen is that the EC2 instance connect API is going to generate a private key, okay?
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 6:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: And this private key will have its corresponding public key pushed into the EC2 instance metadata, and this is a key that is going to be valid only for 60 seconds.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So why is it important?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Remote Access Control
- Services: Amazon EC2, EC2 Instance Connect
- Key Insights: Because then the EC2 instance connect API is going to SSH directly into the EC2 instance, and the EC2 instance SSH process is set up in such a way, that it is also going to look up the instance metadata to see if there are any authorized keys in there as well.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 9:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So not only the authorized keys file on the EC2 instance, but also going to check the instance metadata.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Remote Access Control
- Services: Amazon EC2, EC2 Instance Connect
- Key Insights: And because well, we have just, I mean the EC2 instance connect service, has just pushed a public key onto the instance metadata, is going to say, yeah, it matches the private key, and we are SSHed.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 11:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So the idea around this is that it's very secure, because the public key is only there for 60 seconds, and no one else can reproduce this but AWS, because no one else but AWS has access to the instance metadata.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 12:
- Concepts: Remote Access Control
- Services: Amazon EC2, EC2 Instance Connect
- Key Insights: Now all connections that we do through the EC2 instance connect, are going to be logged in CloudTrail, because we actually go and do SSH through an AWS API.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 13:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Now what goes for the security groups?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 14:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: Well, there's a security group, of course, around the EC2 instance, and it needs a few rules to work.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 15:
- Concepts: Remote Access Control
- Services: Amazon EC2, EC2 Instance Connect
- Key Insights: So when, if you look at this diagram, the actual thing that does the SSH connection is the EC2 instance connect API, not your browser itself.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 16:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Your browser just accesses that API.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 17:
- Concepts: Remote Access Control
- Services: Amazon EC2, EC2 Instance Connect
- Key Insights: So therefore, from a security group perspective, you need to have port 22 open on your EC2 instance as inbound, and the source of it should correspond to the AWS IP range for the EC2 instance connect service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Break-glass operational access signal.

Line 18:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Now, how do you know this?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 19:
- Concepts: Remote Access Control
- Services: Amazon EC2, EC2 Instance Connect
- Key Insights: Well, there is this URL in which you can find the IP ranges of many services in AWS for all the regions, and of course one of these is EC2 instance connect.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 20:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And is in this instance for the region, US East one, we have this IP prefix right here.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 21:
- Concepts: Remote Access Control
- Services: Amazon EC2, EC2 Instance Connect
- Key Insights: So hopefully now you really understand how EC2 instance connect works.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 22:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/058_EC2 Serial Console.txt

Line 1:
- Concepts: Remote Access Control
- Services: Amazon EC2, EC2 Serial Console
- Key Insights: So now let's talk about the EC2 serial console feature.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 2:
- Concepts: Remote Access Control
- Services: Amazon EC2, EC2 Serial Console
- Key Insights: So the serial console is a very special kind of terminal capability into your EC2 instances, because it allows you to troubleshoot the boot, troubleshoot the network configuration, and analyze reboot issues.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 3:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So it has a very specific use case, and the idea is, that we access the EC2 instance over its own serial port.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 4:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So, a serial port is what you would have, if you wanted to hook up a monitor, or a keyboard, directly into the EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 5:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So, that looks just like this.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 6:
- Concepts: Remote Access Control
- Services: EC2 Serial Console
- Key Insights: Obviously this, no one goes into the data centers of AWS and actually plugs it into the serial console, the serial port.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 7:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: But this is the kind of thing you need to think about.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 8:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So, it does not require any network capability, because you access the instance through the serial port.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 9:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So, it only works with the specific kind of EC2 instances.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: They're the Nitro-based EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 11:
- Concepts: Forensic Preparedness
- Services: Amazon EC2
- Key Insights: And for this to work, you're going to log into your EC2 instance, with a user and a password.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 12:
- Concepts: Remote Access Control
- Services: EC2 Serial Console
- Key Insights: So, you need to set a user and a password before you can use the serial console.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 13:
- Concepts: Remote Access Control
- Services: Amazon EC2, EC2 Serial Console
- Key Insights: Okay, next, because there is only one serial console part, you can only have one active session per EC2 instance.
- Hidden/Implicit Meaning: Constraint or limitation signal; Break-glass operational access signal.

Line 14:
- Concepts: Remote Access Control
- Services: Amazon EC2, EC2 Serial Console
- Key Insights: That may be an oversimplification, but you get the idea, and the serial console, because it has very strong and powerful capabilities, is disabled, by default, in your accounts, but you can enable it, by going into the accounts EC2 settings.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 15:
- Concepts: Remote Access Control
- Services: Amazon EC2, EC2 Serial Console
- Key Insights: So, this was a short explanation about the EC2 serial console.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 16:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: And just remember, it is meant to analyze boot issues, network configuration issues, and reboot issues, because if you reboot your EC2 instance, you will still have that, quote-unquote, term terminal console opened, which allows you to troubleshoot this kind of issues.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 17:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 18:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/059_Lost EC2 Key Pair - Linux.txt

Line 1:
- Concepts: Credential Exposure Response
- Services: (none explicit)
- Key Insights: So what if you lose an SSH key pair?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 2:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: How do you regain access into your EC2 instance?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 3:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: There are so many methods, and I'm going to show you a few of them.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 4:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So the number one is to use the EC2 User Data.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 5:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 6:
- Concepts: Credential Exposure Response
- Services: (none explicit)
- Key Insights: Well, we lost a key pair, so we're going to create a new key pair and then we copy the public key.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 7:
- Concepts: Credential Exposure Response
- Services: Amazon EC2
- Key Insights: So as we can see, the old key pair is blue on my EC2 instance, and now the new public key pair is green.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 8:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So we stop the instance, and then we update the EC2 User Data.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 9:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: And it turns out that if you're using the cloud-conflict format for the EC2 user data, which looks like this, this actually gets run at every start of your EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 10:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: And if you notice what I've done in this EC2 user data, I've added a name and I've added an SSH authorized keys in there.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 11:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So we are telling the EC2 instance that the next time it starts, it looks up the EC2 user data and actually creates a new username and adds an SSH authorized key.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 12:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So then we start the instance, and then what's going to happen is that by looking up the EC2 user data, then the added public key is going to be in that specific file, and then we can simply SSH into the EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 13:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So please note that this method only adds authorized keys.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 14:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: It doesn't delete any existing public keys.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 15:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: And then once you're done with this one time setup of EC2 User Data, you can just delete it so that's the EC2 instance doesn't write a new key every time it boots up.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 16:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So that's technique number one.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 17:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: Technique number two is to use Systems Manager.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 18:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager, Amazon EC2
- Key Insights: So you need to have an EC2 instance with the SSM agent installed and the proper IAM Role.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 19:
- Concepts: Credential Exposure Response, Operational Remediation
- Services: AWS Systems Manager, SSM Automation
- Key Insights: And then from the Systems Manager Console, we can run an automation, such as AWSSupport-ResetAccess, and this automation is going to create a new key pair, so a public key and a private key.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 20:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: It's going to store automatically that private key into the parameter store, and then is going to store the corresponding public key on the EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 21:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So you as a user, then you go into the Parameter Store, you retrieve the private key, you delete obviously the entry in Parameter Store, and then you can directly SSH onto your instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 22:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this works both for Linux and Windows.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 23:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And this is where the private key is going to be stored in the Parameter Store.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 24:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager, Amazon EC2
- Key Insights: And for this, as I said, you need to have the SSM agent installed with the correct IAM Role on the EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 25:
- Concepts: Remote Access Control
- Services: Amazon EC2, EC2 Instance Connect
- Key Insights: Another method is to use the EC2 Instance Connect Service.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 26:
- Concepts: Remote Access Control
- Services: EC2 Instance Connect
- Key Insights: So for this, we need to have the Instance Connect agent, and this is already happening on Amazon Linux 2 or Ubuntu 16 or later.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 27:
- Concepts: Remote Access Control
- Services: Amazon EC2, EC2 Instance Connect
- Key Insights: And then it's going to connect to the EC2 instance using the EC2 Instance Connect Service temporarily.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 28:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then we're going to edit that SSH authorized keys file, and we're going to write a new SSH public key in there.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 29:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So let's summarize it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 30:
- Concepts: Remote Access Control
- Services: Amazon EC2, EC2 Instance Connect
- Key Insights: So we're going to launch the EC2 Instance Connect Service to go and actually be SSH into our EC2 instance, and then we're going to actually write the new key in the SSH authorized keys.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 31:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And therefore we can directly connect to the instance using our own computer.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 32:
- Concepts: Remote Access Control
- Services: Amazon EC2, EC2 Serial Console
- Key Insights: You can also use the EC2 Serial Console.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 33:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So this is when you don't have a working network connection for whatever reason, and this is only for Nitro-based EC2 instances.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 34:
- Concepts: Remote Access Control
- Services: Amazon EC2, EC2 Serial Console
- Key Insights: Remember, you need to enable the EC2 Serial Console at the account level before using it, okay?
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 35:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: But it's very simple.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 36:
- Concepts: Remote Access Control
- Services: EC2 Serial Console
- Key Insights: You connect using the Serial Console, and then using the terminal, you just store the new key, the new public key, in the SSH authorized key file.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 37:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And, of course, if you don't have network connectivity, you should also fix that.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 38:
- Concepts: Credential Exposure Response
- Services: Amazon EC2
- Key Insights: Okay, let's observe one last method to connect to an EC2 instance with a last key pair.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 39:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this technique is called the EBS Volume Swap.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 40:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So we know that the authorized keys file is on the file on the EBS route volume of our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 41:
- Concepts: Credential Exposure Response
- Services: (none explicit)
- Key Insights: And so what we can do is that we can create again a new private key and a new public key, so a key pair.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 42:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: We stop the original EC2 instance, then we detach the EBS root volume, and we're going to create a new EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 43:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: And on that new EC2 instance, what we're going to do is that we're going to attach the EBS volume of the previous instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 44:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So now the new EC2 instance has two volumes, the primary one and then the secondary one, which was attached from the previous instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 45:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So we can SSH easily onto the new EC2 instance because it's been set up correctly and we haven't lost that key.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 46:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: Then by going into that EC2 instance, we can modify on the second volume, the authorized key file, to just add whatever entry we need.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 47:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: And then we can just detach okay the volume, reattach it onto the previous EC2 instance, which will now have the correct public key written into the authorized key files, and then restart the instance in SSH and we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 48:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 49:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/060_Lost EC2 Key Pair - Windows.txt

Line 1:
- Concepts: Containment and Recovery
- Services: Amazon EC2
- Key Insights: So now let's talk about how we can recover a Windows EC2 instance where we have a lost password.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 2:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So again, it has an EBS root volume.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 3:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So what can we do?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 4:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: Well if the Windows AMI is using the EC2Launch v2 service, then all we have to do is to detach the EBS root volume and attach it to a temporary EC2 instance running Windows as well.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 5:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So similar method as before.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 6:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then on the secondary volume, we're going to delete a file called the run-once file.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 7:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: What's going to happen is that it's going to make the old EC2 instance believe this is the first time it's being run.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 8:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So we delete that file, we reattach the volume onto the EC2 instance, we restart it, and then because the instance believes it is its first boot, it's going to say, "Please enter a new password" and we have recovered our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 9:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: If we are using a older AMI, so Windows AMI before Windows server 2016, so this is an older AMI, it's called the EC2Config service.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 10:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And we have a similar kind of methodology.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 11:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So we again create a new EC2 instance but this time the file we have to modify is this file right here.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 12:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: You don't have to remember the files, okay, I'm just giving you the general idea and that should be enough for you.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 13:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: But in that XML file there is the EC2 set password variable.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 14:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And if you set it to enabled, then it's actually going to allow you to set a new password.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 15:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So you restart the previous instance and then you'll have to enter a new password and you are back into the EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 16:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: There's also a thing called EC2Launch.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 17:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this is for the Windows server 2016 and later AMIs, but they're not, again, they haven't been upgraded to the newer version EC2Launch v2.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 18:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So the method is again very, very similar.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 19:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: But this time we're going to download and install what's called the EC2Rescue Tool for Windows Server.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 20:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then from this EC2Rescue Tool, you have a few steps to follow and by going into the options you have one called the Reset Administrator Password which does exactly what the name indicates.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 21:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: Then you attach the volume back to the previous EC2 instance, restart it, and then you will have a new admin password.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 22:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: Finally, you may have a method using Systems Manager.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 23:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager, Amazon EC2
- Key Insights: So for this, of course, the EC2 instance running Windows must have the SSM Agent installed.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 24:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And we have three methods.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 25:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: The first one is to use this document called the AWSSupport-RunEC2RescueForWindows Tool which is going to install the EC2Rescue Tool and then you can reset the access.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 26:
- Concepts: Operational Remediation
- Services: AWS Systems Manager, SSM Automation, SSM Run Command
- Key Insights: That's similar to what we saw before but it's automated using Systems Manager or there is an automation document again called ResetAccess or there is a run command document called RunPowerShellScript in which you can just set the password for the administrator to be Password@123 and then you are good.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 27:
- Concepts: Containment and Recovery
- Services: Amazon EC2
- Key Insights: Alright, so hopefully that gives you lots of options to recover EC2 Windows instances when you have lost a password.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 28:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/061_EC2 Rescue Tool for Linux & Windows.txt

Line 1:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So let's do a deep dive into the EC2Rescue tool.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 2:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We have two flavors.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 3:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We have the one for Linux and the one for Windows.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 4:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So this allows you to diagnose and troubleshoot common issues with your EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 5:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: It can gather syslog logs.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 6:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: It can diagnose problematic kernel parameters.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 7:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: It can diagnose common OpenSSH issues and so on.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 8:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: You are, you have over 100 modules, so quite a lot.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 9:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: This works with Amazon Linux 2, Ubuntu, Red Hats, and other kind of Linux distribution.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 10:
- Concepts: Operational Remediation
- Services: AWS Systems Manager, SSM Automation
- Key Insights: For this, you can install it manually, or you can run an SSM automation document, to just go ahead and install the EC2Rescue tool.
- Hidden/Implicit Meaning: Runbook automation and remediation signal; Break-glass operational access signal.

Line 11:
- Concepts: Operational Remediation
- Services: SSM Automation
- Key Insights: And if you run, for example, the TroubleshootSSL automation out of it, then it's going to try to fix SSH issues, going into the instance.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 12:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Now, the EC2Rescue tool, when it does output things, it can send directly data into the supports engine.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 13:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this gives data to the support of AWS, if you ever need that.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 14:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Or you can upload the results directly into an S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 15:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So what could be use cases for the EC2Rescue tool for Linux?
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 16:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Well, number one, is to collect system utilization reports such as, vmstate, iostat, mpstats.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 17:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: You can collect logs and details, such as syslog, dmesg, application error logs, and SSM logs.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 18:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: You can detect system problems such as, asymmetric routing or duplicate root device labels.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 19:
- Concepts: Containment and Recovery
- Services: (none explicit)
- Key Insights: You can remediate system problems such as, OpenSSH file permissions or disabling non-problematic kernel problems.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 20:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And on top of it, you could create your own custom module.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 21:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So the flavor for Windows server is good as well.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 22:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So you diagnose and troubleshoot common issues.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 23:
- Concepts: Forensic Preparedness
- Services: (none explicit)
- Key Insights: So all these things before, you can collect log files, troubleshoot issues, provide suggestions.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 24:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: There are two modules.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 25:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: There is the data collector and the analyzer.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 26:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: This supports Windows Server 2008 and later.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 27:
- Concepts: Operational Remediation
- Services: AWS Systems Manager, Amazon EC2, SSM Run Command
- Key Insights: And so when we want to have EC2Rescue onto our EC2 instance, all we have to do is to run command from SSM, which will install it.
- Hidden/Implicit Meaning: Runbook automation and remediation signal; Break-glass operational access signal.

Line 28:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: For example, the run EC2Rescue tool for Windows.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 29:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: The commands are CollectLogs, to collect all the logs, FixAll to fix things, or ResetAccess, for example, as we saw before, to reset passwords.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 30:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Then if you wanted to troubleshoot connectivity issues, for example, we can just execute the EC2Rescue, and the results can be uploaded directly into an S3 bucket.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 31:
- Concepts: Containment and Recovery
- Services: EC2 Rescue
- Key Insights: So use cases for the rescue tool for Windows server is around instance connectivity issues.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 32:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So firewall, RDP, or network interface configuration.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 33:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Any operating system boot issue such as, a blue screen of death, or a stop error, or a boot loop, or a corrupted registry.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 34:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: It can gather OS logs and configuration files.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 35:
- Concepts: Forensic Preparedness
- Services: (none explicit)
- Key Insights: So, if you need more advanced log analysis and troubleshooting.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 36:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And you can troubleshoot common OS issues such as, disk signature collision, and you can perform a restore.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 37:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 38:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So just remember at a high level, what this tool is, but it should give you a bit more information so you can understand it better.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 39:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/062_AWS Abuse Report.txt

Line 1:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about the AWS abuse reports.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 2:
- Concepts: Incident Response Operational Context
- Services: AWS Abuse Report
- Key Insights: So if you suspect that some AWS resources are used for abusive or illegal purposes, then you can create an abuse report.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 3:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So that could be for anything such as spam, port scanning, DDoS attacks, intrusion attempts, hosting prohibited content, or distributing malware.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 4:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: In that case, you just contact the AWS Trust and Safety Team with all the details and they will take care of it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 5:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So for example, you notice that a hacker as part of an account is sending you spam emails and you detect it's coming from AWS because the IP range belongs to AWS.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 6:
- Concepts: Incident Response Operational Context
- Services: AWS Abuse Report
- Key Insights: Therefore, you can create an abuse report with a trust and safety team.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 7:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And if your AWS resources are used for illegal activity, you will receive an email and you will be notified by the AWS Health Dashboard.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 8:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So there, you can respond and explain how you're preventing this.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 9:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And if you don't respond within 24 hours, AWS might suspend your AWS account.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 10:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So let's go through an example.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 11:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we have the Trust and Safety Team that is creating an abuse alert because some resources within your account have been declared as abusive.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 12:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Therefore, you're going to get a notification in the AWS Health Dashboard and an event is going to be generated in EventBridge.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 13:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: For example, this one is a DOS report, so it's called AWS_ABUSE_DOS_REPORT.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 14:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Then for example, from EventBridge, for any kind of health dashboard types of notification, you can send data into an SNS topic, which will then send an email to an administrator.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 15:
- Concepts: Credential Exposure Response
- Services: AWS Abuse Report
- Key Insights: The types of your notifications your account can receive are, for example, for DDoS abuse report, for spam or email abuse reports, for other type of abuse, for exposed AWS credentials detected, or for scheduled account changes.
- Hidden/Implicit Meaning: Incident-response trigger signal.

Line 16:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: All these can come from the health dashboard and we will be in Amazon EventBridge.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 17:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Alright, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 18:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/063_[SOA] Systems Manager Overview.txt

Line 1:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: So now let's discuss a service that will come up with the exam, which is the Systems Manager service.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 2:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So this helps you manage a fleet of EC2 instances and on-premises servers at scale.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 3:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And this is going to be a suite of tools that'll see.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 4:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: There's so many tools in Systems Manager that will give you insights about the state of your infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 5:
- Concepts: Operational Remediation
- Services: SSM Automation
- Key Insights: It allow you to easily detect problem and also gives you some patching automation and enhanced compliance.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 6:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: This is something that comes up at the exam a lot.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 7:
- Concepts: Operational Remediation
- Services: AWS Systems Manager, SSM Automation
- Key Insights: Whenever you need to patch your instances, usually it's going to be done with Systems Manager or any kind of automation you'll be running, also will be using Systems Manager.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runbook automation and remediation signal.

Line 8:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So it works for both Windows and Linux OS and it's going to be fully integrated with CloudWatch metrics and dashboards.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 9:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Also integrated with Config and it's a free service.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 10:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: You're only going to pay for the resources they use or creates if it does anything like that.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: So there are so many features in Systems Manager that it can be overwhelming.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 12:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to list them and tell them afterwards what we're gonna do about it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 13:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we have node tools.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 14:
- Concepts: Operational Remediation, Remote Access Control
- Services: SSM Inventory, SSM Patch Manager, SSM Session Manager
- Key Insights: We have fleet manager, compliance, inventory, hybrid activations, session manager, run commend, state manager, patch manager, and distributor.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 15:
- Concepts: Operational Remediation
- Services: SSM Automation
- Key Insights: We have change management features such as automation, change calendar, maintenance windows, documents, quick setup.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 16:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Application tools such as application manager, app config, and the parameter store.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 17:
- Concepts: Incident Response Operational Context
- Services: AWS Resource Groups
- Key Insights: We have resource groups and we have operations tools such as Explorer, app center, CloudWatch dashboard.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 18:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, that's a lot of features, but what I highlighted in blue is what I think is important from an exam perspective.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Still System Manager is very important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 20:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we're going to spend a bit of time to learn all of those and it'll become very easy to answer exam questions which you've seen them once.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 21:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: All right, so don't be overwhelmed, don't be afraid.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 22:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: This section is here to help you ease into this service that, by the way, has new features all the time.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 23:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: So now if I go into the SSM Service, just to show you the Menu.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 24:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we are in it, and as you can see, on the left hand side, we have all these options.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 25:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: As you can see right here, AWS knows how to change the structure of them as well over time.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 26:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So it's not a given.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 27:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: That one will be here and not moved here at some point, okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 28:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: But do not worry, I will spend some time going over the most important ones and they should make sense to you.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 29:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: Now, how does SSM work?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 30:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: So we need to install the SSM agent onto the systems we want to control at a high-level, okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 31:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And this is an agent that comes bundled with Amazon Linux 2 AMI.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 32:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: This is why we love using the Amazon Linux 2 AMI.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 33:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And also some Ubuntu AMI.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 34:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: If your instance cannot be controlled with SSM, it's probably an issue with the agent or the IAM permissions, okay?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 35:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: And if your AMI does not have the SSM agent on it, it's as simple as running a few commands to install that agent.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 36:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager, Amazon EC2
- Key Insights: So you are going to have EC2 instances with the SSM agent running or an on-premises server or VM with a SSM agent running.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 37:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: And then automatically after the correct configuration and making sure that these have enough IAM informations to talk to the Systems Manager service, then the instance will be connected and then Systems Manager can operate all these kind of features that I just told you about on the instances to perform, for example, some compliance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 38:
- Concepts: Operational Remediation
- Services: SSM Automation
- Key Insights: So patching with some automation, okay?
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 39:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager, Amazon EC2
- Key Insights: So if there's an issue with an instance not being registered into SSM, you either like to have to look with the SSM agents not running or not working correctly, or making sure that the EC2 instances have the right IAM role to perform actions on SSM.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 40:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager, Amazon EC2
- Key Insights: So in the next lecture, what I'm going to do is that I'm going to go ahead and set up three EC2 instances with the SSM agents and register them into Systems Managers.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 41:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/064_[SOA] Start EC2 Instances with SSM Agent.txt

Line 1:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: Okay, so let's get started with systems manager.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 2:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And for this we need to first register some instances within.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 3:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So on the left hand side, let's go into Fleet Manager.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 4:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And as you can see right now I have zero managed nodes but that will change in a second.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 5:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So what we want to do is to go into the EC2 console and start some instances to be registered in Fleet Manager.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 6:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So in my EC2 console, I'm gonna go under instances and I'm gonna click on Launch Instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 7:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: The operating system is going to be Amazon Linux two.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 8:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: And the reason we use Amazon Linux two is that the SSM agent is already running on it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 9:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: So all we need is to then give the proper IAM permissions to our instance, and then it will be registered in SSM.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 10:
- Concepts: Credential Exposure Response
- Services: (none explicit)
- Key Insights: So if we look at our instance type, we'll choose T2 Micro for a key pair, we'll proceed without a key pair.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 11:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And for a security group, we'll create a new security group.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 12:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: But as you can see we will remove any kind of connectivity to it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 13:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So no SSH, no HTTPS, no HTTP, just to show you that the instance doesn't need to be accessible.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 14:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: It's the agent that's actually accessing the service and not the service that's accessing the instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 15:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we create a new security group without any rules in it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 16:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then under advanced details, most importantly we need to select an IAM instance profile.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So let's click on create new IAM instance profile, and then we're going to create a role, and it's for an EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 18:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Next.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 19:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then here we need to find the proper permission policy.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 20:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: So we'll go into SSM.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 21:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: And here we have the Amazon SSM Managed Instance score, which contains enough permissions for the instance to be managed by SSM.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 22:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And that's extremely important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we'll have this as a attached policy of my instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 24:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager, Amazon EC2
- Key Insights: And then I will scroll down and go in here and call this Amazon EC2 Role for SSM.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 25:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So now we're good.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 26:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: We have the Amazon SSM Manage Instance Core.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 27:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Let's create this role.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 28:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And we're good.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 29:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager, Amazon EC2
- Key Insights: So back into our instance Launch, we need to find this SSM role so that we created the Amazon EC2 Role for SSM.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 30:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And we are going to launch three instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 31:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: So said three instances just to show you how to launch and have three instances in SSM in the fleet manager.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 32:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So let's launch our instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 33:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Now they have the proper security group and they have the proper IAM role.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 34:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So let's wait until they are up and running.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 35:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: So my instances are now running and the SSM agent is going to automatically boot up on them because we're using Amazon X two.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 36:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And therefore if I go into Fleet Manager and refresh this page, as you can see, my three nodes are appearing in the managed notes under fleet Manager.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 37:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So they're running, we can look at the platform, the operating system, the source type, the agent is online, yes, as well as the agent version.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 38:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So that's pretty good.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 39:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: We have successfully started three EC2 instances, assigned the proper IAM role and fleet.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 40:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: There is Return Fleet Manager.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 41:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: And again, what I wanna show you is that if we look at the security group of my instances as you can see, there are no inbound rules which means that it's actually the instance accessing SSM.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 42:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 43:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/065_[SOA] AWS Tags & SSM Resource Groups.txt

Line 1:
- Concepts: Incident Response Operational Context
- Services: AWS Resource Groups, AWS Tags
- Key Insights: So now let's have a look at tags and resource groups.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 2:
- Concepts: Incident Response Operational Context
- Services: AWS Tags
- Key Insights: So first tags, we know them.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 3:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: They're key-value pairs that we can have on many AWS resources.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 4:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: And they're commonly used in EC2, but many other sources as well.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 5:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And they have a free naming convention.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 6:
- Concepts: Incident Response Operational Context
- Services: AWS Tags
- Key Insights: But common tags are going to be named Environment, Team, and so on.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 7:
- Concepts: Operational Remediation
- Services: AWS Tags, SSM Automation
- Key Insights: So we use tags for doing resource grouping, as we'll see in this lecture, but for automation as well, for security, and cost allocation.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 8:
- Concepts: Incident Response Operational Context
- Services: AWS Tags
- Key Insights: And the general rule of thumb is that it's better to have too many tags then too few.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 9:
- Concepts: Incident Response Operational Context
- Services: AWS Resource Groups, AWS Tags
- Key Insights: So with these tags now what we can do, is that we can leverage them to create resource groups and to do so while we make sure that we can group two resources together, if they share the same tags.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 10:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So they will allow us, for example, to group applications together, to group different layers of the same application stack, or to differentiate between a production environment versus a development environments.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 11:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So in this example, I have three EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 12:
- Concepts: Incident Response Operational Context
- Services: AWS Tags
- Key Insights: Two of them have the environments dev as their tag, okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 13:
- Concepts: Incident Response Operational Context
- Services: AWS Tags
- Key Insights: And one of them has the environment prod as their tag.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 14:
- Concepts: Incident Response Operational Context
- Services: AWS Resource Groups
- Key Insights: So what I can do is I can create a resource group for the filter environment equals dev.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 15:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And this will create a logical group of my first two instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 16:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this is something you can do on a regional level, okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 17:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: It's a regional service.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 18:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: And it works not just with EC2 instances, of course.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 19:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: But it works with Amazon EC2, S3, DynamoDB, Lambda, and so on.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 20:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's get going with tagging our resources.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 21:
- Concepts: Incident Response Operational Context
- Services: AWS Tags
- Key Insights: So the first instance, right now, I'm going to manage tags.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 22:
- Concepts: Incident Response Operational Context
- Services: AWS Tags
- Key Insights: I'm going to add a tag.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 23:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: First of all, the name is MyDevInstance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 24:
- Concepts: Incident Response Operational Context
- Services: AWS Tags
- Key Insights: And then I'm going to add a tag.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 25:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: The environment is going to be dev, and the team is going to be finance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 26:
- Concepts: Incident Response Operational Context
- Services: AWS Tags
- Key Insights: So I'm going to tag my first instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 27:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And now the name is showing here as well.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 28:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: The second instance will also be tagged.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 29:
- Concepts: Incident Response Operational Context
- Services: AWS Tags
- Key Insights: So I will manage the tags, and the name is going to be MyProdInstance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 30:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Now for the environment, as you may have guessed is going to be prod.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 31:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then for the team, it's still going to be finance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 32:
- Concepts: Incident Response Operational Context
- Services: AWS Tags
- Key Insights: And finally, I'm going for the last instance to tag it as well.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 33:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So the name is going to be MyOtherDevInstance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 34:
- Concepts: Incident Response Operational Context
- Services: AWS Tags
- Key Insights: The tag is going to be environment dev, and finally for the team, I'll use operations.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 35:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Okay, we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 36:
- Concepts: Incident Response Operational Context
- Services: AWS Resource Groups
- Key Insights: So now we have our three instances and from there, I'm going to be able to create resource groups.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 37:
- Concepts: Incident Response Operational Context
- Services: AWS Resource Groups, AWS Systems Manager
- Key Insights: So back into systems manager, I'm going to go here, and I'm going to find the resource groups, okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 38:
- Concepts: Incident Response Operational Context
- Services: AWS Resource Groups
- Key Insights: So, and then in the search bar, I'm going to go to resource groups and find the window for the resource groups.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 39:
- Concepts: Incident Response Operational Context
- Services: AWS Resource Groups
- Key Insights: I'm going to create a resource group, and it's going to be tagged based, okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 40:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then we need to select the resources so we can use all resource types to look across our accounts.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 41:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: Or we can just look for EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 42:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And for example, we want you to have the environments.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 43:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Oops, environments.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 44:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Here we go.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 45:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: To be equals to dev.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 46:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And add this.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 47:
- Concepts: Incident Response Operational Context
- Services: AWS Resource Groups
- Key Insights: If we do this, we can preview the resource group resources.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 48:
- Concepts: Incident Response Operational Context
- Services: AWS Resource Groups, Amazon EC2
- Key Insights: And we can find that two EC2 instances are in my resource group.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 49:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We have my dev instance and my other dev instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 50:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: It's just perfect.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 51:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we'll call this one dev group.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 52:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And create this group.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 53:
- Concepts: Incident Response Operational Context
- Services: AWS Resource Groups
- Key Insights: So similarly, we can here create a new resource group.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 54:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: And this one is going to be again for our EC2 instance, and the environment is going to be of type prod.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 55:
- Concepts: Incident Response Operational Context
- Services: AWS Resource Groups
- Key Insights: We can preview the resource groups, and then there's one resource within it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 56:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And this one I can call ProdGroup.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 57:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Great.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 58:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And next I can create one last group.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 59:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So again, my EC2 instances, and for this time, the team is going to be finance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 60:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And here, I will call this group my finance group.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 61:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: And again, we can look at the resources and we can find two EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 62:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: My prod instance and my dev instance belong to this finance group.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 63:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this is good.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 64:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We create a group.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 65:
- Concepts: Incident Response Operational Context
- Services: AWS Resource Groups
- Key Insights: And here we go, we have three resource groups.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 66:
- Concepts: Incident Response Operational Context
- Services: AWS Resource Groups, AWS Systems Manager
- Key Insights: Now, the reason why we do these resource groups is that we wanna be able to operate SSM directly at the group level.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 67:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: So we can, for example, patch the operating system and perform some actions and so on.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 68:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this is why it's a prerequisite.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 69:
- Concepts: Incident Response Operational Context
- Services: AWS Resource Groups
- Key Insights: So once you have done your resource groups, we're good to go for the next lectures.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/066_[SOA] SSM Documents & SSM Run Command.txt

Line 1:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: Now let's talk about the center of SSM, which are documents.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 2:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And documents can be written either in JSON or YAML, in which you define parameters, to define what the document does, so actions, and then you will have the document being executed by a specific service.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 3:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So many documents already exist in AWS and we can leverage them obviously to go faster in what we do.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 4:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this is what a documents may look like.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 5:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, there's a description, there's a bunch of parameters, and then there's some steps and each step has an action in which maybe you can run a command.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 6:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this is just a simple example.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 7:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: And if you start using SSM a lot you will write your own SSM documents, okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 8:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: But what we get out of this is that they sort of look like the idea behind CloudFormation, but this is at the center of SSM now we have documents and they're gonna be how we can describe what SSM does.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 9:
- Concepts: Operational Remediation
- Services: AWS Systems Manager, SSM Automation, SSM Patch Manager
- Key Insights: So these documents can be simply used to run commands, and we'll see this in this lecture, but also these documents can be applied to other SSM features such as state manager, patch manager, automation, and documents can even retrieve some data from the SSM parameter store to be able to give you some kind of modularity and dynamicity in the way you want to have the documents behave, okay?
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 10:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at how we can create documents right now.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 11:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: So if I scroll down on a systems manager at the very bottom under shared resources, we have documents, and documents are in this page.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 12:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we have documents owned by Amazon, some owned by me, but of course, none has been owned me because I haven't created one.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 13:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Shared with me.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 14:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: If you can share documents with other people, or all documents, if you have to have the three of them.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 15:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So in this example, I'm going to show you the documents owned by Amazon, and one of them for example, is called AWS-ApplyPatchBaseline.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 16:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: So I click on it and I can see that this is useful for scanning or installing patches from a patch baseline, as we'll see what that means in a few lecturers.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 17:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: The platform is Windows.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 18:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We can see when it was created, okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 19:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And who is the owner, and what is the latest version.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 20:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this document looks good.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 21:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: We can look at the contents of the patch baseline.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 22:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this is written for this one in JSON, and as we can see, there is a parameter, one or two parameters.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 23:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So operation and snapshot ID, and then there is a bunch of runtime config as well as lot of commands that is going to happen.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 24:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So complicated, but not for us to maintain because this is maintained by AWS.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 25:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We can look at the version.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 26:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So currently we cannot view the document versions because we don't own it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 27:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So it will always be version one, but your own documents could be versioned.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 28:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And in details, we can have a look at the different parameters.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 29:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: For example, this one is on document version one, and it has two parameters, operation and snapshot ID, which are relevant to this document.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 30:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Okay, so if I look at the document itself, we could create our own documents.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 31:
- Concepts: Operational Remediation
- Services: SSM Automation
- Key Insights: So it could be a command or session document, or an automation document, and we'll see commands in this one, but I want you to show you this at a high level.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 32:
- Concepts: Operational Remediation
- Services: AWS Systems Manager, SSM Run Command
- Key Insights: So the first way we're going to apply our documents is using the run command SSM feature.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 33:
- Concepts: Operational Remediation
- Services: Amazon EC2, SSM Run Command
- Key Insights: So the idea is that with run command we're going to execute an entire document, which is indeed a script, or just run a single command across a fleet of EC2 Instances.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 34:
- Concepts: Incident Response Operational Context
- Services: AWS Resource Groups
- Key Insights: And for this, we can use resource groups that we have created from before.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 35:
- Concepts: Operational Remediation
- Services: SSM Run Command
- Key Insights: So the run command has a feature of rate control and error control.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 36:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So imagine you're playing a command to 1,000 instances and it will take them down for a minute or two.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 37:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Then you want to make sure you do this progressively, and that in case you have any errors, you are able to stop running the command in your fleets.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 38:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: It is fully integrated with IAM and CloudTrail.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 39:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So you can see who runs commands.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 40:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: There is no need for SSH, so the agent itself will be running the commands, but systems manager does not need SSH access to your instances to run the command, which is quite magical and cool.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 41:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: The command outputs can be shown in the console, but it can also be sent to your S3 buckets or to CloudWatch Logs.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 42:
- Concepts: Operational Remediation
- Services: SSM Run Command
- Key Insights: And finally, to know the status of your run command, you can look in the console obviously, but you can also send them to SNS to get information around in progress, success, failed and so on.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 43:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And finally, for automations and EventBridge for CloudWatch Events, can be used to invoke run commands.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 44:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 45:
- Concepts: Operational Remediation
- Services: Amazon EC2, SSM Run Command
- Key Insights: Run command can be run across a fleet of EC2 Instances.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 46:
- Concepts: Operational Remediation
- Services: SSM Run Command
- Key Insights: The outputs of the command itself can be sensed for analysis in CloudWatch Logs or Amazon history, notifications is through SNS, and events triggered in EventBridge could have a rule to trigger a run command itself.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 47:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So what we want to do is to install an HTTP server onto my three instances, okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 48:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: But first, to verify that it will work, we need to open up the security group.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 49:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So let's go into the security group rules.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 50:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And under the inbound rule, I'm going to add a rule for HTTP on port 80 coming from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 51:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this is allowing us to access our instances of HTTP, and we can make sure that our instances currently do not run a web server by taking, for example, one of these IPs.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 52:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we'll copy this IP and then paste it here.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 53:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And as we can see, we are not getting anything.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 54:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So let's go back into my security group.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 55:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: HTTP port 80, and it should not time out, it should just give me an error.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 56:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So let's try again.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 57:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Which is just a weird behavior of Firefox.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 58:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to copy this and I'm gonna go into Chrome.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 59:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, if I go into my IP, I get a site can't be reached.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 60:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: That means that the port 80 is open, but no HTTP server is currently running on my EC2 Instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 61:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So, okay, so that's cool.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 62:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We want to now install our web server onto these instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 63:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: So let's go into systems manager and we're going to run a command, but first we're gonna need to create our own documents.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 64:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this document is going to be for a command or session.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 65:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then we'll call this one, InstallApache.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 66:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: And the target type is going to be for an EC2 Instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 67:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Now, the document type is going to be a command document and we can specify it either in JSON or YAML.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 68:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we'll specify in YAML form because I think this is a bit easier to read.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 69:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: And to make it easy, you can just get the code directly from the SSM directory and copy this entire file document-install-apache, okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 70:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And going back here, paste it and we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 71:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So in this YAML document, we can easily read it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 72:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: We have one parameter, which is a message, which by default is Hello World, and this is the welcome message we want you to have as part of our EC2 Instances, their web server.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 73:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then the main step is to run a ShellScript and it has several run commands in it, okay?
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 74:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we update the instance, we install HTTPD, we start HTTPD, we enable it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 75:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this is in case of restarts.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 76:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then we echo message from host name into this file right here, in this HTML.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 77:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And so this message under this double brackets is coming from the parameter message above, okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 78:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So I will go and create the document.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 79:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this document is now owned by me and it's called Intel HTTP.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 80:
- Concepts: Operational Remediation
- Services: SSM Run Command
- Key Insights: And so now we need to go into the run command and run it.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 81:
- Concepts: Operational Remediation
- Services: SSM Run Command
- Key Insights: So lets go into the run command direct here.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 82:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We're going to run a command, and we need to find the document itself.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 83:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we're going to go on owned by me.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 84:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Find Apache.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 85:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: I will select this one, version one.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 86:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then we can customize the message.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 87:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So for example, we can say, Custom Hello World.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 88:
- Concepts: Incident Response Operational Context
- Services: AWS Resource Groups, AWS Tags
- Key Insights: And for the targets, we can either specify instance tags or we can choose instances manually, or we can choose a resource group, and as you can see, the resources we've created from before are available in this console.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 89:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So I will choose my instances manually, and I will actually choose my three instances right here, because I want to be able to install HTTP to all them three, okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 90:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Next, for other parameters.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 91:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we can have a timeout in terms of the commands.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 92:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So if the commands don't finish within 600 seconds, so 10 minutes, then you should fail the command.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 93:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this is a much larger timeout than what we need for this command, this is fine.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 94:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then rate control.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 95:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this is pretty cool.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 96:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: The concurrency.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 97:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So do we want to run the commands on 50 targets at a time or maybe one target at a time, so one by one?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 98:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Or maybe percentage, so 33% at a time?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 99:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: It's up to you.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 100:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: But I will choose for this example, one target at a time.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 101:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then the error threshold.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 102:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So that means just after one error, you know, on the first error, then this will stop the entire task, okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 103:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: But maybe you know that some of these commands will have errors and so maybe you're saying that as long as 5% of my instances don't error out, this is fine, please keep on going, but if you go above this 5% of error threshold, then stop running the command.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 104:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So right now we'll keep the error at zero because we don't want any errors.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 105:
- Concepts: Forensic Preparedness
- Services: (none explicit)
- Key Insights: Now, for the output options, we can create an S3 buckets to send the output to, but I will disable it, or we can send logs to CloudWatch Logs, and for example, I will call it runCommandOutput as my log group name.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 106:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: SNS notifications.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 107:
- Concepts: Operational Remediation
- Services: SSM Run Command
- Key Insights: If you wanted to get notifications about the status of this run command.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 108:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And this is nice, we can get the equivalent AWS CLI interface command if we wanted to run this directly from within the CLI.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 109:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So I'll click on run.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 110:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And as we can see, we have three targets and one of them is in progress while the other two are pending.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 111:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So let me refresh this.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 112:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And as we can see now, because we did one at a time, it will go this one in progress and it will be successful, then this one, and then that one.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 113:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So in here, I'm able to refresh and here we go.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 114:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: The first one in the first two actually were a success.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 115:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we can see the start time and the end time.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 116:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And for each of the targets, we can click on view outputs.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 117:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So the output is literally the output of the command itself.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 118:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So it shows you a maximum of 48,000 characters.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 119:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So here is all the outputs that is available from it, and as we can see at the very end is going to say that, if we're very lucky, HTTPD was installed.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 120:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Very nice.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 121:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 122:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then complete, so the command is complete, and this is complete from the YAML install.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 123:
- Concepts: Forensic Preparedness
- Services: (none explicit)
- Key Insights: And you can click on the CloudWatch Logs to view the logs directly of your commands into the CloudWatch Log groups.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 124:
- Concepts: Forensic Preparedness, Operational Remediation
- Services: SSM Run Command
- Key Insights: So this is my run command output log group, and we can see that we have many different streams available here for the standard out and standard error in case some errors were happening onto our instances, but if you go to standard outs, as we can see, we have the five commands, and what happened and the fact that they did install and enable HTTPD.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 125:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this is great.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 126:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We're good to go.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 127:
- Concepts: Operational Remediation
- Services: SSM Run Command
- Key Insights: So back into our run command, we can look at the command history.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 128:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: This one was a success, and yes, three instances were having their command run on it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 129:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: And if I go back now to my EC2 management console and refresh.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 130:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So they're still here obviously, but now if I click on this IPv4 and paste it, then we're going to get a Custom Hello World from this IP right here.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 131:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: And if I go to another EC2 Instance, this one, we're gonna get again, a Custom Hello World.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 132:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this is a custom message that I did pass to my documents and the IP is going to be different on this one.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 133:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: That means that the command was run differently on two different EC2 Instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 134:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So this is pretty cool because here we are able to run a command across three EC2 Instances, but remember, these EC2 Instances do not have the SSH port open, okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 135:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: So what happens is that the SSM agent did run the commands for us, which is super helpful because we don't compromise on security.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 136:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this is it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 137:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/067_[SOA] SSM Automations.txt

Line 1:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager, SSM Automation
- Key Insights: Now let's talk about SSM Automations.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 2:
- Concepts: Operational Remediation
- Services: Amazon EC2
- Key Insights: So, automations are going to help you simplify common maintenance and deployment tasks for your EC2 Instances or other AWS resources.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 3:
- Concepts: Operational Remediation
- Services: SSM Automation
- Key Insights: For example, using an automation, you can do some things such as restarting an Instance, creating an AMI or doing an EBS snapshot.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 4:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: The idea is that automations are going to be higher level, okay.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 5:
- Concepts: Operational Remediation
- Services: Amazon EC2, SSM Run Command
- Key Insights: They're from outside your EC2 Instances, whereas the Run command from before, were from inside your EC2 Instances.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 6:
- Concepts: Operational Remediation
- Services: AWS Systems Manager, SSM Automation
- Key Insights: So the automation Runbook is the name of the document for SSM that are going to be of type Automation, okay.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 7:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we commonly refer them as Runbook now.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: And the Runbooks will do actions preformed on your EC2 Instances or resources and AWS resources.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 9:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And you can create your own Runbook obviously, or use the predefined Runbooks done by AWS.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 10:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So here's an example.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 11:
- Concepts: Operational Remediation
- Services: AWS Systems Manager, SSM Automation
- Key Insights: The SSM Automation is using the Runbooks.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 12:
- Concepts: Operational Remediation
- Services: SSM Automation
- Key Insights: They'll show automation documents.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 13:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: And we can execute them on EC2 Instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 14:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Or specific resources, such as EBS volumes, for example, to pro-creating snapshots, AMI to create AMIs, or RDS for creating snapshots and so on.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 15:
- Concepts: Operational Remediation
- Services: AWS Systems Manager, SSM Automation
- Key Insights: Now, how do you trigger an SSM Automation?
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 16:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Well, you can do it manually using the console or using the CLI or using the SDK.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 17:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: But you can also automate it by using EventBridge as a rule.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 18:
- Concepts: Operational Remediation
- Services: AWS Systems Manager, SSM Automation
- Key Insights: And the target of the rule will be the SSM Automation.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 19:
- Concepts: Containment and Recovery, Operational Remediation
- Services: (none explicit)
- Key Insights: On a schedule, so very often using a Maintenance Window or as a rule remediation directly, whenever AWS Config Remi, finds out that a resource is not compliant with the rule.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 20:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So all these options are defined right here.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 21:
- Concepts: Containment and Recovery, Operational Remediation
- Services: AWS Systems Manager, SSM Automation
- Key Insights: So the Console, the SDK, Maintenance Windows, EventBridge, and the Config Remediation, can all execute the automation called AWS-RestartEC2Instance from within the SSM automation service, okay.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 22:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at how Automations work in this lecture.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 23:
- Concepts: Operational Remediation
- Services: SSM Automation
- Key Insights: So I'm gonna go on the left hand side into Automation.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 24:
- Concepts: Operational Remediation
- Services: SSM Automation
- Key Insights: So Change Management, Automation.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 25:
- Concepts: Operational Remediation
- Services: SSM Automation
- Key Insights: And I'm going to execute an Automation.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 26:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So I need to choose the document.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 27:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Again, we can write our own document or choose the one owned by Amazon, okay.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 28:
- Concepts: Containment and Recovery
- Services: (none explicit)
- Key Insights: And there are document categories, for example, user guide tutorials, Remediation, Patching, Security, Instance Management.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 29:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: For example, common tasks for EC2 and EBS, Data Backups, AMI Management, Self-service support workflows.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 30:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, a lot of them including for example, Cost Managements.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 31:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So in this example, we can look at Instance Managements and what can happen.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 32:
- Concepts: Operational Remediation
- Services: SSM Automation
- Key Insights: So we can attach an EBS volume directly from an Automation.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 33:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We can attach an IAM role to an Instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 34:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We can, for example, enter an ASG into standby or exit stand by.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 35:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So you can do a lot of different things, okay.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 36:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Detach your volume and so on.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 37:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So what I'm going to do, is I'm going to look for Automations.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 38:
- Concepts: Operational Remediation
- Services: SSM Automation
- Key Insights: And I'm going to look for the Automation named AWS- Restart, and that should do it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Runbook automation and remediation signal.

Line 39:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So, AWS-RestartEC2Instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 40:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And so in this one, we have the RestartEC2Instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 41:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: And what it's going to do, is that is going to just restart our EC2 Instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 42:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, we have different one.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 43:
- Concepts: Operational Remediation
- Services: SSM Automation
- Key Insights: If we wanted to have an Approval step as part of our Automation.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 44:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So let's use this one actually.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 45:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we're going to choose the document.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 46:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: I will scroll down.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 47:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Here's the document detail.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 48:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Which version do we want?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 49:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we want the latest version.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 50:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: This is great.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 51:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And the Description.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 52:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Click on next.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 53:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Now we need to choose where we want this document to be executed.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 54:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we can do a Simple Execution to execute on all targets or a Rate Control to do it one at a time.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 55:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Or we can do Multi-account and Multi-region or a Manual execution to do step by step Runbook mode.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 56:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So I will choose Rates Control, okay, to restart my EC2 Instances with approval.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 57:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And the target is going to be for example, Instance IDs.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 58:
- Concepts: Incident Response Operational Context
- Services: AWS Resource Groups
- Key Insights: And then we can choose based on a resource group just like before.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 59:
- Concepts: Incident Response Operational Context
- Services: AWS Tags
- Key Insights: Or we can, for example, say on Tags or Parameter values, or just All Instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 60:
- Concepts: Incident Response Operational Context
- Services: AWS Resource Groups
- Key Insights: So in this example, let's choose a resource group to change things up.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 61:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And I want to operate it on the Dev.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 62:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So it means I want to restart all my Dev Instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 63:
- Concepts: Incident Response Operational Context
- Services: AWS Resource Groups
- Key Insights: So we need to provide Instance IDs, but as you can see, because we've specified our Resource Group, then the Instance ID is going to be filled.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 64:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then Approvers.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 65:
- Concepts: Operational Remediation
- Services: SSM Automation
- Key Insights: So, IAM user or user arn to approve for the automation action.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 66:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And so I think that it's not going to be easy to do so.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 67:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So I'm just going to roll this back because I'm not using an IAM user and I want to make it as simple as possible.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 68:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: But if we look again at this address, Restart Commands.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 69:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And use this one.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 70:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We're good to go.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 71:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Next.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 72:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So again, the Rate Control is going to be done on Instance ID for the DevGroup.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 73:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We're going to need to have an ARN for the role.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 74:
- Concepts: Operational Remediation
- Services: SSM Automation
- Key Insights: That's the Automation Assume to perform the automation on your behalf.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 75:
- Concepts: Operational Remediation
- Services: SSM Automation
- Key Insights: And this is if you want to have the automation user role that is different than the one that you're currently using right now to launch this automation.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 76:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So, I will not specify an IAM role, but you could specify one if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 77:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Now for the Rate Control is going to be one target at a time.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 78:
- Concepts: Operational Remediation
- Services: SSM Automation
- Key Insights: And if there's one error, then please stop this automation.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 79:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Okay, let's execute it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 80:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And now the execution has been initiated for my RestartECInstance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 81:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So, we can have a look at the steps.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 82:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh this page in here.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 83:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So currently one step is being executed, okay.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 84:
- Concepts: Operational Remediation
- Services: SSM Automation
- Key Insights: Which is to execute this automation.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 85:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And so I can click on the step itself to have a look at what is done.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 86:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So, the Execution ID is right here.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 87:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And two steps were executed.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 88:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So number one is stop Instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 89:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we'll change the Instance state and this is in progress.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 90:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So if I go into my EC2 Management Console and have a look, as you can see, this one is being stopped, okay.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 91:
- Concepts: Operational Remediation
- Services: SSM Automation
- Key Insights: Which was the first step of my automation.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 92:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then there's a second step that is going to happen, which is to start my Instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 93:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this one was a success.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 94:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And now the Instance that was stopped is now being started.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 95:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So if I go back into my Management Console and refresh this, We're in pending state.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 96:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: That means that my Instance is being started.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 97:
- Concepts: Operational Remediation
- Services: Amazon EC2, SSM Automation
- Key Insights: So effectively, what we can do, for example, using this automation is just restart a full fleet of EC2 Instances, without number one enabling SSH access.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 98:
- Concepts: Operational Remediation
- Services: SSM Automation
- Key Insights: And number two, we don't have to code a script for it because, well, there is an automation available to us.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 99:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And if we had a script then, embedding for example, different steps and making during Rate Control and looking at errors and looking at lugs would be extremely complicated.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 100:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: So this really shows the power of Automations within a SSM.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 101:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And as we can see, two executions are being done.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 102:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So one of them on one Instance, and then on the other Instance at this Rate Control.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 103:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And so what we will do is that, while now the three of them are running and one of them soon we'll go down and we'll be stopped and so on.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 104:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So you get the idea?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 105:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: But this is the whole part of automations.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 106:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And hopefully they open up your mind around how you use AWS.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 107:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So I would strongly suggest if you have some time to go into your documents, okay.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 108:
- Concepts: Operational Remediation
- Services: SSM Automation
- Key Insights: And you need to just look at documents that are going to be of type, Automation and have a look at what is offered by AWS in terms of documents.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 109:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: There's a lot of them, but they can help you imagine and understand how you can leverage automations better within your infrastructure.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 110:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 111:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 112:
- Concepts: Operational Remediation
- Services: SSM Automation
- Key Insights: And make sure that the automation was successful at the end.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 113:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So go back in here and make sure it was good.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 114:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: But I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 115:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/068_[SAA_DVA_SOA] SSM Parameter Store Overview.txt

Line 1:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: So now let's talk about the SSM Parameter Store.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 2:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: It's a secure storage for your configuration and your secrets.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 3:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And optionally, you can choose to encrypt these configurations and therefore make it secrets by using the KMS service.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 4:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: SSM Parameter Store is serverless, it's scalable, it's durable, and the SDK is very easy to use.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 5:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: On top of it, if you update your parameters then you have version tracking of them.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 6:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: The security is provided through IAM and you get notifications with Amazon EventBridge, in certain amount of cases.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 7:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: You have full integration with CloudFormation.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 8:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: That means that CloudFormation can leverage the parameters from parameter store as input parameters for your stacks.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 9:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 10:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: We have an application and then we have the SSM parameter store.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 11:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we can store plain text configuration in this way.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 12:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Then the IAM permissions of your applications are going to be checked.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 13:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: For example, your EC2 instance role or you can have encrypted configuration.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 14:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: In that case the SSM parameter store is going to encrypt it with KMS.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 15:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And so the KMS service is going to be used for encryption and decryption.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 16:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And of course, you need to make sure that your applications do have access to the underlying KMS key to perform that encryption and that decryption.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 17:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So you can store parameters in the parameter store with a hierarchy.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 18:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So for example, you can define my department as a path and underneath the My-app and then the Dev and then we have the Dev DB-URL and then the DB-password within that folder.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 19:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So that means that your parameters goes all the way down into the hierarchy.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 20:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We can go one level up and store a parameter for the Prod DB-URL, as well as a Prod DB password and go up to another app or another department.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 21:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: That really allows you to organize your parameters the way you want in a structured fashion.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 22:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then this is going to simplify your IAM policies to allow applications to have access to an entire department, or to an entire app, or just to an app department environment specific path.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 23:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: You also have the opportunity to access Secrets of Secrets Manager through the Parameter Store by using this reference right here.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 24:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So it's a little trick that not many people know.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 25:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And there are something called Public Parameters that are issued by AWS that you can use.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 26:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: For example, if you want to find the latest AMI for the Amazon Index 2 in your specific region.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 27:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: This is something that's available within the Parameter Store as an API call.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 28:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So if you take an application, for example our Dev Lambda function is going to have an IAM roll that allows it to access the DB-URL and DB-password within the Dev of my app.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 29:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: And then if you have a Prod Lambda Function, thanks to again, a different IAM policy and maybe some environment variables, you can access the Prod DB-URL and Prod DB-password of another path. (mouse clicks) Now, within Systems Manager, you have two kinds of parameter tiers.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 30:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: You have the standard and the advanced tier.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 31:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So the big difference is going to be around the size of 4KB which is 8KB, and also the availability of a parameter policy.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 32:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: For the standard one, we have none but for advanced, we have some.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 33:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: The advanced type of parameters is going to be a $0.05 per month.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 34:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Whereas the first one is going to be free.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 35:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So what are these parameter policies?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 36:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And this is only for advanced parameters. (mouse clicks) Well, this allows you to assign a time to live to a parameter, that means an expiration date.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 37:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So that you forced users to update or delete sensitive data such as passwords.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 38:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And you can assign multiple policies at a time.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 39:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So here is an example policy.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 40:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this is an expiration policy to delete a parameter and you say, "Hey, on this time stamp you must delete these parameter." And then through the EventBridge integration, EventBridge is going to get notifications of it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 41:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So in this example, 15 days before the parameter expires we'll receive notification in EventBridge which gives us enough time to actually update it and make sure the parameter is not getting deleted because of the TTL.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 42:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Or maybe sometimes you wanna make sure the parameters change once in a while.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 43:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So you can have a no change notification in EventBridge so that if a parameter has not been updated for 20 days, then you will be notified as well.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 44:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So you can get very, you know, creative with the parameter store.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 45:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: But now you get the idea behind it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 46:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So I hope you like this lecture and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/069_[SAA_DVA_SOA] SSM Parameter Store Hands On (CLI).txt

Line 1:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's go ahead and practice using the Parameter Store.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 2:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So the best way to do it is to type Parameter Store in the search bar, and you can click here.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 3:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: It's a Systems Manager feature.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 4:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: So if you click on Parameter Store, on the left hand side, you will see that under Systems Manager, you have, under Application Tools, the Parameter Store, and what we can do here is create a new parameter.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 5:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We specify types and values, and then we can reference the parameters in the comments or the code.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 6:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and practice using this service.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 7:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So I first create a parameter and I need to enter a name for it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 8:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So the name is whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 9:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: You don't have to follow my direction, but I like to name it like this so /my-app/dev/db-url, and this is going to allow me, with these four slashes to organize them into a hierarchy.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 10:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this is my app, this is the Dev Environment, and this is the name of my parameter within the Dev Environment.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 11:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So here, I say DB Url for the Dev Environment.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 12:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: That's perfect, and then Tier, we have two options.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 13:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We have Standard and Advanced.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 14:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we are going to use a Standard tier.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 15:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We can store up to 10,000 standard parameters.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 16:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: They are four kilobytes in value maximum, and we can't share that with other accounts, but the Advanced parameters, you can have 100,000 of them, they can be eight kilobytes and you can share them with your other accounts.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 17:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So next we're going to choose the type, and the type could be String, StringList, or SecureString.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 18:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So here we're going to use String, but later we'll be using SecureString, and if you need to list of string, you can have a StringList, but String here has Data Type.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 19:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: It's either text or AWS EC2 image because you can also reference image ARNs here, and here you just have to specify the text in a specific format.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 20:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: But we'll use Text, and for the string, I will have for example, dev.database.stephantheteacher.com.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 21:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: This is just an example.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 22:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: You don't have to put anything that's a URL.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 23:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: You can put whatever you want in it, but that's going to be the value of my parameter, this one.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 24:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So let's create this parameter, and as you can see now it's been created.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 25:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: I can click on it and have a look at it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 26:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this is Version One of this parameter.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 27:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We can view the version history here.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 28:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So if I were to change it, then I can of course update it, but I will have access to my version history, which is nice, and then we're going to do the same but add more parameters, so we're going to go under Parameter Store and I'm going to copy this, and here I'm going to have it as db-password, so we're going to create it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 29:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So DB Password for Dev, and as you guessed it, we're going to have a SecureString this time, and because it's a password, we're going to encrypt it with a KMS key, so it could belong in my account or another account.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 30:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We'll use my account.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 31:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: You could use the default KMS Key ID managed by AWS for the SSM service, which is this one, alias/aws/ssm, or you can select one that you have created before.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 32:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: For example, you may have created, for example, KMS, a key called Tutorial or whatever you want to create it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 33:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: You don't have to, and so if you had created it, then you can use it here and leverage it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 34:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: It's really as you want, but let's choose Tutorial for this example, it doesn't really matter, and we need to put a password, so I'll have it as devpassword, and now this is going to be automatically encrypted by KMS.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 35:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So let's create this parameter.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 36:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: As you can see now, the type is a SecureString, and if I click on it, as you can see, the value is encrypted and hidden, and if I click on show decrypted value, it will check that I have the KMS permission to use the key and then therefore decrypt the value for me, so that's great.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 37:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: What we can do now is just really quickly create the other parameters for Prod.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 38:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So instead of here, I have Prod and I'll call it prod.stephantheteacher.com3306, and then for the password, same.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 39:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: I'm going to copy this real quick and have it as prod.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 40:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We'll use a SecureString, we'll use the Tutorial one, and then we'll have it as prodpassword.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 41:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now we have four parameters and they're all available within the Parameter Store and they're ordered by a hierarchy.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 42:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So now let's try to access these parameters using the CLI.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 43:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to open a CloudShell on the top because it has the CLI installed of AWS and it's already configured.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 44:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: And so what we're going to use is a command called the SSM Get Parameters.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 45:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: So we'll do aws ssm get-parameters, and then you have to provide names, and the names correspond to the names of your parameters.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 46:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So I can have, for example, my dev/db-url as well as my dev password, db-password.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 47:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we'll press Enter, and as you can see, now I get a result with my two parameters.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 48:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we have this one and that one, and you can see that for the db-url, it's a String, the value has been returned as is, but for the db-password, it's a SecureString and it has been returned as an encrypted value.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 49:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So to decrypt this value, I'll press Enter, Enter, Enter, and quit, q.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 50:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: I have to specify a flag, and the flag is called with-decryption, and so it's going to check additionally if I have the KMS security policy allowed on my account to decrypt that parameter.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 51:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So as you can see now, the db-password is still a SecureString, but now we have devpassword as a decrypted value thanks to this flag with decryption.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 52:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So the CLA is very powerful and something you can definitely use in your scripts.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 53:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Another command I would like to show you is going to be the Get Parameters by Path.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 54:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: So you do aws ssm get-parameters-by-path, and then you have to specify a path, and the path is whatever you want, so because we have a hierarchy, we have my-app/dev, it's going to give me all the parameters in this namespace, and as you can see, we got again, the dev db-password and the dev db-url.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 55:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: But you can do something more now, you can do, for example, my-app as a whole, and as you can see, I get nothing, but if I use the flag and it's a flag called Recursion, so it's going to be recursive, then you have access to all the parameters recursively under that namespace.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 56:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we have access to the dev as well as the prod type of parameters, which is brilliant, so now we have our four parameters.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 57:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And finally, if you want it, of course, you can also use with-decryption to decrypt all of them.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 58:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And that's it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 59:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we've seen how the Parameter Store was working, we've seen about the hierarchy, we've seen the CLI, and it starts to show you the power of using the Parameter Store.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 60:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/070_[SOA] SSM Inventory & State Manager.txt

Line 1:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager, SSM Inventory
- Key Insights: Now let's have a look at the inventory feature of SSM.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 2:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So this is used to collect metadata from your managed instances, and it could be EC2 or On-premises.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 3:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And the metadata can include many things such as the installed software, the OS drivers, some configurations.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 4:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: If you install updates and running services.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 5:
- Concepts: Incident Response Operational Context
- Services: SSM Inventory
- Key Insights: It creates an inventory of what's happening on your managed instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 6:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So you can view this data in the console of AWS, or you can store it for example, in S3 and you could query and analyze it using Athena for serverless.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 7:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And QuickSight, if you want to build some dashboards around it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 8:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So you can specify the metadata collection interval, could be minutes, hours, and days.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 9:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then you could also gather all this data from multiple accounts into one account, and then you can query it from a central place.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 10:
- Concepts: Incident Response Operational Context
- Services: SSM Inventory
- Key Insights: And finally, you can create a custom inventory if you wanted to, for example.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 11:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: The replication of each managed instance, if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 12:
- Concepts: Incident Response Operational Context
- Services: SSM Inventory
- Key Insights: So let's have a look at how inventory works in the console.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 13:
- Concepts: Incident Response Operational Context
- Services: SSM Inventory
- Key Insights: Okay, so on the left hand side, let's scroll down and let's find the inventory.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 14:
- Concepts: Incident Response Operational Context
- Services: SSM Inventory
- Key Insights: So in here we are in inventory and as we can see the managed instances with inventory enabled are currently three disabled.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 15:
- Concepts: Incident Response Operational Context
- Services: SSM Inventory
- Key Insights: So we need to enable inventory for my instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 16:
- Concepts: Incident Response Operational Context
- Services: SSM Inventory
- Key Insights: So for this, I'm going to click here to enable inventory on all instances, and to set up this inventory request succeeded.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 17:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: I click on view details and I'm taken into state manager.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 18:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And state manager is something that we'll see in a second.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 19:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: But it is a way for you to apply state to your different instances to make sure that they are all in the same state.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 20:
- Concepts: Incident Response Operational Context
- Services: SSM Inventory
- Key Insights: And obviously the state we want our three instances to be in is in a state that allows us to gather the software inventory.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 21:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So if you look at the targets, as we can see all the instance IDs are being applied to this state manager execution, okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 22:
- Concepts: Incident Response Operational Context
- Services: SSM Inventory
- Key Insights: And if we look at the execution history right now, it is still pending, so I can click on it and as we can see, one managed instance currently has had the association of getting its inventory gathered, but the other two are still pending.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 23:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Okay, so one is a success and I'm waiting for the other two to be done.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 24:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And while this is happening, well, let's have a look at what state manager is.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 25:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So state manager is used to automate the process of keeping your managed instances, in a state that you define.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 26:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: And a use case could be to bootstrap instances with software or to patch operating system and software updates on a schedule.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 27:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And you have to create what's called an association.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 28:
- Concepts: Incident Response Operational Context
- Services: SSM Inventory
- Key Insights: So you define the state that you want your instances to be in, for example, the one we just did is that we want the state of the instances that are to be monitored and gathered information by the inventory.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 29:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: And another example could be for example, that you must close the port 22, no matter what or that an antivirus must be installed on your EC2 instances.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 30:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then you specify a schedule at which this association and this configuration is going to be applied.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 31:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: And to what leverage a state manager, you use SSM documents and you create an association.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 32:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: For example, you can create a document to CloudWatch agent.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 33:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So state manager is to ensure that your fleet of instances are all in a state that you desire.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 34:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Now back in here, as we can see, my three managed instances are in the success state.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 35:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager, SSM Inventory
- Key Insights: So if I go back into systems manager on the left hand side have a look at my inventory, as we can see now, three instances have the inventory enabled for them, which is great.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 36:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And now that we have a look at this where we can have a look, for example, at the instance coverage per type, okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 37:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And more importantly, we can look at the top OS versions.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 38:
- Concepts: Incident Response Operational Context
- Services: SSM Inventory
- Key Insights: So Amazon Linux 2 is used by three instances right now, we don't have any custom inventory types so this is not shown here.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 39:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We can look at the top five applications because all my instances use the same AMI, it's not going to be very interesting, but we can see some applications installed on my instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 40:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2, SSM Inventory
- Key Insights: But imagine a fleet of so many different AMIs, thousands of EC2 instances, it's going to be very helpful for you to get an inventory of all of that, obviously.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 41:
- Concepts: Incident Response Operational Context
- Services: SSM Inventory
- Key Insights: But more importantly, if I go up and look at the details, we can have a look at the detailed data so we can create inventory Resource Data Syncs, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 42:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: For this, I will just call it DemoSync, and then we need to type a bucket name so to send the data into a single bucket.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 43:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager, SSM Inventory
- Key Insights: So I'll call it demo-ssm-inventory-stephane, and in this region, and then creates.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 44:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we need to first create this bucket.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 45:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So let's go into Amazon S3, set up S3.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 46:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Then I will go to my bucket, I will create a bucket, here's my bucket name, and then create this bucket.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 47:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: We're good to go, so now back here, I can create this and there's an access to that so we need to make sure that there is enough permissions for SSM to sync my data into my S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 48:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And for this, we need to probably add a bucket policy.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 49:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So let's find the the bucket policy right here, so this is an example of the policy itself.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 50:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we are going to copy this, okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 51:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager, SSM Inventory
- Key Insights: And now into my managed console, I'm going to have a look at my bucket I just created so demo-ssm-inventory-stephane, and for permissions under bucket policy, I will edit it and it will paste this policy.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 52:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Now, I do you need to change a few things so I need to copy the name of my bucket right here and paste it instead of DOC-EXAMPLE-BUCKET in here, as well as in here.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 53:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And as we allow bucket prefix, we don't have any so we'll remove this and then account ID equals and then I need to specify the account ID of my accounts, which is right here so I will paste my account ID, and we should be good to go.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 54:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So I will delete this, delete this, and delete the last column, and now we're good to go in terms of permissions on my bucket policy.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 55:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So let's save the changes and let's see if the error now fixed.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 56:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So create and maybe let's make the permission a little bit more permissive.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 57:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So keep on trying until this works, as they say.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 58:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So I will just say that you're allowed to write anywhere and that probably helps me a little bit.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 59:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So, okay let's save these changes.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 60:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: So now the permission is to allow the SSM service to put an object anywhere in my bucket, like in here it creates, and we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 61:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So the resource data sync was successfully created.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 62:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So now we can look at this resource data sync itself, and this will be using in the backend Athena to query my data into my Amazon S3 bucket, okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 63:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So we're waiting for Athena to run this query for me, and then I'll be able to see all the installed software on my EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 64:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this took about five minutes to populate.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 65:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2, SSM Inventory
- Key Insights: Okay, but now in the inventory type, I can have a look at AWS application, and this is going to show me a list of all the applications installed on my EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 66:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: For example, we can have a look at the version, the architecture, the summary, the package ID, the publisher, the release, that URL, as well as the name and so on.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 67:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So you can do a lot of different things.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 68:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And we see we have over eight, nine pages of the results.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 69:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So it can be quite tricky.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 70:
- Concepts: Incident Response Operational Context
- Services: SSM Inventory
- Key Insights: And if you wanted to run advanced queries, you could click here and this will take you into the Athena and in Athena you can run queries as you want on your inventory, okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 71:
- Concepts: Incident Response Operational Context
- Services: SSM Inventory
- Key Insights: So that's it, we've seen state manager at a high level and we've seen inventory and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/071_[SOA] SSM Patch Manager and Maintenance Windows.txt

Line 1:
- Concepts: Operational Remediation
- Services: AWS Systems Manager, SSM Patch Manager
- Key Insights: So now let's see an overview of the SSM Patch Manager.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 2:
- Concepts: Operational Remediation
- Services: SSM Patch Manager
- Key Insights: So we use the Patch Manager to automate the process of patching our managed instances.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 3:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: This includes OS updates, applications updates and security updates.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 4:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: Of course, it supports both EC2 instances and on-premises server and Linux, MacOS and Windows.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 5:
- Concepts: Operational Remediation
- Services: SSM Patch Manager
- Key Insights: You're going to patch on demand so you can run the patch manager as you want or on the schedule if you want to use a maintenance window.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 6:
- Concepts: Operational Remediation
- Services: SSM Patch Manager
- Key Insights: What's going to happen is that the patch manager will scan the instances and will generate a patch compliance report which is a list of all the machine patches.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 7:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then this report can be sent to S3 and then we can act upon this report.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 8:
- Concepts: Operational Remediation
- Services: SSM Patch Manager
- Key Insights: So patch manager has two components we need to know about, which is the number one is the patch baseline and the number two is patch groups.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 9:
- Concepts: Operational Remediation
- Services: Amazon EC2
- Key Insights: So patch baseline defines which patches should and shouldn't be installed on your EC2 instances and the ability to create custom patch baseline is up to you if you want to specify approved or rejected patches on your instance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: The patches can also be auto approved within days of their release in case someone is not there to approve them.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 11:
- Concepts: Operational Remediation
- Services: AWS Systems Manager
- Key Insights: By default, the patch baseline is to install only critical patches and patches related to security onto your SSM managed instances.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 12:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: Now for patch group, this is to associate a set of instances with a specific patch baseline.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 13:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: So if you define custom patch baselines, then you can create patch groups to associate them together.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 14:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: And for example, you can have a patch group for dev, test and prod.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 15:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: Now, instances when using patch groups should be defined with a tech key patch group and an instance at any time, therefore can only be part of one patch group.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 16:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: And the patch group can only be registered with one patch baseline.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 17:
- Concepts: Operational Remediation
- Services: SSM Patch Manager
- Key Insights: So we have two kind of patch baselines in Patch Manager.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 18:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: We have the predefined patch baselines and they're managed by AWS and they're defined for operating systems that are different and you cannot modify them.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: Operational Remediation
- Services: AWS Systems Manager
- Key Insights: Now to run one of these predefined patch baseline, you can use the SSM document named AWS Run Patch Baseline, to apply both operating system and application patches for Linux, MacOS and Windows server.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 20:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: You can also define your custom patch baseline.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 21:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: So you define your own patch baseline and you choose which patches are auto-approved, which are allowed, which are rejected, and the operating system.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 22:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: And you can also specify custom or alternative patch repository.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 23:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: So you can really, for example, have an internal corporate patch repository for this.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 24:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Now I want to make this clear with a diagram.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 25:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: So we have three types of easy two instances all running the SSM agents.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 26:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: The number ones are going to be tagged with OS Windows patch group dev, number two is OS Windows, number three is OS Windows Patch Group prod.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 27:
- Concepts: Operational Remediation
- Services: SSM Patch Manager
- Key Insights: And in Patch Manager we're going to define patch baselines.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 28:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: So the first patch baseline is attached to the default patch group which is when a patch group is not defined by default.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 29:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And this is default yes.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 30:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: So any instance that doesn't have a specific patch group is going to get the first patch baseline ID.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 31:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: And the second one is running the patch group dev, which is not a default patch baseline.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 32:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: And we have a specific patch baseline ID.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 33:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: So thanks to this tagging the first instance which is under patch group dev is going to have the PB98, whatever, patch baseline ID.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 34:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: And the other two are going to have the PB0123 patch baseline ID because they are not tagged with a patch group dev.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 35:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: So here we're going to run a command and this command is going to be running a document called AWS Run Patch Baseline.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 36:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: And this can be initiated from the console, the SDK or the maintenance window.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 37:
- Concepts: Operational Remediation
- Services: Amazon EC2, SSM Run Command
- Key Insights: And then the run command itself will be applied to all these EC2 instances, from within obviously, to install the patches.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 38:
- Concepts: Operational Remediation
- Services: AWS Systems Manager, SSM Patch Manager
- Key Insights: Now, the SSM agent on these instances will query to the patch manager service to get an idea of which patches to include and to run thanks to the patch baseline.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 39:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this may seem complicated but hopefully this is something you understand.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 40:
- Concepts: Operational Remediation
- Services: AWS Systems Manager
- Key Insights: And then obviously you can have rate control, just like anything in SSM, using a maintenance window.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 41:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: So talking about maintenance windows, this is when you want to define a schedule for when to perform actions on your instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 42:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: For example, OS patching, updating drivers and installing software.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 43:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: For example, this could be done at night between 3:00 and 5:00 AM.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 44:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: And a maintenance window contains a schedule, a duration and a set of registered instances, as well as a set of tasks that can be run during that maintenance window.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 45:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So hopefully that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 46:
- Concepts: Operational Remediation
- Services: SSM Patch Manager
- Key Insights: From a exam perspective, what you need to know is that patch manager is used to patch your instances but that comes, I guess, naturally.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 47:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: And these patches can be run within a specific maintenance window with a specific rate control if you need to.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 48:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 49:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt

Line 1:
- Concepts: Operational Remediation
- Services: SSM Patch Manager
- Key Insights: So let's practice using patch manager.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 2:
- Concepts: Operational Remediation
- Services: SSM Patch Manager
- Key Insights: So on the left-hand side, you have patch manager and then you are in this UI and you have a button here to create a patch policy.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 3:
- Concepts: Operational Remediation
- Services: Amazon EC2
- Key Insights: So here we are able to set up a policy that will patch our EC2 instances and on-premises instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 4:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: So we have a patch policy name, this is DemoPolicy.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 5:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then we have the option to either do a scan to have a look at all my instances and see if some patches are missing, or we can do a scan and install.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 6:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: In which case, we have a scanning schedule.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 7:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: For example, here, this is daily at 1:00 AM, but you can customize it if you wanted to, or, and then you have the installation schedule, which is, for example, that once a week, the patches will be installed on the Sunday.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 8:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And again, you can set up your own frequency if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 9:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Also, you can set up that the instances can be rebooted if need be.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 10:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: And then you say, okay, what is the patch baseline to have the patches released to my instances?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 11:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: So we can use the recommended default, which is the patch baseline defined for all the operating systems supported by AWS.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 12:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: Or you can create your own custom patch baseline.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 13:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: So you would select an operating system, and then for each OS, you would select a patch baseline.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 14:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: Now, of course, you only have one patch baseline right now per OS, but you can create your custom baselines if you wanted to.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Forensic Preparedness
- Services: (none explicit)
- Key Insights: Then do you want to write the output of the patches log to S3 and then the targets, where do you want them?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 16:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: So this could be in the current region, or you can set up now so they can have all the regions if you wanted to as targets to have the patch policy in one place only.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 17:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then where do you want to deploy the patches?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 18:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager
- Key Insights: So is it under all managed nodes by systems manager, or do you have specific instances you want to manually deploy to, for example?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 19:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Then the rate control.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 20:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: So how fast do you want to deploy the patch?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 21:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: For example, on 10% of all the nodes at a time to make sure it's a gradual release.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 22:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And also, what is the error threshold?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 23:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: For example, if you have too many errors, then you're going to stop the patches to make sure that you don't get, for example, your entire fleet of instance down.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 24:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Then do you want to have instance profile to be able to apply these patches?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 25:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So IAM roles right here, security.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 26:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And finally, create, and you'll be good to go.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 27:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: So I won't create it, but this is how you would create a full patch policy.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 28:
- Concepts: Operational Remediation
- Services: SSM Patch Manager
- Key Insights: Next, if you go back to patch manager and click on start with an overview, you're going to get into the UI of patch manager.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 29:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So here you have dashboards where you can see all the information around your instance management, your compliance and so on, with some reports.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 30:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So here you get node patching details.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 31:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: Here you have your patch baseline.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 32:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: So for each operating system, what is the patch baseline?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 33:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So you can click on it nd have a look at it in greater details.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 34:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: Or if you wanted to, you can create your own patch baseline.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 35:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And this is where you would define your specific rules for that OS, the approval rules and the exception.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 36:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: So this is where you really customize things, and then you can apply it to the patch policy we saw before.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 37:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: We have the patches, so let's have a look at all the patches, for example, by operating system, when they're released, if they're important, and so on.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 38:
- Concepts: Operational Remediation
- Services: SSM Patch Manager
- Key Insights: And then settings to have a look at the integration between security hub and patch manager.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 39:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: And finally, if you want to have a look at maintenance windows, they're right here on the left-hand side.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 40:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: So under maintenance windows, we can create a maintenance window to run our patches.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 41:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So I call it one DemoMaintenanceWindow.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 42:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And then we allow unregistered targets to be under this window.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 43:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Where do we want, how far, how often do we want to run this window?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 44:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So it could be a cron schedule, a rate, or a cron/rate expression.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 45:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: So we can say, daily, you start every day at zero, three, so 3:00 AM, and it's going to be a two-hour maintenance window, okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 46:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And stop initiating task while zero hour before the window closed.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 47:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: But you can say one hour if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 48:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: You can say start time and end time if you wanted to schedule.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 49:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: And then we can create this maintenance window, okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 50:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And within this window, what we can do is that we can register specific tasks that will be run.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 51:
- Concepts: Operational Remediation
- Services: SSM Run Command
- Key Insights: And one of these tasks, for example, is could be a run command.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 52:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: So I'll call it patch.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 53:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: And the document to apply itself is going to be AWS run patch.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 54:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: And we have the run patch baseline right here, documents that we can register within our targets, and we can select unregistered or unregistered targets, for example, these three, to apply this.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 55:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: And obviously, thanks to the maintenance windows, we can specify concurrency and the error threshold.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 56:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Hopefully this works.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 57:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Obviously, one target at a time and zero for errors, and that should do the tricks.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 58:
- Concepts: Operational Remediation
- Services: SSM Run Command
- Key Insights: So let's see if I can just go ahead and click on register run command, here we go.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 59:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: So now, that means that within my maintenance window, this run patch baseline will be run, and it will happen only during this window.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 60:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So this is just a way to do things.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 61:
- Concepts: Operational Remediation
- Services: SSM Patch Manager
- Key Insights: I'm not going to go ahead with this maintenance window, but I want to show you a high level of how patch manager and the maintenance window we're working.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 62:
- Concepts: Operational Remediation
- Services: (none explicit)
- Key Insights: And to clean that up, you can delete this maintenance window and you'll be good to go.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 63:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 64:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/073_[SOA] SSM Session Manager Overview.txt

Line 1:
- Concepts: Remote Access Control
- Services: AWS Systems Manager, Amazon EC2, SSM Session Manager
- Key Insights: So now let's talk about SSM session manager, which is a way for you to start a secure shell environment on your EC2 instances and on-premises servers, but you access it through the console, the CLI or the session manager SDK, and the real power of session manager is that you do not need to get direct SSH access into your instances.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 2:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 3:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Neither using a bastion host or SSH key.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 4:
- Concepts: Remote Access Control
- Services: Amazon EC2, EC2 Instance Connect
- Key Insights: So this is different from the SSH traditional SSH, or even the EC2 instance connect that is in the backend using SSH.
- Hidden/Implicit Meaning: Break-glass operational access signal.

Line 5:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 6:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 7:
- Concepts: Incident Response Operational Context
- Services: AWS Systems Manager, Amazon EC2
- Key Insights: Where are EC2 instance is running the SSM agents and is having the right permissions to be registered with this SSM service.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 8:
- Concepts: Remote Access Control
- Services: SSM Session Manager
- Key Insights: And so our user is going to connect to the session manager service with a correct IAM permission, of course.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 9:
- Concepts: Remote Access Control
- Services: Amazon EC2, SSM Session Manager
- Key Insights: And then the session manager will be able to execute commands on our EC2 instance.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 10:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So it's using the same mechanism if you want, as the run commands, the service feature.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 11:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 12:
- Concepts: Remote Access Control
- Services: Amazon EC2, SSM Session Manager
- Key Insights: But this time, the session manager is used to just have a common shell against our EC2 instance.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 13:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: The cool thing is that it supports Linux, macOS and windows.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 14:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 15:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And all the connections, your instances, and the executed commands are going to be logged.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 16:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So you can have them being sent to Amazon S3 or CloudWatch Logs.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 17:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that you have more control and more security.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 18:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: When someone does an SSH command into an EC2 instance, you do not have the history of all the commands that will run, and so less security, less compliance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 19:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: And CloudTrail can also be used to intercept the StartSession events, which is when session and measure is being used to start a session onto your EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 20:
- Concepts: Operational Remediation
- Services: SSM Automation
- Key Insights: For example, again, for some automation, compliance and alerting.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 21:
- Concepts: Remote Access Control
- Services: AWS Tags, Amazon EC2, SSM Session Manager
- Key Insights: So session manager requires IAM permissions, and this is allowing you to control which users or groups can access session manager and which instances, and you can use tags to restrict access to only specific EC2 instances.
- Hidden/Implicit Meaning: Constraint or limitation signal; Runbook automation and remediation signal.

Line 22:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So in this example, this is an IAM policy that allows you to connect to any instance, as long as the resource type of environment is named dev.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 23:
- Concepts: Forensic Preparedness
- Services: AWS Systems Manager
- Key Insights: So you also need access to SSM and write to S3 and write to CloudWatch to allow you to send the Log there.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 24:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And optionally, you can restrict even restrict commands that the user can run in a session. if you wanted to go deep down the security route.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 25:
- Concepts: Remote Access Control
- Services: SSM Session Manager
- Key Insights: So just for you to understand, using SSH, well we have to open up our security group and our user with specific IP address as a session to our instance and do whatever he wants there, but using session manager, we don't need any inbound rules.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 26:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 27:
- Concepts: Remote Access Control
- Services: AWS Systems Manager, Amazon EC2, SSM Session Manager
- Key Insights: You just need the instance with the SSM agents and the right IAM role, and then a user with a correct IAM permission can use session manager to run commands against our EC2 instance.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 28:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: All the data of the session is going to be logged or could be logged into Amazon S3 or CloudWatch logs.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 29:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So it's quite a cool service.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 30:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 31:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture to do some hands-on.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/074_[SOA] SSM Session Manager Hands On.txt

Line 1:
- Concepts: Remote Access Control
- Services: Amazon EC2, SSM Session Manager
- Key Insights: So on the left hand side, let's find Session Manager and we want to establish an SSH session into our EC2 instances.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 2:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So if you have a look, MyDevInstance, under security, the security group does not have any SSH security group rules inbound.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 3:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 4:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Yet we're going to be able to start a session.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 5:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And this session is going to be started, for example, on MyProdInstance, we can start the session right here.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 6:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: And as you can see, I am connected directly into my EC2 instance, so I can do echo hello world, and here we go, we have some information around the hello world and we can run any command.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 7:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So we can do LS and have a look at all the directories.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 8:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So we can go to home, EC2-user, and we need to go SUDO to be elevated, so SUDO SU is what I use to be elevated.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 9:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: And then we can do CD home, EC2-user, And now I am in my EC2-user directory and I can do whatever I want.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 10:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 11:
- Concepts: Operational Remediation
- Services: SSM Run Command
- Key Insights: We could see if a HTTP is installed so we can do SUDO YUM -y install and HTPD and obviously it is going to be already installed because we did install it before using a RUN command.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 12:
- Concepts: Remote Access Control
- Services: SSM Session Manager
- Key Insights: So pretty cool because this session entirely is going to be logged, okay, because it is done from session manager, and also my instance does not have any SSH inbound security rule, yet I am able to run some commands within it.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 13:
- Concepts: Remote Access Control
- Services: SSM Session Manager
- Key Insights: So this is the power of session manager, and I can just terminate this.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 14:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 15:
- Concepts: Remote Access Control
- Services: SSM Session Manager
- Key Insights: And now if I go back into my session manager, I can look at session history and see that the history was being created right here.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 16:
- Concepts: Remote Access Control
- Services: SSM Session Manager
- Key Insights: And finally, you could edit the preferences of session manager to have an idle timeout, to have KMS encryption for your sessions and to run the session as a specific user for your next instances.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 17:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 18:
- Concepts: Incident Response Operational Context
- Services: Amazon EC2
- Key Insights: So put a username, could be, for example, EC2-user, if you wanted to, if it's relevant IAM Linux too.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 19:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: You can enable CloudWatch logging.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 20:
- Concepts: Forensic Preparedness
- Services: (none explicit)
- Key Insights: So do you want to log all the sessions with CloudWatch logs?
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 21:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Yes.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 22:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And S3 logging, Do we want to send all the logs data into Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 23:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: As well as some profile for Linux shell and Windows shell profile as well.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 24:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So it's quite, quite handy to be honest, and all this can be edited in here.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 25:
- Concepts: Remote Access Control
- Services: AWS Systems Manager, Amazon EC2, SSM Session Manager
- Key Insights: And I know a lot of companies and people who use Session Manager from within Systems Manager to do the executing actions onto your EC2 instances because it is way more controlled and also has a lot more compliance around it.
- Hidden/Implicit Meaning: Runbook automation and remediation signal.

Line 26:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 27:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 28:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

### File: outputs/AWS Speciality/Security/04_Domain 2 - Incident Response/075_[SOA] SSM Cleanup.txt

Line 1:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: Okay, so to clean up this section, if we go into Fleet Manager, as we can see under Fleet Manager, we have three managed instances.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

Line 2:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: And so that means that we need to terminate them, so to make sure we don't have any running cost, take your three instances and terminate them and you should be good to go.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 3:
- Concepts: Incident Response Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes incident response behavior detail.

## Step 2 — Consolidation

### 1. Concepts List
- Containment and Recovery
- Credential Exposure Response
- Forensic Preparedness
- Incident Identification
- Incident Response Operational Context
- Operational Remediation
- Remote Access Control

### 2. Services List
- AWS Abuse Report
- AWS Resource Groups
- AWS Systems Manager
- AWS Tags
- Amazon EC2
- EC2 Instance Connect
- EC2 Rescue
- EC2 Serial Console
- SSM Automation
- SSM Inventory
- SSM Patch Manager
- SSM Run Command
- SSM Session Manager

### 3. Features List
- automation
- documents
- inventory
- maintenance window
- patch
- resource groups
- run command
- session
- tags

### 4. Use Cases
- 052_[CCP_SOA] Penetration Testing on AWS.txt:2: So, penetration testing is when you're trying to attack your own infrastructure to test your security.
- 052_[CCP_SOA] Penetration Testing on AWS.txt:7: For example, you cannot do a DNS zone walking via Amazon Route 53 Hosted Zone.
- 054_Compromised AWS Resources.txt:15: Also, if you have an EC2 instance that is compromised please make sure to tag the EC2 instance with the investigation ticket number, for example, so that you know that well, something is wrong with that instance.
- 054_Compromised AWS Resources.txt:17: You can do an offline investigation, so this is when you shut down the instance and you're going to look at the EBS volumes that have been snapshotted and then restored and attached to a forensic EC2 instance.
- 055_Compromised AWS Credentials.txt:10: Now, if it's an IAM role that is compromised, for example you have enabled active directory integration or you assume a role, or whatever, then again you need to identify what is the compromised IAM role.
- 055_Compromised AWS Credentials.txt:14: For example, if we're using SSO and the user was compromised there.
- 056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt:3: When you create a Key Pair, it's called a Key Pair because there's a private key and a public key.
- 056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt:6: Then when you create an EC2 instance and you select the associated key, what's actually going to happen is that on the root EBS volume of the EC2 instance, the public key is going to be stored as a copy in a file called authorized_keys in the SSH directory.
- 056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt:8: Well, because when we want to actually perform an SSH into our EC2 instance, what's going to happen is that the SSH protocol is going to present the private key to our EC2 instance, which is going to match it with the public key it has in store and say, "Yes, the user is authorized to perform SSH on me." So this is the basics of EC2 Key Pairs and SSH.
- 056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt:9: So the idea is that your private key must be kept secure and there are no ways for you to recover a lost private key.
- 056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt:30: Well, when what you do it is using the SSM Run Command utility, which is going to automate the process of adding and deleting public keys on EC2 instances.
- 057_EC2 Instance Connect.txt:1: So we've been using EC2 instance connect a lot in the courses, but now it's time to really understand what is happening when you use that service.
- 057_EC2 Instance Connect.txt:4: Now when we use the EC2 instance connect, we use its API, so either using the EC2 console or the CLI.
- 057_EC2 Instance Connect.txt:15: So when, if you look at this diagram, the actual thing that does the SSH connection is the EC2 instance connect API, not your browser itself.
- 058_EC2 Serial Console.txt:3: So it has a very specific use case, and the idea is, that we access the EC2 instance over its own serial port.
- 059_Lost EC2 Key Pair - Linux.txt:33: So this is when you don't have a working network connection for whatever reason, and this is only for Nitro-based EC2 instances.
- 060_Lost EC2 Key Pair - Windows.txt:27: Alright, so hopefully that gives you lots of options to recover EC2 Windows instances when you have lost a password.
- 061_EC2 Rescue Tool for Linux & Windows.txt:11: And if you run, for example, the TroubleshootSSL automation out of it, then it's going to try to fix SSH issues, going into the instance.
- 061_EC2 Rescue Tool for Linux & Windows.txt:12: Now, the EC2Rescue tool, when it does output things, it can send directly data into the supports engine.
- 061_EC2 Rescue Tool for Linux & Windows.txt:15: So what could be use cases for the EC2Rescue tool for Linux?
- 061_EC2 Rescue Tool for Linux & Windows.txt:27: And so when we want to have EC2Rescue onto our EC2 instance, all we have to do is to run command from SSM, which will install it.
- 061_EC2 Rescue Tool for Linux & Windows.txt:28: For example, the run EC2Rescue tool for Windows.
- 061_EC2 Rescue Tool for Linux & Windows.txt:29: The commands are CollectLogs, to collect all the logs, FixAll to fix things, or ResetAccess, for example, as we saw before, to reset passwords.
- 061_EC2 Rescue Tool for Linux & Windows.txt:30: Then if you wanted to troubleshoot connectivity issues, for example, we can just execute the EC2Rescue, and the results can be uploaded directly into an S3 bucket.
- 061_EC2 Rescue Tool for Linux & Windows.txt:31: So use cases for the rescue tool for Windows server is around instance connectivity issues.
- 062_AWS Abuse Report.txt:5: So for example, you notice that a hacker as part of an account is sending you spam emails and you detect it's coming from AWS because the IP range belongs to AWS.
- 062_AWS Abuse Report.txt:13: For example, this one is a DOS report, so it's called AWS_ABUSE_DOS_REPORT.
- 062_AWS Abuse Report.txt:14: Then for example, from EventBridge, for any kind of health dashboard types of notification, you can send data into an SNS topic, which will then send an email to an administrator.
- 062_AWS Abuse Report.txt:15: The types of your notifications your account can receive are, for example, for DDoS abuse report, for spam or email abuse reports, for other type of abuse, for exposed AWS credentials detected, or for scheduled account changes.
- 063_[SOA] Systems Manager Overview.txt:7: Whenever you need to patch your instances, usually it's going to be done with Systems Manager or any kind of automation you'll be running, also will be using Systems Manager.
- 063_[SOA] Systems Manager Overview.txt:37: And then automatically after the correct configuration and making sure that these have enough IAM informations to talk to the Systems Manager service, then the instance will be connected and then Systems Manager can operate all these kind of features that I just told you about on the instances to perform, for example, some compliance.
- 065_[SOA] AWS Tags & SSM Resource Groups.txt:10: So they will allow us, for example, to group applications together, to group different layers of the same application stack, or to differentiate between a production environment versus a development environments.
- 065_[SOA] AWS Tags & SSM Resource Groups.txt:42: And for example, we want you to have the environments.
- 065_[SOA] AWS Tags & SSM Resource Groups.txt:67: So we can, for example, patch the operating system and perform some actions and so on.
- 066_[SOA] SSM Documents & SSM Run Command.txt:15: So in this example, I'm going to show you the documents owned by Amazon, and one of them for example, is called AWS-ApplyPatchBaseline.
- 066_[SOA] SSM Documents & SSM Run Command.txt:18: We can see when it was created, okay?
- 066_[SOA] SSM Documents & SSM Run Command.txt:29: For example, this one is on document version one, and it has two parameters, operation and snapshot ID, which are relevant to this document.
- 066_[SOA] SSM Documents & SSM Run Command.txt:51: So this is allowing us to access our instances of HTTP, and we can make sure that our instances currently do not run a web server by taking, for example, one of these IPs.
- 066_[SOA] SSM Documents & SSM Run Command.txt:87: So for example, we can say, Custom Hello World.
- 066_[SOA] SSM Documents & SSM Run Command.txt:105: Now, for the output options, we can create an S3 buckets to send the output to, but I will disable it, or we can send logs to CloudWatch Logs, and for example, I will call it runCommandOutput as my log group name.
- 067_[SOA] SSM Automations.txt:3: For example, using an automation, you can do some things such as restarting an Instance, creating an AMI or doing an EBS snapshot.
- 067_[SOA] SSM Automations.txt:14: Or specific resources, such as EBS volumes, for example, to pro-creating snapshots, AMI to create AMIs, or RDS for creating snapshots and so on.
- 067_[SOA] SSM Automations.txt:19: On a schedule, so very often using a Maintenance Window or as a rule remediation directly, whenever AWS Config Remi, finds out that a resource is not compliant with the rule.
- 067_[SOA] SSM Automations.txt:28: And there are document categories, for example, user guide tutorials, Remediation, Patching, Security, Instance Management.
- 067_[SOA] SSM Automations.txt:29: For example, common tasks for EC2 and EBS, Data Backups, AMI Management, Self-service support workflows.
- 067_[SOA] SSM Automations.txt:30: So as you can see, a lot of them including for example, Cost Managements.
- 067_[SOA] SSM Automations.txt:34: We can, for example, enter an ASG into standby or exit stand by.
- 067_[SOA] SSM Automations.txt:57: And the target is going to be for example, Instance IDs.
- 067_[SOA] SSM Automations.txt:59: Or we can, for example, say on Tags or Parameter values, or just All Instances.
- 067_[SOA] SSM Automations.txt:97: So effectively, what we can do, for example, using this automation is just restart a full fleet of EC2 Instances, without number one enabling SSH access.
- 067_[SOA] SSM Automations.txt:99: And if we had a script then, embedding for example, different steps and making during Rate Control and looking at errors and looking at lugs would be extremely complicated.
- 068_[SAA_DVA_SOA] SSM Parameter Store Overview.txt:13: For example, your EC2 instance role or you can have encrypted configuration.
- 068_[SAA_DVA_SOA] SSM Parameter Store Overview.txt:18: So for example, you can define my department as a path and underneath the My-app and then the Dev and then we have the Dev DB-URL and then the DB-password within that folder.
- 068_[SAA_DVA_SOA] SSM Parameter Store Overview.txt:23: You also have the opportunity to access Secrets of Secrets Manager through the Parameter Store by using this reference right here.
- 068_[SAA_DVA_SOA] SSM Parameter Store Overview.txt:26: For example, if you want to find the latest AMI for the Amazon Index 2 in your specific region.
- 068_[SAA_DVA_SOA] SSM Parameter Store Overview.txt:28: So if you take an application, for example our Dev Lambda function is going to have an IAM roll that allows it to access the DB-URL and DB-password within the Dev of my app.
- 069_[SAA_DVA_SOA] SSM Parameter Store Hands On (CLI).txt:20: But we'll use Text, and for the string, I will have for example, dev.database.stephantheteacher.com.
- 069_[SAA_DVA_SOA] SSM Parameter Store Hands On (CLI).txt:32: For example, you may have created, for example, KMS, a key called Tutorial or whatever you want to create it.
- 069_[SAA_DVA_SOA] SSM Parameter Store Hands On (CLI).txt:42: So now let's try to access these parameters using the CLI.
- 069_[SAA_DVA_SOA] SSM Parameter Store Hands On (CLI).txt:46: So I can have, for example, my dev/db-url as well as my dev password, db-password.
- 069_[SAA_DVA_SOA] SSM Parameter Store Hands On (CLI).txt:55: But you can do something more now, you can do, for example, my-app as a whole, and as you can see, I get nothing, but if I use the flag and it's a flag called Recursion, so it's going to be recursive, then you have access to all the parameters recursively under that namespace.
- 070_[SOA] SSM Inventory & State Manager.txt:6: So you can view this data in the console of AWS, or you can store it for example, in S3 and you could query and analyze it using Athena for serverless.
- 070_[SOA] SSM Inventory & State Manager.txt:10: And finally, you can create a custom inventory if you wanted to, for example.
- 070_[SOA] SSM Inventory & State Manager.txt:26: And a use case could be to bootstrap instances with software or to patch operating system and software updates on a schedule.
- 070_[SOA] SSM Inventory & State Manager.txt:28: So you define the state that you want your instances to be in, for example, the one we just did is that we want the state of the instances that are to be monitored and gathered information by the inventory.
- 070_[SOA] SSM Inventory & State Manager.txt:29: And another example could be for example, that you must close the port 22, no matter what or that an antivirus must be installed on your EC2 instances.
- 070_[SOA] SSM Inventory & State Manager.txt:32: For example, you can create a document to CloudWatch agent.
- 070_[SOA] SSM Inventory & State Manager.txt:36: And now that we have a look at this where we can have a look, for example, at the instance coverage per type, okay?
- 070_[SOA] SSM Inventory & State Manager.txt:66: For example, we can have a look at the version, the architecture, the summary, the package ID, the publisher, the release, that URL, as well as the name and so on.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:14: And for example, you can have a patch group for dev, test and prod.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:15: Now, instances when using patch groups should be defined with a tech key patch group and an instance at any time, therefore can only be part of one patch group.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:23: So you can really, for example, have an internal corporate patch repository for this.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:28: So the first patch baseline is attached to the default patch group which is when a patch group is not defined by default.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:41: So talking about maintenance windows, this is when you want to define a schedule for when to perform actions on your instances.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:42: For example, OS patching, updating drivers and installing software.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:43: For example, this could be done at night between 3:00 and 5:00 AM.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:7: For example, here, this is daily at 1:00 AM, but you can customize it if you wanted to, or, and then you have the installation schedule, which is, for example, that once a week, the patches will be installed on the Sunday.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:18: So is it under all managed nodes by systems manager, or do you have specific instances you want to manually deploy to, for example?
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:21: For example, on 10% of all the nodes at a time to make sure it's a gradual release.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:23: For example, if you have too many errors, then you're going to stop the patches to make sure that you don't get, for example, your entire fleet of instance down.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:37: We have the patches, so let's have a look at all the patches, for example, by operating system, when they're released, if they're important, and so on.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:51: And one of these tasks, for example, is could be a run command.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:54: And we have the run patch baseline right here, documents that we can register within our targets, and we can select unregistered or unregistered targets, for example, these three, to apply this.
- 073_[SOA] SSM Session Manager Overview.txt:18: When someone does an SSH command into an EC2 instance, you do not have the history of all the commands that will run, and so less security, less compliance.
- 073_[SOA] SSM Session Manager Overview.txt:19: And CloudTrail can also be used to intercept the StartSession events, which is when session and measure is being used to start a session onto your EC2 instance.
- 073_[SOA] SSM Session Manager Overview.txt:20: For example, again, for some automation, compliance and alerting.
- 074_[SOA] SSM Session Manager Hands On.txt:5: And this session is going to be started, for example, on MyProdInstance, we can start the session right here.
- 074_[SOA] SSM Session Manager Hands On.txt:18: So put a username, could be, for example, EC2-user, if you wanted to, if it's relevant IAM Linux too.

### 5. Constraints / Limitations
- 052_[CCP_SOA] Penetration Testing on AWS.txt:7: For example, you cannot do a DNS zone walking via Amazon Route 53 Hosted Zone.
- 052_[CCP_SOA] Penetration Testing on AWS.txt:8: You can not perform a distributed attack on your system, so you cannot perform a DoS or DDoS or a Simulated DoS or Simulated DDoS.
- 052_[CCP_SOA] Penetration Testing on AWS.txt:9: You cannot just attack your own infrastructure with a denial of service.
- 053_DDoS Simulation Testing on AWS.txt:2: Of course, it must be controlled so you would do a controlled DDoS attack to make sure that your applications are resilient to this attack and also to practice event response.
- 053_DDoS Simulation Testing on AWS.txt:3: In that case, the only person that can do a DDoS is an AWS DDoS Test Partner.
- 053_DDoS Simulation Testing on AWS.txt:5: The attacks must not be originating from AWS resources, and on top of it, you must not exceed 20 Gigabits per second.
- 053_DDoS Simulation Testing on AWS.txt:6: Finally, you cannot exceed 5 million packets per second for CloudFront and 50,000 packets per second for any other service.
- 054_Compromised AWS Resources.txt:2: Well, the most important one to remember is how to deal with a compromised EC2 instance because the exam will test you on that.
- 054_Compromised AWS Resources.txt:9: And so therefore, this instance cannot communicate with the outside world and at least it is contained.
- 054_Compromised AWS Resources.txt:22: So these steps should feel natural to you and remember them going into the exam.
- 054_Compromised AWS Resources.txt:44: So for these users well it's good to rotate the user's password so that the attacker cannot use the user anymore.
- 055_Compromised AWS Credentials.txt:13: We should revoke any access to the identity in the linked active directory.
- 055_Compromised AWS Credentials.txt:21: Then delete and rotate all EC2 key pairs so that they cannot be used in the future to SSH into your instances.
- 056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt:5: So you are the only owner of the private key but Amazon EC2 service is going to keep a copy of the public key.
- 056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt:9: So the idea is that your private key must be kept secure and there are no ways for you to recover a lost private key.
- 056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt:25: You must also create a new Key Pair and then you add the public key material to the authorized_keys on all EC2 instances.
- 057_EC2 Instance Connect.txt:6: And this private key will have its corresponding public key pushed into the EC2 instance metadata, and this is a key that is going to be valid only for 60 seconds.
- 057_EC2 Instance Connect.txt:7: So why is it important?
- 057_EC2 Instance Connect.txt:9: So not only the authorized keys file on the EC2 instance, but also going to check the instance metadata.
- 057_EC2 Instance Connect.txt:11: So the idea around this is that it's very secure, because the public key is only there for 60 seconds, and no one else can reproduce this but AWS, because no one else but AWS has access to the instance metadata.
- 057_EC2 Instance Connect.txt:17: So therefore, from a security group perspective, you need to have port 22 open on your EC2 instance as inbound, and the source of it should correspond to the AWS IP range for the EC2 instance connect service.
- 058_EC2 Serial Console.txt:9: So, it only works with the specific kind of EC2 instances.
- 058_EC2 Serial Console.txt:13: Okay, next, because there is only one serial console part, you can only have one active session per EC2 instance.
- 059_Lost EC2 Key Pair - Linux.txt:13: So please note that this method only adds authorized keys.
- 059_Lost EC2 Key Pair - Linux.txt:33: So this is when you don't have a working network connection for whatever reason, and this is only for Nitro-based EC2 instances.
- 059_Lost EC2 Key Pair - Linux.txt:37: And, of course, if you don't have network connectivity, you should also fix that.
- 060_Lost EC2 Key Pair - Windows.txt:12: You don't have to remember the files, okay, I'm just giving you the general idea and that should be enough for you.
- 060_Lost EC2 Key Pair - Windows.txt:23: So for this, of course, the EC2 instance running Windows must have the SSM Agent installed.
- 061_EC2 Rescue Tool for Linux & Windows.txt:38: So just remember at a high level, what this tool is, but it should give you a bit more information so you can understand it better.
- 063_[SOA] Systems Manager Overview.txt:10: You're only going to pay for the resources they use or creates if it does anything like that.
- 063_[SOA] Systems Manager Overview.txt:18: So as you can see, that's a lot of features, but what I highlighted in blue is what I think is important from an exam perspective.
- 063_[SOA] Systems Manager Overview.txt:19: Still System Manager is very important.
- 063_[SOA] Systems Manager Overview.txt:28: But do not worry, I will spend some time going over the most important ones and they should make sense to you.
- 063_[SOA] Systems Manager Overview.txt:34: If your instance cannot be controlled with SSM, it's probably an issue with the agent or the IAM permissions, okay?
- 064_[SOA] Start EC2 Instances with SSM Agent.txt:16: And then under advanced details, most importantly we need to select an IAM instance profile.
- 064_[SOA] Start EC2 Instances with SSM Agent.txt:22: And that's extremely important.
- 065_[SOA] AWS Tags & SSM Resource Groups.txt:4: And they're commonly used in EC2, but many other sources as well.
- 066_[SOA] SSM Documents & SSM Run Command.txt:26: So currently we cannot view the document versions because we don't own it.
- 066_[SOA] SSM Documents & SSM Run Command.txt:55: HTTP port 80, and it should not time out, it should just give me an error.
- 066_[SOA] SSM Documents & SSM Run Command.txt:59: And as you can see, if I go into my IP, I get a site can't be reached.
- 066_[SOA] SSM Documents & SSM Run Command.txt:92: So if the commands don't finish within 600 seconds, so 10 minutes, then you should fail the command.
- 067_[SOA] SSM Automations.txt:7: So we commonly refer them as Runbook now.
- 067_[SOA] SSM Automations.txt:38: And I'm going to look for the Automation named AWS- Restart, and that should do it.
- 068_[SAA_DVA_SOA] SSM Parameter Store Overview.txt:36: And this is only for advanced parameters. (mouse clicks) Well, this allows you to assign a time to live to a parameter, that means an expiration date.
- 068_[SAA_DVA_SOA] SSM Parameter Store Overview.txt:40: So this is an expiration policy to delete a parameter and you say, "Hey, on this time stamp you must delete these parameter." And then through the EventBridge integration, EventBridge is going to get notifications of it.
- 069_[SAA_DVA_SOA] SSM Parameter Store Hands On (CLI).txt:16: They are four kilobytes in value maximum, and we can't share that with other accounts, but the Advanced parameters, you can have 100,000 of them, they can be eight kilobytes and you can share them with your other accounts.
- 070_[SOA] SSM Inventory & State Manager.txt:29: And another example could be for example, that you must close the port 22, no matter what or that an antivirus must be installed on your EC2 instances.
- 070_[SOA] SSM Inventory & State Manager.txt:37: And more importantly, we can look at the top OS versions.
- 070_[SOA] SSM Inventory & State Manager.txt:41: But more importantly, if I go up and look at the details, we can have a look at the detailed data so we can create inventory Resource Data Syncs, okay?
- 070_[SOA] SSM Inventory & State Manager.txt:53: And as we allow bucket prefix, we don't have any so we'll remove this and then account ID equals and then I need to specify the account ID of my accounts, which is right here so I will paste my account ID, and we should be good to go.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:9: So patch baseline defines which patches should and shouldn't be installed on your EC2 instances and the ability to create custom patch baseline is up to you if you want to specify approved or rejected patches on your instance.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:11: By default, the patch baseline is to install only critical patches and patches related to security onto your SSM managed instances.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:15: Now, instances when using patch groups should be defined with a tech key patch group and an instance at any time, therefore can only be part of one patch group.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:16: And the patch group can only be registered with one patch baseline.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:18: We have the predefined patch baselines and they're managed by AWS and they're defined for operating systems that are different and you cannot modify them.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:14: Now, of course, you only have one patch baseline right now per OS, but you can create your custom baselines if you wanted to.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:16: So this could be in the current region, or you can set up now so they can have all the regions if you wanted to as targets to have the patch policy in one place only.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:37: We have the patches, so let's have a look at all the patches, for example, by operating system, when they're released, if they're important, and so on.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:57: Obviously, one target at a time and zero for errors, and that should do the tricks.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:59: So now, that means that within my maintenance window, this run patch baseline will be run, and it will happen only during this window.
- 073_[SOA] SSM Session Manager Overview.txt:21: So session manager requires IAM permissions, and this is allowing you to control which users or groups can access session manager and which instances, and you can use tags to restrict access to only specific EC2 instances.
- 075_[SOA] SSM Cleanup.txt:2: And so that means that we need to terminate them, so to make sure we don't have any running cost, take your three instances and terminate them and you should be good to go.

### 6. Patterns / Architectures
- 059_Lost EC2 Key Pair - Linux.txt:19: And then from the Systems Manager Console, we can run an automation, such as AWSSupport-ResetAccess, and this automation is going to create a new key pair, so a public key and a private key.
- 060_Lost EC2 Key Pair - Windows.txt:26: That's similar to what we saw before but it's automated using Systems Manager or there is an automation document again called ResetAccess or there is a run command document called RunPowerShellScript in which you can just set the password for the administrator to be Password@123 and then you are good.
- 061_EC2 Rescue Tool for Linux & Windows.txt:10: For this, you can install it manually, or you can run an SSM automation document, to just go ahead and install the EC2Rescue tool.
- 061_EC2 Rescue Tool for Linux & Windows.txt:11: And if you run, for example, the TroubleshootSSL automation out of it, then it's going to try to fix SSH issues, going into the instance.
- 063_[SOA] Systems Manager Overview.txt:5: It allow you to easily detect problem and also gives you some patching automation and enhanced compliance.
- 063_[SOA] Systems Manager Overview.txt:7: Whenever you need to patch your instances, usually it's going to be done with Systems Manager or any kind of automation you'll be running, also will be using Systems Manager.
- 063_[SOA] Systems Manager Overview.txt:14: We have fleet manager, compliance, inventory, hybrid activations, session manager, run commend, state manager, patch manager, and distributor.
- 063_[SOA] Systems Manager Overview.txt:15: We have change management features such as automation, change calendar, maintenance windows, documents, quick setup.
- 063_[SOA] Systems Manager Overview.txt:38: So patching with some automation, okay?
- 065_[SOA] AWS Tags & SSM Resource Groups.txt:7: So we use tags for doing resource grouping, as we'll see in this lecture, but for automation as well, for security, and cost allocation.
- 066_[SOA] SSM Documents & SSM Run Command.txt:9: So these documents can be simply used to run commands, and we'll see this in this lecture, but also these documents can be applied to other SSM features such as state manager, patch manager, automation, and documents can even retrieve some data from the SSM parameter store to be able to give you some kind of modularity and dynamicity in the way you want to have the documents behave, okay?
- 066_[SOA] SSM Documents & SSM Run Command.txt:31: So it could be a command or session document, or an automation document, and we'll see commands in this one, but I want you to show you this at a high level.
- 066_[SOA] SSM Documents & SSM Run Command.txt:43: And finally, for automations and EventBridge for CloudWatch Events, can be used to invoke run commands.
- 067_[SOA] SSM Automations.txt:1: Now let's talk about SSM Automations.
- 067_[SOA] SSM Automations.txt:2: So, automations are going to help you simplify common maintenance and deployment tasks for your EC2 Instances or other AWS resources.
- 067_[SOA] SSM Automations.txt:3: For example, using an automation, you can do some things such as restarting an Instance, creating an AMI or doing an EBS snapshot.
- 067_[SOA] SSM Automations.txt:4: The idea is that automations are going to be higher level, okay.
- 067_[SOA] SSM Automations.txt:6: So the automation Runbook is the name of the document for SSM that are going to be of type Automation, okay.
- 067_[SOA] SSM Automations.txt:7: So we commonly refer them as Runbook now.
- 067_[SOA] SSM Automations.txt:8: And the Runbooks will do actions preformed on your EC2 Instances or resources and AWS resources.
- 067_[SOA] SSM Automations.txt:9: And you can create your own Runbook obviously, or use the predefined Runbooks done by AWS.
- 067_[SOA] SSM Automations.txt:11: The SSM Automation is using the Runbooks.
- 067_[SOA] SSM Automations.txt:12: They'll show automation documents.
- 067_[SOA] SSM Automations.txt:15: Now, how do you trigger an SSM Automation?
- 067_[SOA] SSM Automations.txt:18: And the target of the rule will be the SSM Automation.
- 067_[SOA] SSM Automations.txt:19: On a schedule, so very often using a Maintenance Window or as a rule remediation directly, whenever AWS Config Remi, finds out that a resource is not compliant with the rule.
- 067_[SOA] SSM Automations.txt:21: So the Console, the SDK, Maintenance Windows, EventBridge, and the Config Remediation, can all execute the automation called AWS-RestartEC2Instance from within the SSM automation service, okay.
- 067_[SOA] SSM Automations.txt:22: So let's have a look at how Automations work in this lecture.
- 067_[SOA] SSM Automations.txt:23: So I'm gonna go on the left hand side into Automation.
- 067_[SOA] SSM Automations.txt:24: So Change Management, Automation.
- 067_[SOA] SSM Automations.txt:25: And I'm going to execute an Automation.
- 067_[SOA] SSM Automations.txt:29: For example, common tasks for EC2 and EBS, Data Backups, AMI Management, Self-service support workflows.
- 067_[SOA] SSM Automations.txt:32: So we can attach an EBS volume directly from an Automation.
- 067_[SOA] SSM Automations.txt:37: So what I'm going to do, is I'm going to look for Automations.
- 067_[SOA] SSM Automations.txt:38: And I'm going to look for the Automation named AWS- Restart, and that should do it.
- 067_[SOA] SSM Automations.txt:43: If we wanted to have an Approval step as part of our Automation.
- 067_[SOA] SSM Automations.txt:55: Or we can do Multi-account and Multi-region or a Manual execution to do step by step Runbook mode.
- 067_[SOA] SSM Automations.txt:65: So, IAM user or user arn to approve for the automation action.
- 067_[SOA] SSM Automations.txt:74: That's the Automation Assume to perform the automation on your behalf.
- 067_[SOA] SSM Automations.txt:75: And this is if you want to have the automation user role that is different than the one that you're currently using right now to launch this automation.
- 067_[SOA] SSM Automations.txt:78: And if there's one error, then please stop this automation.
- 067_[SOA] SSM Automations.txt:84: Which is to execute this automation.
- 067_[SOA] SSM Automations.txt:91: Which was the first step of my automation.
- 067_[SOA] SSM Automations.txt:97: So effectively, what we can do, for example, using this automation is just restart a full fleet of EC2 Instances, without number one enabling SSH access.
- 067_[SOA] SSM Automations.txt:98: And number two, we don't have to code a script for it because, well, there is an automation available to us.
- 067_[SOA] SSM Automations.txt:100: So this really shows the power of Automations within a SSM.
- 067_[SOA] SSM Automations.txt:105: But this is the whole part of automations.
- 067_[SOA] SSM Automations.txt:108: And you need to just look at documents that are going to be of type, Automation and have a look at what is offered by AWS in terms of documents.
- 067_[SOA] SSM Automations.txt:109: There's a lot of them, but they can help you imagine and understand how you can leverage automations better within your infrastructure.
- 067_[SOA] SSM Automations.txt:112: And make sure that the automation was successful at the end.
- 070_[SOA] SSM Inventory & State Manager.txt:66: For example, we can have a look at the version, the architecture, the summary, the package ID, the publisher, the release, that URL, as well as the name and so on.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:1: So now let's see an overview of the SSM Patch Manager.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:2: So we use the Patch Manager to automate the process of patching our managed instances.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:5: You're going to patch on demand so you can run the patch manager as you want or on the schedule if you want to use a maintenance window.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:6: What's going to happen is that the patch manager will scan the instances and will generate a patch compliance report which is a list of all the machine patches.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:8: So patch manager has two components we need to know about, which is the number one is the patch baseline and the number two is patch groups.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:17: So we have two kind of patch baselines in Patch Manager.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:27: And in Patch Manager we're going to define patch baselines.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:36: And this can be initiated from the console, the SDK or the maintenance window.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:38: Now, the SSM agent on these instances will query to the patch manager service to get an idea of which patches to include and to run thanks to the patch baseline.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:40: And then obviously you can have rate control, just like anything in SSM, using a maintenance window.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:41: So talking about maintenance windows, this is when you want to define a schedule for when to perform actions on your instances.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:44: And a maintenance window contains a schedule, a duration and a set of registered instances, as well as a set of tasks that can be run during that maintenance window.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:46: From a exam perspective, what you need to know is that patch manager is used to patch your instances but that comes, I guess, naturally.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:47: And these patches can be run within a specific maintenance window with a specific rate control if you need to.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:1: So let's practice using patch manager.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:2: So on the left-hand side, you have patch manager and then you are in this UI and you have a button here to create a patch policy.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:28: Next, if you go back to patch manager and click on start with an overview, you're going to get into the UI of patch manager.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:38: And then settings to have a look at the integration between security hub and patch manager.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:39: And finally, if you want to have a look at maintenance windows, they're right here on the left-hand side.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:40: So under maintenance windows, we can create a maintenance window to run our patches.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:41: So I call it one DemoMaintenanceWindow.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:45: So we can say, daily, you start every day at zero, three, so 3:00 AM, and it's going to be a two-hour maintenance window, okay?
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:49: And then we can create this maintenance window, okay?
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:55: And obviously, thanks to the maintenance windows, we can specify concurrency and the error threshold.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:59: So now, that means that within my maintenance window, this run patch baseline will be run, and it will happen only during this window.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:61: I'm not going to go ahead with this maintenance window, but I want to show you a high level of how patch manager and the maintenance window we're working.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:62: And to clean that up, you can delete this maintenance window and you'll be good to go.
- 073_[SOA] SSM Session Manager Overview.txt:1: So now let's talk about SSM session manager, which is a way for you to start a secure shell environment on your EC2 instances and on-premises servers, but you access it through the console, the CLI or the session manager SDK, and the real power of session manager is that you do not need to get direct SSH access into your instances.
- 073_[SOA] SSM Session Manager Overview.txt:8: And so our user is going to connect to the session manager service with a correct IAM permission, of course.
- 073_[SOA] SSM Session Manager Overview.txt:9: And then the session manager will be able to execute commands on our EC2 instance.
- 073_[SOA] SSM Session Manager Overview.txt:12: But this time, the session manager is used to just have a common shell against our EC2 instance.
- 073_[SOA] SSM Session Manager Overview.txt:20: For example, again, for some automation, compliance and alerting.
- 073_[SOA] SSM Session Manager Overview.txt:21: So session manager requires IAM permissions, and this is allowing you to control which users or groups can access session manager and which instances, and you can use tags to restrict access to only specific EC2 instances.
- 073_[SOA] SSM Session Manager Overview.txt:25: So just for you to understand, using SSH, well we have to open up our security group and our user with specific IP address as a session to our instance and do whatever he wants there, but using session manager, we don't need any inbound rules.
- 073_[SOA] SSM Session Manager Overview.txt:27: You just need the instance with the SSM agents and the right IAM role, and then a user with a correct IAM permission can use session manager to run commands against our EC2 instance.
- 074_[SOA] SSM Session Manager Hands On.txt:1: So on the left hand side, let's find Session Manager and we want to establish an SSH session into our EC2 instances.
- 074_[SOA] SSM Session Manager Hands On.txt:12: So pretty cool because this session entirely is going to be logged, okay, because it is done from session manager, and also my instance does not have any SSH inbound security rule, yet I am able to run some commands within it.
- 074_[SOA] SSM Session Manager Hands On.txt:13: So this is the power of session manager, and I can just terminate this.
- 074_[SOA] SSM Session Manager Hands On.txt:15: And now if I go back into my session manager, I can look at session history and see that the history was being created right here.
- 074_[SOA] SSM Session Manager Hands On.txt:16: And finally, you could edit the preferences of session manager to have an idle timeout, to have KMS encryption for your sessions and to run the session as a specific user for your next instances.
- 074_[SOA] SSM Session Manager Hands On.txt:25: And I know a lot of companies and people who use Session Manager from within Systems Manager to do the executing actions onto your EC2 instances because it is way more controlled and also has a lot more compliance around it.

## Step 3 — Deep Expansion (Core Incident Response Concepts)

### Incident Automation with Systems Manager
- What it is: Centralized operations control plane for remote command, patching, session access, and workflow automation.
- Why it exists: Reduces manual intervention time during security incidents and standardizes response quality.
- Internal working: Uses managed agents/documents/associations and executes targeted actions by tags/resource groups.
- Architecture: Detection trigger -> runbook orchestration -> fleet actions -> validation and closure.
- Key components: Run Command, Session Manager, Automation, Patch Manager, Inventory, Maintenance Windows.

### Break-Glass Access and Recovery
- What it is: Emergency access and remediation channels when standard SSH/RDP paths fail.
- Why it exists: Ensures recoverability during key compromise, lockout, or host misconfiguration incidents.
- Internal working: Uses instance-connect/serial-console/rescue tooling to regain controlled access.
- Architecture: Incident trigger -> secure operator access -> remediation actions -> hardening follow-up.
- Key components: EC2 Instance Connect, EC2 Serial Console, EC2 Rescue workflows.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Remote command execution on fleet | SSM Run Command | Azure Arc Run Command / Automation | OS Config + remote execution patterns |
| Agent-based fleet management | AWS Systems Manager | Azure Arc + Update Manager | OS Config / VM Manager |
| Interactive secure shell without inbound ports | Session Manager | Azure Bastion + JIT + serial console flows | IAP TCP tunneling + OS Login |
| Patch orchestration at scale | SSM Patch Manager | Azure Update Manager | OS patch management via VM Manager/OS Config |
| Break-glass console recovery | EC2 Serial Console / EC2 Rescue | Azure Serial Console / VM repair | Serial console/recovery workflows |
| Incident automation runbooks | SSM Automation | Azure Automation Runbooks + Logic Apps | Cloud Workflows + Cloud Functions |

### Trade-offs and Decision Notes
- AWS SSM is tightly integrated for fleet remediation in multi-account EC2 estates.
- Azure is strong when Arc unifies hybrid VM governance and remediation operations.
- GCP excels when incident workflows are orchestrated through Cloud Workflows and policy-driven OS management.
- Cross-cloud IR should standardize playbooks and keep cloud-native access/recovery primitives for reliability.

## Phase-wise Architect-Level Organization

### Phase 1 — Foundations
- Incident lifecycle basics: identify, contain, eradicate, recover, and lessons learned.
- Access recovery and credential-compromise fundamentals.

### Phase 2 — Core Services
- Systems Manager for remote command execution, patching, and controlled interactive access.
- EC2 recovery channels for operational resilience under degraded conditions.

### Phase 3 — Advanced Patterns
- Tag-driven blast-radius containment and runbook orchestration with approval gates.
- Automated remediation pipelines connected to detection findings.

### Phase 4 — System Design
- Enterprise IR architecture: centralized playbook governance with distributed execution across accounts.
- Scaling considerations: concurrency, runbook idempotency, dependency ordering, and rollback paths.
- Cost considerations: automation execution volume, patch cadence, operational coverage footprint.

## Deduped Consolidation Snapshot

This additive section keeps original extraction untouched and provides duplicate-clean views for faster review.

### Concepts (Deduped)
- Containment and Recovery
- Credential Exposure Response
- Forensic Preparedness
- Incident Identification
- Incident Response Operational Context
- Operational Remediation
- Remote Access Control

### Services (Deduped)
- AWS Abuse Report
- AWS Resource Groups
- AWS Systems Manager
- AWS Tags
- Amazon EC2
- EC2 Instance Connect
- EC2 Rescue
- EC2 Serial Console
- SSM Automation
- SSM Inventory
- SSM Patch Manager
- SSM Run Command
- SSM Session Manager

### Features (Deduped)
- automation
- documents
- inventory
- maintenance window
- patch
- resource groups
- run command
- session
- tags

### Use Cases (Deduped)
- 052_[CCP_SOA] Penetration Testing on AWS.txt:2: So, penetration testing is when you're trying to attack your own infrastructure to test your security.
- 052_[CCP_SOA] Penetration Testing on AWS.txt:7: For example, you cannot do a DNS zone walking via Amazon Route 53 Hosted Zone.
- 054_Compromised AWS Resources.txt:15: Also, if you have an EC2 instance that is compromised please make sure to tag the EC2 instance with the investigation ticket number, for example, so that you know that well, something is wrong with that instance.
- 054_Compromised AWS Resources.txt:17: You can do an offline investigation, so this is when you shut down the instance and you're going to look at the EBS volumes that have been snapshotted and then restored and attached to a forensic EC2 instance.
- 055_Compromised AWS Credentials.txt:10: Now, if it's an IAM role that is compromised, for example you have enabled active directory integration or you assume a role, or whatever, then again you need to identify what is the compromised IAM role.
- 055_Compromised AWS Credentials.txt:14: For example, if we're using SSO and the user was compromised there.
- 056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt:3: When you create a Key Pair, it's called a Key Pair because there's a private key and a public key.
- 056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt:6: Then when you create an EC2 instance and you select the associated key, what's actually going to happen is that on the root EBS volume of the EC2 instance, the public key is going to be stored as a copy in a file called authorized_keys in the SSH directory.
- 056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt:8: Well, because when we want to actually perform an SSH into our EC2 instance, what's going to happen is that the SSH protocol is going to present the private key to our EC2 instance, which is going to match it with the public key it has in store and say, "Yes, the user is authorized to perform SSH on me." So this is the basics of EC2 Key Pairs and SSH.
- 056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt:9: So the idea is that your private key must be kept secure and there are no ways for you to recover a lost private key.
- 056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt:30: Well, when what you do it is using the SSM Run Command utility, which is going to automate the process of adding and deleting public keys on EC2 instances.
- 057_EC2 Instance Connect.txt:1: So we've been using EC2 instance connect a lot in the courses, but now it's time to really understand what is happening when you use that service.
- 057_EC2 Instance Connect.txt:4: Now when we use the EC2 instance connect, we use its API, so either using the EC2 console or the CLI.
- 057_EC2 Instance Connect.txt:15: So when, if you look at this diagram, the actual thing that does the SSH connection is the EC2 instance connect API, not your browser itself.
- 058_EC2 Serial Console.txt:3: So it has a very specific use case, and the idea is, that we access the EC2 instance over its own serial port.
- 059_Lost EC2 Key Pair - Linux.txt:33: So this is when you don't have a working network connection for whatever reason, and this is only for Nitro-based EC2 instances.
- 060_Lost EC2 Key Pair - Windows.txt:27: Alright, so hopefully that gives you lots of options to recover EC2 Windows instances when you have lost a password.
- 061_EC2 Rescue Tool for Linux & Windows.txt:11: And if you run, for example, the TroubleshootSSL automation out of it, then it's going to try to fix SSH issues, going into the instance.
- 061_EC2 Rescue Tool for Linux & Windows.txt:12: Now, the EC2Rescue tool, when it does output things, it can send directly data into the supports engine.
- 061_EC2 Rescue Tool for Linux & Windows.txt:15: So what could be use cases for the EC2Rescue tool for Linux?
- 061_EC2 Rescue Tool for Linux & Windows.txt:27: And so when we want to have EC2Rescue onto our EC2 instance, all we have to do is to run command from SSM, which will install it.
- 061_EC2 Rescue Tool for Linux & Windows.txt:28: For example, the run EC2Rescue tool for Windows.
- 061_EC2 Rescue Tool for Linux & Windows.txt:29: The commands are CollectLogs, to collect all the logs, FixAll to fix things, or ResetAccess, for example, as we saw before, to reset passwords.
- 061_EC2 Rescue Tool for Linux & Windows.txt:30: Then if you wanted to troubleshoot connectivity issues, for example, we can just execute the EC2Rescue, and the results can be uploaded directly into an S3 bucket.
- 061_EC2 Rescue Tool for Linux & Windows.txt:31: So use cases for the rescue tool for Windows server is around instance connectivity issues.
- 062_AWS Abuse Report.txt:5: So for example, you notice that a hacker as part of an account is sending you spam emails and you detect it's coming from AWS because the IP range belongs to AWS.
- 062_AWS Abuse Report.txt:13: For example, this one is a DOS report, so it's called AWS_ABUSE_DOS_REPORT.
- 062_AWS Abuse Report.txt:14: Then for example, from EventBridge, for any kind of health dashboard types of notification, you can send data into an SNS topic, which will then send an email to an administrator.
- 062_AWS Abuse Report.txt:15: The types of your notifications your account can receive are, for example, for DDoS abuse report, for spam or email abuse reports, for other type of abuse, for exposed AWS credentials detected, or for scheduled account changes.
- 063_[SOA] Systems Manager Overview.txt:7: Whenever you need to patch your instances, usually it's going to be done with Systems Manager or any kind of automation you'll be running, also will be using Systems Manager.
- 063_[SOA] Systems Manager Overview.txt:37: And then automatically after the correct configuration and making sure that these have enough IAM informations to talk to the Systems Manager service, then the instance will be connected and then Systems Manager can operate all these kind of features that I just told you about on the instances to perform, for example, some compliance.
- 065_[SOA] AWS Tags & SSM Resource Groups.txt:10: So they will allow us, for example, to group applications together, to group different layers of the same application stack, or to differentiate between a production environment versus a development environments.
- 065_[SOA] AWS Tags & SSM Resource Groups.txt:42: And for example, we want you to have the environments.
- 065_[SOA] AWS Tags & SSM Resource Groups.txt:67: So we can, for example, patch the operating system and perform some actions and so on.
- 066_[SOA] SSM Documents & SSM Run Command.txt:15: So in this example, I'm going to show you the documents owned by Amazon, and one of them for example, is called AWS-ApplyPatchBaseline.
- 066_[SOA] SSM Documents & SSM Run Command.txt:18: We can see when it was created, okay?
- 066_[SOA] SSM Documents & SSM Run Command.txt:29: For example, this one is on document version one, and it has two parameters, operation and snapshot ID, which are relevant to this document.
- 066_[SOA] SSM Documents & SSM Run Command.txt:51: So this is allowing us to access our instances of HTTP, and we can make sure that our instances currently do not run a web server by taking, for example, one of these IPs.
- 066_[SOA] SSM Documents & SSM Run Command.txt:87: So for example, we can say, Custom Hello World.
- 066_[SOA] SSM Documents & SSM Run Command.txt:105: Now, for the output options, we can create an S3 buckets to send the output to, but I will disable it, or we can send logs to CloudWatch Logs, and for example, I will call it runCommandOutput as my log group name.
- 067_[SOA] SSM Automations.txt:3: For example, using an automation, you can do some things such as restarting an Instance, creating an AMI or doing an EBS snapshot.
- 067_[SOA] SSM Automations.txt:14: Or specific resources, such as EBS volumes, for example, to pro-creating snapshots, AMI to create AMIs, or RDS for creating snapshots and so on.
- 067_[SOA] SSM Automations.txt:19: On a schedule, so very often using a Maintenance Window or as a rule remediation directly, whenever AWS Config Remi, finds out that a resource is not compliant with the rule.
- 067_[SOA] SSM Automations.txt:28: And there are document categories, for example, user guide tutorials, Remediation, Patching, Security, Instance Management.
- 067_[SOA] SSM Automations.txt:29: For example, common tasks for EC2 and EBS, Data Backups, AMI Management, Self-service support workflows.
- 067_[SOA] SSM Automations.txt:30: So as you can see, a lot of them including for example, Cost Managements.
- 067_[SOA] SSM Automations.txt:34: We can, for example, enter an ASG into standby or exit stand by.
- 067_[SOA] SSM Automations.txt:57: And the target is going to be for example, Instance IDs.
- 067_[SOA] SSM Automations.txt:59: Or we can, for example, say on Tags or Parameter values, or just All Instances.
- 067_[SOA] SSM Automations.txt:97: So effectively, what we can do, for example, using this automation is just restart a full fleet of EC2 Instances, without number one enabling SSH access.
- 067_[SOA] SSM Automations.txt:99: And if we had a script then, embedding for example, different steps and making during Rate Control and looking at errors and looking at lugs would be extremely complicated.
- 068_[SAA_DVA_SOA] SSM Parameter Store Overview.txt:13: For example, your EC2 instance role or you can have encrypted configuration.
- 068_[SAA_DVA_SOA] SSM Parameter Store Overview.txt:18: So for example, you can define my department as a path and underneath the My-app and then the Dev and then we have the Dev DB-URL and then the DB-password within that folder.
- 068_[SAA_DVA_SOA] SSM Parameter Store Overview.txt:23: You also have the opportunity to access Secrets of Secrets Manager through the Parameter Store by using this reference right here.
- 068_[SAA_DVA_SOA] SSM Parameter Store Overview.txt:26: For example, if you want to find the latest AMI for the Amazon Index 2 in your specific region.
- 068_[SAA_DVA_SOA] SSM Parameter Store Overview.txt:28: So if you take an application, for example our Dev Lambda function is going to have an IAM roll that allows it to access the DB-URL and DB-password within the Dev of my app.
- 069_[SAA_DVA_SOA] SSM Parameter Store Hands On (CLI).txt:20: But we'll use Text, and for the string, I will have for example, dev.database.stephantheteacher.com.
- 069_[SAA_DVA_SOA] SSM Parameter Store Hands On (CLI).txt:32: For example, you may have created, for example, KMS, a key called Tutorial or whatever you want to create it.
- 069_[SAA_DVA_SOA] SSM Parameter Store Hands On (CLI).txt:42: So now let's try to access these parameters using the CLI.
- 069_[SAA_DVA_SOA] SSM Parameter Store Hands On (CLI).txt:46: So I can have, for example, my dev/db-url as well as my dev password, db-password.
- 069_[SAA_DVA_SOA] SSM Parameter Store Hands On (CLI).txt:55: But you can do something more now, you can do, for example, my-app as a whole, and as you can see, I get nothing, but if I use the flag and it's a flag called Recursion, so it's going to be recursive, then you have access to all the parameters recursively under that namespace.
- 070_[SOA] SSM Inventory & State Manager.txt:6: So you can view this data in the console of AWS, or you can store it for example, in S3 and you could query and analyze it using Athena for serverless.
- 070_[SOA] SSM Inventory & State Manager.txt:10: And finally, you can create a custom inventory if you wanted to, for example.
- 070_[SOA] SSM Inventory & State Manager.txt:26: And a use case could be to bootstrap instances with software or to patch operating system and software updates on a schedule.
- 070_[SOA] SSM Inventory & State Manager.txt:28: So you define the state that you want your instances to be in, for example, the one we just did is that we want the state of the instances that are to be monitored and gathered information by the inventory.
- 070_[SOA] SSM Inventory & State Manager.txt:29: And another example could be for example, that you must close the port 22, no matter what or that an antivirus must be installed on your EC2 instances.
- 070_[SOA] SSM Inventory & State Manager.txt:32: For example, you can create a document to CloudWatch agent.
- 070_[SOA] SSM Inventory & State Manager.txt:36: And now that we have a look at this where we can have a look, for example, at the instance coverage per type, okay?
- 070_[SOA] SSM Inventory & State Manager.txt:66: For example, we can have a look at the version, the architecture, the summary, the package ID, the publisher, the release, that URL, as well as the name and so on.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:14: And for example, you can have a patch group for dev, test and prod.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:15: Now, instances when using patch groups should be defined with a tech key patch group and an instance at any time, therefore can only be part of one patch group.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:23: So you can really, for example, have an internal corporate patch repository for this.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:28: So the first patch baseline is attached to the default patch group which is when a patch group is not defined by default.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:41: So talking about maintenance windows, this is when you want to define a schedule for when to perform actions on your instances.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:42: For example, OS patching, updating drivers and installing software.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:43: For example, this could be done at night between 3:00 and 5:00 AM.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:7: For example, here, this is daily at 1:00 AM, but you can customize it if you wanted to, or, and then you have the installation schedule, which is, for example, that once a week, the patches will be installed on the Sunday.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:18: So is it under all managed nodes by systems manager, or do you have specific instances you want to manually deploy to, for example?
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:21: For example, on 10% of all the nodes at a time to make sure it's a gradual release.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:23: For example, if you have too many errors, then you're going to stop the patches to make sure that you don't get, for example, your entire fleet of instance down.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:37: We have the patches, so let's have a look at all the patches, for example, by operating system, when they're released, if they're important, and so on.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:51: And one of these tasks, for example, is could be a run command.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:54: And we have the run patch baseline right here, documents that we can register within our targets, and we can select unregistered or unregistered targets, for example, these three, to apply this.
- 073_[SOA] SSM Session Manager Overview.txt:18: When someone does an SSH command into an EC2 instance, you do not have the history of all the commands that will run, and so less security, less compliance.
- 073_[SOA] SSM Session Manager Overview.txt:19: And CloudTrail can also be used to intercept the StartSession events, which is when session and measure is being used to start a session onto your EC2 instance.
- 073_[SOA] SSM Session Manager Overview.txt:20: For example, again, for some automation, compliance and alerting.
- 074_[SOA] SSM Session Manager Hands On.txt:5: And this session is going to be started, for example, on MyProdInstance, we can start the session right here.
- 074_[SOA] SSM Session Manager Hands On.txt:18: So put a username, could be, for example, EC2-user, if you wanted to, if it's relevant IAM Linux too.

### Constraints / Limitations (Deduped)
- 052_[CCP_SOA] Penetration Testing on AWS.txt:7: For example, you cannot do a DNS zone walking via Amazon Route 53 Hosted Zone.
- 052_[CCP_SOA] Penetration Testing on AWS.txt:8: You can not perform a distributed attack on your system, so you cannot perform a DoS or DDoS or a Simulated DoS or Simulated DDoS.
- 052_[CCP_SOA] Penetration Testing on AWS.txt:9: You cannot just attack your own infrastructure with a denial of service.
- 053_DDoS Simulation Testing on AWS.txt:2: Of course, it must be controlled so you would do a controlled DDoS attack to make sure that your applications are resilient to this attack and also to practice event response.
- 053_DDoS Simulation Testing on AWS.txt:3: In that case, the only person that can do a DDoS is an AWS DDoS Test Partner.
- 053_DDoS Simulation Testing on AWS.txt:5: The attacks must not be originating from AWS resources, and on top of it, you must not exceed 20 Gigabits per second.
- 053_DDoS Simulation Testing on AWS.txt:6: Finally, you cannot exceed 5 million packets per second for CloudFront and 50,000 packets per second for any other service.
- 054_Compromised AWS Resources.txt:2: Well, the most important one to remember is how to deal with a compromised EC2 instance because the exam will test you on that.
- 054_Compromised AWS Resources.txt:9: And so therefore, this instance cannot communicate with the outside world and at least it is contained.
- 054_Compromised AWS Resources.txt:22: So these steps should feel natural to you and remember them going into the exam.
- 054_Compromised AWS Resources.txt:44: So for these users well it's good to rotate the user's password so that the attacker cannot use the user anymore.
- 055_Compromised AWS Credentials.txt:13: We should revoke any access to the identity in the linked active directory.
- 055_Compromised AWS Credentials.txt:21: Then delete and rotate all EC2 key pairs so that they cannot be used in the future to SSH into your instances.
- 056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt:5: So you are the only owner of the private key but Amazon EC2 service is going to keep a copy of the public key.
- 056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt:9: So the idea is that your private key must be kept secure and there are no ways for you to recover a lost private key.
- 056_EC2 Key Pairs & Remediating Exposed EC2 Key Paris.txt:25: You must also create a new Key Pair and then you add the public key material to the authorized_keys on all EC2 instances.
- 057_EC2 Instance Connect.txt:6: And this private key will have its corresponding public key pushed into the EC2 instance metadata, and this is a key that is going to be valid only for 60 seconds.
- 057_EC2 Instance Connect.txt:7: So why is it important?
- 057_EC2 Instance Connect.txt:9: So not only the authorized keys file on the EC2 instance, but also going to check the instance metadata.
- 057_EC2 Instance Connect.txt:11: So the idea around this is that it's very secure, because the public key is only there for 60 seconds, and no one else can reproduce this but AWS, because no one else but AWS has access to the instance metadata.
- 057_EC2 Instance Connect.txt:17: So therefore, from a security group perspective, you need to have port 22 open on your EC2 instance as inbound, and the source of it should correspond to the AWS IP range for the EC2 instance connect service.
- 058_EC2 Serial Console.txt:9: So, it only works with the specific kind of EC2 instances.
- 058_EC2 Serial Console.txt:13: Okay, next, because there is only one serial console part, you can only have one active session per EC2 instance.
- 059_Lost EC2 Key Pair - Linux.txt:13: So please note that this method only adds authorized keys.
- 059_Lost EC2 Key Pair - Linux.txt:33: So this is when you don't have a working network connection for whatever reason, and this is only for Nitro-based EC2 instances.
- 059_Lost EC2 Key Pair - Linux.txt:37: And, of course, if you don't have network connectivity, you should also fix that.
- 060_Lost EC2 Key Pair - Windows.txt:12: You don't have to remember the files, okay, I'm just giving you the general idea and that should be enough for you.
- 060_Lost EC2 Key Pair - Windows.txt:23: So for this, of course, the EC2 instance running Windows must have the SSM Agent installed.
- 061_EC2 Rescue Tool for Linux & Windows.txt:38: So just remember at a high level, what this tool is, but it should give you a bit more information so you can understand it better.
- 063_[SOA] Systems Manager Overview.txt:10: You're only going to pay for the resources they use or creates if it does anything like that.
- 063_[SOA] Systems Manager Overview.txt:18: So as you can see, that's a lot of features, but what I highlighted in blue is what I think is important from an exam perspective.
- 063_[SOA] Systems Manager Overview.txt:19: Still System Manager is very important.
- 063_[SOA] Systems Manager Overview.txt:28: But do not worry, I will spend some time going over the most important ones and they should make sense to you.
- 063_[SOA] Systems Manager Overview.txt:34: If your instance cannot be controlled with SSM, it's probably an issue with the agent or the IAM permissions, okay?
- 064_[SOA] Start EC2 Instances with SSM Agent.txt:16: And then under advanced details, most importantly we need to select an IAM instance profile.
- 064_[SOA] Start EC2 Instances with SSM Agent.txt:22: And that's extremely important.
- 065_[SOA] AWS Tags & SSM Resource Groups.txt:4: And they're commonly used in EC2, but many other sources as well.
- 066_[SOA] SSM Documents & SSM Run Command.txt:26: So currently we cannot view the document versions because we don't own it.
- 066_[SOA] SSM Documents & SSM Run Command.txt:55: HTTP port 80, and it should not time out, it should just give me an error.
- 066_[SOA] SSM Documents & SSM Run Command.txt:59: And as you can see, if I go into my IP, I get a site can't be reached.
- 066_[SOA] SSM Documents & SSM Run Command.txt:92: So if the commands don't finish within 600 seconds, so 10 minutes, then you should fail the command.
- 067_[SOA] SSM Automations.txt:7: So we commonly refer them as Runbook now.
- 067_[SOA] SSM Automations.txt:38: And I'm going to look for the Automation named AWS- Restart, and that should do it.
- 068_[SAA_DVA_SOA] SSM Parameter Store Overview.txt:36: And this is only for advanced parameters. (mouse clicks) Well, this allows you to assign a time to live to a parameter, that means an expiration date.
- 068_[SAA_DVA_SOA] SSM Parameter Store Overview.txt:40: So this is an expiration policy to delete a parameter and you say, "Hey, on this time stamp you must delete these parameter." And then through the EventBridge integration, EventBridge is going to get notifications of it.
- 069_[SAA_DVA_SOA] SSM Parameter Store Hands On (CLI).txt:16: They are four kilobytes in value maximum, and we can't share that with other accounts, but the Advanced parameters, you can have 100,000 of them, they can be eight kilobytes and you can share them with your other accounts.
- 070_[SOA] SSM Inventory & State Manager.txt:29: And another example could be for example, that you must close the port 22, no matter what or that an antivirus must be installed on your EC2 instances.
- 070_[SOA] SSM Inventory & State Manager.txt:37: And more importantly, we can look at the top OS versions.
- 070_[SOA] SSM Inventory & State Manager.txt:41: But more importantly, if I go up and look at the details, we can have a look at the detailed data so we can create inventory Resource Data Syncs, okay?
- 070_[SOA] SSM Inventory & State Manager.txt:53: And as we allow bucket prefix, we don't have any so we'll remove this and then account ID equals and then I need to specify the account ID of my accounts, which is right here so I will paste my account ID, and we should be good to go.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:9: So patch baseline defines which patches should and shouldn't be installed on your EC2 instances and the ability to create custom patch baseline is up to you if you want to specify approved or rejected patches on your instance.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:11: By default, the patch baseline is to install only critical patches and patches related to security onto your SSM managed instances.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:15: Now, instances when using patch groups should be defined with a tech key patch group and an instance at any time, therefore can only be part of one patch group.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:16: And the patch group can only be registered with one patch baseline.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:18: We have the predefined patch baselines and they're managed by AWS and they're defined for operating systems that are different and you cannot modify them.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:14: Now, of course, you only have one patch baseline right now per OS, but you can create your custom baselines if you wanted to.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:16: So this could be in the current region, or you can set up now so they can have all the regions if you wanted to as targets to have the patch policy in one place only.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:37: We have the patches, so let's have a look at all the patches, for example, by operating system, when they're released, if they're important, and so on.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:57: Obviously, one target at a time and zero for errors, and that should do the tricks.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:59: So now, that means that within my maintenance window, this run patch baseline will be run, and it will happen only during this window.
- 073_[SOA] SSM Session Manager Overview.txt:21: So session manager requires IAM permissions, and this is allowing you to control which users or groups can access session manager and which instances, and you can use tags to restrict access to only specific EC2 instances.
- 075_[SOA] SSM Cleanup.txt:2: And so that means that we need to terminate them, so to make sure we don't have any running cost, take your three instances and terminate them and you should be good to go.

### Patterns / Architectures (Deduped)
- 059_Lost EC2 Key Pair - Linux.txt:19: And then from the Systems Manager Console, we can run an automation, such as AWSSupport-ResetAccess, and this automation is going to create a new key pair, so a public key and a private key.
- 060_Lost EC2 Key Pair - Windows.txt:26: That's similar to what we saw before but it's automated using Systems Manager or there is an automation document again called ResetAccess or there is a run command document called RunPowerShellScript in which you can just set the password for the administrator to be Password@123 and then you are good.
- 061_EC2 Rescue Tool for Linux & Windows.txt:10: For this, you can install it manually, or you can run an SSM automation document, to just go ahead and install the EC2Rescue tool.
- 061_EC2 Rescue Tool for Linux & Windows.txt:11: And if you run, for example, the TroubleshootSSL automation out of it, then it's going to try to fix SSH issues, going into the instance.
- 063_[SOA] Systems Manager Overview.txt:5: It allow you to easily detect problem and also gives you some patching automation and enhanced compliance.
- 063_[SOA] Systems Manager Overview.txt:7: Whenever you need to patch your instances, usually it's going to be done with Systems Manager or any kind of automation you'll be running, also will be using Systems Manager.
- 063_[SOA] Systems Manager Overview.txt:14: We have fleet manager, compliance, inventory, hybrid activations, session manager, run commend, state manager, patch manager, and distributor.
- 063_[SOA] Systems Manager Overview.txt:15: We have change management features such as automation, change calendar, maintenance windows, documents, quick setup.
- 063_[SOA] Systems Manager Overview.txt:38: So patching with some automation, okay?
- 065_[SOA] AWS Tags & SSM Resource Groups.txt:7: So we use tags for doing resource grouping, as we'll see in this lecture, but for automation as well, for security, and cost allocation.
- 066_[SOA] SSM Documents & SSM Run Command.txt:9: So these documents can be simply used to run commands, and we'll see this in this lecture, but also these documents can be applied to other SSM features such as state manager, patch manager, automation, and documents can even retrieve some data from the SSM parameter store to be able to give you some kind of modularity and dynamicity in the way you want to have the documents behave, okay?
- 066_[SOA] SSM Documents & SSM Run Command.txt:31: So it could be a command or session document, or an automation document, and we'll see commands in this one, but I want you to show you this at a high level.
- 066_[SOA] SSM Documents & SSM Run Command.txt:43: And finally, for automations and EventBridge for CloudWatch Events, can be used to invoke run commands.
- 067_[SOA] SSM Automations.txt:1: Now let's talk about SSM Automations.
- 067_[SOA] SSM Automations.txt:2: So, automations are going to help you simplify common maintenance and deployment tasks for your EC2 Instances or other AWS resources.
- 067_[SOA] SSM Automations.txt:3: For example, using an automation, you can do some things such as restarting an Instance, creating an AMI or doing an EBS snapshot.
- 067_[SOA] SSM Automations.txt:4: The idea is that automations are going to be higher level, okay.
- 067_[SOA] SSM Automations.txt:6: So the automation Runbook is the name of the document for SSM that are going to be of type Automation, okay.
- 067_[SOA] SSM Automations.txt:7: So we commonly refer them as Runbook now.
- 067_[SOA] SSM Automations.txt:8: And the Runbooks will do actions preformed on your EC2 Instances or resources and AWS resources.
- 067_[SOA] SSM Automations.txt:9: And you can create your own Runbook obviously, or use the predefined Runbooks done by AWS.
- 067_[SOA] SSM Automations.txt:11: The SSM Automation is using the Runbooks.
- 067_[SOA] SSM Automations.txt:12: They'll show automation documents.
- 067_[SOA] SSM Automations.txt:15: Now, how do you trigger an SSM Automation?
- 067_[SOA] SSM Automations.txt:18: And the target of the rule will be the SSM Automation.
- 067_[SOA] SSM Automations.txt:19: On a schedule, so very often using a Maintenance Window or as a rule remediation directly, whenever AWS Config Remi, finds out that a resource is not compliant with the rule.
- 067_[SOA] SSM Automations.txt:21: So the Console, the SDK, Maintenance Windows, EventBridge, and the Config Remediation, can all execute the automation called AWS-RestartEC2Instance from within the SSM automation service, okay.
- 067_[SOA] SSM Automations.txt:22: So let's have a look at how Automations work in this lecture.
- 067_[SOA] SSM Automations.txt:23: So I'm gonna go on the left hand side into Automation.
- 067_[SOA] SSM Automations.txt:24: So Change Management, Automation.
- 067_[SOA] SSM Automations.txt:25: And I'm going to execute an Automation.
- 067_[SOA] SSM Automations.txt:29: For example, common tasks for EC2 and EBS, Data Backups, AMI Management, Self-service support workflows.
- 067_[SOA] SSM Automations.txt:32: So we can attach an EBS volume directly from an Automation.
- 067_[SOA] SSM Automations.txt:37: So what I'm going to do, is I'm going to look for Automations.
- 067_[SOA] SSM Automations.txt:38: And I'm going to look for the Automation named AWS- Restart, and that should do it.
- 067_[SOA] SSM Automations.txt:43: If we wanted to have an Approval step as part of our Automation.
- 067_[SOA] SSM Automations.txt:55: Or we can do Multi-account and Multi-region or a Manual execution to do step by step Runbook mode.
- 067_[SOA] SSM Automations.txt:65: So, IAM user or user arn to approve for the automation action.
- 067_[SOA] SSM Automations.txt:74: That's the Automation Assume to perform the automation on your behalf.
- 067_[SOA] SSM Automations.txt:75: And this is if you want to have the automation user role that is different than the one that you're currently using right now to launch this automation.
- 067_[SOA] SSM Automations.txt:78: And if there's one error, then please stop this automation.
- 067_[SOA] SSM Automations.txt:84: Which is to execute this automation.
- 067_[SOA] SSM Automations.txt:91: Which was the first step of my automation.
- 067_[SOA] SSM Automations.txt:97: So effectively, what we can do, for example, using this automation is just restart a full fleet of EC2 Instances, without number one enabling SSH access.
- 067_[SOA] SSM Automations.txt:98: And number two, we don't have to code a script for it because, well, there is an automation available to us.
- 067_[SOA] SSM Automations.txt:100: So this really shows the power of Automations within a SSM.
- 067_[SOA] SSM Automations.txt:105: But this is the whole part of automations.
- 067_[SOA] SSM Automations.txt:108: And you need to just look at documents that are going to be of type, Automation and have a look at what is offered by AWS in terms of documents.
- 067_[SOA] SSM Automations.txt:109: There's a lot of them, but they can help you imagine and understand how you can leverage automations better within your infrastructure.
- 067_[SOA] SSM Automations.txt:112: And make sure that the automation was successful at the end.
- 070_[SOA] SSM Inventory & State Manager.txt:66: For example, we can have a look at the version, the architecture, the summary, the package ID, the publisher, the release, that URL, as well as the name and so on.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:1: So now let's see an overview of the SSM Patch Manager.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:2: So we use the Patch Manager to automate the process of patching our managed instances.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:5: You're going to patch on demand so you can run the patch manager as you want or on the schedule if you want to use a maintenance window.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:6: What's going to happen is that the patch manager will scan the instances and will generate a patch compliance report which is a list of all the machine patches.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:8: So patch manager has two components we need to know about, which is the number one is the patch baseline and the number two is patch groups.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:17: So we have two kind of patch baselines in Patch Manager.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:27: And in Patch Manager we're going to define patch baselines.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:36: And this can be initiated from the console, the SDK or the maintenance window.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:38: Now, the SSM agent on these instances will query to the patch manager service to get an idea of which patches to include and to run thanks to the patch baseline.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:40: And then obviously you can have rate control, just like anything in SSM, using a maintenance window.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:41: So talking about maintenance windows, this is when you want to define a schedule for when to perform actions on your instances.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:44: And a maintenance window contains a schedule, a duration and a set of registered instances, as well as a set of tasks that can be run during that maintenance window.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:46: From a exam perspective, what you need to know is that patch manager is used to patch your instances but that comes, I guess, naturally.
- 071_[SOA] SSM Patch Manager and Maintenance Windows.txt:47: And these patches can be run within a specific maintenance window with a specific rate control if you need to.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:1: So let's practice using patch manager.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:2: So on the left-hand side, you have patch manager and then you are in this UI and you have a button here to create a patch policy.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:28: Next, if you go back to patch manager and click on start with an overview, you're going to get into the UI of patch manager.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:38: And then settings to have a look at the integration between security hub and patch manager.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:39: And finally, if you want to have a look at maintenance windows, they're right here on the left-hand side.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:40: So under maintenance windows, we can create a maintenance window to run our patches.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:41: So I call it one DemoMaintenanceWindow.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:45: So we can say, daily, you start every day at zero, three, so 3:00 AM, and it's going to be a two-hour maintenance window, okay?
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:49: And then we can create this maintenance window, okay?
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:55: And obviously, thanks to the maintenance windows, we can specify concurrency and the error threshold.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:59: So now, that means that within my maintenance window, this run patch baseline will be run, and it will happen only during this window.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:61: I'm not going to go ahead with this maintenance window, but I want to show you a high level of how patch manager and the maintenance window we're working.
- 072_[SOA] SSM Patch Manager and Maintenance Windows - Hands On.txt:62: And to clean that up, you can delete this maintenance window and you'll be good to go.
- 073_[SOA] SSM Session Manager Overview.txt:1: So now let's talk about SSM session manager, which is a way for you to start a secure shell environment on your EC2 instances and on-premises servers, but you access it through the console, the CLI or the session manager SDK, and the real power of session manager is that you do not need to get direct SSH access into your instances.
- 073_[SOA] SSM Session Manager Overview.txt:8: And so our user is going to connect to the session manager service with a correct IAM permission, of course.
- 073_[SOA] SSM Session Manager Overview.txt:9: And then the session manager will be able to execute commands on our EC2 instance.
- 073_[SOA] SSM Session Manager Overview.txt:12: But this time, the session manager is used to just have a common shell against our EC2 instance.
- 073_[SOA] SSM Session Manager Overview.txt:20: For example, again, for some automation, compliance and alerting.
- 073_[SOA] SSM Session Manager Overview.txt:21: So session manager requires IAM permissions, and this is allowing you to control which users or groups can access session manager and which instances, and you can use tags to restrict access to only specific EC2 instances.
- 073_[SOA] SSM Session Manager Overview.txt:25: So just for you to understand, using SSH, well we have to open up our security group and our user with specific IP address as a session to our instance and do whatever he wants there, but using session manager, we don't need any inbound rules.
- 073_[SOA] SSM Session Manager Overview.txt:27: You just need the instance with the SSM agents and the right IAM role, and then a user with a correct IAM permission can use session manager to run commands against our EC2 instance.
- 074_[SOA] SSM Session Manager Hands On.txt:1: So on the left hand side, let's find Session Manager and we want to establish an SSH session into our EC2 instances.
- 074_[SOA] SSM Session Manager Hands On.txt:12: So pretty cool because this session entirely is going to be logged, okay, because it is done from session manager, and also my instance does not have any SSH inbound security rule, yet I am able to run some commands within it.
- 074_[SOA] SSM Session Manager Hands On.txt:13: So this is the power of session manager, and I can just terminate this.
- 074_[SOA] SSM Session Manager Hands On.txt:15: And now if I go back into my session manager, I can look at session history and see that the history was being created right here.
- 074_[SOA] SSM Session Manager Hands On.txt:16: And finally, you could edit the preferences of session manager to have an idle timeout, to have KMS encryption for your sessions and to run the session as a specific user for your next instances.
- 074_[SOA] SSM Session Manager Hands On.txt:25: And I know a lot of companies and people who use Session Manager from within Systems Manager to do the executing actions onto your EC2 instances because it is way more controlled and also has a lot more compliance around it.

## Deduped Consolidation Snapshot End

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: The command outputs can be shown in the console, but it can also be sent to your S3 buckets or to CloudWatch Logs.
- Signal 2: Now, for the output options, we can create an S3 buckets to send the output to, but I will disable it, or we can send logs to CloudWatch Logs, and for example, I will call it runCommandOutput as my log group name.
- Signal 3: And you can click on the CloudWatch Logs to view the logs directly of your commands into the CloudWatch Log groups.
- Signal 4: Transcript signals that for the output options, we can create an S3 buckets to send the output to, but I will disable it, or we can send logs to CloudWatch Logs, and for example, I will call it runCommandOutput as my log group name.
- Signal 5: So let's have a look at how we can create documents right now.
- Signal 6: So I click on it and I can see that this is useful for scanning or installing patches from a patch baseline, as we'll see what that means in a few lecturers.
- Signal 7: Transcript signals that let's have a look at how we can create documents right now.
- Signal 8: So the Console, the SDK, Maintenance Windows, EventBridge, and the Config Remediation, can all execute the automation called AWS-RestartEC2Instance from within the SSM automation service, okay.
- Signal 9: And to what leverage a state manager, you use SSM documents and you create an association.
- Signal 10: So I'll call it demo-ssm-inventory-stephane, and in this region, and then creates.

### Service-Specific Lab Paths
### Activity 1: IAM Lab for 12 Incident Response
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

### Activity 2: Amazon CloudWatch Lab for 12 Incident Response
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

### Activity 3: Amazon S3 Lab for 12 Incident Response
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

### Activity 4: Amazon VPC Lab for 12 Incident Response
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

### Quick Troubleshooting
- Access denied: verify role permissions or ask admin for least-privilege lab policy.
- Resource limit reached: pick another region or request quota increase.
- Unexpected charges: stop/delete resources and review cost explorer immediately.

## Cross-Cloud Thinking Mode

Use this lens to study 12 Incident Response in a cloud-agnostic way: focus on capability first, provider name second.

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
| IAM | IAM | Microsoft Entra ID + RBAC | Cloud IAM |
| Amazon CloudWatch | Amazon CloudWatch | Azure Monitor | Cloud Monitoring |
| Amazon S3 | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Amazon VPC | Amazon VPC | Azure Virtual Network | VPC Network |

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

