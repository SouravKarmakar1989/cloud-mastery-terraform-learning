# 02_Audit_Config_Compliance.md

## Scope
- Topic: CloudTrail, Config, audit trails, state recording, and compliance visibility
- Files processed: 66
- Extracted non-empty transcript lines: 2628
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS Observability Knowledge Base
- Cross-domain referrals: 2

## Real Material - Architect Learning Build (Observability: Audit Config Compliance)

This section is the study-first architecture guide for cloudtrail, config, audit trails, state recording, and compliance visibility.

### Phase 1 - Foundations

#### Module: Audit Config Compliance Mental Model
- Use audit config compliance decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: Audit Config Compliance Mental Model
- Primary transcript files:
- outputs/AWS/AWS Speciality/Security/03_Domain 1 - Detection/032_CloudTrail - Data Lake.txt
- outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/226_[SAA_SOA] AWS Config.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/24_AWS Monitoring & Audit_ CloudWatch, CloudTrail & Config/282_AWS Config - Overview.txt
- outputs/AWS/AWS Speciality/Security/03_Domain 1 - Detection/030_[SAA] CloudTrail.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/259_CloudTrail.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/24_AWS Monitoring & Audit_ CloudWatch, CloudTrail & Config/279_CloudTrail Overview.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/015_CloudTrail.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/249_AWS CloudTrail.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/262_CloudTrail vs CloudWatch vs X-Ray.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/236_Monitoring Overview in AWS.txt
- Top concept clusters from transcript metadata:
- Audit Logging
- Log Analytics and Investigation
- Network Telemetry
- Distributed Tracing and Events
- Operational Monitoring
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 66
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 2628
- Key insights inside selected files: 24
- Unique concept tags in selected files: 5

##### Transcript-Enriched Learning Notes
- Well, we have CloudTrail Events, we have CloudTrail Insights Events, we have AWS Config Configuration Items, we have AWS Audit Manager and 3rd Party Events.
- So Config is a service that allows you to get auditing and record compliance of your resources in AWS, based on some rules that you're going to set, you can also record Configuration and their changes over time to quickly be able to roll back and to figure out what happened in your infrastructure if you need to.
- So events by default are stored for 90 days in CloudTrail and then afterwards they're deleted, but sometimes you may want to have events for longer in case you want to go back to something that happened maybe a year ago for audited purposes.
- So essentially that is a CloudTrail, very important service with respect to security and audit purpose, and all the actions with respect to the networking where you are creating the VPCs, or subnets, or whatever, right?
- CloudWatch is really just for overall metrics, X-Ray is a lot more granular, trace-oriented type of service and CloudTrail is going to be for auditing API calls.
- Now, if you followed the AWS Config lecture, it also does similar thing, but then Config is an abstraction over AWS CloudTrail and few other services.
- CloudTrail is allowing you to do internal monitoring of your API calls being made, and also audit the changes made to AWS resources by your users.
- So CloudTrail is to audit API calls that are made in your account by user, services or even from the AWS console.
- Now, this is advisable as well that you should have CloudTrail enabled so that you can audit your account.
- So one very popular exam question is to make the distinction between CloudWatch, CloudTrail, and Config.
- So CloudTrail is a way to get governance compliance and audit for your AWS Accounts.
- Code Build, for example, if you have a build that fails or S3, whenever there's an event, for example, when an object is uploaded, or Trusted Advisor when you have a new finding of security in your accounts or as a good combo, you can combine EventBridge and CloudTrail and actually intercept any API call made within your AWS accounts, which is huge.

##### Polished Architect Notes
- Transcript signals that well, we have CloudTrail Events, we have CloudTrail Insights Events, we have AWS Config Configuration Items, we have AWS Audit Manager and 3rd Party Events.
- Transcript signals that so Config is a service that allows you to get auditing and record compliance of your resources in AWS, based on some rules that you're going to set, you can also record Configuration and their changes over time to quickly be able to roll back and to figure out what happened in your infrastructure if you need to.
- Transcript signals that so events by default are stored for 90 days in CloudTrail and then afterwards they're deleted, but sometimes you may want to have events for longer in case you want to go back to something that happened maybe a year ago for audited purposes.
- Transcript signals that so essentially that is a CloudTrail, very important service with respect to security and audit purpose, and all the actions with respect to the networking where you are creating the VPCs, or subnets, or whatever, right?
- Transcript signals that cloudWatch is really just for overall metrics, X-Ray is a lot more granular, trace-oriented type of service and CloudTrail is going to be for auditing API calls.
- Transcript signals that now, if you followed the AWS Config lecture, it also does similar thing, but then Config is an abstraction over AWS CloudTrail and few other services.
- Transcript signals that cloudTrail is allowing you to do internal monitoring of your API calls being made, and also audit the changes made to AWS resources by your users.
- Transcript signals that so CloudTrail is to audit API calls that are made in your account by user, services or even from the AWS console.
- Transcript signals that now, this is advisable as well that you should have CloudTrail enabled so that you can audit your account.
- Transcript signals that so one very popular exam question is to make the distinction between CloudWatch, CloudTrail, and Config.
- Transcript signals that so CloudTrail is a way to get governance compliance and audit for your AWS Accounts.
- Transcript signals that code Build, for example, if you have a build that fails or S3, whenever there's an event, for example, when an object is uploaded, or Trusted Advisor when you have a new finding of security in your accounts or as a good combo, you can combine EventBridge and CloudTrail and actually intercept any API call made within your AWS accounts, which is huge.

##### Architect Synthesis (Transcript-Derived)
- Treat Audit Logging as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Log Analytics and Investigation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Network Telemetry as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Distributed Tracing and Events as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Monitoring as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: well, we have CloudTrail Events, we have CloudTrail Insights Events, we have AWS Config Configuration Items, we have AWS Audit Manager and 3rd Party Events.
- Design implication: so Config is a service that allows you to get auditing and record compliance of your resources in AWS, based on some rules that you're going to set, you can also record Configuration and their changes over time to quickly be able to roll back and to figure out what happened in your infrastructure if you need to.
- Design implication: so events by default are stored for 90 days in CloudTrail and then afterwards they're deleted, but sometimes you may want to have events for longer in case you want to go back to something that happened maybe a year ago for audited purposes.
- Design implication: so essentially that is a CloudTrail, very important service with respect to security and audit purpose, and all the actions with respect to the networking where you are creating the VPCs, or subnets, or whatever, right?
- Design implication: cloudWatch is really just for overall metrics, X-Ray is a lot more granular, trace-oriented type of service and CloudTrail is going to be for auditing API calls.

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/AWS/AWS Speciality/Security/03_Domain 1 - Detection/030_[SAA] CloudTrail.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/259_CloudTrail.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/24_AWS Monitoring & Audit_ CloudWatch, CloudTrail & Config/279_CloudTrail Overview.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/015_CloudTrail.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/249_AWS CloudTrail.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/262_CloudTrail vs CloudWatch vs X-Ray.txt
- outputs/AWS/AWS Speciality/Security/03_Domain 1 - Detection/032_CloudTrail - Data Lake.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/236_Monitoring Overview in AWS.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/248_Amazon EventBridge.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/24_AWS Monitoring & Audit_ CloudWatch, CloudTrail & Config/276_EventBridge Overview (formerly CloudWatch Events).txt
- Top concept clusters from transcript metadata:
- Audit Logging
- Network Telemetry
- Distributed Tracing and Events
- Operational Monitoring
- Log Analytics and Investigation
- Observability Operational Context
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 66
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 2628
- Key insights inside selected files: 24
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- So events by default are stored for 90 days in CloudTrail and then afterwards they're deleted, but sometimes you may want to have events for longer in case you want to go back to something that happened maybe a year ago for audited purposes.
- So essentially that is a CloudTrail, very important service with respect to security and audit purpose, and all the actions with respect to the networking where you are creating the VPCs, or subnets, or whatever, right?
- CloudWatch is really just for overall metrics, X-Ray is a lot more granular, trace-oriented type of service and CloudTrail is going to be for auditing API calls.
- Well, we have CloudTrail Events, we have CloudTrail Insights Events, we have AWS Config Configuration Items, we have AWS Audit Manager and 3rd Party Events.
- CloudTrail is allowing you to do internal monitoring of your API calls being made, and also audit the changes made to AWS resources by your users.
- So CloudTrail is to audit API calls that are made in your account by user, services or even from the AWS console.
- Now, this is advisable as well that you should have CloudTrail enabled so that you can audit your account.
- So CloudTrail is a way to get governance compliance and audit for your AWS Accounts.
- Code Build, for example, if you have a build that fails or S3, whenever there's an event, for example, when an object is uploaded, or Trusted Advisor when you have a new finding of security in your accounts or as a good combo, you can combine EventBridge and CloudTrail and actually intercept any API call made within your AWS accounts, which is huge.
- So Config is a service that allows you to get auditing and record compliance of your resources in AWS, based on some rules that you're going to set, you can also record Configuration and their changes over time to quickly be able to roll back and to figure out what happened in your infrastructure if you need to.
- And then the idea is that you still want to protect your S3 buckets using a bucket policy, using versioning, using MFA Delete protection, encryption, and object lock if you wanted to make sure that all these files within your S3 buckets from CloudTrail are kept all along this time.
- So you may say, "Hey, that looks very similar to conformance packs." And you're right, it is the same scope, as in we deploy rules from the management account into many member accounts all across your organization, but it turns out there is a little bit of a difference.

##### Polished Architect Notes
- Transcript signals that so events by default are stored for 90 days in CloudTrail and then afterwards they're deleted, but sometimes you may want to have events for longer in case you want to go back to something that happened maybe a year ago for audited purposes.
- Transcript signals that so essentially that is a CloudTrail, very important service with respect to security and audit purpose, and all the actions with respect to the networking where you are creating the VPCs, or subnets, or whatever, right?
- Transcript signals that cloudWatch is really just for overall metrics, X-Ray is a lot more granular, trace-oriented type of service and CloudTrail is going to be for auditing API calls.
- Transcript signals that well, we have CloudTrail Events, we have CloudTrail Insights Events, we have AWS Config Configuration Items, we have AWS Audit Manager and 3rd Party Events.
- Transcript signals that cloudTrail is allowing you to do internal monitoring of your API calls being made, and also audit the changes made to AWS resources by your users.
- Transcript signals that so CloudTrail is to audit API calls that are made in your account by user, services or even from the AWS console.
- Transcript signals that now, this is advisable as well that you should have CloudTrail enabled so that you can audit your account.
- Transcript signals that so CloudTrail is a way to get governance compliance and audit for your AWS Accounts.
- Transcript signals that code Build, for example, if you have a build that fails or S3, whenever there's an event, for example, when an object is uploaded, or Trusted Advisor when you have a new finding of security in your accounts or as a good combo, you can combine EventBridge and CloudTrail and actually intercept any API call made within your AWS accounts, which is huge.
- Transcript signals that so Config is a service that allows you to get auditing and record compliance of your resources in AWS, based on some rules that you're going to set, you can also record Configuration and their changes over time to quickly be able to roll back and to figure out what happened in your infrastructure if you need to.
- Transcript signals that and then the idea is that you still want to protect your S3 buckets using a bucket policy, using versioning, using MFA Delete protection, encryption, and object lock if you wanted to make sure that all these files within your S3 buckets from CloudTrail are kept all along this time.
- Transcript signals that so you may say, "Hey, that looks very similar to conformance packs." And you're right, it is the same scope, as in we deploy rules from the management account into many member accounts all across your organization, but it turns out there is a little bit of a difference.

##### Architect Synthesis (Transcript-Derived)
- Treat Audit Logging as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Network Telemetry as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Distributed Tracing and Events as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Monitoring as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Log Analytics and Investigation as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so events by default are stored for 90 days in CloudTrail and then afterwards they're deleted, but sometimes you may want to have events for longer in case you want to go back to something that happened maybe a year ago for audited purposes.
- Design implication: so essentially that is a CloudTrail, very important service with respect to security and audit purpose, and all the actions with respect to the networking where you are creating the VPCs, or subnets, or whatever, right?
- Design implication: cloudWatch is really just for overall metrics, X-Ray is a lot more granular, trace-oriented type of service and CloudTrail is going to be for auditing API calls.
- Design implication: well, we have CloudTrail Events, we have CloudTrail Insights Events, we have AWS Config Configuration Items, we have AWS Audit Manager and 3rd Party Events.
- Design implication: cloudTrail is allowing you to do internal monitoring of your API calls being made, and also audit the changes made to AWS resources by your users.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/227_[SAA_SOA] AWS Config - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/24_AWS Monitoring & Audit_ CloudWatch, CloudTrail & Config/283_AWS Config - Hands On.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/249_AWS CloudTrail.txt
- outputs/AWS/AWS Speciality/Security/03_Domain 1 - Detection/036_CloudTrail - Integration with Athena.txt
- outputs/AWS/AWS Speciality/Security/03_Domain 1 - Detection/032_CloudTrail - Data Lake.txt
- outputs/AWS/AWS Speciality/Security/03_Domain 1 - Detection/030_[SAA] CloudTrail.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/259_CloudTrail.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/24_AWS Monitoring & Audit_ CloudWatch, CloudTrail & Config/279_CloudTrail Overview.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/015_CloudTrail.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/248_Amazon EventBridge.txt
- Top concept clusters from transcript metadata:
- Audit Logging
- Network Telemetry
- Log Analytics and Investigation
- Distributed Tracing and Events
- Operational Monitoring
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 66
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 2628
- Key insights inside selected files: 24
- Unique concept tags in selected files: 5

##### Transcript-Enriched Learning Notes
- So I have just refreshed my page, and as we can see in here on July 12th, we have after the rule compliance, a CloudTrail event that happened because I did revoke a security group ingress rule because I deleted an ingress rule, that's true.
- So essentially that is a CloudTrail, very important service with respect to security and audit purpose, and all the actions with respect to the networking where you are creating the VPCs, or subnets, or whatever, right?
- So the idea is that you're going to use Athena directly to query CloudTrail logs stored in Amazon S3, for example, to analyze activity for security and compliance.
- Well, we have CloudTrail Events, we have CloudTrail Insights Events, we have AWS Config Configuration Items, we have AWS Audit Manager and 3rd Party Events.
- So CloudTrail is a way to get governance compliance and audit for your AWS Accounts.
- Code Build, for example, if you have a build that fails or S3, whenever there's an event, for example, when an object is uploaded, or Trusted Advisor when you have a new finding of security in your accounts or as a good combo, you can combine EventBridge and CloudTrail and actually intercept any API call made within your AWS accounts, which is huge.
- So Config is a service that allows you to get auditing and record compliance of your resources in AWS, based on some rules that you're going to set, you can also record Configuration and their changes over time to quickly be able to roll back and to figure out what happened in your infrastructure if you need to.
- So events by default are stored for 90 days in CloudTrail and then afterwards they're deleted, but sometimes you may want to have events for longer in case you want to go back to something that happened maybe a year ago for audited purposes.
- You can include even custom config rules to evaluate whether your resources are compliant within the config rules, and you can designate a delegated administrator to deploy these conformance packs to your AWS organization.
- The second is that if Account A needs to access you know, the logs for the CloudTrail bucket we can create, for example, a cross-account role and assume the role in the security account.
- So, in case someone changes the security group rules or someone changes the SSL certificate, or removes it, or whatever, then CloudTrail will be how we know who made these changes.
- CloudWatch is really just for overall metrics, X-Ray is a lot more granular, trace-oriented type of service and CloudTrail is going to be for auditing API calls.

##### Polished Architect Notes
- Transcript signals that so I have just refreshed my page, and as we can see in here on July 12th, we have after the rule compliance, a CloudTrail event that happened because I did revoke a security group ingress rule because I deleted an ingress rule, that's true.
- Transcript signals that so essentially that is a CloudTrail, very important service with respect to security and audit purpose, and all the actions with respect to the networking where you are creating the VPCs, or subnets, or whatever, right?
- Transcript signals that so the idea is that you're going to use Athena directly to query CloudTrail logs stored in Amazon S3, for example, to analyze activity for security and compliance.
- Transcript signals that well, we have CloudTrail Events, we have CloudTrail Insights Events, we have AWS Config Configuration Items, we have AWS Audit Manager and 3rd Party Events.
- Transcript signals that so CloudTrail is a way to get governance compliance and audit for your AWS Accounts.
- Transcript signals that code Build, for example, if you have a build that fails or S3, whenever there's an event, for example, when an object is uploaded, or Trusted Advisor when you have a new finding of security in your accounts or as a good combo, you can combine EventBridge and CloudTrail and actually intercept any API call made within your AWS accounts, which is huge.
- Transcript signals that so Config is a service that allows you to get auditing and record compliance of your resources in AWS, based on some rules that you're going to set, you can also record Configuration and their changes over time to quickly be able to roll back and to figure out what happened in your infrastructure if you need to.
- Transcript signals that so events by default are stored for 90 days in CloudTrail and then afterwards they're deleted, but sometimes you may want to have events for longer in case you want to go back to something that happened maybe a year ago for audited purposes.
- Transcript signals that you can include even custom config rules to evaluate whether your resources are compliant within the config rules, and you can designate a delegated administrator to deploy these conformance packs to your AWS organization.
- Transcript signals that the second is that if Account A needs to access you know, the logs for the CloudTrail bucket we can create, for example, a cross-account role and assume the role in the security account.
- Transcript signals that so, in case someone changes the security group rules or someone changes the SSL certificate, or removes it, or whatever, then CloudTrail will be how we know who made these changes.
- Transcript signals that cloudWatch is really just for overall metrics, X-Ray is a lot more granular, trace-oriented type of service and CloudTrail is going to be for auditing API calls.

##### Architect Synthesis (Transcript-Derived)
- Treat Audit Logging as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Network Telemetry as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Log Analytics and Investigation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Distributed Tracing and Events as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Monitoring as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so I have just refreshed my page, and as we can see in here on July 12th, we have after the rule compliance, a CloudTrail event that happened because I did revoke a security group ingress rule because I deleted an ingress rule, that's true.
- Design implication: so essentially that is a CloudTrail, very important service with respect to security and audit purpose, and all the actions with respect to the networking where you are creating the VPCs, or subnets, or whatever, right?
- Design implication: so the idea is that you're going to use Athena directly to query CloudTrail logs stored in Amazon S3, for example, to analyze activity for security and compliance.
- Design implication: well, we have CloudTrail Events, we have CloudTrail Insights Events, we have AWS Config Configuration Items, we have AWS Audit Manager and 3rd Party Events.
- Design implication: so CloudTrail is a way to get governance compliance and audit for your AWS Accounts.

### Phase 2 - Core Services
- AWS CloudTrail should be understood in terms of request path, control plane, and operational boundary.
- AWS Config should be understood in terms of request path, control plane, and operational boundary.
- Amazon CloudWatch should be understood in terms of request path, control plane, and operational boundary.
- Amazon RDS should be understood in terms of request path, control plane, and operational boundary.
- Amazon EC2 should be understood in terms of request path, control plane, and operational boundary.

### Phase 3 - Advanced Patterns
- Pattern emphasis: Audit Logging becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Distributed Tracing and Events becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Log Analytics and Investigation becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Network Telemetry becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Observability Operational Context becomes valuable when requirements move from feature use to system design discipline.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design audit config compliance with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when audit config compliance decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: So CloudTrail is to audit API calls that are made in your account by user, services or even from the AWS console.
- Signal 2: Transcript signals that so CloudTrail is to audit API calls that are made in your account by user, services or even from the AWS console.
- Signal 3: So you may say, "Hey, that looks very similar to conformance packs." And you're right, it is the same scope, as in we deploy rules from the management account into many member accounts all across your organization, but it turns out there is a little bit of a difference.
- Signal 4: Transcript signals that so you may say, "Hey, that looks very similar to conformance packs." And you're right, it is the same scope, as in we deploy rules from the management account into many member accounts all across your organization, but it turns out there is a little bit of a difference.
- Signal 5: You can include even custom config rules to evaluate whether your resources are compliant within the config rules, and you can designate a delegated administrator to deploy these conformance packs to your AWS organization.
- Signal 6: The second is that if Account A needs to access you know, the logs for the CloudTrail bucket we can create, for example, a cross-account role and assume the role in the security account.
- Signal 7: Transcript signals that you can include even custom config rules to evaluate whether your resources are compliant within the config rules, and you can designate a delegated administrator to deploy these conformance packs to your AWS organization.
- Signal 8: Transcript signals that the second is that if Account A needs to access you know, the logs for the CloudTrail bucket we can create, for example, a cross-account role and assume the role in the security account.
- Signal 9: Key Insights: Now thankfully, thanks to the hands-on, hopefully you know exactly what are the differences are.
- Signal 10: Key Insights: So CloudWatch is for performance metrics, metrics, CPU, network, and to create dashboards.

### Service-Specific Lab Paths
### Activity 1: Amazon CloudWatch Lab for CloudTrail, Config, audit trails, state recording, and compliance visibility
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

### Activity 2: Amazon EC2 Lab for CloudTrail, Config, audit trails, state recording, and compliance visibility
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

### Activity 3: AWS Lambda Lab for CloudTrail, Config, audit trails, state recording, and compliance visibility
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

### Activity 4: Amazon VPC Lab for CloudTrail, Config, audit trails, state recording, and compliance visibility
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

Use this lens to study CloudTrail, Config, audit trails, state recording, and compliance visibility in a cloud-agnostic way: focus on capability first, provider name second.

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
| AWS Lambda | AWS Lambda | Azure Functions | Cloud Functions or Cloud Run |
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

## Cross-Domain Referrals

These transcripts are relevant to this topic but are owned by another knowledge base and are referenced here to avoid duplication.

- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/10_Security, Identity, and Compliance/254_NACL, Security Groups, VPC Flow Logs.txt (owned by AWS AI Knowledge Base)
- outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/09_Security, Identity, and Compliance/220_NACL, Security Groups, VPC Flow Logs.txt (owned by AWS AI Knowledge Base)

## CloudOps Transcript Additions â€” Audit, CloudTrail, and Config

### Source Files
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/16_Monitoring, Auditing and Performance/223_[SAA_DVA] CloudTrail.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/16_Monitoring, Auditing and Performance/224_[CCP_SAA_DVA] CloudTrail - Hands On.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/16_Monitoring, Auditing and Performance/225_[SAA_DVA] CloudTrail - EventBridge Integration.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/16_Monitoring, Auditing and Performance/226_CloudTrail for CloudOps.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/16_Monitoring, Auditing and Performance/227_[SAA] Config Overview.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/16_Monitoring, Auditing and Performance/228_[SAA] Config Hands On.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/16_Monitoring, Auditing and Performance/229_Config - Aggregators.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/16_Monitoring, Auditing and Performance/230_Config - Remediation Examples.txt
- outputs/AWS/aws-certified-cloudops-engineer-associate-SOA-C03/16_Monitoring, Auditing and Performance/231_[SAA] CloudWatch vs CloudTrail vs Config.txt

### CloudOps Synthesis
- CloudTrail log file integrity validation uses hourly digest files with SHA-256 hashes so you can prove whether delivered log files were tampered with after delivery.
- CloudTrail-to-EventBridge integration is powerful for governance automation, but it is not true real-time stream processing; delivery lag can be on the order of minutes.
- Organization trails provide centralized audit visibility across member accounts, and member accounts cannot remove or change the organization trail.
- AWS Config Aggregators provide a central read-only aggregated view across multiple accounts and regions.
- The aggregator is created only in the aggregator account; it does not centrally deploy rules.
- Without AWS Organizations, each source account must authorize the aggregator account explicitly.
- If centralized multi-account rule deployment is required, use CloudFormation StackSets; Config Aggregators are for aggregation, not rule rollout.

## Step 1 - Line-by-Line Extraction

Every non-empty line from every primary source transcript is preserved below with extraction fields.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/11_Management and Governance/274_CloudWatch vs. CloudTrail vs. Config.txt

Line 1:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS CloudTrail, AWS Config, Amazon CloudWatch
- Key Insights: So one very popular exam question is to make the distinction between CloudWatch, CloudTrail, and Config.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now thankfully, thanks to the hands-on, hopefully you know exactly what are the differences are.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It's pretty obvious in my opinion, but it's never too bad to go through an example and see them.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch, Amazon RDS
- Key Insights: So CloudWatch is for performance metrics, metrics, CPU, network, and to create dashboards.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can also get events and alerts, and finally, we have a log aggregation and analysis tool if we wanted to.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So CloudWatch, I think we're all pretty familiar with it, this already.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon EC2
- Key Insights: Now, CloudTrail could be new to you, but basically it's to record API calls made within your account by everyone and everything, and you can define some trails for specific resources, so you can get more information on EC2 only, and it's a global service.
- Hidden/Implicit Meaning: Constraint or limitation signal; Investigation and forensic signal.

Line 8:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Now finally, Config is to record configuration changes and to evaluate resources configuration against compliance rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Finally, you're going to get a timeline of changes and compliance with its nice UI.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: Elastic Load Balancing
- Key Insights: So, I think they're a very distinctive service I don't think there's any confusion, but let's go through an Elastic Load Balancer to see how each of these service can help you understand what is happening to your ELB.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Elastic Load Balancing
- Key Insights: So CloudWatch can monitor the number of incoming connections, can visualize number of error codes as a percentage over time, and maybe we can have a dashboard to get an idea of the load balancer performance, maybe we can have a, even make it a global dashboard if you have multiple load balancers for a global application.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Audit Logging
- Services: AWS Config, Elastic Load Balancing
- Key Insights: Now, Config, why would we use Config on the ELB?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Audit Logging
- Services: AWS Config, Elastic Load Balancing
- Key Insights: Well, maybe you wanna track the security group rules for the load balancer, making sure no-one does anything fishy or changes anything, maybe you want to change also a track that configuration changes for the load balancer itself, to see if anyone modifies the SSL certificate, or et cetera, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Audit Logging
- Services: AWS Config, Elastic Load Balancing
- Key Insights: We also maybe have a rule to say, oh there's always should be an SSL certificate assigned to the load balancer, and maybe we should never allow non-encrypted traffic into the load balancer, that could be two different compliance rules that you put into Config.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Elastic Load Balancing
- Key Insights: Finally, CloudTrail will be to track who made any changes to the load balancer with API calls.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 16:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So, in case someone changes the security group rules or someone changes the SSL certificate, or removes it, or whatever, then CloudTrail will be how we know who made these changes.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 17:
- Concepts: Observability Operational Context
- Services: Elastic Load Balancing
- Key Insights: So all these tools are complementary when you think about it and when you understand that, how they're used for a load balancer, which I think is a great example, then you are going to rock any questions asked for you at the exam.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I hope that makes sense, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/248_AWS Config.txt

Line 1:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Hello and welcome to this lecture, AWS Config.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we already saw a couple of AWS management and governance services including AWS cloud formation and AWS service catalog.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now the purpose of cloud formation and service catalog is to provision the AWS resources, that means the infrastructure for your solution.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then once that is done, probably you don't need to then look at AWS cloud formation again.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now, what if you have a lot of resources created either through AWS cloud formation automatically or manually created resources are there in your AWS account and you want to know exact state of your resources, and then what changes have been made to these resources over the time?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: Now this is typically required for, again, maybe for audit purpose or something went bad with your AWS account, somebody deleted something and you want to find out the root cause or probably who did that from where the API call was made.
- Hidden/Implicit Meaning: Constraint or limitation signal; Investigation and forensic signal.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So if you really look at this problem, there are multiple services involved.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: First of all you should know exactly which resources were deleted and when, and then who deleted that resource.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 9:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: So if you know already, AWS cloud is really the service which logs every API call that you make, right?
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But then there should be a service which really looks at all these things and then can give you a bit of view of what happened to a particular resource over the time.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And that's what exactly AWS conflict does.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So AWS config is all about tracking the state change of your AWS resources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Just an example here, you have VPC and a lot of components provision in your AWS account.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: Like VPCs, NAT gateways, EC2 machine, databases, security group, flow logs, route tables, a lot of things, right?
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 15:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And what you can do then is you can enable the AWS config for these resources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And once you enable the config, then config would make sure that it is tracking the changes happening to these resources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And you can enable and disable the tracking for individual resources or you can just enable it for an entire AWS account.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So for example, there is a user now who goes and changes something into your security group, maybe user adds port 80 in your security group.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now your security policy says that port 80 should never be opened, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 20:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now, how do you detect that?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So AWS conflict can also help you detect this kind of deviation from your standard practices.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So you could have a desired configuration.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: In AWS conflict terms it is called rule.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So rule will check, are there any security group which has a port 80 open?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this rule will be run across all the security groups in your account.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And if there are no security group which has this kind of port open, it will say that your configurations look okay, but in case it finds some security groups which are deviating from the standard configuration, then it'll raise an alert.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS Config
- Key Insights: Now this alert can then further be seen through SNS or it can be fetched to an API call for AWS config, can be shown in the dashboard, it can go as a cloud watch event.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: AWS Lambda, Amazon S3
- Key Insights: And then cloud watch even can then further trigger further action, the chain of lambdas or this event can also be stored in S3 bucket, and then it can be evaluated further.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 29:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So what you do with that event is a different thing, but ultimately AWS conflict can run those kind of desired configuration rules on your existing resource state and then it'll tell you if there is any problem with that.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So in short, AWS config does track the changes for configuration happening to the infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And when to apply this rule, that means when to run this rule can be trigger on some action or it could be periodic.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 32:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You may want to have like every six, I'll say, run this kind of rules so that it'll scan all my AWS resources and tell me whether the rules are compliant or not.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And there are already 280 plus predefined rules out there.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So AWS is coming up with managed rules so that you don't have to reinvent the wheel and rewrite the rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: These are some standard predefine rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can either use that or you can also write your own custom rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: And for that, you have to write a lambda function.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 38:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So that's what you can do with AWS config.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So I hope the overview of AWS config is clear, why it is used and what it exactly does.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 40:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now, there is one more thing to AWS conflict, that is auto remediation or manual remediation.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 41:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: What it means that if any rule fails, you could also trigger an action.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 42:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Typically it is done through AWS systems manager, right?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you can write SSM documents.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 44:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: SSM documents are systems manager document.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 45:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: That means it's kind of script that you can write.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 46:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Like for Linux based machine, it could be a shell script, for a Windows based machine, it could be a power shell script.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 47:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But ultimately, when some rule fail, you can trigger that auto remediation and then this SSM document will go and fix that problem.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 48:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now, SSM document can do anything.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 49:
- Concepts: Audit Logging
- Services: Amazon EC2
- Key Insights: You can make an API call through an SSM document which then ultimately fix that security group if somebody accidentally opens port 80 or if there is an EC2 instance which is using an AMI which is not approved AMI, then you could write an action like delete that EC2 instance all together.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 50:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So all that can be done using auto remediation or manual remediation in AWS config.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 51:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So if you look at any compliance of a resource over time, AWS config will give you that view.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 52:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Like at certain day, the resource was compliant but then it became non-compliant and then again it became compliant because some rule was triggered and then auto remediation was triggered.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 53:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Similarly, you can view the configuration of resource over the time.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 54:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you can really see at what time, what changed and who did that change.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 55:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: All that can be captured into the AWS conflict dashboard itself.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 56:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is a screenshot for AWS security group changes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 57:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Likewise, you can monitor all your resources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 58:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: AWS CloudTrail
- Key Insights: Now you can also see AWS CloudTrail API which made that change so that you can trace on who was the user who made that API call.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 59:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So in summary, AWS config is a service which helps you record the configuration and changes over the time.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 60:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And remember that AWS config does not prevent actions from happening.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 61:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: That means it doesn't say that do not allow adding port 80 to the security group, it can't do that because it's a reactive action, right?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 62:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: After somebody adds that rule, then AWS config rule can be triggered or it can be set in a periodic manner.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 63:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then it'll detect that your security group is deviating from the defined rule.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 64:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So config can't really help prevent actions.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 65:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Now, the questions that can be solved by AWS config, here are a few examples.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 66:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Is there unrestricted access to my security group?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 67:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Are my buckets public?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 68:
- Concepts: Audit Logging
- Services: AWS Config, Elastic Load Balancing
- Key Insights: Or has my ALB configuration changed over time?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 69:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: If these are the questions that you want to answer, then AWS config should be used.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 70:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can also write custom rules that we have seen.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 71:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: And for that, you would have to define the lambda functions.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 72:
- Concepts: Observability Operational Context
- Services: Amazon EBS, Amazon EC2
- Key Insights: Like for example, evaluate if each EBS disc is of type gp2 or evaluate if EC2 instance is t2micro, if instance is not t2micro maybe or to terminate that instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 73:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now finally, AWS conflict is a regional service.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 74:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: That means it is enabled for the resources in a given region, but then all the data it collects around the state of those resources can be aggregated across multiple region and multiple accounts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 75:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And that becomes inventory of your AWS resources state basically.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 76:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it's kind of CMDB you can call.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 77:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: If you heard that term, configuration management database of your infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 78:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it about AWS conflict service.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 79:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: And this is again, a good tool to experiment with, it's more aligned to the DevOps again, but important if you want to really track changes, what's happening into your AWS networking space as well, right?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 80:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: If somebody changes some roots into your root table, then you can go back to the AWS conflict service and check what happened at what time and who did that.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 81:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So that's about AWS config.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 82:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/22_AWS Networking Management & Governance/249_AWS CloudTrail.txt

Line 1:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Hello and welcome to this lecture, AWS CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I know sometimes these services could be confusing and you might not able to clearly tell what service does what.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: AWS CloudFormation
- Key Insights: But understand that AWS CloudFormation is a service which helps you create the infrastructure in automated manner.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then AWS Service Catalog, it's just a wrapper over that.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And then AWS Config is the service which helps you track the changes which happens to your resources over the time.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And how Config does it?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It basically gets the data from lot of internal AWS Services, and AWS Cloud release one of those service.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So what is CloudTrail?
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 9:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: It provides audit for your AWS Account activities by logging in all API calls.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And it is enabled by default.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Now, this is advisable as well that you should have CloudTrail enabled so that you can audit your account.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Investigation and forensic signal.

Line 12:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: If something happens to your account, maybe someone terminate some machines or someone is trying to get hold of your resources, then you can go to the CloudTrail and see what's happening.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 13:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: Now you can get also the history of API calls made within your AWS Account.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: So these API calls could be made through console, or SDK, or CLI, or from another AWS Service.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: All these events are kept in AWS CloudTrail for 90 days by default.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 16:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon S3
- Key Insights: And then you can persist those further into the CloudWatch or S3.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Now, if resource is deleted in AWS, look at the CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: That's the message, basically.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: That's the single source of truth for you to find out what happened, when it happened, and who did that?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Audit Logging
- Services: AWS CloudTrail, AWS Config
- Key Insights: Now, if you followed the AWS Config lecture, it also does similar thing, but then Config is an abstraction over AWS CloudTrail and few other services.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 21:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Now, AWS CloudTrail are regional by default, but then you could also enable the global-level CloudTrail event such that, you know, AWS IAM is a global service.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It is not per region.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: But then CloudTrail also can log all the API calls made to the AWS IAM service.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 24:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: And if you want to collect the CloudTrail from different regions into a single S3 bucket, you can also do that.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And we'll just see that shortly.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is how it works.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You would have AWS Accounts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then inside Account, you use multiple AWS Regions.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And then you can create CloudTrail Trail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 30:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS CloudTrail, Amazon CloudWatch, Amazon S3
- Key Insights: Now CloudTrail trail is a sequence of all these events which can then persisted into maybe S3 or maybe in CloudWatch for, you know, long-term archival.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 31:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: Now, you can create a trail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 32:
- Concepts: Audit Logging
- Services: Amazon S3
- Key Insights: You can create a trail and all that trail can go to a single S3 bucket, or it can go to an individual S3 bucket per region.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 33:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: Now choice is up to you, but the CloudTrail trail can be collected into a one single S3 bucket.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now, why do we do that?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Log Analytics and Investigation
- Services: Amazon Athena, Amazon S3
- Key Insights: Basically, once you have these events in S3 bucket, then you can apply some logic or you can query that data using AWS Athena service, for example.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 36:
- Concepts: Log Analytics and Investigation
- Services: Amazon Athena, Amazon S3
- Key Insights: Now, Athena is an SQL interface to S3.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Log Analytics and Investigation
- Services: Amazon Athena
- Key Insights: If your data is in CSV format, then Athena can query that data.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 38:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And then you can get a deeper insights about your data.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 39:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: Similarly, this data can also be sent to elastic search or open search, and then you can run your searches on top of that data, or this can go to a third-party logging tool or some SIM system for audit purpose.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 40:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And alternatively, if you have an event in CloudWatch, you can write a CloudWatch filter, which looks at those logs and maybe some interesting event you got, you can create an alarm on top of that.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Event-driven remediation signal.

Line 41:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then you can send an SMS notification via SMS or email, whatever you prefer.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS CloudTrail, Amazon CloudWatch, Amazon S3
- Key Insights: So ultimately you have full control because this CloudTrail logs, you get in CloudWatch or S3, and then you decide what to do of these logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 43:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: I have seen cases where maybe customer wants to collect all these logs from all accounts at one place and then provide access to the audit team to look at if they see any suspicious activity into their AWS Account.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 44:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So this can be very well done with CloudTrail trails.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 45:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: This is a sample event.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 46:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can see I've masked some of the data.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 47:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: But if you see CloudTrail event, it shows you who was the user, what time this event occurred, what action was triggered, and then what resource it was triggered on.
- Hidden/Implicit Meaning: Investigation and forensic signal; Event-driven remediation signal.

Line 48:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And there are a lot of other information data points as well, but at bare minimum, this is the information you would look for and then you can find out what happened at what time.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 49:
- Concepts: Audit Logging, Network Telemetry
- Services: AWS CloudTrail
- Key Insights: So essentially that is a CloudTrail, very important service with respect to security and audit purpose, and all the actions with respect to the networking where you are creating the VPCs, or subnets, or whatever, right?
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 50:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: All the actions are captured in AWS CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 51:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it about this lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 52:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you understand well the difference between all the management and governance services that we talked about in this section.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 53:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: And we just touched upon all this services at a very high level, because for AWS Networking Specialty Certification, these are not mandatory, but just good to know.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 54:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this section.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 55:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Thanks for watching.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/AWS Speciality/Security/03_Domain 1 - Detection/030_[SAA] CloudTrail.txt

Line 1:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Now let's talk about CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 2:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So CloudTrail is a way to get governance compliance and audit for your AWS Accounts.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 3:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And CloudTrail is enabled by default.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 4:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: This will allow you to get a history of all the events and API Calls made within your AWS Accounts, by the console by the SDK, the CLI other services on AWS and all these logs will be appearing in CloudTrail.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 5:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS CloudTrail, Amazon CloudWatch, Amazon S3
- Key Insights: Now, what you can do is that you can also put these logs from CloudTrail into CloudWatch Logs or Amazon S3.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 6:
- Concepts: Audit Logging
- Services: Amazon S3
- Key Insights: And you can create a trail to be applied to all regions or a single region, if you wanted to accumulate all these history of events accumulated across all regions into one specific, for example, S3 buckets.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 7:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And when we use CloudTrail, for example, we'll say someone went ahead and deleted something in AWS.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 8:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: For example, say that an EC2 instance was being terminated and you wanna figure out who did it?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Well, the answer is to look into CloudTrail because CloudTrail will have that API Call in it and will be able to get to the bottom of it and understand who did what and when.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 10:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So to summarize CloudTrail is in the middle and the actions of the SDK, the CLI, or the console or even IAM Users and IAM Roles or other services will be in the CloudTrail console.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 11:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: We can look in it to inspect and audit what happened.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 12:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon S3
- Key Insights: And if you want to have all the events for more than 90 days, then we can send them into CloudWatch Logs or we can send them into an S3 buckets.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 13:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So let me dive a little bit deeper for CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 14:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So we have three kinds of events that you can see in CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The first one is called the Management Events and these represents operations that are performed on resources in your AWS Accounts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: For example, whenever someone configures security, they will use the API Call called IAM AttachRolePolicy.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And this will appear in CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: If you create a subnet, this will appear as well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: If you set up logging, this will appear by default.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Anything that modifies your resources or your iOS accounts will appear in CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 21:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And by default, trails are configured to log Management Events no matter what.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can separate two kind of Management Events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You have the Read Events that don't modify resources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: For example, someone is listing all the users in IAM or listing all the EC2 instances in EC2, these kind of things.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can separate them from Write Events that may modify resources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: Amazon DynamoDB
- Key Insights: For example, someone deletes or tries to delete a DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And obviously the Write Events have probably a lot more importance because they can wreck damages into your AWS infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Whereas the Read Events is just to get information which are still very important, but maybe less destructive.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then you have Data Events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So they're separate and by default Data Events as are not logged because they're high volume operations.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So what are Data Events?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: Well, you have Amazon S3 object level activity for example, GetObject, DeleteObject, PutObject.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: And as you can see, these can be happening a lot on an S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so this is why they're not logged by default and you have the option to separate again Read and Write Events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So a Read Event will be a GetObject whereas a Right Event would be a DeleteObject or a PutObject.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Audit Logging
- Services: AWS CloudTrail, AWS Lambda
- Key Insights: Another kind of event you can have in a CloudTrail are AWS Lambda function execution activities.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 37:
- Concepts: Log Analytics and Investigation
- Services: AWS Lambda
- Key Insights: So whenever someone uses the Invoke API so you can get insights about how many times your Lambda functions are being evoked.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry and visibility signal.

Line 38:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: And again, this could be really high volumes, if your Lambda functions are executed a lot.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: And the third kind of events in CloudTrail are called CloudTrail Insights Events.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 40:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: And so I will talk to you about CloudTrail Insights in a bit more details in the next slide.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 41:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: So now let's talk about CloudTrail Insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 42:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So when we have so many Management Events across all types of services and so many APIs happening very quickly in your accounts, it can be quite difficult to understand what looks odd, what looks unusual and what doesn't.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: And so this is where CloudTrail Insights comes in.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 44:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: So with CloudTrail Insights and you have to enable it and you have to pay for it, it will analyze your events and try to detect unusual activity in your accounts.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 45:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, in accurate resource provisioning, hitting service limits, burst of AWS IAM actions, gaps in periodic maintenance activity.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 46:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So the way it works is that CloudTrail will analyze what normal management activities look like to create the baseline and then it will continuously analyze anything that is the right type of event.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 47:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So whenever something is changed or try to be changed to detect unusual patterns.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 48:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: So very simply the Management Events are going to be continuously analyzed by CloudTrail Insights which will generate Insights Event in case something is detected.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 49:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And so these anomalies, so these Insight Events will appear in the CloudTrail console.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 50:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: They will also be sent to Amazon industry if you want to, and an EventBridge Event.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 51:
- Concepts: Audit Logging, Log Analytics and Investigation, Operational Monitoring
- Services: AWS CloudTrail, Amazon CloudWatch
- Key Insights: So in CloudWatch event is going to be generated in case you need to automate on top of these CloudTrail Insights, for example, to send an email.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 52:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: So this is the idea behind CloudTrail Insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 53:
- Concepts: Audit Logging, Retention and Forensics
- Services: AWS CloudTrail
- Key Insights: Finally, let's talk about CloudTrail Event Retention.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 54:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon RDS
- Key Insights: So events by default are stored for 90 days in CloudTrail and then afterwards they're deleted, but sometimes you may want to have events for longer in case you want to go back to something that happened maybe a year ago for audited purposes.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 55:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: And so to keep events beyond this period, what you have to do is that you have to log them to S3.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 56:
- Concepts: Log Analytics and Investigation
- Services: Amazon Athena, Amazon S3
- Key Insights: So send them to S3, and then you would use Athena to analyze them.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 57:
- Concepts: Audit Logging, Log Analytics and Investigation, Retention and Forensics
- Services: AWS CloudTrail
- Key Insights: So very simply all your Management Events, your Data Events and your Insights Events are going to go into CloudTrail for 90 days, retention period.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 58:
- Concepts: Retention and Forensics
- Services: Amazon S3
- Key Insights: And then you would log those into your S3 buckets for long-term retention.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 59:
- Concepts: Log Analytics and Investigation
- Services: Amazon Athena, Amazon S3
- Key Insights: And when you're ready to analyze them, you would use the Athena service, which is a serverless service to query data in S3 to find the events Okay I hope you like this lecture, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Investigation and forensic signal.

### File: outputs/AWS/AWS Speciality/Security/03_Domain 1 - Detection/031_[CCP_SAA_DVA_SOA] CloudTrail Hands On.txt

Line 1:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So let's have a look at CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 2:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And CloudTrail is a service to intercept any API calls or user activity within your accounts.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so here on here on the left hand side panel, we can have a look at the event history and this is the event history for the last 90 days of management events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: So you can see all the API calls that are being made over time in this account.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it doesn't have to be very interesting, okay, but all of them will be here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So what I wanna do for example, is that I want to look in my EC2 console, and I created a demo instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And what I'm going to do is that I'm going to terminate this instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I do right click, terminate, and now the instance is being terminated.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And what I'm going to do is I'm going to check whether or not this event happens and appears within CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to wait about five minutes and get back to you.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: And so I just refreshed my pages, and as you can see, I ran the terminate instances, API call.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And we can see what's the event source.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So it's EC2 from where it was done, the access key that was used, the region that was used, and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And we can get the whole event right here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So that's the full power of CloudTrail is that we can see all the events really happening from within CloudTrail directly in this UI.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this is a short introduction at the practitioner level, but this is enough for you to get started and to answer questions at the exam.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/AWS Speciality/Security/03_Domain 1 - Detection/032_CloudTrail - Data Lake.txt

Line 1:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So, now let's talk about CloudTrail Lake.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 2:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So, it's a managed data lake that will let you aggregate, store and query events, and all these are stored in a central data store.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, what events do we have?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail, AWS Config
- Key Insights: Well, we have CloudTrail Events, we have CloudTrail Insights Events, we have AWS Config Configuration Items, we have AWS Audit Manager and 3rd Party Events.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, all these are going to be stored in one central place.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And the cool thing about it is that you can query your data using the SQL query language.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 7:
- Concepts: Retention and Forensics
- Services: (none explicit)
- Key Insights: The store is immutable, that means you can't change anything, can't remove it, and you have retention up to 10 years of data in there.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can store events from multiple accounts and regions through AWS Organizations, and you can attach a Resource-based Policy to your Data Store.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: Finally, you can also have a feature to make sure that the query results you have have not been altered.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 10:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: It's called the Query Results Validation within CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 11:
- Concepts: Operational Monitoring
- Services: Amazon RDS
- Key Insights: On top of this data lake, you can also build dashboards.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS CloudTrail, Amazon RDS
- Key Insights: So, these are dashboards directly from within the CloudTrail Lake console, and you have, for example, different kinds of dashboards.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 13:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS CloudTrail, Amazon RDS
- Key Insights: You have the ones from AWS, no setup, no SQL experience needed, or you can use AWS Managed Dashboards or create your own Custom Dashboards within CloudTrail Lake.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 14:
- Concepts: Audit Logging, Operational Monitoring
- Services: (none explicit)
- Key Insights: For example, you could track the deletion of trails, you can get access denied errors in a dashboard and so on.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 15:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So, all these are now features of CloudTrail and all these are done within CloudTrail Lake.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/AWS Speciality/Security/03_Domain 1 - Detection/033_[SAA_DVA_SOA] CloudTrail - EventBridge Integration.txt

Line 1:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: A very important cultural integration you need to know about is the one with Amazon EventBridge to intercept any API calls.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 2:
- Concepts: Audit Logging
- Services: Amazon DynamoDB
- Key Insights: So let's say you wanted to receive an SNS notification, anytime a user would delete a table in DynamoDB by using the DeleteTable API Call.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So what happens that whenever we do an API call in AWS, as you know, the API call itself is going to be logged in CloudTrail.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Investigation and forensic signal.

Line 4:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: That's for any API call.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: But then all these API calls will end up as events as well in Amazon EventBridge.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 6:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: And so we can look for that very specific delete table API call, and create a rule out of it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this rule will have a destination the destination being Amazon SNS and therefore, we can create alerts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: AWS CloudTrail, Amazon EventBridge
- Key Insights: So let me give you a few more examples on how you can integrate Amazon Eventbridge and CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal; Event-driven remediation signal.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, say, you wanted to be notified whenever a user was assuming a role in your accounts.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So the AssumeRole is an API in the IAM service and therefore, is going to be logged by CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 11:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: And then using EventBridge integration, we can trigger a message into an SNS topic.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 12:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: Similarly, we can also intercept API calls that, for example, change the Security Group inbound rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Audit Logging
- Services: Amazon EC2
- Key Insights: So the Security Group call is called AuthorizeSecurityGroupIngress, and it's an EC2 API call.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: AWS CloudTrail, Amazon EventBridge
- Key Insights: So these are going to be logged again by CloudTrail and then they will appear in EventBridge and then we can trigger a notification in SNS.
- Hidden/Implicit Meaning: Investigation and forensic signal; Event-driven remediation signal.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, the possibilities are endless, but now you have a few ideas of how the integration can be leveraged.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/AWS Speciality/Security/03_Domain 1 - Detection/034_[SOA] CloudTrail for SysOps.txt

Line 1:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So here are a few things you need to know for CloudTrail going into the exam.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The first one is that you can have a log file integrity validation.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: So when you do API calls within AWS, they're going to be logged by CloudTrail and you can have these logs being sent into Amazon S3, okay, every one hour.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But, you can also create what's called a digest file.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this is a file that will reference all the log files from the last hour and will contain a hash of each.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: AWS SAM, Amazon S3
- Key Insights: And this is going to be stored in the same S3 buckets as your log files, but within a different folder.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that, this is going to reference all of them, okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this will help you determine whether or not a log file was been tampered with.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So either modified or deleted after CloudTrail delivered it.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So if the log file hash corresponds to the digest file hash, then you know for sure that the log file has not been modified and you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is very helpful for compliance purposes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The hash is using the SHA-256 algorithm, okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: And then the idea is that you still want to protect your S3 buckets using a bucket policy, using versioning, using MFA Delete protection, encryption, and object lock if you wanted to make sure that all these files within your S3 buckets from CloudTrail are kept all along this time.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: But if you want to show from a compliance perspective that these files are not modified with, you would use a digest file from CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 17:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: Finally, you should protect CloudTrail using IAM if you want to make sure that CloudTrail keeps on delivering these log files into Amazon S3.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Investigation and forensic signal.

Line 18:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: AWS CloudTrail, Amazon EventBridge
- Key Insights: You can also integrate CloudTrail with EventBridge.
- Hidden/Implicit Meaning: Investigation and forensic signal; Event-driven remediation signal.

Line 19:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: AWS CloudTrail, Amazon EventBridge
- Key Insights: So CloudTrail can trigger EventBridge for any kind of API calls made within your AWS accounts.
- Hidden/Implicit Meaning: Investigation and forensic signal; Event-driven remediation signal.

Line 20:
- Concepts: Distributed Tracing and Events
- Services: AWS Lambda, Amazon EventBridge
- Key Insights: And then from EventBridge, you can do any kind of integration you want using Lambda, SNS, SQS, and so on.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 21:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: AWS CloudTrail, Amazon EventBridge
- Key Insights: So if you want it to react to any API call, you know, not even something that's covered by EventBridge, but you know that will appear in CloudTrail, then you would define an EventBridge integration with CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal; Event-driven remediation signal.

Line 22:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: But CloudTrail is not real-time, okay?
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 23:
- Concepts: Audit Logging
- Services: Amazon S3
- Key Insights: The events may be delivered within 15 minutes of an API call and then the events in log files will also be delivered within S3 within 5 minutes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: AWS CloudTrail, Amazon EventBridge
- Key Insights: So this is not a real-time automation on top of API calls, but this is for you a way to get some kind of integration on top of any API calls made within CloudTrail when it is delivered into EventBridge.
- Hidden/Implicit Meaning: Investigation and forensic signal; Event-driven remediation signal.

Line 26:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Finally, you can have organization trails, so, you can setup CloudTrail at the organization level.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you have a management accounts and many different member accounts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: And so your CloudTrail at your org level is going to log events for all of API calls for all your member accounts into a target S3 buckets that is organization wide.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 29:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this is very handy for account managements.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Audit Logging
- Services: AWS SAM
- Key Insights: So all the events will be logged and this is going to give you for both the management and the member accounts, and the trail name will be the same for every accounts in AWS.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 32:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: And the member accounts cannot remove or modify the organization trail which is good for compliance.
- Hidden/Implicit Meaning: Constraint or limitation signal; Investigation and forensic signal.

Line 33:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: They can only view that it exists.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 34:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So that's it for all the additional stuff you need to know on CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/AWS Speciality/Security/03_Domain 1 - Detection/036_CloudTrail - Integration with Athena.txt

Line 1:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail, Amazon Athena
- Key Insights: So here's a quick lecture, but it is possible to integrate CloudTrail with Athena.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 2:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail, Amazon Athena, Amazon S3
- Key Insights: So the idea is that you're going to use Athena directly to query CloudTrail logs stored in Amazon S3, for example, to analyze activity for security and compliance.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 3:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail, Amazon Athena, Amazon S3
- Key Insights: So the idea is that the Athena table you want can be directly created from the CloudTrail Console, and then you specify in which S3 bucket location you want your logs to be stored.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 4:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail, Amazon Athena, Amazon S3
- Key Insights: So once you have the event history, you create the filter you want, then you click on Create Athena Table, and then you specify the S3 bucket and you will be able to query all your CloudTrail data within Athena.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it, that was short, but I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/226_[SAA_SOA] AWS Config.txt

Line 1:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Okay, let's have a look at AWS Config.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So Config is a service that allows you to get auditing and record compliance of your resources in AWS, based on some rules that you're going to set, you can also record Configuration and their changes over time to quickly be able to roll back and to figure out what happened in your infrastructure if you need to.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 3:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So some questions that can be solved by Config are, is there an unrestricted SSH access to my security groups?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Or do my buckets have anybody public access?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Audit Logging
- Services: AWS Config, Elastic Load Balancing
- Key Insights: Or is there an ALB configuration that has changed over time?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then based on these rules being compliant or not, you can receive alerts or SNS notifications for any changes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS Config, Amazon Athena
- Key Insights: Config is a per region service, so you need to configure it for all the regions if you need to, and you can aggregate the data across regions and accounts to centralize it into one place, you can also can store the configuration of all your resources into Amazon history to be later analyzed, for example, by serverless query engine, such as Athena.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 8:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So what types of rules go into Config?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Well, you can have AWS managed config rules, and there are over 75 rules that you can use, or you can create your own config rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: In this case, you need to define that rule yourself.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: We're using a Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: Amazon EBS
- Key Insights: For example, you can evaluate if each EBS disk is going to be of type gp2 or if each two instance in your development accounts is of type t2.micro.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Some rules can be evaluated or triggered whenever a configuration is going to change.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven remediation signal.

Line 14:
- Concepts: Audit Logging
- Services: AWS Config, Amazon EBS
- Key Insights: So whenever, for example, you have a new configuration of your EBS disc, please evaluate the type of your EBS disk, or you can also have the rule to be evaluated at regular time intervals.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Observability Operational Context
- Services: Amazon EBS
- Key Insights: For example, every two hours, please make sure that all my EBS discs are of type gp2.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Now, Config Rules are just for compliance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: They do not prevent actions from happening.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This is not a denied action on anything.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It doesn't replace security mechanisms such as IAM.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Okay, but what it does give you is a overview of your configuration and the compliance of your resources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Now there's no future for config.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It can be quite expensive very quickly.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: You're going to pay 0.003 cents per configuration, item recorded per region and 0.001 cents per config rule evaluation per region.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now for the company resource, you're going to be able to view the compliance of a resource over time.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, the security group has been non-compliance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Then you can view the config resource configuration over time, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: You can see when the change and who changed it and so on, and you can link it to CloudTrail to view the API calls made for that resource.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you can get a full picture of everything that's happening.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Now, although you cannot deny any action from happening from within the config, you can do remediations of your non-compliant resources using an SSM Automation Documents.
- Hidden/Implicit Meaning: Constraint or limitation signal; Event-driven remediation signal.

Line 30:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So the idea is, for example, you are monitoring whether or not your IAM access keys have expired.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, they are older than 90 days.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: In which case you want to mark them as non-compliant.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this will not prevent them from not being compliant, but you can trigger whenever a resource is not compliant, a remediation action.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven remediation signal.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, there's an SSM document named RevokeUnusedIAMUserCredentials, okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Maybe you want to use this one and then is going to be applied to whatever resource you have, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And in this instance, it's going to deactivate your IAM access keys.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that's either using either using AWS-Managed Documents or creating your own automation documents, you can have remediations of your non-compliant resources, okay?
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 38:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: And if you want it to and go all the way through with the scripting, you could create a document that will invoke a Lambda function and you're free to do whatever you want there.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Finally, your remediation may have retries.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 40:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So in case the resource is still non-compliance after an auto remediation, it may retry for example, up to five times.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 41:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So lastly, what about notifications?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: Well, we can use if EventBridge to trigger notifications, whenever our resources are not compliant.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven remediation signal.

Line 43:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So, for example, we monitor our security group, it becomes not compliance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 44:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: Then we can trigger an event in EventBridge, and then pass it on to whatever resource you wants.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 45:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Or you can also pass on all the changes and all the compliance that notifications of your resources to SNS from Config.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 46:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS Config
- Key Insights: So one configuration item, and then if you want it to just filter for only for some events, you could use an SNS filtering to have a filtered SNS topic, and then you can send it these notifications, for example, to an admin email or to a slack channel and so on to get all these notifications in one place.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 47:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So that's it for a Config.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 48:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and it will see you in the next lecture for some hands-on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/227_[SAA_SOA] AWS Config - Hands On.txt

Line 1:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So let's go into the config service and start to configure it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we are in it and I'm going to click on get started to start recording some settings.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we're going to record all the resources supported in this region, but if you wanted to, you can record only specific resource types.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: In which case you can find resource categories and then resource types on the right hand side.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But because I want to show you all the resources I can record, I'm going to click on this.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And on top of it, you can include global resources, such as IAM users, group roles and customer managed policies.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Just be aware that again, config is not a part of the feature here, so the more resources you record, the more money you going to pay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so I'm doing this to show you everything to you, but if you don't want to pay any money from this course, please do not follow on with this hands-on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we're going to record our resources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: We're going to include global resources and then to record all the resource configuration, we need to create a config service linked role.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we're going to click on that.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: Then all this information is going to be delivered into an Amazon S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So once you create a bucket, and the bucket name is already entered for me, so that's perfect.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then we can have a prefix if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then finally, this is where the data is going to be stored.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And in terms of notification, we can stream all the configuration changes and notifications into an Amazon SNS topic if we wanted to, and again, remember this is for everything into one topic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But I don't wanna do this, so I will leave this unticked.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I click on next and next we find some AWS Managed Rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we have a lot, as you can see, and I want to define them later, so I'm going to skip that part, but you can have a look at them if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So click on next, and we can review the configuration.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So yes, we want to record all resources, including global resources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: And we're going to deliver this into an S3 bucket and currently we haven't defined any role.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's click on confirm.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Now the role is being created, the bucket is created and then config is going to be started.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Now it's going to take a bit of time for config to have a look at everything within your account and look at the configuration.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to post the video until this is done.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, so my resources are still being discovered, but I can go on the left hand side to resources, and actually we will see that some resources have already been discovered in my account as you can see.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Some route tables, sub-net, VPC and so on, have been discovered.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So what I can do is that I can look at resource type and I can look for example, for EC2 security groups and find that yes, my security groups are here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And currently, they do not have a compliance status because we haven't defined any kind of rule on top of them.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So let's have a look for example, at one of these EC2 security group.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And from within the group, we can have a look at the rules applied, so currently none.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And we could look at the configuration of the security group itself, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We can also look at the resource timeline.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And the resource timeline will give you all the events related to that resource.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So there's a configuration change, which is the initial right here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: There's some CloudTrail events also that were related to the security group.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 38:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: For example, authorizeSecurityGroupingress rules, CreateLaunchConfiguration and CreateSecurityGroup, this kinda thing.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And we can go to CloudTrail to find these events.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 40:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So what I want to do is to figure out whether or not my security groups are compliant or not.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 41:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so for this, we're gonna go into rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: And rules is going to be able to give us the option to add a rule, and we can either add an AWS managed rule or create our own custom rule with a lambda function.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So to keep it simple, I'm going to add an AWS managed rule and let's have a look at rules that are accessible to us.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 44:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So one that I like is for example, approved-amis-by-id.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 45:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is to check whether running instances are in your account using the specified AMIs.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 46:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So if I click on it, for example, and click on next, which is not related to security groups, but I just wanna show you one rule.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 47:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So this one will check whether or not your EC2 running instances, will be using the specified AMIs.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 48:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so you can trigger this based on whenever a resource that's changed.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven remediation signal.

Line 49:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And then you can also specify all the EC2 instances in here, and we have to specify a parameter for that rule, which is the list of all the AMI IDs are approved within their account and this is going to be used by the rules and inputs to figure out whether or not EC2 instance is compliant.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 50:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: Because we do not have many EC2 instances yet, we're not going to use that rule.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 51:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So instead we're going to use a managed rule, but this time for SSH.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 52:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this is going to be applied to our security groups.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 53:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we want to make sure that we're not allowing any incoming SSH traffic from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 54:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So we click on next, this is called the restricted SSH and the trigger is going to be on our resource whenever the configuration changes, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven remediation signal.

Line 55:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But as we can see, if we define a different kind of rule, we could have it to be run periodically as well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 56:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, okay, we're once.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 57:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Whenever our security group resource will change, please evaluate that rule.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 58:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: This is applying only to AWS EC2 security groups, and we have no parameters for that row.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 59:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Click on next and click on add rule.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 60:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And now we have defined this first rule, so let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 61:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So currently it's not evaluated and we don't have any remediation.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 62:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's wait a little bit until this is done.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 63:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I just refreshed my page and as you can see, an evaluation was done automatically.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 64:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And if we look at this rule, we have seven security groups, no six security groups right here, which are not compliant.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 65:
- Concepts: Log Analytics and Investigation
- Services: Amazon EC2
- Key Insights: So if we go into our resources on the left hand side, and we're going to filter again by EC2 security group and have a look at all our resources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 66:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: As we can see, some of them are compliant and some of them are not compliant.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 67:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So if we look at the compliant and the non compliant one let's see the difference.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 68:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this one is compliant, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 69:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And a rule was applied to it as we can see it says compliant.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 70:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So if I go and manage a resource and look at the inbound rules right here, as we can see, we only have one inbound rule, which doesn't have a port, so there's no port 22 in here.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 71:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is why this is working.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 72:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But if I look at a non-compliant resource, for example, this launch-wizard-3 I believe it was not compliant, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 73:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And you click on manage resource, we are taken again straight into the console for security groups.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 74:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And if you look at the inbound rule, as we can see, port 22 on IPv4 from anywhere is being open.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 75:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is a big problem.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 76:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So what I can do instead is delete this rule right here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 77:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And if I delete this rule, this will retrigger an evaluation of my resource, which should make it compliant again.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven remediation signal.

Line 78:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's delete it and save my rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 79:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So then security group has been modified, and so let me close this.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 80:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is my non-compliant security group, and I can go into resource timeline to have a look.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 81:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And so within the resource timeline, as we can see the configuration change happens, and then the rule was run and it was not compliant.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 82:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Now I did change yet again, the configuration, so we're going to have to wait a little bit of time for the configuration change to happen right here, which should trigger a rule compliance and then hopefully now a resource will be compliant.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven remediation signal.

Line 83:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let me pause a little bit and get back to you.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 84:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So I have just refreshed my page, and as we can see in here on July 12th, we have after the rule compliance, a CloudTrail event that happened because I did revoke a security group ingress rule because I deleted an ingress rule, that's true.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 85:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Then it recorded as well, a configuration change saying hey, this rule that had the port 22 in it got deleted so from and to is empty because it got deleted.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 86:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And then config, they run my rule again, named restricted SSH.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 87:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And now my resource is compliant.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 88:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so that means that yes, I have fixed the compliance of my resource.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 89:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I can go back into here and we can have a look at another security group, for example, this one.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 90:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And under the rule here, you can do action and then manage remediation.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 91:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is to remediate this for this rule, so if you look at this rule, we have manage remediation and we can have manual remediation or automatic remediation.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 92:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: In which case, you can specify your number of retries and a number of seconds for the retries to happen, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 93:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we can select a manual remediation for example, and then you need to choose a remediation action.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 94:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So these are SSM automation documents that we can select.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 95:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So these are defined by AWS, but we can also create our own.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 96:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And for example, well, we could delete a snapshot or delete an image if it's not compliant to whatever we wanted.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 97:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it's really up to you to define the action you want.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 98:
- Concepts: Observability Operational Context
- Services: Amazon EBS
- Key Insights: So for example, you could say, hey attach EBS volume and here's the right limit based on the non compliant resources.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 99:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The resource ID parameters, if you need them to be given to the remediation and so on.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 100:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now this doesn't make any sense, this remediation action, right?
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 101:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: We need to define a remediation action that makes sense for our rule, but as you can see, we can set up automatic or manual remediation and configure it and so on, and also best in some parameters around the document itself.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 102:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So that's it for config, I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 103:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then aggregators is to integrate across multiple accounts, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 104:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then under settings, you can have a look at the settings we defined from before, including, for example, sending all the data into an SNS topic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 105:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Or you can set up Amazon CloudWatch Event rules, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 106:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: From the CloudWatch consoles or from the Events rules console to intercept only specific non-compliant events for some specific rules.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 107:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this section, I hope you liked it, And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/228_[SOA] AWS Config - Remediation Examples.txt

Line 1:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Okay, so now let's see some examples of how to use Config and remediations.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 2:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So let's say we want to disable incoming SSH traffic on all our EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: Say we have an EC2 instance with Port:22 open.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: We define a Config rule and then the resource itself, the security group will be marked as non-compliant.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: From then, we know we can invoke an SSM automation.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 6:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So we're going to trigger it from Config and we're going to use the one provided by AWS out of the box called the AWS-DisableIncomingSSHOnPort22, which is going to disable the port on the security group.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 7:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And this is done all out of the box from Config.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Here's another example.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: We can enable logging on an S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS Config, Amazon S3
- Key Insights: So again, Config will have a rule to monitor the non-compliant S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Audit Logging
- Services: AWS Config, Amazon S3
- Key Insights: And if one is non-compliant, we'll trigger an SSM automation again out of the box named AWS-ConfigureS3BucketLogging, in which we're going to enable logging on the bucket and we'll be good to go.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/229_[SOA] AWS Config - Aggregators.txt

Line 1:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So a question that has come up in the exam is around AWS Config aggregators, so what is it?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Well, say you are managing multiple accounts and multiple regions within these accounts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we have Account A, Account B, and they're called "source accounts", why?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Because they all have a deployment of AWS Config.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But you want to aggregate all this information into a central AWS account.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this account is called an aggregator account, and this is only in the aggregator account that you're going to create an aggregator, okay?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: From the aggregator, you're going to get an aggregated view, which is allowing you to see all the compliant and non-compliant resources across all your accounts and all your regions.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that makes a lot of sense, to have this kind of aggregation.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So remember, the aggregator is created in only one central account, they're not created in each individual source accounts.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then this aggregator will aggregate everything that is available in the target accounts, for example, rules, resources, et cetera, across multiple accounts and multiple regions.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And if you are using AWS Organization, then there is no need to do authorization at the individual accounts, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You just create your aggregator in your management account in Organization, and the authorizations will happen automatically.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: But if you're not using AWS Organizations then you would need to create an authorization in an account A to say "Hey, I authorize the AWS accounts aggregator "to collect data," and then you would create a second authorization, obviously in Account B, to do the exact same thing.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Once these authorizations are in place, and this is only, again, if you're not using AWS Organizations, then the aggregator will be able to collect data, to pull data from these targeted accounts and aggregate them.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now the rules management is done at the individual account level, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the aggregator is just here to aggregate data, it's not here to centralize rules, and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: AWS CloudFormation
- Key Insights: So if you want to deploy rules across multiple accounts, the best way to do it, in multiple regions, obviously, the best way to do it would be to use CloudFormation StackSets, which allows you to deploy a CloudFormation Stack across multiple accounts and multiple regions.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I hope this makes sense, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/230_AWS Config - Conformance Packs.txt

Line 1:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now let's talk about conformance packs.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So it's a collection of AWS config rules and remediation actions, and we can deploy it to an account and region or deploy it across multiple accounts through an AWS organization.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 3:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: It's a prebuilt sample pack, or you can create your own custom conformance pack.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: You can include even custom config rules to evaluate whether your resources are compliant within the config rules, and you can designate a delegated administrator to deploy these conformance packs to your AWS organization.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It can be a member account.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So the idea is that in this pack, for example, this one, we're going to define a config rule and who is the owner of this conflict role, for example, it could be AWS or it could be a custom role.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then this role is going to be deployed across all your accounts and all your regions.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this short lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/231_AWS Config - Organizational Rules.txt

Line 1:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about organizational rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So they are rules that you can manage across all your accounts within your organization, so you define the rule at the management accounts or the delegated administrator, and then this rule is deployed to all the member accounts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: So you may say, "Hey, that looks very similar to conformance packs." And you're right, it is the same scope, as in we deploy rules from the management account into many member accounts all across your organization, but it turns out there is a little bit of a difference.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the scope of the organizational rules is only the organizations, whereas Conformance packs works both for many accounts as well as your organization.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: On top of it, the organizational rules are defined at the organization level, and they are one rule only so you can deploy one rule at a time, and you manage them only from your organization accounts.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: The conformance packs will give you access to many rules at a time, so you can deploy many rules, many Lambda functions, many remediation actions, and the compliance of these things will be seen at the account level.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the first rule will be at the organization level and the second one will be for each account level, we'll see whether or not we are compliant.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's the difference, they're very similar, the exam shouldn't ask you the difference between them two but you know that they can come in both cases to deploy rules across your organization.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/232_AWS Config - Use Cases.txt

Line 1:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So let's talk about a few Use Cases for Config that can appear in the exam.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: The first one is to audit IAM policies, and making sure that they are fully compliant, and that they don't give, for example, too much permissions to your users.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 3:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: The second one is to detect whether or not CloudTrail has been disabled, it's very important.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 4:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: You can also detect if EC2 instances are created with unapproved AMIs.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can detect if Security Groups are open to the public.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can detect if Internet Gateways are added to unauthorized VPC, so that your VPC that are supposed to remain private will remain private.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: Amazon EBS, Amazon RDS
- Key Insights: You can detect if your EBS volumes are encrypted or not, and if your RDS databases are made public.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So, let's talk about some automation for AWS Config.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, let's talk about expired IAM Keys.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So with Config, for example, you can define a rule to detect whether or not IAM keys are expired, it's called Access-Keys-Rotated.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Distributed Tracing and Events
- Services: AWS Lambda, Amazon EventBridge
- Key Insights: And in case something is non-compliant, this will trigger Amazon EventBridge, which can in turn invoke a Lambda function to actually rotate these Access Keys, or an SNS topic to notify the users, or even to rotate Access Keys if you wanted to hook your Lambda function to that SNS topic.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 12:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Another option, as you know for Config, is to use Automated Remediations through SSM Automation.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 13:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So in case Config is detected to be non-compliant, we can automatically trigger an SSM Automation, which will, for example, rotate our Access Keys.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 14:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Alright, that's it for Config, I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/235_AWS Monitoring - Section Introduction.txt

Line 1:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: OK so we have our application it's in the cloud.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It's running.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And your manager calls you at 2:00 a.m. and say it's not running anymore.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: What happened?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Well we've deployed her application but we forgot to turn on monitoring.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Monitoring is so important and it will make sure that your applications are running the right way.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Audit Logging, Operational Monitoring
- Services: (none explicit)
- Key Insights: Such as you can see what's happening with the logs with the metrics with tracing and audits who made what's in your AWS infrastructure.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This section is so important because as a developer.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: I never deployed an application in AWS without enabling some kind of monitoring.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: I know you're excited to learn about monitoring!
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Let's go.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/236_Monitoring Overview in AWS.txt

Line 1:
- Concepts: Audit Logging, Operational Monitoring
- Services: (none explicit)
- Key Insights: ï»¿WEBVTT Okay, welcome to this section on monitoring, troubleshooting, and audits.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 2:
- Concepts: Audit Logging, Distributed Tracing and Events, Operational Monitoring
- Services: AWS CloudTrail, AWS X-Ray, Amazon CloudWatch
- Key Insights: We are going to learn about CloudWatch, X-Ray, and CloudTrail and to me it's one of the most exciting section.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 3:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So why is monitoring important?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I think you already know the answer but I like to say it out loud.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We know how to deploy applications.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We have seen how to do it safely, automatically using infrastructure as code, leveraging the best AWS components.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we know how to do deployments.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: What we don't know is that once our applications are deployed, our users don't really care how we did it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: They don't care if we used Elastic Beanstalk, they don't care if we use infrastructure as code.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It's great that we did it, it's an edging prowess, but the users don't care.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The users only care that the application is working.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so what we know to work is, for example, the latency.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Will the application latency increase over time and why?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Outages, you know, if there's an outage, well, our customer experience should not be degraded, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It should still be good, that's why we deploy highly available things.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then if the user contacts the IT departments or complaining, that's really, really bad.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We don't want to be alerted of problems by our users, we kind of want to be able to do troubleshooting and remediation beforehand.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So internally, can we prevent issues before they happen, or if they happen, can we see them before our users?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Can we also monitor performance and cost?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Can we look at trends in terms of how things scale, in terms of patterns of outages?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And, you know, what can we learn and how can we improve?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Thanks to this monitoring.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So to me monitoring is really, really, really important.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Now, in AWS there, CloudWatch.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And CloudWatch allows you to collect metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 26:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: It allows you to collect logs to monitor and analyze the log files.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Events to send notifications when certain things happen in your AWS environment.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And alarms to react in real time to metrics events and even logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Event-driven remediation signal.

Line 29:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: Then we have X-Ray and X-Ray is kind of a new service that is not very popular yet, but I think it is one of the most awesome ones.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so it allows you to troubleshoot your application performance and errors, so we'll see the latency and we'll see the errors just live.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And it allows us to do something really cool called distributed tracing of microservices.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Distributed Tracing and Events
- Services: Amazon DynamoDB, Amazon S3
- Key Insights: So if you have a lot of services doing a lot of things and calling one another, or if you're in track with many AWS components, such as, you know, S3, DynamoDB, et cetera, then you're able to see how your application makes calls and how long they take and you can trace your call all the way through, which is really, really nice.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 33:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS CloudTrail
- Key Insights: CloudTrail is allowing you to do internal monitoring of your API calls being made, and also audit the changes made to AWS resources by your users.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 34:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So overall, these three technologies all together gives you a really solid combination to monitor AWS.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We're going to learn about these in this section.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/237_CloudWatch Metrics.txt

Line 1:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Okay, so we've seen CloudWatch throughout the course, but let's just go and do a quick summary on it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So first CloudWatch metrics, it's going to provide metrics for every service in AWS, and you need to understand what the metric means.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So usually the name of the metric gives you a pretty good indication of what it is.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: For example, CPU Utilization, NetworkIn, and then based on how the metric is behaving, it gives you an idea of how the service is behaving, and you can do some troubleshooting based on this.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So metrics belong to namespaces, and then you have a dimension, which is an attribute of a metric, for example, instance id, environments, et cetera, et cetera, and you can choose up to 30 dimensions per metric.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 6:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon RDS
- Key Insights: Metrics will have timestamps, and you can create CloudWatch dashboards of metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 7:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: So in this course we've seen EC2 metrics for example, and we also seen the EC2 detailed monitoring.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 8:
- Concepts: Operational Monitoring
- Services: Amazon EC2
- Key Insights: So we know that by default EC2 instances will have metrics every five minutes, but if you enable detailed monitoring for a cost, it's additional, then you're going to get data of metrics every one minute.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 9:
- Concepts: Operational Monitoring
- Services: Amazon EC2, Auto Scaling
- Key Insights: And if you enable this, then for example, you're going to be able to react faster to changing metrics for your EC2 instances and it gives you some benefits for your ASG, if you want to scale out and in faster.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 10:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Now, the feature allows you to get 10 detailed monitoring metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And the thing to note is that the Institute memory usage, so your Ram, is not pushed by default and needs to be pushed from the instance as a custom metric.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And we'll have a look at how to push custom metrics very, very soon.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 13:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So when you are in the CloudWatch dashboard on the left hand side, there is metrics and you can find all the metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 14:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And as you can see, we see all the namespaces in here for our metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 15:
- Concepts: Observability Operational Context
- Services: Amazon EBS, Amazon EC2, Amazon EFS, Elastic Load Balancing
- Key Insights: If we have a look, we have based on services, for example, ELB auto-scaling EBS, EC2, EFS and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So a lot of information given you given to you here, so we can click on EC2, And we can have a per instance metric, just to see one metric and I'm going to type credits to see the CPU credit balance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, I will take this instance, which was created a long time ago.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then what I'm going to do is I'm going to choose a custom range, which is going to be a one month to find some data in here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we have the data here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And so the cool thing in CloudWatch metrics is that you can just click and select the time span you want.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 21:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And here we go, we're getting some information around our metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 22:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: As you can see, we get metrics every five minutes here.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 23:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So every data point is every five minutes because detailed monitoring was not enabled for this instance, okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: But if I did enable detailed monitoring, I would get data every one minutes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: (none explicit)
- Key Insights: So this is just the basics of quality metrics and nothing too fancy, but we can definitely filter by time.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 26:
- Concepts: Observability Operational Context
- Services: AWS CloudFormation
- Key Insights: We can view it as a different lines or stacked area or line or number or a pie chart.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: You can add it to a dashboard.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can download as a CSV, you can share it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, So cloud metric is very, very handy.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: (none explicit)
- Key Insights: And you can have a look at all the metrics, you know, based on the region you want, based on the dimension you want, the resource you want, so you can filter everything.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 31:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So that's it for closure metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 32:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/238_CloudWatch Custom Metrics.txt

Line 1:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So all the metrics we've seen so far in this course are metrics taken directly from the inner services that we have enabled by default, but there is a way for you to get custom metrics for CloudWatch, and this is choose, you can define your own custom metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 2:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: For example, you wanted to push the memory usage for the RAM to CloudWatch or the disk base.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: So the number of login user for your application for this, you would use an API call named PutMetricData.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: You can add dimensions or attributes to your segment metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, instance.id, environment.name, whatever you want really.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It's up to you to name it however you want.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then you can specify a metric resolution with a storage resolution, API parameter with two possible values.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So either it's a standard custom metric and you can push a metric every one minute.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So 60 seconds.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Or it can enable very high resolution.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: In which case you can enable to push metrics every one, five, 10, or 30 seconds, okay.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 12:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Something good to know is that with custom metrics, when you push a metric in the past or in the future, this works as well.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is a very important exam point.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon EKS
- Key Insights: So if you are pushing a metric up to two weeks in the past or two hours in the future, you're not going to get an error from CloudWatch, okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This is going to accept your metric as is.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Audit Logging
- Services: AWS Config, Amazon EC2
- Key Insights: And so that means you need to make sure that your EC2 instance time is currently configured.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: If you want the metrics to be synchronized with the actual time from AWS.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's push a custom metric.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And for this, I went to the documentation into CloudWatch, put metric data.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: This is a CLI documentation, and this shows you how to push a metric into CloudWatch.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I'm not going to read the documentation.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can have a look at all the parameters in here, okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But very important timestamp can be specified.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: Amazon EKS
- Key Insights: And so you can specify a timestamp up to two weeks in the past and two hours in the future.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So very, very important.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then you can specify the data, the name of the value of the units, the value, and so on dimensions, as well as the storage resolution, if you want it to get a high resolution metric or a standard resolution, okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So what I'm going to do is just push a very custom example.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Audit Logging, Operational Monitoring
- Services: (none explicit)
- Key Insights: So at the end there's examples, and you can use a metrics of JS file to push a metric like this, if you want it to, and then use this API call, or if you want it to go even quicker, you can just use one API command to specify the value of your metric, the unit, the bytes, as well as instance ID instance type and so on.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 29:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so let me take this command right here, and we're going to open the CloudShell utility to push that metric, Okay, so CloudShell is launched and I'm going to paste the command in and then press enter.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So this is going to push a custom metric into CloudWatch.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now you have to imagine that if this is done from an institute instance with a script, for example, you can push any metric regularly.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Right now I'm just pushing one data point using the CLI into CloudWatch, which is quite empty already, okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Audit Logging, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And if you know, the unified agent for CloudWatch, what it does is that it does use this put metric data API call to push metrics into CloudWatch regularly.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So when this is pushed, we have pushed a new namespace named MyNameSpace.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And so that means that if I go back to my CloudWatch metrics and refresh this, I need to clear my graph.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 36:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then I'm just going to go out of the service.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And going back to the service is going to be easier, then go to all metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 38:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, we have a custom namespace that has been created right here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So all of those before where namespaces credited by AWS, but now we have a namespace created by us.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 40:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: And so in it we have two dimensions instance ID and instance type, and these represents the same instance ID and instance type dimensions that were specified in the command.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 41:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is up to you to define these dimensions, obviously, then you click on it and you can see the instance ID, the instance type and the metric name buffers.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And if I click on it now, we don't see much because, well, we don't have much, but there's one data point in here that has been created, okay, and this is part of my custom metric.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's, it, it's quite easy.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 44:
- Concepts: Audit Logging, Operational Monitoring
- Services: (none explicit)
- Key Insights: You can see how to create custom metrics, very easily using an API call.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 45:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 46:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/239_CloudWatch Logs.txt

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

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/240_CloudWatch Logs - Hands On.txt

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

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/241_CloudWatch Logs - Live Tail - Hands On.txt

Line 1:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So I want to show you a really cool CloudWatch logs feature called Live Tail.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So first let's create a log group and I'll call this one demo log group and then create it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We click on it and then we're going to create a log stream called DemoLogStream.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Let's create it and click on it and then we are in it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we can start tailing.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Here's the button start tailing and what this means, and I will just keep the other one open in the back page.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So we have access to here our log stream, and here we clicked on Live Tail and we are in the Live Tail setting.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So here this is a Live Tail UI and we have filtered on a specific demo log group and then demo log stream as a log stream.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This is optional.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can choose to specify or not a log stream.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: Then you apply your filter and this is going to wait for log events that match your filter.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So that means that as events are being posted into Cloudwatch logs, they are going to appear here in our Live Tail, which could be very helpful for your debugging needs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's do an example.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we're going to go into our demo log stream again, in here, and under actions we're going to create a log event and we'll have hello world so we can create a log event and post it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So now hello world has been posted and if you go into your Live Tail, as you can see it has appeared.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is quite a nice way because if you have log streaming very fast, it can all appear here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then from this we can get more information around when this happened, the group and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then we can click here to get a link into the direct log stream it happened into.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So it's just a very cool, very easy feature to debug your CloudWatch logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 20:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And from a pricing perspective, you only get a few hours a day, so maybe one hour a day of free usage of Live Tail.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So please make sure to cancel and close your lifestyle session so that you don't have any cost, but you have one hour of free every day.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is quite nice.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Alright, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/243_CloudWatch Logs - Metric Filters.txt

Line 1:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So, now let's talk about CloudWatch Logs metric filter.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 2:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So, the idea is that you can have filter expressions on your logs, for example, to find a specific IP inside of a log or to count the number of occurrences of the word error in your logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then you can make a metric out of it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And so it's called a metric filter.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And this metric filter can be used to trigger an alarm.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 6:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So, one thing you should know is that when you create a filter, it does not retroactively filter data.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 7:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So, the metric data is only going to be pushed for events that happen after the filter was created.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: On top of it, you can specify up to three dimensions for the metric filter to create a very interesting metric.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: We have CloudWatch Logs agent installed on an EC2 instance, which is streaming the logs into CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then an actual metric is going to be created out of it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: This is your metric filter.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So, we'll have a real CloudWatch metric based on the filter expression we have selected.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: From there, we can, for example, integrate it with a CloudWatch alarm to say that, "Hey, if we count five times error "in less than a minute in your logs, "you may want to know about it "and be alerted in an SNS topic." So, that's it for metric filters.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Event-driven remediation signal.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/244_CloudWatch Logs - Metric Filters Hands On.txt

Line 1:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So I am in my CloudWatch logs and I want to take the Engine X access logs and I want to create a metric filter on these log streams.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So what I'm going to be looking for is to see if somehow there is error code 400.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I will type 400 as in here, and we can see there's a lot of HTTP/1.11" 400 error codes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So I want to create a metric filter on those and be alerted.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This is just a dummy use case.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So I'm going to create a metric filter I can create from here, or I can go back and also go to metric filters in here and create one.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So I'm going to create a metric filter and then you have to enter a pattern.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now, patterns can be quite complicated.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: There's a whole documentation on the filter and syntax for the pattern, but right now I'm just going to look for 400 and make it extremely simple and then we can send custom log data to test or we can just get stuff directly from my logs and then test the pattern.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 10:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: And the result is that it found 14 matches out of 50 events in the sample logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that means that my pattern.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Very, very simple, is working fine.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: Then I will scroll down and click on next and then I have to give a name to this metric filter.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So I will say MetricFilter400Code.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, then we need to give a metric namespace.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So I'll call it MetricFilters.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And then a metric name, MyDemoFilter and then the metric value.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So whenever a match occurs, so we can say, for example, publish the value number one, okay.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then the default value if no value is published, it's going to be zero.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: I click on next and I create this metric filter.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: (none explicit)
- Key Insights: So now this metric filter has been created and so if I go into my metrics in here, I'm able to see.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 22:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So currently nothing has been published because as I said, the metric filter is not retroactive.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So we need to make this metric filter work.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Operational Monitoring
- Services: AWS Elastic Beanstalk, Amazon CloudWatch
- Key Insights: And for this very simply, I'm gonna go into MyFirstBeanstalk environment and then I'm going to do an environment action and I'm going to restart the app servers and this should trigger a lot more logs to be written out into CloudWatch logs.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry and visibility signal; Event-driven remediation signal.

Line 25:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So what I'll wait is just go back in here and I'll wait about five minutes for my environment to be rebuilt and hopefully the metric filter will start showing up in CloudWatch Metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 26:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So my environment has now been restarted and I'm going to go and open it up as well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to do /test just to trigger something and we're good to go.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 28:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Okay, so now let's go back into CloudWatch, and I'm going to refresh this and hopefully very, very soon we should start seeing some metrics.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry and visibility signal.

Line 29:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Okay, so I have now refreshed my CloudWatch metrics page and thankfully what we start seeing is a custom namespace called MetricFilters.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: That was the one we created.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And then we create this metric, and this is my demo filter.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now, it's not very interesting as a metric because the value is zero right now so that means we haven't detected any 400 events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But what I wanna show you is that they didn't backfill the data for previous events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So metric filters only added data as soon as they're created.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it's not very interesting in this graph, but that's okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Another thing we can do with this metric filter is to click on it and then create an alarm and so by creating a CloudWatch alarm, we can do some automation.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 37:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So I'm just going to create a dummy CloudWatch alarm.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 38:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So I will use MyDemoFilter.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Currently there's nothing, but I can say, okay, if as a static threshold you are greater than I would say 50, then something is really, really wrong with my web application and therefore I'm going to click on next and I'm gonna say, okay, the alarm should be in alarm and I'm going to send my alarm to an existing SMS topic.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven remediation signal.

Line 40:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Maybe this one, may be another one.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 41:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And then I can say next and say DemoMetricFilterAlarm.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 42:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And that's it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So now we have created a CloudWatch alarm on top of our metric filter coming from CloudWatch log.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 44:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So you can see there's a lot of different CloudWatch services coming together in this example and create the alarm and now have the basis for my notifications.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 45:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: Obviously this won't happen right now, I won't get any notification, but you get the general idea and this is how you would go ahead and create your own metric filters.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 46:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And so if I refresh this now, this page, what I should be seeing is on the bottom, that yes, this metric filter is linked to an alarm called DemoMetricFilterAlarm.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven remediation signal.

Line 47:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is great.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 48:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/245_CloudWatch Alarms.txt

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

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/246_CloudWatch Alarms Hands On.txt

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

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/247_CloudWatch Synthetics.txt

Line 1:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So now let's talk about CloudWatch Synthetics Canary.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS Config, Amazon CloudWatch, Amazon EBS
- Key Insights: So the idea is that you have a configurable script and that script is going to be run from CloudWatch and is going to be able to monitor your APIs, your URLs or your websites.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that you define a script, and this script is going to reproduce programmatically what your customers do.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And the idea is that, for example, if your customer goes onto a product webpage and then he clicks and he puts add to cart, goes to the checkout, puts the credit card details and make sure the checkout works, you can test all of this and reproduce it with CloudWatch Synthetics Canary.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that if somehow this script fails, that means you found an issue and it's good for you to find this issue before your customers do.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that you can check whether or not some flows are working.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We can also check the availability and latency of some endpoints, and you can even store load time data and even take screenshots of the UI.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: We have an application deployed in us-east-1, and then we're going to use CloudWatch Synthetics Canary to monitor the application.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Operational Monitoring
- Services: AWS Lambda, Amazon CloudWatch
- Key Insights: In case things fail, then a CloudWatch alarm is going to be triggered, which is then going to invoke a Lambda function.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 11:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: And a Lambda function may want to update the DNS record of Route 53 to another instance in us-west-2 so that we redirect to a version of the application that we know is working.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: That's just one way of doing things.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So this script that Synthetics Canary can run can be written in Node.js or Python.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: And on top of it from within Synthetics Canary, you have access to a headless Google Chrome browser.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So you can do anything you would do with Google Chrome, Chrome directly from within Synthetics Canary.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can choose to run your script once or on a regular schedule.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, if you wanted to check the availability of your endpoints.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: There's also some blueprints that you can leverage.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Operational Monitoring, Retention and Forensics
- Services: (none explicit)
- Key Insights: So you have the Heartbeat Monitor to load the URL, store screenshots and an HTTP archive file and make sure that everything is working correctly.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The API Canary to test basic read and write functions of REST APIs.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You have the Broken Link Checker to check all the links inside of the URL you're testing, making sure none of them actually lead you to a broken link.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Visual monitoring to compare a screenshot taken during the canary run with a baseline screenshot that you've taken before.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Canary Recorder, which is used with CloudWatch Synthetics Recorder.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Network Telemetry
- Services: Amazon EBS
- Key Insights: And it's a way for you to record your actions on a website and then automatically out of it, a script will be generated and then you can run it directly on Synthetics Canary and automatically, the actions will be repeated.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And finally, a GUI Workflow Builder.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's, for example, you can verify that the actions taken on your webpage with, for example, with the login form are working correctly.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Okay, so that's it for CloudWatch Synthetics Canary.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/248_Amazon EventBridge.txt

Line 1:
- Concepts: Distributed Tracing and Events, Operational Monitoring
- Services: Amazon CloudWatch, Amazon EventBridge
- Key Insights: So now let's talk about Amazon EventBridge, and Amazon EventBridge used to be formally known as CloudWatch Events so you will see EventBridge in the exam, but just so you know, if you come from old AWS experience, then it used to be named the CloudWatch Events.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 2:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: So with EventBridge, you can do a lot of things.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, we can schedule cron jobs in the Cloud, so we can schedule scripts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: For example, we say, "Hey, every hour please trigger a Lambda function," and that Lambda function will run a script.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 5:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: So the events are generated every hour, hence the name Amazon EventBridge, but not just a schedule like every hour, it can also react to an event pattern.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So there are event rules that can react to a service doing something.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, you can react to the event of IAM root user sign in in the console.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So when that happens, maybe you want to send a message into an SNS topic and receive an email notification, so that if anyone is using the root account, then you will receive an email, which may be a good security feature for your accounts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: Also, for example, you have different destinations, you can trigger Lambda functions, send SNS and SQS messages, and so on, I will show you this all in a second.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 10:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: So EventBridge sits in the middle and we have all the sources that can send events into Amazon EventBridge.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 11:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So for example, EC2 instances when they start, when they're stop, when they're terminated, and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: AWS CloudTrail, Amazon EventBridge, Amazon S3, Trusted Advisor
- Key Insights: Code Build, for example, if you have a build that fails or S3, whenever there's an event, for example, when an object is uploaded, or Trusted Advisor when you have a new finding of security in your accounts or as a good combo, you can combine EventBridge and CloudTrail and actually intercept any API call made within your AWS accounts, which is huge.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Investigation and forensic signal; Event-driven remediation signal.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Also, as I said, you can have a schedule or a cron, so you can say every four hours or every Monday at 8:00 am, the first Monday of the month, this is something you can do as well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Distributed Tracing and Events, Log Analytics and Investigation
- Services: Amazon EventBridge
- Key Insights: Then these events get sent into Amazon EventBridge and you can set up a filter.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, you say, "Hey, I only want these events for a specific bucket," for Amazon is free, for example.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 16:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: Then EventBridge is going to generate adjacent document that represents the details about your events.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So which instance, for example, gets started, whether its ID, and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: A lot of information, the time, the IP, and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So once this is done, then this JSON document, this event, can be sent into so many kind of different destinations, allowing you to do really awesome integrations.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Observability Operational Context
- Services: AWS Batch, AWS Lambda, Amazon EC2, Amazon ECS, Amazon Kinesis
- Key Insights: For example, you can schedule and trigger a Lambda function, you can schedule a batch in AWS Batch, you can launch an ECS task for Amazon ECS, you can send a message to SQS, to SNS, or even to a Kinesis Data Stream, you can, for example, start a Step Function, you can start a CI/CD Pipeline with CodePipeline or a build with CodeBuild so you don't actually know all these things, of course, these are different AWS services, but I'm just giving you an overview what you can do and you can also, for example, start an SSM automation or a specific EC2 action, such as starting or stopping or restarting an EC2 instance.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you can see the possibilities are endless and it really depends on what is your use case.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: So Amazon EventBridge is what we call the default event bus, which is what we just saw, which represents services from AWS that send their events into the default event bus, but Amazon EventBridge has more capability.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: There is something called the partner event bus and this is AWS that has integrated with partners, most likely they are going to be software as a service partners and they are going to send their events directly into your partner event bus.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So if you're using, for example, Zendesk, Datadog, Auth0, or others, you need to check the partner list.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then there's a chance that they can send their events directly into a specified partner event bus and so you can react to changes happening outside of AWS directly in your accounts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM, Amazon EventBridge
- Key Insights: Okay, and finally, there is a custom event bus so you can create your own event buses and then your own applications can send their own events into a custom event bus and therefore, you have the same capability of sending these events to different destinations thanks to the EventBridge rules.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Also, you can access event buses, cross accounts, using resource based policies as we'll see very soon.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Log Analytics and Investigation, Retention and Forensics
- Services: (none explicit)
- Key Insights: You can also archive events so all of them or just a subset event to a filter and by archiving the events, you can set it to be either indefinite retention or a set period for retention, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Retention and Forensics
- Services: (none explicit)
- Key Insights: What you can do with these is that you can replay these archived events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Retention and Forensics
- Services: AWS Lambda
- Key Insights: For example, say there is a bug in your Lambda function and you want to fix it, so you fixed it and then you want to retest the event, replay it, then you can replay these archived events, which is super handy for debugging, super handy for troubleshooting, and for fixing production as well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: Now, EventBridge receives a lot of events from different places and so therefore, you need to understand what the events are going to look like and remember, these events are in this adjacent format we just saw.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 32:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: So therefore, there is a Schema Registry and the capability is that EventBridge is going to analyze the events in your bus and then it's going to infer the schema and the schema out of the Schema Registry is going to allow you to generate code for your application that will know in advance how the data is structured in the event bus.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 33:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, this is an example here for a specific CodePipeline in action.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: There's a schema and you can download the code directly using the Orange button and this will know directly how to infer the schema and structure the data out of your event bus.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Also, the schemas can be versioned so you can over time iterates between the schemas of your application, of course.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: Now, we have resource based policies for EventBridge, what does that mean?
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 37:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: That means that you can manage permissions for a specific event bus.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 38:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, you can say that a specific event bus can be allowed or denied other events from other regions or accounts and the use case for it, for example, would be to have a central events bus within your AWS organization, so a set of accounts and then all these events are going to be aggregated, so how does that work?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Well, we have a central event bus with a specific account and we're going to add a specific resource based policy, allowing other accounts to send events to it and therefore, this other account, for example, will be able to do a put events and send events directly into the central event bus.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 40:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: So that's it, we've seen EventBridge left to right, you know everything about it.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 41:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So remember, you can react to events happening within your accounts, thanks to the default event bus, but also partner events and also your own events with custom buses, you have the Schema Registry capability, and then you have resource based policies, which allow you to have a cross accounts, for example, capability for event buses.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/249_Amazon EventBridge - Hands On.txt

Line 1:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: So let's have a look at Amazon EventBridge.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you have several options.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can create a rule with an event pattern.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We're gonna do this right now.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then you can have a schedule rule, which is the old way of doing schedule.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: So there is now something called EventBridge schedule.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We're also going to have a look at it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: Pipe is to send data from an event source to target with optional filtering and enrichment.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And schema registry is to look at the schemas of all these events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: So just to get started, we're going to do the first option, EventBridge rule with event pattern.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we need to create a rule, and what we want to do is to react to any event where an instance is going to be terminated or shut down.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you click here on Service Events, and here you have a list at all the events that can happen within your accounts by service.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it's a lot.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: For example, if you take any of these, for example, if you take Lambda, you can have a look at all these things.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: Console actions or EC2, you can have a look at all these things.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it's a lot more type of things you can choose from for events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the one we're going to look at is one of the most popular.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: It's called EC2 instance State-change Notification.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So that means that anytime an EC2 instance state will change, we're going to get a notification.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: So if we look at it at this event, we can have a look at the schema of the event and then a sample event.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Like what it can look like.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: So the schema defines how the sample event will look like.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And now we want to be able to filter this event and on the state value.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the state is a string and we have to exit the value.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we can say Equal, for example, and we are going to have several values.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the first one is shutting down and the second one is going to be terminated.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: How do I know this?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Well, it's from the schema itself.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: If you have a look at the event pattern on the bottom line, on the bottom page, sorry, you can have a look at Sample events 1, 2, 3.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And if you look at number 5, it says "state": "shutting-down".
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And number 6, it says "state": "terminated".
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So these are the events we want to be catching.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So now our event pattern filter is defined right here on the right-hand side.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So now we have all the events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And now for the target, again, we have several options.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Observability Operational Context
- Services: API Gateway, AWS Batch
- Key Insights: So we can have a look at all the options right here, such as API gateway, batch jobs.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: We can also reboot an EC2 instance, terminate one.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 38:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We have SNS topic, SQS queues, I mean so many.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But what we want to do right now is to receive an alert, so we choose SNS Topic and then we want it to be our demo topic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 40:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So create it if you don't have a topic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 41:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can just create an SNS topic very easily.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then we'll need to have an exception role to be able to send a message into this topic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So a role is going to be automatically created for us. and then we get some more information around the retry policy and the dead-letter queue.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 44:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 45:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Let's click on Create.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 46:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: I'll call this one NotifyEC2InstanceShutdownOrTerminated, and we'll click on Create.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 47:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And so now that this role has been created, anytime we shut down or terminate an EC2 instance, we will receive a notification.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 48:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The other option is to use Schedule.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 49:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So on the left-hand side you have schedules, and then you can create a schedule.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 50:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: And this one is going called InvokeLambdaEveryHour.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 51:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And several options.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 52:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Either it's a one-time schedule, so we do something once and then done, or recurring.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 53:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And we have either a Cron-based schedule or a rate schedule.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 54:
- Concepts: Observability Operational Context
- Services: Amazon Lex
- Key Insights: We'll use 1 hour and no flexible time window.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 55:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And Next.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 56:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And here we have the option to invoke several things.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 57:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So what do we wanna do every hour?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 58:
- Concepts: Observability Operational Context
- Services: AWS Lambda, Amazon Data Firehose, Amazon ECS, Amazon Kinesis, Amazon RDS
- Key Insights: Well, we have all these options such as, for example, running a task on Amazon ECS or putting a records in Kinesis Data Firehose or invoking a Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 59:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: So you can say, for example, in the Invoke Lambda function, and if you have a Lambda function, you can select it from here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 60:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you get the idea.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 61:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: Once you've done this, you have a schedule in Amazon EventBridge.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 62:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Other things that you need to be looking at is event buses.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 63:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So right now we have the default event bus.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 64:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And the default events bus is anything that will be AWS-generated type of events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 65:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But you can create your own event bus, and this is going to be a custom event bus.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 66:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: And here you have the ability yourself to send your own events into this event bus and so therefore you can develop custom applications that are based on Amazon EventBridge, which can be very helpful.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 67:
- Concepts: Retention and Forensics
- Services: (none explicit)
- Key Insights: You have the option to archive your events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 68:
- Concepts: Retention and Forensics
- Services: (none explicit)
- Key Insights: When they happen on the event bus, then you have an archive you can look into.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 69:
- Concepts: Retention and Forensics
- Services: (none explicit)
- Key Insights: And you can also replay events if you wanted to replay a past event from an archive.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 70:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, other things need you look at is partner event sources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 71:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it's possible for you to actually get data from third-party partners directly into your AWS accounts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 72:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: So if you use, for example, Auth0, then the events of Auth0 will be put and inserted into Amazon EventBridge.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 73:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: And then you can, for example, use a Lambda function or do something after someone has done the login in of zero.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 74:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But you can see you have so many different kinds of partners right here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 75:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And API destinations.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 76:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: That means that, for example, if you wanted to have an event within EventBridge, but then to connect to an external HTP destination, you can also define one here.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 77:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: And this allows you to connect EventBridge to an outside source, for example, to have integration with your own infrastructure.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 78:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it's quite a lot of different things.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 79:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And finally, for schemas, this is all the schemas of all the AWS events that you have.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 80:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Or you can have your own custom registry for your own events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 81:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: But this allows you to understand the shape and form the events will have in Amazon EventBridge.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 82:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And that's it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 83:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 84:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can go here in the rules and also disable them if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 85:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But I hope you liked this lecture and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/250_Amazon EventBridge - Multi-Account Aggregation.txt

Line 1:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: So just a short lecture explaining how to do multi-account event aggregation with EventBridge.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So say for example that you have multiple accounts in AWS but you wanted to centrally manage some of these events in a central account event bus.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And say you're launching EC2 instances in all your accounts and you want to actually catch these events in the central account.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So how would you do this?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Well, you would define an event pattern in one of your accounts and then you would create an event rule for it, so that all the state changes of account A are sent to the event rule.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And it turns out that the targets of an event rule in one account can be an event bus in another account.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, to make it work, so that the account A can send into the central accounts, we need to create a resource policy on the event bus of the central account to accept events from other accounts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that makes sense?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: AWS SAM, Amazon EC2
- Key Insights: Then we can do the exact same pattern in account B and D and C, so that we have all the events and all the state changes of our EC2 instances that will land onto the event bus of the central accounts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: From there, we can just create the own event rule on the event bus, for example to trigger SNS notifications, or lender functions, or whatever you want.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it, just one thing to know in terms of architecture, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/251_X-Ray Overview.txt

Line 1:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, this is to me one of the most revolutionary services that AWS has to offer and I think it is currently underutilized.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: It's called AWS X-Ray and the exam is really we want you to know about X-Ray.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: I think this is why they ask two questions because they want people to use it, and I honestly think people should use X-Ray.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, when you do debugging production and I have debugged applications in production in the past, the good old way, what I call the good old way is test locally, add log statements everywhere and redeploying production and from the logs try to figure out what is breaking, what is happening.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It's really painful.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It's not best practices.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Obviously, there are better ways of doing things.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I'm just oversimplifying things here, but you get the idea.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Debugging production is not fun.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And then, if you log stuff, if you have different applications, if you log from different applications to CloudWatch then you know they all have different formats and it's really hard to centralize insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 11:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And navigating CloudWatch logs is gonna be hard.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And analytics on top of it, it's going to be hard.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, if you have a monolith, just one huge application doing everything is sort of easy to debug, but if you have distributed services you're running a hundred microservices in your LS accounts, it becomes a nightmare.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It's really, really hard to debug what's happening because they all talk to each other, right?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, there's no common view of your entire architecture, your entire service map, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So, here comes AWS X-Ray.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So, X-ray is going to give you a visual analysis of your application.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, this is what we're going to do in the hands-on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We'll see that basically as a client doing a request to our application we will see how many of these requests fail or don't fail.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then, from the application we'll see what it does.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Observability Operational Context
- Services: Amazon DynamoDB
- Key Insights: So, it will call other IPs, it will call SNS it will call a DynamoDB Table.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Distributed Tracing and Events
- Services: Amazon EC2
- Key Insights: And so, as you can see, we'll be able to trace exactly, visually what happens when we talk to our EC2 instance.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so, you know from this graph if I ask you where do you think that little orange or yellow error comes from?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Well, is it coming from this?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: No, is it coming from SNS?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: Amazon DynamoDB
- Key Insights: No, it is coming from my DynamoDB Table.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can see it visually.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so, that's the whole power of tracing.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Obviously, you can do more, but you start getting the idea.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: In terms of X-ray advantages, there's many.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can troubleshoot the performance of your application and identify bottlenecks.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can understand the dependencies in your microservice architecture because you can visually see what is happening and how all your microservices interact with one another.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We can pinpoint then which service is giving us issues.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We can understand how each request is behaving and then find errors and exception based on the request.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We can answer questions such as, are we meeting time SLA in terms of latency or time to process a request?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And we can understand which service really slows down, throttles us.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Finally, we can know which users are impacted by our errors if we wanted to.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 38:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So, X-ray has a lot of compatibility.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Observability Operational Context
- Services: API Gateway, AWS Elastic Beanstalk, AWS Lambda, Amazon EC2, Amazon ECS, Elastic Load Balancing
- Key Insights: It's compatible with AWS Lambda, Beanstalk, ECS, ELBs, API gateway, and EC2 instances or any application server really, even something you have on premise.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 40:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So, they really made X-Ray try to be as wide as possible and as applicable as to any application they can.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 41:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So, X-Ray, how does it work?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Well, it leverages something called tracing.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And tracing is an end to a way to basically follow a request.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 44:
- Concepts: Observability Operational Context
- Services: Elastic Load Balancing
- Key Insights: So, when I make a request to, for example, my application server, each component that will deal with a request that could be my database, that could be my gateway, my load balancer, my application server.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 45:
- Concepts: Distributed Tracing and Events
- Services: (none explicit)
- Key Insights: Each component dealing with that request will add its own trace, and so, the trace will be made of segments and segments can be made of sub segments.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 46:
- Concepts: Distributed Tracing and Events
- Services: (none explicit)
- Key Insights: And the idea is that we can also add annotations to traces to provide extra information around what happened.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 47:
- Concepts: Distributed Tracing and Events
- Services: (none explicit)
- Key Insights: So, when all these things are together, you have the ability to trace every request or a simple request.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 48:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, you say I only want to get a percentage of the total request or maybe five requests per minutes.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 49:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: In terms of security, there is IAM authorization and you can use KMS for encryption at rest.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 50:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So, once you get all these traces, basically, X-Ray provides its magic and provide this nice little graph that I showed you before.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 51:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: Now, how do you enable X-Ray?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 52:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Well, you have two ways and I think this is what the exam will ask you about.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 53:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, you need to be very careful here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 54:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Your code can be Java, Python, Go, Node.js and .Net and it must import the AWS SDK.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 55:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You need very little code modification, but you still need to do some code modification.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 56:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray, Amazon DynamoDB
- Key Insights: And then, the application SDK, the X-Ray SDK, will then capture the calls to the AWS services, the HTTP and HTTPS request and the database calls for MySQL, PostgreSQL and DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 57:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It can also capture queue calls and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 58:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: Now, the second thing we have to do once we've modified our code is to install the X-Ray daemon or to enable the X-Ray AWS integration.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 59:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So, if we run on a machine, on-premise server or EC2 instance, we need to install the daemon.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 60:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And the daemon is basically a little program that works as a low level UDP packet interceptor.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 61:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It can be running on Linux, Windows, and Mac.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 62:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so, you have to install it on your machine.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 63:
- Concepts: Distributed Tracing and Events
- Services: AWS Lambda, AWS X-Ray
- Key Insights: If you use AWS Lambda or other services that already have integration with X-Ray then they will run the daemon for you and you don't have to worry about it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 64:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: Now, each application also must have the IAM rights to write data to X-Ray.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 65:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray, Amazon EC2
- Key Insights: So, a very common question is, hey, my X-Ray application works on my computer when I test locally, but doesn't work on my EC2 machine, why?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 66:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray, Amazon EC2
- Key Insights: Well, the answer is probably because on your machine you're running the X-Ray daemon, but when you deploy to your EC2 instance, it's not running the X-Ray daemon, and therefore, X-Ray doesn't see your calls.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 67:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: Now, to make it really crystal clear here is an EC2 instance and you need to have your application code on top of it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 68:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: And so, your code again needs to be modified to import the AWS X-Ray SDK, and then it will send its traces to the X-Ray daemon running the machine.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 69:
- Concepts: Distributed Tracing and Events
- Services: AWS Batch, AWS X-Ray
- Key Insights: So, as you can see, you also need to run the X-Ray daemon and that X-Ray daemon will send a batch every one second to AWS X-Ray.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 70:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So, X-Ray does some magic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 71:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so, to update this graph, how does that work?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 72:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: X-Ray will collect all the data from all the different services sending traces, and then, the service map will be computed magically from all the segments and the traces.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 73:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so, that's a really cool thing.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 74:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: X-ray is graphical, so even non-technical people can help troubleshoot.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 75:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray, Amazon EC2
- Key Insights: Talking about trouble shooting, what if X-Ray is not working on EC2?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 76:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray, Amazon EC2
- Key Insights: As I said, you need to ensure that the IAM role has the proper permission and you need to ensure that the EC2 instance is indeed running the X-Ray Daemon.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 77:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: If you want to run it on Lambda, it's a little bit different.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 78:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: For it, you need to ensure that the Lambda has an IAM execution role with proper policy.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 79:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: And I know we haven't seen what Lambda is, but it's just a question you may get.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 80:
- Concepts: Distributed Tracing and Events
- Services: AWS Lambda, AWS X-Ray
- Key Insights: So, you need to make sure that Lambda has a proper IAM role that's expected and then you need to ensure that the X-Ray code is imported.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 81:
- Concepts: Distributed Tracing and Events
- Services: AWS Lambda, AWS X-Ray
- Key Insights: And finally, that you have activated the active tracing Lambda option on X-Ray, but we'll see this in the Lambda section as well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 82:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So, that's it for the overview of X-Ray, a little taster.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 83:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: In the next lecture, we're just going to run the several apps on X-Ray to get a better feeling of how it works.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 84:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/252_X-Ray Hands On.txt

Line 1:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So let's practice using X-Ray.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And for this I'm gonna go into the CloudWatch console.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Distributed Tracing and Events, Operational Monitoring
- Services: AWS X-Ray, Amazon CloudWatch
- Key Insights: And it turns out that the X-Ray console is now in the CloudWatch console.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you can see it on the left hand side under service map.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Currently we see nothing, but we'll see something soon.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Distributed Tracing and Events, Operational Monitoring
- Services: AWS X-Ray
- Key Insights: That's because it's better to have X-Ray with the metrics your logs and your alarms all in one place.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Event-driven remediation signal.

Line 7:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: Okay, so if we wanted to have some data in X-Ray we need to set up a demo app but it turns out that, well, the demo app as per my trials and errors, doesn't work in AWS.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So therefore I've created my own demo app that is a modification of what AWS has created.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: AWS CloudFormation
- Key Insights: And we'll deploy this on CloudFormation.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: AWS CloudFormation
- Key Insights: So you go to CloudFormation and you create a stack.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Distributed Tracing and Events
- Services: AWS CloudFormation, AWS X-Ray
- Key Insights: And the stack we're going to use in here is the stack that's under the X-Ray folder called EB Javas Scorekeep X-Ray simplified.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This is a simplified template from AWS.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So we're going to upload a template file and choose the EB Javas Scorekeep X-Ray simplified.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Distributed Tracing and Events
- Services: AWS CloudFormation, AWS X-Ray
- Key Insights: So the stack name is going to be called Scorekeep X-Ray.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then you scroll down, you leave everything as default except at the very bottom three things.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So for subnet one, you're going to choose the first subnet.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For subnet ID two, you choose the second subnet.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And finally, for VPCID, you choose the VPC right here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And the reason we do so is that this is we indicate to the templates where we want to deploy our resources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So click on next, then click on next and then acknowledge and submit.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Observability Operational Context
- Services: AWS CloudFormation
- Key Insights: And this is going to create a CloudFormation template for us.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Observability Operational Context
- Services: AWS CloudFormation, Amazon ECS
- Key Insights: And if you have a look at it, this CloudFormation template actually deploys an ECS cluster.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: And then we're going to have a front-end API a front-end image, sorry, a backend API all using X-Ray so that we see data in the X-Ray folder and then it's going to be running on the T2 or T3 micro.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is good.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now let's go in here and wait for this to be fully done.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: AWS CloudFormation
- Key Insights: Okay, so my stack is now fully deployed and if I go into resources I can see all the things that have been created as part of this confirmation templates.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: Amazon DynamoDB, Amazon ECS, Auto Scaling
- Key Insights: So we can see, for example, an ECS execution role ASG a game table, which is DynamoDB and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So how do we use this web application.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Well, you go to outputs, refresh this and then we have the loaded balancer.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You are over here that you just open in your new page.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then you should have this kind of UI.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 32:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to leave the session as games.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I'm going to leave this to random and click on create.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Here we have to create a game name.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: So I'm going to create a Sample Game and then the rules of it is going to be Tic Tac Toe.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then click on create.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Distributed Tracing and Events
- Services: (none explicit)
- Key Insights: And now we can view the traces recession but you click on this.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 38:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: This is going to take you to the old X-Ray console, which is right here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: And as you can see there's a new X-Ray console, experience available.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 40:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: That is the one that I'm showing you right here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 41:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So for now, let's just keep on playing.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's click on this game and click on play.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And here we have a classic game of Tic Tac Toe.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 44:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you just click wherever you want.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 45:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So here, here, here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 46:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then, oh, you see there's a line.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 47:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you'll see in a second that X has won, so X wins.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 48:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So yes, we have done this entire game and we could go back and play more games.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 49:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: What's going to happen is that as we play the games this is going to send traces into X-Ray.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 50:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: And so if I go into X-Ray right here and look at my service map, which is the first part.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 51:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to zoom out a little bit just for this ones.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 52:
- Concepts: Audit Logging
- Services: Amazon RDS
- Key Insights: So this is my service map, and this shows the dependencies of all my components in AWS and how they relate towards the API calls that have been made.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 53:
- Concepts: Observability Operational Context
- Services: Amazon ECS
- Key Insights: And as you can see, we have an ECS container right here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 54:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This is what's representing it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 55:
- Concepts: Observability Operational Context
- Services: Amazon DynamoDB
- Key Insights: And then we also have a DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 56:
- Concepts: Observability Operational Context
- Services: Amazon DynamoDB
- Key Insights: We have another DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 57:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we have two of them.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 58:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We have an SNS.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 59:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And you see right now it's a bit orange is because this is an error and we'll have a look at it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 60:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We also have a session table we have a state table, an SNS topic, and another table.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 61:
- Concepts: Observability Operational Context
- Services: Amazon DynamoDB
- Key Insights: So we have so many DynamoDB tables and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 62:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this is the service map.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 63:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So you can imagine as you have many microservices and all of them making API calls to each other if they're all instrumented with X-Ray then you will start seeing the dependencies between all these services.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 64:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And on top of it, in case there is an error this will be highlighted right here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 65:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So if we click on this, for example we can have a look at the latency.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 66:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we see the average latency and so on over time the number of requests over time, number of faults and the response time distribution if we want it to.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 67:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And as we have a look at this, if I click on here as you can see here, it says error 100% to SNS.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 68:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it looks like that SNS is getting some errors.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 69:
- Concepts: Distributed Tracing and Events
- Services: (none explicit)
- Key Insights: And so what I can do is that I can analyze these traces by clicking on view traces.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 70:
- Concepts: Distributed Tracing and Events, Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So now we have these, this is the traces console and this is where we can start to query some traces so we can run a query and view what's happening.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 71:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But currently we don't have any data.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 72:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So instead I'm going to do is just run a query with nothing.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 73:
- Concepts: Distributed Tracing and Events
- Services: (none explicit)
- Key Insights: And as you can see, we have 21 different traces.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 74:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So everything looks good.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 75:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And what's going to happen is that you can filter them by note.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 76:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So figure out which ones are going to be important to you.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 77:
- Concepts: Distributed Tracing and Events
- Services: Amazon ECS
- Key Insights: So maybe you just wanna look at traces related to the ECS container or to this score, keep game table and so on.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 78:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So you can start to build your query.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 79:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: As you can see, if I only want to look at score keep game then I can add to query.
- Hidden/Implicit Meaning: Constraint or limitation signal; Investigation and forensic signal.

Line 80:
- Concepts: Distributed Tracing and Events, Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And this is going to populate my trace query right here.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 81:
- Concepts: Distributed Tracing and Events, Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And I can run my query and instead of 21, I have 10 traces.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 82:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then on top of it, now half this, I can look at like the response graphs in terms of latency.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 83:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it looks like most of my requests are under 200 milliseconds but there has been one request at over 500 milliseconds.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 84:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So again, it really depends on what you want to get out of it but this could be some good indications and help you look into, for example this one request right here that was slow.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 85:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And we can have a look and understand.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 86:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So if we look at the duration, this is probably this one.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 87:
- Concepts: Distributed Tracing and Events
- Services: (none explicit)
- Key Insights: So if you click on it now you have details about a specific trace.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 88:
- Concepts: Distributed Tracing and Events
- Services: (none explicit)
- Key Insights: And so this trace is going to show you the trace map just for that once.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 89:
- Concepts: Distributed Tracing and Events
- Services: Amazon DynamoDB, Amazon ECS
- Key Insights: So as you can see, we have a little bit less information in here because this trace was using only the ECS container and four DynamoDB tables.
- Hidden/Implicit Meaning: Constraint or limitation signal; Telemetry and visibility signal.

Line 90:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And if you scroll down now you see the actual breakdown of the request based on the different events that happens.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 91:
- Concepts: Audit Logging
- Services: Amazon DynamoDB
- Key Insights: And so you can see that this post right here to this URL actually triggered a lot of API calls to DynamoDB.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 92:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So first get item on score, keep game then get item on score clip states and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 93:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And you can see the latency, how long each take and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 94:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this gives you some information around your data.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 95:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And of course as you click on it, then you're going to get some segment details information to look whether or not you had errors, to look the resources, the annotations, if anything, and the metadata.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 96:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you can get a lot of information around what failed and what didn't fail.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 97:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And of course, this is only relevant when there is a failure for analyzing the failures but this gives you really good latency information.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 98:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: And if you had CloudHSM logs enabled then you could also see the corresponding logs for that specific trace which makes X-Ray really, really, really powerful.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 99:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 100:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: That's what I want you to remember for X-Ray.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 101:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: Now in the state of things, right now X-Ray does not have all the features from the previous console so we only have service map and traces.
- Hidden/Implicit Meaning: Constraint or limitation signal; Telemetry and visibility signal.

Line 102:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: AWS Config, AWS SAM, AWS X-Ray
- Key Insights: But if you're go in here in the X-Ray console as you can see, we have configurations such as sampling, encryption, and groups which are don't appear yet in this console.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 103:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So for now I may use this console as well in the future videos.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 104:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: Just know that X-Ray and you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 105:
- Concepts: Observability Operational Context
- Services: AWS CloudFormation
- Key Insights: And finally, just to be clear, you need to delete the stack so that it doesn't leave it running.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 106:
- Concepts: Distributed Tracing and Events
- Services: AWS CloudFormation, AWS X-Ray
- Key Insights: So you can just delete it, call the score, keep X-Ray delete the stack, and you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 107:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 108:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/253_X-Ray_ Instrumentation and Concepts.txt

Line 1:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So now let's talk about some advanced concepts for X-Ray, and the first thing I want to show you is how to instrument your code.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this word may be new, it was new for me.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Distributed Tracing and Events
- Services: (none explicit)
- Key Insights: So instrumentation means the measure of a product's performance, diagnose errors, and to write trace information.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it is a field in Software Engineering to do all these things.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So now it makes a lot more sense.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: When we want to instrument our our application with X-Ray, we need to change our code and to use the X-Ray SDK.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So here is an example of how we can instrument our node js code with the X-Ray SDK.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: And so once we add some code, for example here, requiring the X-Ray SDK and using it in our express app, then our code will be instrumented.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: That means that we will get trace information from our code into the X-Ray service.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 11:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So the use of the X-Ray SDK is very minor.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Sometimes it only requires a configuration changes only and you can modify as well your application code.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 13:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: If you want to customize your traces and annotate the data, or change the way X-Rays send it out to the express service.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 14:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And so for this we can create interceptors, filters, handlers and middleware.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: This is pretty advanced, but what I mean is that you can customize how X-Ray works in your code.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So, now some advanced X-Ray concepts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the definition is that a segment is how we can see things in the URL so we've been looking at segments so far, and so each application and service will send them.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But if you want to be more granular, you can define subsegments.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This is when you leave more details in your segments.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: (none explicit)
- Key Insights: Then the trace is when you get all the segments collected together and this will form an end-to-end view of your API call, or your call.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 21:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM
- Key Insights: And so this will be an end-to-end trace sampling.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We'll see this in a second.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray, Amazon ECR
- Key Insights: This is to decrease the amount of requests sent to X-Ray, in order to reduce costs because maybe we don't need all the requests.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now, very important.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Distributed Tracing and Events, Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: Annotations is when we add some key value pair data to index our traces and use with filters.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 26:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So annotations is are extremely important in X-ray.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Distributed Tracing and Events
- Services: (none explicit)
- Key Insights: If you want to be able to search your traces with new indexes versus metadata.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Metadata is key value pairs, as well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But these this time they're not index.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: Okay, so your annotations are indexed and you can use them to search with filters, whereas metadata are not indexed and you cannot use them for searching.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 31:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: AWS Config, AWS X-Ray
- Key Insights: Now the X-ray daemon agent also has a config to send traces across accounts.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 32:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And for this we need to make sure the IAM permissions are correct.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The agent will automatically assume the correct role and this will allow us to have a central accounts for all logging and application tracing.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM
- Key Insights: Now let's talk about sampling in details.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM, AWS X-Ray
- Key Insights: So with the sampling rules, we are able to control the amount of data that you send to the X-Ray service and record.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: And the more data you send you X-Ray, the more you're going to pay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM
- Key Insights: So you can modify your sampling rules without changing your code.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 38:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM, AWS X-Ray
- Key Insights: And by default there is a sampling rule, which says that X-Ray SDK will record every first request, each second, and then five percent of any additional requests.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Distributed Tracing and Events
- Services: (none explicit)
- Key Insights: And so the blue part, the first request, each second is called the reservoir, which ensures that at least one trace is recorded each second as long as a service is serving requests.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 40:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: And then the five percent is called the rate at which additional requests beyond the reservoir size are sampled.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 41:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM
- Key Insights: So let's talk about the custom sampling rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can create your own rules and you can define what is a reservoir and what is the rates.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So here is an example.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 44:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We have in this example a higher minimum rate for posts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 45:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we're saying the reservoir is 10.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 46:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: That means that 10 requests per second will be sent into X-Ray and then 10% of the other ones will be sent.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 47:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So here we have a higher minimum rate and we send more requests into X-Ray.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 48:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Whereas here we want you to have debugging.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 49:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so we say we want to have all requests.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 50:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So one a reservoir and one of rate.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 51:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: That means that all requests will be sent into X-Ray.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 52:
- Concepts: Distributed Tracing and Events
- Services: (none explicit)
- Key Insights: So we don't want to lose any traces.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 53:
- Concepts: Distributed Tracing and Events
- Services: (none explicit)
- Key Insights: And this is very helpful when we want you to debug to find what's going on for every single trace.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 54:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM, AWS X-Ray
- Key Insights: Obviously, in production, this will be very, very expensive because now we are sending a lot of data into X-Ray, but it's very helpful temporarily to change these custom sampling rules to see what's going on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 55:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM, AWS X-Ray
- Key Insights: And the cool thing about it is that if you change your sampling rules in the X-Ray console, you don't have to restart your applications.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 56:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: You don't have to do anything with your X-Ray in SDK.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 57:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: Automatically the daemon, the extra daemon knows how to get visa something rules and correctly send the right amount of data into the X-Ray service.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 58:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM
- Key Insights: So let's go into the next lecture to see how we can define the sampling rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/254_X-Ray_ Sampling Rules.txt

Line 1:
- Concepts: Distributed Tracing and Events, Operational Monitoring
- Services: AWS SAM, Amazon CloudWatch
- Key Insights: So let me show you where in CloudWatch you can set up the sampling rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Distributed Tracing and Events, Operational Monitoring
- Services: AWS X-Ray, Amazon CloudWatch
- Key Insights: So for the X-Ray traces, you go on the left-hand side to settings and then you have traces under CloudWatch settings.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 3:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM
- Key Insights: And you can, for example, have encryption rules, group rules, and sampling rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM
- Key Insights: So we're going to look at sampling rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We're going to view the settings.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so as you can see, there is a default rule right now that has a priority of 10,000.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And say that you have one request per second, then five fixed percent fixed rate, and the matching criteria is everything.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you can edit it and for example, change the reservoir size and the fixed rate if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It will still match all the request because this cannot be edited.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This is a default rule, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM
- Key Insights: The only thing you can change is the limits but you can actually create your own sampling rule.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 12:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM
- Key Insights: So if I click on create sampling rule, I can call this one DemoSampling.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And here we can set the priority, so it's between one and 9,999.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so the lowest has the highest priority.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So if I said 5,000, this will have a higher priority than the default rule, and that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: And here we can set the reservoir size, so the number of maximum requests to sample per second.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So for example, maximum one and a fixed rate of 100%, for example, if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It's really up to you to set these limits how you wanna go.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But the more interesting thing is that if you wanted to just target a specific service, you would enter the service name, for example, MYSERVICE.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM
- Key Insights: And if you wanted to only get, for example, a POST request, you could specify this as well, as well as specify a URL path so you can really, for example, sample every request that is being made to this service on POST and get the traces for that.
- Hidden/Implicit Meaning: Constraint or limitation signal; Telemetry and visibility signal.

Line 21:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM, AWS X-Ray
- Key Insights: And the cool thing is that once you create this sampling rule, then automatically, you don't need to restart your daemons of X-Ray.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: They will take these rules into account and then you will start seeing the effect of those directly into the X-Ray console.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/255_X-Ray APIs.txt

Line 1:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So let's talk about the X-ray APIs and you need to know them at a high level and understand what they do cause the exam may ask you to choose whether this is the Write API for X-Ray to do something.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So let's look at the right API first which is used by the X-Ray daemon to write data into the X-Ray service.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So this is a managed policy called the X-Ray Write Only Access and you can see it has five line items and I'm going to try to describe them to you.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 5:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So the first one is PutTraceSegments and as the name indicates, it uploads a segment documents into AWS X-Ray that's necessary to have if you want to write into X-Ray.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 6:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray, Amazon RDS
- Key Insights: Then we have PutTelemetryRecords and this is for the X-Ray daemon to upload some information about how many segments were received, rejected and backend connection errors.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So this helps with the metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 8:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM
- Key Insights: Next we have a GetSamplingRules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM
- Key Insights: So usually when we write stuff, we have a lot of puts because this was how the APIs are named in AWS whenever you're write it says, "put." But some half of this right API there is a get and this one is called GetSamplingRules.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So do you know why?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM, AWS X-Ray
- Key Insights: Well, we saw that whenever we were changing the sampling rules in the X-Ray console, all the X-Ray daemons were automatically updated to know when to send data into X-Ray.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM, AWS X-Ray
- Key Insights: So for your X-Ray daemon to be able to know how the sampling rules are changing, then the GetSamplingRule authorization and permission is necessary.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM
- Key Insights: So this also applies to GetSamplingTargets and GetSamplingStatisticsSummaries which are advanced APIs but are also related to the sampling rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So to summarize, your X-Ray demand to write into X-Ray, it needs you have the rights to write.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM, Amazon RDS
- Key Insights: So PutTraceSegments and PutTelemetryRecords and then you should be able to get the sampling rules.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry and visibility signal.

Line 16:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM
- Key Insights: So GetSamplingRules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Very Simple.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: Now, for this API calls to work obviously, you need you to make sure that's your X-Ray daemon has the correct IAM policy authorizing these API calls.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's for the write side.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now what about the read side?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Well, this is more complicated, but this is a managed policy for reading.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Distributed Tracing and Events
- Services: AWS Batch
- Key Insights: And as you can see, all these things as says get, get, get, get, get, and we have one called batch get trace which also says gets.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So GetServiceGraph is to get the main graph that we saw in the console.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Distributed Tracing and Events
- Services: AWS Batch
- Key Insights: BatchGetTraces is to retrieve a list of traces specified by ID.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 25:
- Concepts: Distributed Tracing and Events
- Services: (none explicit)
- Key Insights: And each trace, as we know, is a collection of segment documents that originates from a single request.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 26:
- Concepts: Distributed Tracing and Events
- Services: AWS Batch
- Key Insights: And then we have GetTraceSummary to receive the ID and the annotations for traces available for a specified time and if he want to get the full traces then you pass these IDs into the batch, get traces API and finally GetTraceGraph to retrieve a specific service graph for one or more specific trace IDs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This is all for the Read APIs which is necessarily when you go into the console.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so if you see these APIs at the exam, you should be prepared to know when to use which and why.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Hope that was helpful.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/256_X-Ray with Beanstalk.txt

Line 1:
- Concepts: Distributed Tracing and Events
- Services: AWS Elastic Beanstalk, AWS X-Ray
- Key Insights: So here is a quick lecture on how to integrate x-ray with Beanstalk.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Distributed Tracing and Events
- Services: AWS Elastic Beanstalk, AWS X-Ray
- Key Insights: So the Beanstalk platforms include the x-ray daemon, so we don't need to include it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: And you can run the demon by just setting one option in the Beanstalk console as we'll see in the hands-on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: AWS Config, AWS X-Ray
- Key Insights: Or you can create as well an EB extensions file called x-ray-daemon.config.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: AWS Config, AWS X-Ray
- Key Insights: So again, in the .ebextensions folder with a .config extension that looks like this and it's just one line, it just enables the x-ray demon.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So simple.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray, Amazon EC2
- Key Insights: Then once you do this, obviously you need to make sure that your EC2 instance has an instance profile with a correct IAM permission so that the x-ray demon can function correctly and write to the x-ray service.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Distributed Tracing and Events
- Services: (none explicit)
- Key Insights: And of course you need to make sure that your application code is instrumented with the extra SDK to send these trace.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 9:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray, Amazon ECS
- Key Insights: And if you do run multi Docker container, you would need to manage the X-ray team yourself as we'll see in the next lecture with ECS.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: Okay, so let's go ahead and create an application in which we're going to demo the x-ray in big stock.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we create a web server environment.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We name our application, we scroll down, we choose no js, we keep everything as default, and we'll use single instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We click on next, then we use an existing service role we select to key pair and we click on next.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We don't need to do anything for VPC instance, so we just go and click on next.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: In terms of instance, traffic and scaling as well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We don't do anything, so we just go and click on next.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Distributed Tracing and Events, Operational Monitoring
- Services: AWS X-Ray
- Key Insights: And for monitoring, now we're going to scroll down and we have Amazon x-ray on their platform software.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So here we are just going to activate the x-ray demon, and that's all we have to do.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Distributed Tracing and Events
- Services: AWS Elastic Beanstalk, AWS X-Ray, Amazon EC2
- Key Insights: X-ray will be enabled on our Beanstalk EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we'll going to click on next.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: Now we have enabled x-ray.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And finally we just click on submit.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And here we go.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Distributed Tracing and Events
- Services: AWS Elastic Beanstalk, AWS X-Ray
- Key Insights: X-ray is activated and Beanstalk is launching our environment.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Okay, so we can have a look at one thing though, which is our configuration.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: AWS Elastic Beanstalk, Amazon EC2
- Key Insights: And if we look at it, the EC2 instance profile is AWS Elastic Beanstalk, EC2 roll.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: AWS Elastic Beanstalk, Amazon EC2
- Key Insights: So if I go in the IAM console and then I go on the rolls and I search for our Beanstock EC2 roll right here and click on it, we can have a look at permission policies and one of them is called the Elastic Beanstalk Web Tier Policy.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So we're going to click on it and then within it, as we can see, we have permissions for x-ray already included called, if I click on it, actually we can have a look at the permissions.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray, Amazon EC2
- Key Insights: We have all these permissions right here, which are the necessary permissions for our demon running on our EC2 instance to send data to Amazon x-ray and to get some as well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Distributed Tracing and Events
- Services: AWS Elastic Beanstalk, AWS X-Ray
- Key Insights: So this is very important, because, well, if you launch a Beanstalk application and you use a role that is not this role right here, you create a custom role, then it's important for you to also make sure that this role will have the necessary permissions for x-ray.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Distributed Tracing and Events
- Services: AWS Elastic Beanstalk, AWS X-Ray
- Key Insights: And if our application that is launched now had more than a congratulations page, but also was integrated with x-ray, we would see the traces in the x-ray console, but at least we've seen the option under Beanstalk.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 33:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Distributed Tracing and Events
- Services: AWS Elastic Beanstalk, AWS X-Ray
- Key Insights: Now you know how to integrate Beanstalk and x-ray.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And of course, don't forget to terminate your environment.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/257_X-Ray & ECS.txt

Line 1:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray, Amazon ECS
- Key Insights: Okay so a theory lecture around how to integrate ECS with X-Ray and the three options you're going to have.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray, Amazon ECS
- Key Insights: So first, you have an ECS Cluster and one way to run the X-Ray Daemon is to use the container as a Daemon itself.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, what does that mean?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: That means we have our two EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray, Amazon EC2, Amazon ECS
- Key Insights: For example, in our ECS cluster, and remember we manage those EC2 instances and so we're going to run a Daemon task, a Daemon container, of the X-Ray Daemon.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So there's two ice to the word Daemon in here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray, Amazon EC2
- Key Insights: That means that the X-Ray Daemon Container will be running on every single EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: Amazon EC2, Amazon ECS
- Key Insights: If you have 10 EC2 instances in your ECS cluster, then you will have 10 containers, one on each EC2 instance, running as a Daemon Container.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray, Amazon EC2
- Key Insights: Okay, so that means that the X-Ray agent is now running on all these EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Distributed Tracing and Events, Network Telemetry
- Services: AWS X-Ray, Amazon EC2
- Key Insights: And so you can launch your App Containers on the EC2 instances, and after matting them correctly from the networking standpoint to hit the X-Ray Daemon with a UDP port.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then you can run all your applications.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray, Amazon EC2
- Key Insights: So, in this case, you will just have one X-Ray Daemon Container per EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray, Amazon ECS
- Key Insights: Now, the second pattern to run X-Ray in your ECS cluster is called the Side Car pattern.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So what does it mean, Side Car pattern?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Distributed Tracing and Events, Network Telemetry
- Services: AWS X-Ray, Amazon EC2
- Key Insights: That means you still have your EC2 instances, but now you're going to run one X-Ray Daemon Container alongside each application container, and they will connect from a networking stand point.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So this is why it's called a Side Car, it's because the X-Ray Daemon now runs side-to-side as our application container, and it's a Side Dar.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, if we look at this now, we have one Side Car per App Container.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray, Amazon EC2
- Key Insights: So, if you have 20 App Containers under one EC2 instance then we'll have 20 X-Ray Side Car.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, this is the way it works, from a Side Car pattern.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Observability Operational Context
- Services: Amazon EC2, Amazon ECS
- Key Insights: Now, Fargate Clusters, we don't have control over the EC2 instances, it's just an ECS Cluster that we don't have any control over the underlying instances.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So, we can not use the X-Ray Daemon Container, we also have to use the X-Ray Container as a Side Car pattern.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So, if you want to launch a Fargate task, it would be the App Container and the X-Ray Side Car, here and there.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray, Amazon ECS
- Key Insights: So, that gives you the three options to run ECS and X-Ray and hopefully that makes it a little bit clear as to how you could do it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now, I'm going to still show you an Example Task Definition, though we're not going to run it because we need to build all the images, and that would be quite complicated.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But so here's something from the documentation.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And what do we see here?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: Well, the first thing we should look at is that the X-Ray Daemon is going to be running, that's the first part of this task definition.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And in terms of port mappings, the container port 2000 is mapped onto the instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And the protocol is UDP.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, remember this container port 2000, and the protocol is UDP.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: And so once the X-Ray Daemon is running, this is a Side Car pattern, here we have our application.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It's called Scorekeep Api for this case.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: And so the second thing we need to look at, is this environment variable called AWS X-Ray Daemon Address and this is an environment variable you need to set, because that's how the X-Ray Daemon will know where to find that's how the X-Ray as the case sorry, will know how to find the X-Ray Daemon.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Distributed Tracing and Events, Network Telemetry
- Services: AWS X-Ray
- Key Insights: So, the value of this, is X-Ray Daemon port 2000, and this 2000 is coming from the 2000 from above, and then finally, the last thing you need to do, is link these two containers together from a networking stand point.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So that's why it says links X-Ray Daemon, and this is how it's able to resolve this host name X-Ray Daemon to this container right here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Observability Operational Context
- Services: Amazon ECS
- Key Insights: So, it could be a little bit complicated, especially if you're new with ECS.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: But remember, the take away from this slide is that you need to map the Container Port of the X-Ray Daemon to 2000 UDP.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 38:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: Then, you need to set an environment variable, called X-Ray Daemon address.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: And finally, you need to link these two containers from a networking standpoint.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 40:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray, Amazon ECS
- Key Insights: So, I hope that helps you to understand precisely how to run X-Ray with ECS.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 41:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I know that question has come up on the exam several times with several students.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So I thought it would be great for you to get a little bit more insights deeper inside to how these things work.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 43:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: All right, I hope that was helpful, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/258_AWS Distro for OpenTelemetry.txt

Line 1:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about AWS Distro for OpenTelemetry.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So OpenTelemetry is a project and AWS has created a distribution of that project that is AWS supported and they call it Secure and Production Ready.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So what is OpenTelemetry?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Distributed Tracing and Events, Operational Monitoring
- Services: (none explicit)
- Key Insights: Well, OpenTelemetry is a way to get a single set of APIs, library, agents and collector services to collect distributed traces and metrics for your applications.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It can also help you collect metadata from your AWS resources and services.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: The idea is that it's very similar to X-Ray, but it's open-source.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: And so you have agents and these agents can be auto-instrumented to collect traces without you even changing your code which looks very similar to X-Ray.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And on top of it, thanks to this collection that can happen at scale within your account and your applications.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Distributed Tracing and Events, Operational Monitoring
- Services: (none explicit)
- Key Insights: All these traces and these metrics can be sent to multiple AWS services as well as partner solutions.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 10:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: So for example, we have traces that can be sent into the X-Ray service.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 11:
- Concepts: Distributed Tracing and Events, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: We have metrics that can be sent into CloudWatch or traces and metrics that can be sent into Prometheus.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 12:
- Concepts: Observability Operational Context
- Services: AWS Lambda, Amazon EC2, Amazon ECS, Amazon EKS
- Key Insights: The idea is that you're going to instrument your applications that are running on AWS, for example on EC2, on ECS, on EKS, Fargate or Lambda or it could be applications that are running on-premises.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Distributed Tracing and Events, Operational Monitoring
- Services: AWS X-Ray
- Key Insights: You're going to then use the OpenTelemetry standard to send these traces and metrics to either AWS such as X-Ray or partner services such as Datadog and so on.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 14:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: And so the difference between OpenTelemetry and X-Ray is that you may want to migrate from X-Ray to using the AWS Distro for OpenTelemetry.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: If you want to standardize with open source APIs because you want everything to be using Telemetry.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Distributed Tracing and Events
- Services: (none explicit)
- Key Insights: Or you may want to send the traces data to multiple destinations simultaneously which is something that OpenTelemetry supports.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 17:
- Concepts: Distributed Tracing and Events
- Services: (none explicit)
- Key Insights: So to summarize, we have the Distro for OpenTelemetry where we collect traces and then the request from each app gets passed through.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 18:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Then we can collect metrics again for each map that has it.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then we can also collect, thanks to the AWS Distro, we can collect contextual data about your AWS resources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Distributed Tracing and Events, Operational Monitoring
- Services: AWS X-Ray, Amazon CloudWatch
- Key Insights: And this can be sent to X-Ray, CloudWatch, Amazon Managed Service for Prometheus, as well as any partner monitoring solutions that is supported by OpenTelemetry.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Just a high level overview, but you know what it is.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: If you see this at the exam, usually it's only, it can only be one very high level question.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/259_CloudTrail.txt

Line 1:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Now let's talk about CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 2:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So CloudTrail is a way to get governance compliance and audit for your AWS Accounts.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 3:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And CloudTrail is enabled by default.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 4:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: This will allow you to get a history of all the events and API Calls made within your AWS Accounts, by the console by the SDK, the CLI other services on AWS and all these logs will be appearing in CloudTrail.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 5:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS CloudTrail, Amazon CloudWatch, Amazon S3
- Key Insights: Now, what you can do is that you can also put these logs from CloudTrail into CloudWatch Logs or Amazon S3.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 6:
- Concepts: Audit Logging
- Services: Amazon S3
- Key Insights: And you can create a trail to be applied to all regions or a single region, if you wanted to accumulate all these history of events accumulated across all regions into one specific, for example, S3 buckets.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 7:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And when we use CloudTrail, for example, we'll say someone went ahead and deleted something in AWS.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 8:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: For example, say that an EC2 instance was being terminated and you wanna figure out who did it?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Well, the answer is to look into CloudTrail because CloudTrail will have that API Call in it and will be able to get to the bottom of it and understand who did what and when.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 10:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So to summarize CloudTrail is in the middle and the actions of the SDK, the CLI, or the console or even IAM Users and IAM Roles or other services will be in the CloudTrail console.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 11:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: We can look in it to inspect and audit what happened.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 12:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon S3
- Key Insights: And if you want to have all the events for more than 90 days, then we can send them into CloudWatch Logs or we can send them into an S3 buckets.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 13:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So let me dive a little bit deeper for CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 14:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So we have three kinds of events that you can see in CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The first one is called the Management Events and these represents operations that are performed on resources in your AWS Accounts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: For example, whenever someone configures security, they will use the API Call called IAM AttachRolePolicy.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And this will appear in CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: If you create a subnet, this will appear as well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: If you set up logging, this will appear by default.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Anything that modifies your resources or your iOS accounts will appear in CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 21:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And by default, trails are configured to log Management Events no matter what.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can separate two kind of Management Events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You have the Read Events that don't modify resources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: For example, someone is listing all the users in IAM or listing all the EC2 instances in EC2, these kind of things.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can separate them from Write Events that may modify resources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: Amazon DynamoDB
- Key Insights: For example, someone deletes or tries to delete a DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And obviously the Write Events have probably a lot more importance because they can wreck damages into your AWS infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Whereas the Read Events is just to get information which are still very important, but maybe less destructive.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then you have Data Events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So they're separate and by default Data Events as are not logged because they're high volume operations.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So what are Data Events?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: Well, you have Amazon S3 object level activity for example, GetObject, DeleteObject, PutObject.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: And as you can see, these can be happening a lot on an S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so this is why they're not logged by default and you have the option to separate again Read and Write Events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So a Read Event will be a GetObject whereas a Right Event would be a DeleteObject or a PutObject.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Audit Logging
- Services: AWS CloudTrail, AWS Lambda
- Key Insights: Another kind of event you can have in a CloudTrail are AWS Lambda function execution activities.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 37:
- Concepts: Log Analytics and Investigation
- Services: AWS Lambda
- Key Insights: So whenever someone uses the Invoke API so you can get insights about how many times your Lambda functions are being evoked.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry and visibility signal.

Line 38:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: And again, this could be really high volumes, if your Lambda functions are executed a lot.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: And the third kind of events in CloudTrail are called CloudTrail Insights Events.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 40:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: And so I will talk to you about CloudTrail Insights in a bit more details in the next slide.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 41:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: So now let's talk about CloudTrail Insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 42:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So when we have so many Management Events across all types of services and so many APIs happening very quickly in your accounts, it can be quite difficult to understand what looks odd, what looks unusual and what doesn't.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: And so this is where CloudTrail Insights comes in.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 44:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: So with CloudTrail Insights and you have to enable it and you have to pay for it, it will analyze your events and try to detect unusual activity in your accounts.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 45:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, in accurate resource provisioning, hitting service limits, burst of AWS IAM actions, gaps in periodic maintenance activity.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 46:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So the way it works is that CloudTrail will analyze what normal management activities look like to create the baseline and then it will continuously analyze anything that is the right type of event.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 47:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So whenever something is changed or try to be changed to detect unusual patterns.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 48:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: So very simply the Management Events are going to be continuously analyzed by CloudTrail Insights which will generate Insights Event in case something is detected.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 49:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And so these anomalies, so these Insight Events will appear in the CloudTrail console.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 50:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: They will also be sent to Amazon industry if you want to, and an EventBridge Event.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 51:
- Concepts: Audit Logging, Log Analytics and Investigation, Operational Monitoring
- Services: AWS CloudTrail, Amazon CloudWatch
- Key Insights: So in CloudWatch event is going to be generated in case you need to automate on top of these CloudTrail Insights, for example, to send an email.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 52:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: So this is the idea behind CloudTrail Insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 53:
- Concepts: Audit Logging, Retention and Forensics
- Services: AWS CloudTrail
- Key Insights: Finally, let's talk about CloudTrail Event Retention.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 54:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon RDS
- Key Insights: So events by default are stored for 90 days in CloudTrail and then afterwards they're deleted, but sometimes you may want to have events for longer in case you want to go back to something that happened maybe a year ago for audited purposes.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 55:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: And so to keep events beyond this period, what you have to do is that you have to log them to S3.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 56:
- Concepts: Log Analytics and Investigation
- Services: Amazon Athena, Amazon S3
- Key Insights: So send them to S3, and then you would use Athena to analyze them.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 57:
- Concepts: Audit Logging, Log Analytics and Investigation, Retention and Forensics
- Services: AWS CloudTrail
- Key Insights: So very simply all your Management Events, your Data Events and your Insights Events are going to go into CloudTrail for 90 days, retention period.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 58:
- Concepts: Retention and Forensics
- Services: Amazon S3
- Key Insights: And then you would log those into your S3 buckets for long-term retention.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 59:
- Concepts: Log Analytics and Investigation
- Services: Amazon Athena, Amazon S3
- Key Insights: And when you're ready to analyze them, you would use the Athena service, which is a serverless service to query data in S3 to find the events Okay I hope you like this lecture, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Investigation and forensic signal.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/260_CloudTrail Hands On.txt

Line 1:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So let's have a look at CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 2:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And CloudTrail is a service to intercept any API calls or user activity within your accounts.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so here on here on the left hand side panel, we can have a look at the event history and this is the event history for the last 90 days of management events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: So you can see all the API calls that are being made over time in this account.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it doesn't have to be very interesting, okay, but all of them will be here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So what I wanna do for example, is that I want to look in my EC2 console, and I created a demo instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And what I'm going to do is that I'm going to terminate this instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I do right click, terminate, and now the instance is being terminated.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And what I'm going to do is I'm going to check whether or not this event happens and appears within CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to wait about five minutes and get back to you.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: And so I just refreshed my pages, and as you can see, I ran the terminate instances, API call.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And we can see what's the event source.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So it's EC2 from where it was done, the access key that was used, the region that was used, and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And we can get the whole event right here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So that's the full power of CloudTrail is that we can see all the events really happening from within CloudTrail directly in this UI.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this is a short introduction at the practitioner level, but this is enough for you to get started and to answer questions at the exam.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/261_CloudTrail - EventBridge Integration.txt

Line 1:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: A very important cultural integration you need to know about is the one with Amazon EventBridge to intercept any API calls.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 2:
- Concepts: Audit Logging
- Services: Amazon DynamoDB
- Key Insights: So let's say you wanted to receive an SNS notification, anytime a user would delete a table in DynamoDB by using the DeleteTable API Call.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So what happens that whenever we do an API call in AWS, as you know, the API call itself is going to be logged in CloudTrail.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Investigation and forensic signal.

Line 4:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: That's for any API call.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: But then all these API calls will end up as events as well in Amazon EventBridge.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 6:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: And so we can look for that very specific delete table API call, and create a rule out of it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this rule will have a destination the destination being Amazon SNS and therefore, we can create alerts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: AWS CloudTrail, Amazon EventBridge
- Key Insights: So let me give you a few more examples on how you can integrate Amazon Eventbridge and CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal; Event-driven remediation signal.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, say, you wanted to be notified whenever a user was assuming a role in your accounts.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So the AssumeRole is an API in the IAM service and therefore, is going to be logged by CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 11:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: And then using EventBridge integration, we can trigger a message into an SNS topic.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 12:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: Similarly, we can also intercept API calls that, for example, change the Security Group inbound rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Audit Logging
- Services: Amazon EC2
- Key Insights: So the Security Group call is called AuthorizeSecurityGroupIngress, and it's an EC2 API call.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: AWS CloudTrail, Amazon EventBridge
- Key Insights: So these are going to be logged again by CloudTrail and then they will appear in EventBridge and then we can trigger a notification in SNS.
- Hidden/Implicit Meaning: Investigation and forensic signal; Event-driven remediation signal.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, the possibilities are endless, but now you have a few ideas of how the integration can be leveraged.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/262_CloudTrail vs CloudWatch vs X-Ray.txt

Line 1:
- Concepts: Audit Logging, Distributed Tracing and Events, Operational Monitoring
- Services: AWS CloudTrail, AWS X-Ray, Amazon CloudWatch
- Key Insights: So this is something that may look obvious for you but what is the difference between CloudTrail, CloudWatch and X-Ray?
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I'll just try to summarize it in one slide.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So CloudTrail is to audit API calls that are made in your account by user, services or even from the AWS console.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 4:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: It's really useful when you want to detect unauthorized calls or you wanna find the root cause of changes due to API calls.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Now, CloudWatch is to use metrics for monitoring, so CloudWatch Metrics for monitoring and CloudWatch Logs for storing the application logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 6:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: CloudWatch Alarms to send notification in case of unexpected metrics, for example.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Event-driven remediation signal.

Line 7:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And so all of this has to do with monitoring, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS CloudTrail, Amazon CloudWatch
- Key Insights: So CloudTrail is API calls, CloudWatch is going to be around monitoring.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 9:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: X-Ray is for automated trace analysis and central service map visualization so if you have a distributed service, this is a great way to look at things.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 10:
- Concepts: Distributed Tracing and Events
- Services: AWS X-Ray
- Key Insights: And this is really helpful for debugging and also looking at stuff like latency, errors and fault analysis from within the X-Ray console.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can also get, as I said, request tracking across your distributed systems.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So hopefully that makes it pretty clear which service is used for what.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Audit Logging, Distributed Tracing and Events, Operational Monitoring
- Services: AWS CloudTrail, AWS X-Ray, Amazon CloudWatch
- Key Insights: CloudWatch is really just for overall metrics, X-Ray is a lot more granular, trace-oriented type of service and CloudTrail is going to be for auditing API calls.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, hope that was helpful.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/20_AWS Monitoring & Audit_ CloudWatch, X-Ray and CloudTrail/263_AWS Quick Clean-Up.txt

Line 1:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: ï»¿WEBVTT So just a quick cleanup.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Observability Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: At this stage we're not going to use Beanstalk anymore, so if you go to Beanstalk you're able to delete all these environments, and for this you can just delete the application, and then you click on delete and this will delete everything you have in there.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: AWS Elastic Beanstalk
- Key Insights: Similarly you can go to CodeDeploy and CodePipeline and if you wanted to you could delete them as well, so the process is pretty easy you go CodePipeline, you click on your pipeline and then you can just edit and delete if you wanted to save some cost, and you can also delete everything else we've created from this course, this just allows you to control your cost, but the most expensive resource right now is going to be Elastic Beanstalk so make sure that you delete Elastic beanstalk if you followed me in this course.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/24_AWS Monitoring & Audit_ CloudWatch, CloudTrail & Config/267_AWS Monitoring - Section Introduction.txt

Line 1:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: OK so we have our application it's in the cloud.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It's running.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And your manager calls you at 2:00 a.m. and say it's not running anymore.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: What happened?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Well we've deployed her application but we forgot to turn on monitoring.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Monitoring is so important and it will make sure that your applications are running the right way.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Audit Logging, Operational Monitoring
- Services: (none explicit)
- Key Insights: Such as you can see what's happening with the logs with the metrics with tracing and audits who made what's in your AWS infrastructure.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This section is so important because as a developer.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: I never deployed an application in AWS without enabling some kind of monitoring.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: I know you're excited to learn about monitoring!
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Let's go.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/24_AWS Monitoring & Audit_ CloudWatch, CloudTrail & Config/268_CloudWatch Metrics.txt

Line 1:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So now, let's talk about Amazon CloudWatch.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And the first service I wanna talk about within CloudWatch is CloudWatch Metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 3:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So CloudWatch provides metrics for every services out there in AWS, and so, therefore, you can monitor everything that's happening in your accounts.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 4:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And a metric is just a variable you wanna monitor.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Network Telemetry
- Services: Amazon EC2
- Key Insights: For example, for an EC2 instance, it could be the CPUUtilization, the NetworkIn, and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: For Amazon S3, it could be your bucket size and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So metrics belong to namespaces, and, therefore, they are bucketed in two different namespaces.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You have one namespace per service, basically.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you have dimensions, and they are attributes of a metric.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, a metric about CPUUtilization can be related to a specific instance id, or a specific environment, and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And you have up to 30 dimensions per metric.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So the metrics are time-based, so, therefore, they must have a timestamp.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry and visibility signal.

Line 13:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And then once you have a lot of metrics, you can create a CloudWatch dashboard of metrics so that you can see them all at once in a specific manner.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 14:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Also, you can create CloudWatch Custom Metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 15:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So instead of relying on the metrics that are provided by every services in AWS, you can create your own custom metric.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 16:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: For example, to extract the memory usage out of an EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: That is a classic use case of using a CloudWatch Custom Metric.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: The other thing you can do with your CloudWatch Metrics is to stream them outside of CloudWatch.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 19:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So the idea is that you want to continuously stream CloudWatch Metrics to a destination of your choice.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 20:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You're gonna get near real-time delivery and low latency.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Observability Operational Context
- Services: Amazon Data Firehose, Amazon Kinesis
- Key Insights: And that destination is Amazon Kinesis Data Firehose, and from there, you can send it to anywhere you want.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Distributed Tracing and Events, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Or you can also send your CloudWatch Metrics directly into a third-party service provider, such as Datadog, Dynatrace, New Relic, Splunk, Sumo Logic, and so on.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon Data Firehose, Amazon Kinesis
- Key Insights: Well, your CloudWatch Metrics are going to be streamed near real-time into Kinesis Data Firehose, and you obviously have to set that up for it to work.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 25:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon Athena, Amazon Data Firehose, Amazon Kinesis, Amazon OpenSearch, Amazon RDS, Amazon Redshift, Amazon S3
- Key Insights: And from Kinesis Data Firehose you can, for example, send them into an Amazon S3 bucket from which you can use Amazon Athena to analyze your data in Amazon S3, or you can use Amazon Redshift to have a data warehousing for your metrics, or Amazon OpenSearch to build dashboards from Amazon OpenSearch, or do analytics there.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 26:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon Data Firehose, Amazon Kinesis
- Key Insights: And you can have the choice to stream all your metrics for all your namespaces or to only filter a few namespaces in so that you only have a subset of your metrics filtered and sent to Kinesis Data Firehose.
- Hidden/Implicit Meaning: Constraint or limitation signal; Telemetry and visibility signal.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now let's go have a look in the console.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So when you are in the CloudWatch dashboard on the left-hand side, there is Metrics, and you can find all the metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 29:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: Now, as you can see, we see all the namespaces in here for our metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 30:
- Concepts: Observability Operational Context
- Services: Amazon EBS, Amazon EC2, Amazon EFS, Auto Scaling, Elastic Load Balancing
- Key Insights: If you have a look, we have, based on services, for example, ELB, Auto Scaling, EBS, EC2, EFS, and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So a lot of information given to you here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So we can click on EC2, and we can have a per instance metric just to see one metric.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to type credit to see the CPUCreditBalance, for example.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I will take this instance, which was created a long time ago, and then what I'm going to do is I'm going to choose a custom range, which is going to be one month, to find some data in here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we have the data here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And so, the cool thing with CloudWatch Metrics is that you can just click and select the time span you want.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 37:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And here we go, we're getting some information around our metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 38:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So, as you can see, we get metrics every five minutes here.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 39:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So every data point is every five minutes because detailed monitoring was not enabled for this instance, okay, but if I did enable detail monitoring, I would get data every one minute.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 40:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So this is just the basics of CloudWatch Metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 41:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: Nothing too, too fancy, but we can definitely filter by time.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Observability Operational Context
- Services: AWS CloudFormation
- Key Insights: We can view it as a different line, so Stacked area, or Line, or Number, or Pie chart.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: You can add it to a dashboard.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 44:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can download it to a .csv.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 45:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can share it, okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 46:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So CloudWatch Metric is very very handy, and you can have a look at all the metrics, you know, based on the region you want, based on the dimension you want, the resource id you want, so you can filter everything.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 47:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So that's it for CloudWatch Metrics.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 48:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/24_AWS Monitoring & Audit_ CloudWatch, CloudTrail & Config/269_CloudWatch Logs.txt

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

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/24_AWS Monitoring & Audit_ CloudWatch, CloudTrail & Config/270_CloudWatch Logs - Hands On.txt

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

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/24_AWS Monitoring & Audit_ CloudWatch, CloudTrail & Config/271_CloudWatch Logs - Live Tail - Hands On.txt

Line 1:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So I want to show you a really cool CloudWatch logs feature called Live Tail.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So first let's create a log group and I'll call this one demo log group and then create it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We click on it and then we're going to create a log stream called DemoLogStream.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Let's create it and click on it and then we are in it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we can start tailing.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Here's the button start tailing and what this means, and I will just keep the other one open in the back page.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So we have access to here our log stream, and here we clicked on Live Tail and we are in the Live Tail setting.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So here this is a Live Tail UI and we have filtered on a specific demo log group and then demo log stream as a log stream.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This is optional.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can choose to specify or not a log stream.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: Then you apply your filter and this is going to wait for log events that match your filter.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So that means that as events are being posted into Cloudwatch logs, they are going to appear here in our Live Tail, which could be very helpful for your debugging needs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's do an example.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we're going to go into our demo log stream again, in here, and under actions we're going to create a log event and we'll have hello world so we can create a log event and post it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So now hello world has been posted and if you go into your Live Tail, as you can see it has appeared.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is quite a nice way because if you have log streaming very fast, it can all appear here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then from this we can get more information around when this happened, the group and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then we can click here to get a link into the direct log stream it happened into.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So it's just a very cool, very easy feature to debug your CloudWatch logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 20:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And from a pricing perspective, you only get a few hours a day, so maybe one hour a day of free usage of Live Tail.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So please make sure to cancel and close your lifestyle session so that you don't have any cost, but you have one hour of free every day.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is quite nice.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Alright, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/24_AWS Monitoring & Audit_ CloudWatch, CloudTrail & Config/272_CloudWatch Agent & CloudWatch Logs Agent.txt

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

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/24_AWS Monitoring & Audit_ CloudWatch, CloudTrail & Config/273_CloudWatch Alarms.txt

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

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/24_AWS Monitoring & Audit_ CloudWatch, CloudTrail & Config/274_CloudWatch Alarms Hands On.txt

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

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/24_AWS Monitoring & Audit_ CloudWatch, CloudTrail & Config/275_CloudWatch Network Synthetic Monitor.txt

Line 1:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So now let's talk about CloudWatch Network Synthetic Monitor.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So the idea is that you have connected your cloud to your on-premises corporate data center through Direct Connect or a VPN connection, and you want to detect network issues between your data center and AWS.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Network Telemetry, Operational Monitoring
- Services: (none explicit)
- Key Insights: That is precisely what this Network Synthetic Monitor is doing.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So you're going to identify any type of network performance degradation, such as packet loss, latency, or jitter.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You don't need to install any agents.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It will test ICMP or TCP traffic on IPv4 on-premises traffic through your Direct Connect or your site-to-site VPN connection.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So all the metrics and the results are going to be published to CloudWatch Metrics so you can take proper action.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The idea is that it's a way for you to ensure that the connection you established between your data center and AWS is working as expected and you get that information in real time.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/24_AWS Monitoring & Audit_ CloudWatch, CloudTrail & Config/276_EventBridge Overview (formerly CloudWatch Events).txt

Line 1:
- Concepts: Distributed Tracing and Events, Operational Monitoring
- Services: Amazon CloudWatch, Amazon EventBridge
- Key Insights: So now let's talk about Amazon EventBridge, and Amazon EventBridge used to be formally known as CloudWatch Events so you will see EventBridge in the exam, but just so you know, if you come from old AWS experience, then it used to be named the CloudWatch Events.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 2:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: So with EventBridge, you can do a lot of things.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, we can schedule cron jobs in the Cloud, so we can schedule scripts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: For example, we say, "Hey, every hour please trigger a Lambda function," and that Lambda function will run a script.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 5:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: So the events are generated every hour, hence the name Amazon EventBridge, but not just a schedule like every hour, it can also react to an event pattern.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So there are event rules that can react to a service doing something.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, you can react to the event of IAM root user sign in in the console.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So when that happens, maybe you want to send a message into an SNS topic and receive an email notification, so that if anyone is using the root account, then you will receive an email, which may be a good security feature for your accounts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: Also, for example, you have different destinations, you can trigger Lambda functions, send SNS and SQS messages, and so on, I will show you this all in a second.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 10:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: So EventBridge sits in the middle and we have all the sources that can send events into Amazon EventBridge.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 11:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So for example, EC2 instances when they start, when they're stop, when they're terminated, and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: AWS CloudTrail, Amazon EventBridge, Amazon S3, Trusted Advisor
- Key Insights: Code Build, for example, if you have a build that fails or S3, whenever there's an event, for example, when an object is uploaded, or Trusted Advisor when you have a new finding of security in your accounts or as a good combo, you can combine EventBridge and CloudTrail and actually intercept any API call made within your AWS accounts, which is huge.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Investigation and forensic signal; Event-driven remediation signal.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Also, as I said, you can have a schedule or a cron, so you can say every four hours or every Monday at 8:00 am, the first Monday of the month, this is something you can do as well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Distributed Tracing and Events, Log Analytics and Investigation
- Services: Amazon EventBridge
- Key Insights: Then these events get sent into Amazon EventBridge and you can set up a filter.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, you say, "Hey, I only want these events for a specific bucket," for Amazon is free, for example.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 16:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: Then EventBridge is going to generate adjacent document that represents the details about your events.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So which instance, for example, gets started, whether its ID, and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: A lot of information, the time, the IP, and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So once this is done, then this JSON document, this event, can be sent into so many kind of different destinations, allowing you to do really awesome integrations.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Observability Operational Context
- Services: AWS Batch, AWS Lambda, Amazon EC2, Amazon ECS, Amazon Kinesis
- Key Insights: For example, you can schedule and trigger a Lambda function, you can schedule a batch in AWS Batch, you can launch an ECS task for Amazon ECS, you can send a message to SQS, to SNS, or even to a Kinesis Data Stream, you can, for example, start a Step Function, you can start a CI/CD Pipeline with CodePipeline or a build with CodeBuild so you don't actually know all these things, of course, these are different AWS services, but I'm just giving you an overview what you can do and you can also, for example, start an SSM automation or a specific EC2 action, such as starting or stopping or restarting an EC2 instance.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you can see the possibilities are endless and it really depends on what is your use case.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: So Amazon EventBridge is what we call the default event bus, which is what we just saw, which represents services from AWS that send their events into the default event bus, but Amazon EventBridge has more capability.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: There is something called the partner event bus and this is AWS that has integrated with partners, most likely they are going to be software as a service partners and they are going to send their events directly into your partner event bus.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So if you're using, for example, Zendesk, Datadog, Auth0, or others, you need to check the partner list.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then there's a chance that they can send their events directly into a specified partner event bus and so you can react to changes happening outside of AWS directly in your accounts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Distributed Tracing and Events
- Services: AWS SAM, Amazon EventBridge
- Key Insights: Okay, and finally, there is a custom event bus so you can create your own event buses and then your own applications can send their own events into a custom event bus and therefore, you have the same capability of sending these events to different destinations thanks to the EventBridge rules.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Also, you can access event buses, cross accounts, using resource based policies as we'll see very soon.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Log Analytics and Investigation, Retention and Forensics
- Services: (none explicit)
- Key Insights: You can also archive events so all of them or just a subset event to a filter and by archiving the events, you can set it to be either indefinite retention or a set period for retention, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Retention and Forensics
- Services: (none explicit)
- Key Insights: What you can do with these is that you can replay these archived events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Retention and Forensics
- Services: AWS Lambda
- Key Insights: For example, say there is a bug in your Lambda function and you want to fix it, so you fixed it and then you want to retest the event, replay it, then you can replay these archived events, which is super handy for debugging, super handy for troubleshooting, and for fixing production as well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: Now, EventBridge receives a lot of events from different places and so therefore, you need to understand what the events are going to look like and remember, these events are in this adjacent format we just saw.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 32:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: So therefore, there is a Schema Registry and the capability is that EventBridge is going to analyze the events in your bus and then it's going to infer the schema and the schema out of the Schema Registry is going to allow you to generate code for your application that will know in advance how the data is structured in the event bus.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 33:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, this is an example here for a specific CodePipeline in action.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: There's a schema and you can download the code directly using the Orange button and this will know directly how to infer the schema and structure the data out of your event bus.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Also, the schemas can be versioned so you can over time iterates between the schemas of your application, of course.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: Now, we have resource based policies for EventBridge, what does that mean?
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 37:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: That means that you can manage permissions for a specific event bus.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 38:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, you can say that a specific event bus can be allowed or denied other events from other regions or accounts and the use case for it, for example, would be to have a central events bus within your AWS organization, so a set of accounts and then all these events are going to be aggregated, so how does that work?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Well, we have a central event bus with a specific account and we're going to add a specific resource based policy, allowing other accounts to send events to it and therefore, this other account, for example, will be able to do a put events and send events directly into the central event bus.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 40:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: So that's it, we've seen EventBridge left to right, you know everything about it.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 41:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So remember, you can react to events happening within your accounts, thanks to the default event bus, but also partner events and also your own events with custom buses, you have the Schema Registry capability, and then you have resource based policies, which allow you to have a cross accounts, for example, capability for event buses.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/24_AWS Monitoring & Audit_ CloudWatch, CloudTrail & Config/277_Amazon EventBridge - Hands On.txt

Line 1:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: So let's have a look at Amazon EventBridge.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you have several options.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can create a rule with an event pattern.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We're gonna do this right now.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then you can have a schedule rule, which is the old way of doing schedule.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: So there is now something called EventBridge schedule.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We're also going to have a look at it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: Pipe is to send data from an event source to target with optional filtering and enrichment.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And schema registry is to look at the schemas of all these events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: So just to get started, we're going to do the first option, EventBridge rule with event pattern.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we need to create a rule, and what we want to do is to react to any event where an instance is going to be terminated or shut down.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you click here on Service Events, and here you have a list at all the events that can happen within your accounts by service.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it's a lot.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: For example, if you take any of these, for example, if you take Lambda, you can have a look at all these things.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: Console actions or EC2, you can have a look at all these things.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it's a lot more type of things you can choose from for events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the one we're going to look at is one of the most popular.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: It's called EC2 instance State-change Notification.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So that means that anytime an EC2 instance state will change, we're going to get a notification.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: So if we look at it at this event, we can have a look at the schema of the event and then a sample event.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Like what it can look like.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: So the schema defines how the sample event will look like.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And now we want to be able to filter this event and on the state value.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the state is a string and we have to exit the value.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we can say Equal, for example, and we are going to have several values.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the first one is shutting down and the second one is going to be terminated.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: How do I know this?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Well, it's from the schema itself.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Observability Operational Context
- Services: AWS SAM
- Key Insights: If you have a look at the event pattern on the bottom line, on the bottom page, sorry, you can have a look at Sample events 1, 2, 3.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And if you look at number 5, it says "state": "shutting-down".
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And number 6, it says "state": "terminated".
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So these are the events we want to be catching.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So now our event pattern filter is defined right here on the right-hand side.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So now we have all the events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And now for the target, again, we have several options.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Observability Operational Context
- Services: API Gateway, AWS Batch
- Key Insights: So we can have a look at all the options right here, such as API gateway, batch jobs.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: We can also reboot an EC2 instance, terminate one.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 38:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We have SNS topic, SQS queues, I mean so many.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But what we want to do right now is to receive an alert, so we choose SNS Topic and then we want it to be our demo topic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 40:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So create it if you don't have a topic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 41:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can just create an SNS topic very easily.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then we'll need to have an exception role to be able to send a message into this topic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So a role is going to be automatically created for us. and then we get some more information around the retry policy and the dead-letter queue.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 44:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 45:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Let's click on Create.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 46:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: I'll call this one NotifyEC2InstanceShutdownOrTerminated, and we'll click on Create.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 47:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And so now that this role has been created, anytime we shut down or terminate an EC2 instance, we will receive a notification.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 48:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The other option is to use Schedule.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 49:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So on the left-hand side you have schedules, and then you can create a schedule.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 50:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: And this one is going called InvokeLambdaEveryHour.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 51:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And several options.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 52:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Either it's a one-time schedule, so we do something once and then done, or recurring.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 53:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And we have either a Cron-based schedule or a rate schedule.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 54:
- Concepts: Observability Operational Context
- Services: Amazon Lex
- Key Insights: We'll use 1 hour and no flexible time window.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 55:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And Next.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 56:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And here we have the option to invoke several things.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 57:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So what do we wanna do every hour?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 58:
- Concepts: Observability Operational Context
- Services: AWS Lambda, Amazon Data Firehose, Amazon ECS, Amazon Kinesis, Amazon RDS
- Key Insights: Well, we have all these options such as, for example, running a task on Amazon ECS or putting a records in Kinesis Data Firehose or invoking a Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 59:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: So you can say, for example, in the Invoke Lambda function, and if you have a Lambda function, you can select it from here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 60:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you get the idea.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 61:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: Once you've done this, you have a schedule in Amazon EventBridge.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 62:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Other things that you need to be looking at is event buses.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 63:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So right now we have the default event bus.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 64:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And the default events bus is anything that will be AWS-generated type of events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 65:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But you can create your own event bus, and this is going to be a custom event bus.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 66:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: And here you have the ability yourself to send your own events into this event bus and so therefore you can develop custom applications that are based on Amazon EventBridge, which can be very helpful.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 67:
- Concepts: Retention and Forensics
- Services: (none explicit)
- Key Insights: You have the option to archive your events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 68:
- Concepts: Retention and Forensics
- Services: (none explicit)
- Key Insights: When they happen on the event bus, then you have an archive you can look into.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 69:
- Concepts: Retention and Forensics
- Services: (none explicit)
- Key Insights: And you can also replay events if you wanted to replay a past event from an archive.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 70:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, other things need you look at is partner event sources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 71:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it's possible for you to actually get data from third-party partners directly into your AWS accounts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 72:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: So if you use, for example, Auth0, then the events of Auth0 will be put and inserted into Amazon EventBridge.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 73:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: And then you can, for example, use a Lambda function or do something after someone has done the login in of zero.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 74:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But you can see you have so many different kinds of partners right here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 75:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And API destinations.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 76:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: That means that, for example, if you wanted to have an event within EventBridge, but then to connect to an external HTP destination, you can also define one here.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 77:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: And this allows you to connect EventBridge to an outside source, for example, to have integration with your own infrastructure.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 78:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it's quite a lot of different things.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 79:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And finally, for schemas, this is all the schemas of all the AWS events that you have.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 80:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Or you can have your own custom registry for your own events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 81:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: But this allows you to understand the shape and form the events will have in Amazon EventBridge.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 82:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And that's it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 83:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 84:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can go here in the rules and also disable them if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 85:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But I hope you liked this lecture and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/24_AWS Monitoring & Audit_ CloudWatch, CloudTrail & Config/278_CloudWatch Insights and Operational Visibility.txt

Line 1:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So now, let's talk about the insights type of CloudWatch products.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 2:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And we have, the first one we have is the CloudWatch container insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 3:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So this is as the name indicates, the way to collect, aggregate, and summarize metrics and logs from your containers.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 4:
- Concepts: Observability Operational Context
- Services: Amazon EC2, Amazon ECS, Amazon EKS
- Key Insights: And it's available for containers that you run on Amazon ECS, on Amazon EKS, on Kubernetes platform directly on EC2 or on Fargate, both for ECS and EKS.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So the idea is that thanks to the CloudWatch container insights, we can very easily extract the metrics and the logs out of our containers into a very detailed and granular dashboard from within CloudWatch.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 6:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch, Amazon EC2, Amazon EKS
- Key Insights: The other thing you need to know is that if you are using CloudWatch container insights on Kubernetes, would it be for Amazon EKS or Kubernetes running on EC2?
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 7:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: The way CloudWatch insights work is that it's using a containerized version of the CloudWatch agents to discover containers.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's the first thing you need to remember is this one.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Log Analytics and Investigation
- Services: AWS Lambda
- Key Insights: The second one is Lambda insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you're guessing what it would be about.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Operational Monitoring
- Services: AWS Lambda
- Key Insights: It is about monitoring and troubleshooting solution for your serverless applications running on AWS Lambda.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Network Telemetry
- Services: AWS Lambda
- Key Insights: So again, it's going to collect, aggregate, and summarize system level metric, including CPU time, memory, disk, and network, and also information around your cold starts, and your Lambda worker shutdowns.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: And it's provided for your Lambda function as a Lambda layer.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You don't really know this.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: But the idea is that it runs next to your Lambda.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: AWS Lambda
- Key Insights: And it's going to create, again, a specified dashboard called Lambda insights to monitor the performance of your Lambda functions.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 17:
- Concepts: Operational Monitoring
- Services: AWS Lambda
- Key Insights: And this is to be used when you need really, really detailed monitoring into your serverless applications running on AWS Lambda.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: Then, we have contributor insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this one is to analyze logs and create time series that display contributed data.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 20:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So for example, you wanna see the top end contributor or the total number of unique contributors and their usage.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we'll go quickly into an example so you understand what this means.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So this helps you find, for example, top talkers on your network and understand who is impacting system performance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you can run it on any logs generated by AWS.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, VPC logs, or DNS logs, and so on.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can identify bad hosts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So we are going to look at the network logs, the VPC logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 28:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: And we're going to find the heaviest network users or we can find, for example, if you look at DNS, the URLs that generate the most errors.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Network Telemetry
- Services: (none explicit)
- Key Insights: So let's have a look at how to identify the heaviest network users.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Log Analytics and Investigation, Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So we look at the VPC flow log, which is the log of all the network request made within your VPC, which is then passed to CloudWatch logs, and then analyzed by the CloudWatch contributor insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And out of it, we can find the top 10 IP addresses that are generating traffic on RVPC and understand if they are good actors or bad actors.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So anytime, you see a top 10 contributors or whatever, this is the CloudWatch contributor insight.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you can look through logs and find who are the top whatever.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you can build rules from scratch or you can also leverage simple rules that AWS has created.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And behind the scene, again, it leverages CloudWatch logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 36:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: And to finish, there are also built in rules that you can use to analyze metrics coming from other AWS services.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 37:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Finally, we have CloudWatch application insights, which is to provide an automated dashboard that will show potential problems with monitored applications to help isolate ongoing issues.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 38:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So your applications can be running on Amazon EC2.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We select technologies only, for example, Java, or.net, or Microsoft IIS web server, or specific databases.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 40:
- Concepts: Observability Operational Context
- Services: API Gateway, AWS Lambda, Amazon DynamoDB, Amazon EBS, Amazon ECS, Amazon EKS, Amazon RDS, Amazon S3, Auto Scaling, Elastic Load Balancing
- Key Insights: And then, it will be linked to other AWS resources such as EBS, RDS, ELB, ASG, Lambda, SQS, DynamoDB, S3 buckets, maybe your ECS cluster, your EKS cluster, SNS topics, or your API gateway.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 41:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And so in case there is an issue with your application, automatically, CloudWatch applications insights is going to put together an automated dashboard that shows you the potential issue with some services.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 42:
- Concepts: Operational Monitoring
- Services: SageMaker
- Key Insights: And to do this, automated dashboard is going to use a SageMaker machine learning service internally.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it's really going to give you enhanced visibility into your application health for you to reduce the time it takes you to troubleshoot and repair your application.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 44:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: (none explicit)
- Key Insights: So this is really cool because, well, if your application is using other services or other resources of AWS, automatically, if it's a problem originating from one of them, it will surface in the applications insights dashboard.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 45:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: And all the alerts and findings will be sent to Amazon EventBridge and SSM OpsCenter so that you can be alerted in case there is an issue detected with your application.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 46:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So to summarize, you only need to know these services at a high level.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 47:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch, Amazon EC2, Amazon ECS, Amazon EKS
- Key Insights: So CloudWatch container insights is for your metrics and logs coming from ECS, EKS, Kubernetes on EC2, and Fargate.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 48:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And in case you are using Kubernetes, you need an agent to run.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 49:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: AWS Lambda, Amazon CloudWatch
- Key Insights: For CloudWatch Lambda insights, this is detailed metrics to troubleshoot your serverless applications running on AWS Lambda.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 50:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: For CloudWatch contributors insights, this is to find the top end contributors through your CloudWatch logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 51:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch, Amazon RDS
- Key Insights: For CloudWatch application insights, this is to create automatic dashboards to troubleshoot your applications and the related AWS services that your application is using.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 52:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, you should be good for the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 53:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 54:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/24_AWS Monitoring & Audit_ CloudWatch, CloudTrail & Config/279_CloudTrail Overview.txt

Line 1:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Now let's talk about CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 2:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So CloudTrail is a way to get governance compliance and audit for your AWS Accounts.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 3:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And CloudTrail is enabled by default.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 4:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: This will allow you to get a history of all the events and API Calls made within your AWS Accounts, by the console by the SDK, the CLI other services on AWS and all these logs will be appearing in CloudTrail.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 5:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS CloudTrail, Amazon CloudWatch, Amazon S3
- Key Insights: Now, what you can do is that you can also put these logs from CloudTrail into CloudWatch Logs or Amazon S3.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 6:
- Concepts: Audit Logging
- Services: Amazon S3
- Key Insights: And you can create a trail to be applied to all regions or a single region, if you wanted to accumulate all these history of events accumulated across all regions into one specific, for example, S3 buckets.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 7:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And when we use CloudTrail, for example, we'll say someone went ahead and deleted something in AWS.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 8:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: For example, say that an EC2 instance was being terminated and you wanna figure out who did it?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Well, the answer is to look into CloudTrail because CloudTrail will have that API Call in it and will be able to get to the bottom of it and understand who did what and when.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 10:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So to summarize CloudTrail is in the middle and the actions of the SDK, the CLI, or the console or even IAM Users and IAM Roles or other services will be in the CloudTrail console.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 11:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: We can look in it to inspect and audit what happened.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 12:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon S3
- Key Insights: And if you want to have all the events for more than 90 days, then we can send them into CloudWatch Logs or we can send them into an S3 buckets.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 13:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So let me dive a little bit deeper for CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 14:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So we have three kinds of events that you can see in CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The first one is called the Management Events and these represents operations that are performed on resources in your AWS Accounts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: For example, whenever someone configures security, they will use the API Call called IAM AttachRolePolicy.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And this will appear in CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: If you create a subnet, this will appear as well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: If you set up logging, this will appear by default.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Anything that modifies your resources or your iOS accounts will appear in CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 21:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And by default, trails are configured to log Management Events no matter what.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can separate two kind of Management Events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You have the Read Events that don't modify resources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: For example, someone is listing all the users in IAM or listing all the EC2 instances in EC2, these kind of things.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can separate them from Write Events that may modify resources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: Amazon DynamoDB
- Key Insights: For example, someone deletes or tries to delete a DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And obviously the Write Events have probably a lot more importance because they can wreck damages into your AWS infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Whereas the Read Events is just to get information which are still very important, but maybe less destructive.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then you have Data Events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So they're separate and by default Data Events as are not logged because they're high volume operations.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So what are Data Events?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: Well, you have Amazon S3 object level activity for example, GetObject, DeleteObject, PutObject.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: And as you can see, these can be happening a lot on an S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so this is why they're not logged by default and you have the option to separate again Read and Write Events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So a Read Event will be a GetObject whereas a Right Event would be a DeleteObject or a PutObject.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Audit Logging
- Services: AWS CloudTrail, AWS Lambda
- Key Insights: Another kind of event you can have in a CloudTrail are AWS Lambda function execution activities.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 37:
- Concepts: Log Analytics and Investigation
- Services: AWS Lambda
- Key Insights: So whenever someone uses the Invoke API so you can get insights about how many times your Lambda functions are being evoked.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry and visibility signal.

Line 38:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: And again, this could be really high volumes, if your Lambda functions are executed a lot.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: And the third kind of events in CloudTrail are called CloudTrail Insights Events.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 40:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: And so I will talk to you about CloudTrail Insights in a bit more details in the next slide.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 41:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: So now let's talk about CloudTrail Insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 42:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So when we have so many Management Events across all types of services and so many APIs happening very quickly in your accounts, it can be quite difficult to understand what looks odd, what looks unusual and what doesn't.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: And so this is where CloudTrail Insights comes in.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 44:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: So with CloudTrail Insights and you have to enable it and you have to pay for it, it will analyze your events and try to detect unusual activity in your accounts.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 45:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, in accurate resource provisioning, hitting service limits, burst of AWS IAM actions, gaps in periodic maintenance activity.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 46:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So the way it works is that CloudTrail will analyze what normal management activities look like to create the baseline and then it will continuously analyze anything that is the right type of event.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 47:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So whenever something is changed or try to be changed to detect unusual patterns.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 48:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: So very simply the Management Events are going to be continuously analyzed by CloudTrail Insights which will generate Insights Event in case something is detected.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 49:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And so these anomalies, so these Insight Events will appear in the CloudTrail console.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 50:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: They will also be sent to Amazon industry if you want to, and an EventBridge Event.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 51:
- Concepts: Audit Logging, Log Analytics and Investigation, Operational Monitoring
- Services: AWS CloudTrail, Amazon CloudWatch
- Key Insights: So in CloudWatch event is going to be generated in case you need to automate on top of these CloudTrail Insights, for example, to send an email.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 52:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: So this is the idea behind CloudTrail Insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 53:
- Concepts: Audit Logging, Retention and Forensics
- Services: AWS CloudTrail
- Key Insights: Finally, let's talk about CloudTrail Event Retention.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 54:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon RDS
- Key Insights: So events by default are stored for 90 days in CloudTrail and then afterwards they're deleted, but sometimes you may want to have events for longer in case you want to go back to something that happened maybe a year ago for audited purposes.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 55:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: And so to keep events beyond this period, what you have to do is that you have to log them to S3.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 56:
- Concepts: Log Analytics and Investigation
- Services: Amazon Athena, Amazon S3
- Key Insights: So send them to S3, and then you would use Athena to analyze them.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 57:
- Concepts: Audit Logging, Log Analytics and Investigation, Retention and Forensics
- Services: AWS CloudTrail
- Key Insights: So very simply all your Management Events, your Data Events and your Insights Events are going to go into CloudTrail for 90 days, retention period.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 58:
- Concepts: Retention and Forensics
- Services: Amazon S3
- Key Insights: And then you would log those into your S3 buckets for long-term retention.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 59:
- Concepts: Log Analytics and Investigation
- Services: Amazon Athena, Amazon S3
- Key Insights: And when you're ready to analyze them, you would use the Athena service, which is a serverless service to query data in S3 to find the events Okay I hope you like this lecture, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Investigation and forensic signal.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/24_AWS Monitoring & Audit_ CloudWatch, CloudTrail & Config/280_CloudTrail Hands On.txt

Line 1:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So let's have a look at CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 2:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And CloudTrail is a service to intercept any API calls or user activity within your accounts.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so here on here on the left hand side panel, we can have a look at the event history and this is the event history for the last 90 days of management events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: So you can see all the API calls that are being made over time in this account.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it doesn't have to be very interesting, okay, but all of them will be here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So what I wanna do for example, is that I want to look in my EC2 console, and I created a demo instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And what I'm going to do is that I'm going to terminate this instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I do right click, terminate, and now the instance is being terminated.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And what I'm going to do is I'm going to check whether or not this event happens and appears within CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to wait about five minutes and get back to you.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: And so I just refreshed my pages, and as you can see, I ran the terminate instances, API call.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And we can see what's the event source.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So it's EC2 from where it was done, the access key that was used, the region that was used, and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And we can get the whole event right here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So that's the full power of CloudTrail is that we can see all the events really happening from within CloudTrail directly in this UI.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this is a short introduction at the practitioner level, but this is enough for you to get started and to answer questions at the exam.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/24_AWS Monitoring & Audit_ CloudWatch, CloudTrail & Config/281_CloudTrail - EventBridge Integration.txt

Line 1:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: A very important cultural integration you need to know about is the one with Amazon EventBridge to intercept any API calls.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 2:
- Concepts: Audit Logging
- Services: Amazon DynamoDB
- Key Insights: So let's say you wanted to receive an SNS notification, anytime a user would delete a table in DynamoDB by using the DeleteTable API Call.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So what happens that whenever we do an API call in AWS, as you know, the API call itself is going to be logged in CloudTrail.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Investigation and forensic signal.

Line 4:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: That's for any API call.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: But then all these API calls will end up as events as well in Amazon EventBridge.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 6:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: And so we can look for that very specific delete table API call, and create a rule out of it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this rule will have a destination the destination being Amazon SNS and therefore, we can create alerts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: AWS CloudTrail, Amazon EventBridge
- Key Insights: So let me give you a few more examples on how you can integrate Amazon Eventbridge and CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal; Event-driven remediation signal.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, say, you wanted to be notified whenever a user was assuming a role in your accounts.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So the AssumeRole is an API in the IAM service and therefore, is going to be logged by CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 11:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: And then using EventBridge integration, we can trigger a message into an SNS topic.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 12:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: Similarly, we can also intercept API calls that, for example, change the Security Group inbound rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Audit Logging
- Services: Amazon EC2
- Key Insights: So the Security Group call is called AuthorizeSecurityGroupIngress, and it's an EC2 API call.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: AWS CloudTrail, Amazon EventBridge
- Key Insights: So these are going to be logged again by CloudTrail and then they will appear in EventBridge and then we can trigger a notification in SNS.
- Hidden/Implicit Meaning: Investigation and forensic signal; Event-driven remediation signal.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, the possibilities are endless, but now you have a few ideas of how the integration can be leveraged.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/24_AWS Monitoring & Audit_ CloudWatch, CloudTrail & Config/282_AWS Config - Overview.txt

Line 1:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Okay, let's have a look at AWS Config.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So Config is a service that allows you to get auditing and record compliance of your resources in AWS, based on some rules that you're going to set, you can also record Configuration and their changes over time to quickly be able to roll back and to figure out what happened in your infrastructure if you need to.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 3:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So some questions that can be solved by Config are, is there an unrestricted SSH access to my security groups?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Or do my buckets have anybody public access?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Audit Logging
- Services: AWS Config, Elastic Load Balancing
- Key Insights: Or is there an ALB configuration that has changed over time?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then based on these rules being compliant or not, you can receive alerts or SNS notifications for any changes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS Config, Amazon Athena
- Key Insights: Config is a per region service, so you need to configure it for all the regions if you need to, and you can aggregate the data across regions and accounts to centralize it into one place, you can also can store the configuration of all your resources into Amazon history to be later analyzed, for example, by serverless query engine, such as Athena.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 8:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So what types of rules go into Config?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Well, you can have AWS managed config rules, and there are over 75 rules that you can use, or you can create your own config rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: In this case, you need to define that rule yourself.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: We're using a Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: Amazon EBS
- Key Insights: For example, you can evaluate if each EBS disk is going to be of type gp2 or if each two instance in your development accounts is of type t2.micro.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Some rules can be evaluated or triggered whenever a configuration is going to change.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven remediation signal.

Line 14:
- Concepts: Audit Logging
- Services: AWS Config, Amazon EBS
- Key Insights: So whenever, for example, you have a new configuration of your EBS disc, please evaluate the type of your EBS disk, or you can also have the rule to be evaluated at regular time intervals.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Observability Operational Context
- Services: Amazon EBS
- Key Insights: For example, every two hours, please make sure that all my EBS discs are of type gp2.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Now, Config Rules are just for compliance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: They do not prevent actions from happening.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This is not a denied action on anything.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It doesn't replace security mechanisms such as IAM.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Okay, but what it does give you is a overview of your configuration and the compliance of your resources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Now there's no future for config.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It can be quite expensive very quickly.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: You're going to pay 0.003 cents per configuration, item recorded per region and 0.001 cents per config rule evaluation per region.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now for the company resource, you're going to be able to view the compliance of a resource over time.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, the security group has been non-compliance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Then you can view the config resource configuration over time, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: You can see when the change and who changed it and so on, and you can link it to CloudTrail to view the API calls made for that resource.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you can get a full picture of everything that's happening.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Now, although you cannot deny any action from happening from within the config, you can do remediations of your non-compliant resources using an SSM Automation Documents.
- Hidden/Implicit Meaning: Constraint or limitation signal; Event-driven remediation signal.

Line 30:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So the idea is, for example, you are monitoring whether or not your IAM access keys have expired.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, they are older than 90 days.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: In which case you want to mark them as non-compliant.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this will not prevent them from not being compliant, but you can trigger whenever a resource is not compliant, a remediation action.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven remediation signal.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, there's an SSM document named RevokeUnusedIAMUserCredentials, okay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Maybe you want to use this one and then is going to be applied to whatever resource you have, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And in this instance, it's going to deactivate your IAM access keys.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that's either using either using AWS-Managed Documents or creating your own automation documents, you can have remediations of your non-compliant resources, okay?
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 38:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: And if you want it to and go all the way through with the scripting, you could create a document that will invoke a Lambda function and you're free to do whatever you want there.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Finally, your remediation may have retries.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 40:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So in case the resource is still non-compliance after an auto remediation, it may retry for example, up to five times.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 41:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So lastly, what about notifications?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: Well, we can use if EventBridge to trigger notifications, whenever our resources are not compliant.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven remediation signal.

Line 43:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So, for example, we monitor our security group, it becomes not compliance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 44:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: Then we can trigger an event in EventBridge, and then pass it on to whatever resource you wants.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 45:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Or you can also pass on all the changes and all the compliance that notifications of your resources to SNS from Config.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 46:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS Config
- Key Insights: So one configuration item, and then if you want it to just filter for only for some events, you could use an SNS filtering to have a filtered SNS topic, and then you can send it these notifications, for example, to an admin email or to a slack channel and so on to get all these notifications in one place.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 47:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So that's it for a Config.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 48:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and it will see you in the next lecture for some hands-on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/24_AWS Monitoring & Audit_ CloudWatch, CloudTrail & Config/283_AWS Config - Hands On.txt

Line 1:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So let's go into the config service and start to configure it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we are in it and I'm going to click on get started to start recording some settings.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we're going to record all the resources supported in this region, but if you wanted to, you can record only specific resource types.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: In which case you can find resource categories and then resource types on the right hand side.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But because I want to show you all the resources I can record, I'm going to click on this.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And on top of it, you can include global resources, such as IAM users, group roles and customer managed policies.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Just be aware that again, config is not a part of the feature here, so the more resources you record, the more money you going to pay.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so I'm doing this to show you everything to you, but if you don't want to pay any money from this course, please do not follow on with this hands-on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we're going to record our resources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: We're going to include global resources and then to record all the resource configuration, we need to create a config service linked role.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we're going to click on that.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: Then all this information is going to be delivered into an Amazon S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So once you create a bucket, and the bucket name is already entered for me, so that's perfect.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then we can have a prefix if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then finally, this is where the data is going to be stored.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And in terms of notification, we can stream all the configuration changes and notifications into an Amazon SNS topic if we wanted to, and again, remember this is for everything into one topic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But I don't wanna do this, so I will leave this unticked.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I click on next and next we find some AWS Managed Rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we have a lot, as you can see, and I want to define them later, so I'm going to skip that part, but you can have a look at them if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So click on next, and we can review the configuration.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So yes, we want to record all resources, including global resources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: And we're going to deliver this into an S3 bucket and currently we haven't defined any role.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's click on confirm.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Now the role is being created, the bucket is created and then config is going to be started.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Now it's going to take a bit of time for config to have a look at everything within your account and look at the configuration.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to post the video until this is done.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, so my resources are still being discovered, but I can go on the left hand side to resources, and actually we will see that some resources have already been discovered in my account as you can see.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Some route tables, sub-net, VPC and so on, have been discovered.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So what I can do is that I can look at resource type and I can look for example, for EC2 security groups and find that yes, my security groups are here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And currently, they do not have a compliance status because we haven't defined any kind of rule on top of them.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So let's have a look for example, at one of these EC2 security group.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And from within the group, we can have a look at the rules applied, so currently none.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And we could look at the configuration of the security group itself, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We can also look at the resource timeline.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And the resource timeline will give you all the events related to that resource.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So there's a configuration change, which is the initial right here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: There's some CloudTrail events also that were related to the security group.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 38:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: For example, authorizeSecurityGroupingress rules, CreateLaunchConfiguration and CreateSecurityGroup, this kinda thing.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And we can go to CloudTrail to find these events.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 40:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So what I want to do is to figure out whether or not my security groups are compliant or not.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 41:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so for this, we're gonna go into rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 42:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: And rules is going to be able to give us the option to add a rule, and we can either add an AWS managed rule or create our own custom rule with a lambda function.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So to keep it simple, I'm going to add an AWS managed rule and let's have a look at rules that are accessible to us.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 44:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So one that I like is for example, approved-amis-by-id.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 45:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is to check whether running instances are in your account using the specified AMIs.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 46:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So if I click on it, for example, and click on next, which is not related to security groups, but I just wanna show you one rule.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 47:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: So this one will check whether or not your EC2 running instances, will be using the specified AMIs.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 48:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so you can trigger this based on whenever a resource that's changed.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven remediation signal.

Line 49:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: And then you can also specify all the EC2 instances in here, and we have to specify a parameter for that rule, which is the list of all the AMI IDs are approved within their account and this is going to be used by the rules and inputs to figure out whether or not EC2 instance is compliant.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 50:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: Because we do not have many EC2 instances yet, we're not going to use that rule.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 51:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So instead we're going to use a managed rule, but this time for SSH.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 52:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this is going to be applied to our security groups.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 53:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we want to make sure that we're not allowing any incoming SSH traffic from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 54:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So we click on next, this is called the restricted SSH and the trigger is going to be on our resource whenever the configuration changes, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven remediation signal.

Line 55:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But as we can see, if we define a different kind of rule, we could have it to be run periodically as well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 56:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So, okay, we're once.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 57:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Whenever our security group resource will change, please evaluate that rule.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 58:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: This is applying only to AWS EC2 security groups, and we have no parameters for that row.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 59:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Click on next and click on add rule.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 60:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And now we have defined this first rule, so let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 61:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So currently it's not evaluated and we don't have any remediation.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 62:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's wait a little bit until this is done.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 63:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I just refreshed my page and as you can see, an evaluation was done automatically.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 64:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And if we look at this rule, we have seven security groups, no six security groups right here, which are not compliant.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 65:
- Concepts: Log Analytics and Investigation
- Services: Amazon EC2
- Key Insights: So if we go into our resources on the left hand side, and we're going to filter again by EC2 security group and have a look at all our resources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 66:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: As we can see, some of them are compliant and some of them are not compliant.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 67:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So if we look at the compliant and the non compliant one let's see the difference.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 68:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this one is compliant, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 69:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And a rule was applied to it as we can see it says compliant.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 70:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So if I go and manage a resource and look at the inbound rules right here, as we can see, we only have one inbound rule, which doesn't have a port, so there's no port 22 in here.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 71:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is why this is working.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 72:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But if I look at a non-compliant resource, for example, this launch-wizard-3 I believe it was not compliant, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 73:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And you click on manage resource, we are taken again straight into the console for security groups.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 74:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And if you look at the inbound rule, as we can see, port 22 on IPv4 from anywhere is being open.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 75:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is a big problem.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 76:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So what I can do instead is delete this rule right here.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 77:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And if I delete this rule, this will retrigger an evaluation of my resource, which should make it compliant again.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven remediation signal.

Line 78:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let's delete it and save my rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 79:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So then security group has been modified, and so let me close this.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 80:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is my non-compliant security group, and I can go into resource timeline to have a look.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 81:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And so within the resource timeline, as we can see the configuration change happens, and then the rule was run and it was not compliant.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 82:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Now I did change yet again, the configuration, so we're going to have to wait a little bit of time for the configuration change to happen right here, which should trigger a rule compliance and then hopefully now a resource will be compliant.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven remediation signal.

Line 83:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So let me pause a little bit and get back to you.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 84:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So I have just refreshed my page, and as we can see in here on July 12th, we have after the rule compliance, a CloudTrail event that happened because I did revoke a security group ingress rule because I deleted an ingress rule, that's true.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 85:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Then it recorded as well, a configuration change saying hey, this rule that had the port 22 in it got deleted so from and to is empty because it got deleted.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 86:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And then config, they run my rule again, named restricted SSH.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 87:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And now my resource is compliant.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 88:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so that means that yes, I have fixed the compliance of my resource.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 89:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I can go back into here and we can have a look at another security group, for example, this one.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 90:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And under the rule here, you can do action and then manage remediation.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 91:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is to remediate this for this rule, so if you look at this rule, we have manage remediation and we can have manual remediation or automatic remediation.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 92:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: In which case, you can specify your number of retries and a number of seconds for the retries to happen, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 93:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we can select a manual remediation for example, and then you need to choose a remediation action.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 94:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So these are SSM automation documents that we can select.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 95:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So these are defined by AWS, but we can also create our own.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 96:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And for example, well, we could delete a snapshot or delete an image if it's not compliant to whatever we wanted.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 97:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it's really up to you to define the action you want.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 98:
- Concepts: Observability Operational Context
- Services: Amazon EBS
- Key Insights: So for example, you could say, hey attach EBS volume and here's the right limit based on the non compliant resources.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 99:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The resource ID parameters, if you need them to be given to the remediation and so on.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 100:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now this doesn't make any sense, this remediation action, right?
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 101:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: We need to define a remediation action that makes sense for our rule, but as you can see, we can set up automatic or manual remediation and configure it and so on, and also best in some parameters around the document itself.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 102:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So that's it for config, I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 103:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then aggregators is to integrate across multiple accounts, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 104:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then under settings, you can have a look at the settings we defined from before, including, for example, sending all the data into an SNS topic.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 105:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: Or you can set up Amazon CloudWatch Event rules, okay?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 106:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: From the CloudWatch consoles or from the Events rules console to intercept only specific non-compliant events for some specific rules.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 107:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this section, I hope you liked it, And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/24_AWS Monitoring & Audit_ CloudWatch, CloudTrail & Config/284_CloudTrail vs CloudWatch vs Config.txt

Line 1:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS CloudTrail, AWS Config, Amazon CloudWatch
- Key Insights: So one very popular exam question is to make the distinction between CloudWatch, CloudTrail, and Config.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 2:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Now thankfully, thanks to the hands-on, hopefully you know exactly what are the differences are.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It's pretty obvious in my opinion, but it's never too bad to go through an example and see them.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Network Telemetry, Operational Monitoring
- Services: Amazon CloudWatch, Amazon RDS
- Key Insights: So CloudWatch is for performance metrics, metrics, CPU, network, and to create dashboards.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 5:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can also get events and alerts, and finally, we have a log aggregation and analysis tool if we wanted to.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So CloudWatch, I think we're all pretty familiar with it, this already.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon EC2
- Key Insights: Now, CloudTrail could be new to you, but basically it's to record API calls made within your account by everyone and everything, and you can define some trails for specific resources, so you can get more information on EC2 only, and it's a global service.
- Hidden/Implicit Meaning: Constraint or limitation signal; Investigation and forensic signal.

Line 8:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Now finally, Config is to record configuration changes and to evaluate resources configuration against compliance rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Finally, you're going to get a timeline of changes and compliance with its nice UI.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: Elastic Load Balancing
- Key Insights: So, I think they're a very distinctive service I don't think there's any confusion, but let's go through an Elastic Load Balancer to see how each of these service can help you understand what is happening to your ELB.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Elastic Load Balancing
- Key Insights: So CloudWatch can monitor the number of incoming connections, can visualize number of error codes as a percentage over time, and maybe we can have a dashboard to get an idea of the load balancer performance, maybe we can have a, even make it a global dashboard if you have multiple load balancers for a global application.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Audit Logging
- Services: AWS Config, Elastic Load Balancing
- Key Insights: Now, Config, why would we use Config on the ELB?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Audit Logging
- Services: AWS Config, Elastic Load Balancing
- Key Insights: Well, maybe you wanna track the security group rules for the load balancer, making sure no-one does anything fishy or changes anything, maybe you want to change also a track that configuration changes for the load balancer itself, to see if anyone modifies the SSL certificate, or et cetera, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Audit Logging
- Services: AWS Config, Elastic Load Balancing
- Key Insights: We also maybe have a rule to say, oh there's always should be an SSL certificate assigned to the load balancer, and maybe we should never allow non-encrypted traffic into the load balancer, that could be two different compliance rules that you put into Config.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Elastic Load Balancing
- Key Insights: Finally, CloudTrail will be to track who made any changes to the load balancer with API calls.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 16:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So, in case someone changes the security group rules or someone changes the SSL certificate, or removes it, or whatever, then CloudTrail will be how we know who made these changes.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 17:
- Concepts: Observability Operational Context
- Services: Elastic Load Balancing
- Key Insights: So all these tools are complementary when you think about it and when you understand that, how they're used for a load balancer, which I think is a great example, then you are going to rock any questions asked for you at the exam.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I hope that makes sense, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/015_CloudTrail.txt

Line 1:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Now let's talk about CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 2:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So CloudTrail is a way to get governance compliance and audit for your AWS Accounts.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 3:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And CloudTrail is enabled by default.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 4:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: This will allow you to get a history of all the events and API Calls made within your AWS Accounts, by the console by the SDK, the CLI other services on AWS and all these logs will be appearing in CloudTrail.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 5:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS CloudTrail, Amazon CloudWatch, Amazon S3
- Key Insights: Now, what you can do is that you can also put these logs from CloudTrail into CloudWatch Logs or Amazon S3.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 6:
- Concepts: Audit Logging
- Services: Amazon S3
- Key Insights: And you can create a trail to be applied to all regions or a single region, if you wanted to accumulate all these history of events accumulated across all regions into one specific, for example, S3 buckets.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 7:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And when we use CloudTrail, for example, we'll say someone went ahead and deleted something in AWS.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 8:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: For example, say that an EC2 instance was being terminated and you wanna figure out who did it?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Well, the answer is to look into CloudTrail because CloudTrail will have that API Call in it and will be able to get to the bottom of it and understand who did what and when.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 10:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So to summarize CloudTrail is in the middle and the actions of the SDK, the CLI, or the console or even IAM Users and IAM Roles or other services will be in the CloudTrail console.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 11:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: We can look in it to inspect and audit what happened.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 12:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch, Amazon S3
- Key Insights: And if you want to have all the events for more than 90 days, then we can send them into CloudWatch Logs or we can send them into an S3 buckets.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 13:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So let me dive a little bit deeper for CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 14:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So we have three kinds of events that you can see in CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: The first one is called the Management Events and these represents operations that are performed on resources in your AWS Accounts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: For example, whenever someone configures security, they will use the API Call called IAM AttachRolePolicy.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And this will appear in CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 18:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: If you create a subnet, this will appear as well.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: If you set up logging, this will appear by default.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Anything that modifies your resources or your iOS accounts will appear in CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 21:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And by default, trails are configured to log Management Events no matter what.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can separate two kind of Management Events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You have the Read Events that don't modify resources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: Amazon EC2
- Key Insights: For example, someone is listing all the users in IAM or listing all the EC2 instances in EC2, these kind of things.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can separate them from Write Events that may modify resources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Observability Operational Context
- Services: Amazon DynamoDB
- Key Insights: For example, someone deletes or tries to delete a DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And obviously the Write Events have probably a lot more importance because they can wreck damages into your AWS infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Whereas the Read Events is just to get information which are still very important, but maybe less destructive.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Then you have Data Events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So they're separate and by default Data Events as are not logged because they're high volume operations.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So what are Data Events?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: Well, you have Amazon S3 object level activity for example, GetObject, DeleteObject, PutObject.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 33:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: And as you can see, these can be happening a lot on an S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so this is why they're not logged by default and you have the option to separate again Read and Write Events.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So a Read Event will be a GetObject whereas a Right Event would be a DeleteObject or a PutObject.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Audit Logging
- Services: AWS CloudTrail, AWS Lambda
- Key Insights: Another kind of event you can have in a CloudTrail are AWS Lambda function execution activities.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 37:
- Concepts: Log Analytics and Investigation
- Services: AWS Lambda
- Key Insights: So whenever someone uses the Invoke API so you can get insights about how many times your Lambda functions are being evoked.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Telemetry and visibility signal.

Line 38:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: And again, this could be really high volumes, if your Lambda functions are executed a lot.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: And the third kind of events in CloudTrail are called CloudTrail Insights Events.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 40:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: And so I will talk to you about CloudTrail Insights in a bit more details in the next slide.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 41:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: So now let's talk about CloudTrail Insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 42:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So when we have so many Management Events across all types of services and so many APIs happening very quickly in your accounts, it can be quite difficult to understand what looks odd, what looks unusual and what doesn't.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: And so this is where CloudTrail Insights comes in.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 44:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: So with CloudTrail Insights and you have to enable it and you have to pay for it, it will analyze your events and try to detect unusual activity in your accounts.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 45:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, in accurate resource provisioning, hitting service limits, burst of AWS IAM actions, gaps in periodic maintenance activity.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 46:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So the way it works is that CloudTrail will analyze what normal management activities look like to create the baseline and then it will continuously analyze anything that is the right type of event.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 47:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So whenever something is changed or try to be changed to detect unusual patterns.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 48:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: So very simply the Management Events are going to be continuously analyzed by CloudTrail Insights which will generate Insights Event in case something is detected.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 49:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And so these anomalies, so these Insight Events will appear in the CloudTrail console.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 50:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: They will also be sent to Amazon industry if you want to, and an EventBridge Event.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 51:
- Concepts: Audit Logging, Log Analytics and Investigation, Operational Monitoring
- Services: AWS CloudTrail, Amazon CloudWatch
- Key Insights: So in CloudWatch event is going to be generated in case you need to automate on top of these CloudTrail Insights, for example, to send an email.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 52:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: AWS CloudTrail
- Key Insights: So this is the idea behind CloudTrail Insights.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 53:
- Concepts: Audit Logging, Retention and Forensics
- Services: AWS CloudTrail
- Key Insights: Finally, let's talk about CloudTrail Event Retention.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 54:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon RDS
- Key Insights: So events by default are stored for 90 days in CloudTrail and then afterwards they're deleted, but sometimes you may want to have events for longer in case you want to go back to something that happened maybe a year ago for audited purposes.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 55:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: And so to keep events beyond this period, what you have to do is that you have to log them to S3.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 56:
- Concepts: Log Analytics and Investigation
- Services: Amazon Athena, Amazon S3
- Key Insights: So send them to S3, and then you would use Athena to analyze them.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 57:
- Concepts: Audit Logging, Log Analytics and Investigation, Retention and Forensics
- Services: AWS CloudTrail
- Key Insights: So very simply all your Management Events, your Data Events and your Insights Events are going to go into CloudTrail for 90 days, retention period.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 58:
- Concepts: Retention and Forensics
- Services: Amazon S3
- Key Insights: And then you would log those into your S3 buckets for long-term retention.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 59:
- Concepts: Log Analytics and Investigation
- Services: Amazon Athena, Amazon S3
- Key Insights: And when you're ready to analyze them, you would use the Athena service, which is a serverless service to query data in S3 to find the events Okay I hope you like this lecture, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Investigation and forensic signal.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/016_CloudTrail - EventBridge Integration.txt

Line 1:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: A very important cultural integration you need to know about is the one with Amazon EventBridge to intercept any API calls.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 2:
- Concepts: Audit Logging
- Services: Amazon DynamoDB
- Key Insights: So let's say you wanted to receive an SNS notification, anytime a user would delete a table in DynamoDB by using the DeleteTable API Call.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 3:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So what happens that whenever we do an API call in AWS, as you know, the API call itself is going to be logged in CloudTrail.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Investigation and forensic signal.

Line 4:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: That's for any API call.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: But then all these API calls will end up as events as well in Amazon EventBridge.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 6:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: And so we can look for that very specific delete table API call, and create a rule out of it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And this rule will have a destination the destination being Amazon SNS and therefore, we can create alerts.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: AWS CloudTrail, Amazon EventBridge
- Key Insights: So let me give you a few more examples on how you can integrate Amazon Eventbridge and CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal; Event-driven remediation signal.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, say, you wanted to be notified whenever a user was assuming a role in your accounts.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So the AssumeRole is an API in the IAM service and therefore, is going to be logged by CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 11:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: And then using EventBridge integration, we can trigger a message into an SNS topic.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 12:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: Similarly, we can also intercept API calls that, for example, change the Security Group inbound rules.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Audit Logging
- Services: Amazon EC2
- Key Insights: So the Security Group call is called AuthorizeSecurityGroupIngress, and it's an EC2 API call.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Audit Logging, Distributed Tracing and Events
- Services: AWS CloudTrail, Amazon EventBridge
- Key Insights: So these are going to be logged again by CloudTrail and then they will appear in EventBridge and then we can trigger a notification in SNS.
- Hidden/Implicit Meaning: Investigation and forensic signal; Event-driven remediation signal.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, the possibilities are endless, but now you have a few ideas of how the integration can be leveraged.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/017_CloudTrail - SA Pro.txt

Line 1:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Okay, so now let's discuss CloudTrail and some solution architectures that can be interesting with CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 2:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: So the first one is around how to deliver files from CloudTrail to S3 and the type of use case that it opens up.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 3:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: So we have CloudTrail, and you can set up a dump of the CloudTrail files into S3 every five minutes.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 4:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so this encryption can be enabled.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: And by default it's going to be SSE-S3 encryption.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: But you can set up manually SSE-KMS for your CloudTrail files.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 7:
- Concepts: Retention and Forensics
- Services: Amazon Glacier, Amazon S3
- Key Insights: You could set up a lifecycle policy on your S3 buckets to deliver files to the Glacier tier in case they're archives and you don't need to have them around for a long time or you just wanna archive them and make sure that if you need to access them you can wait maybe for 6, 12 hours before you analyze these.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Observability Operational Context
- Services: AWS Lambda, Amazon S3
- Key Insights: When a file is delivered into S3, you can leverage S3 events to notify either an SQS queue, an SNS topic, or a Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: But you can also have CloudTrail deliver notifications directly into SNS.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 10:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: And from SNS you could invoke SQS or Lambda.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this gives you a bunch of different options you can have for this architecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: As you can see, there's not one way of doing things.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: But getting into thinking how these things fit together is the key to passing the Solutions Architect Professional exam.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 14:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: Okay, on top of it, you need to think about all the enhancements we can have from S3.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So we can enable versioning to prevent accidental deletes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: We can have MFA for delete protection.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: Amazon Glacier, Amazon S3
- Key Insights: We can have S3 lifecycle policies, as I said, to move it to S3 IA or Glacier.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: You can have S3 object lock to make sure that the S3 buckets' objects are never deleted and will never be modified as well.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this could be very powerful.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: You can enable encryption such as SSE-S3 or SSE-KMS.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: And you can even have a feature to perform CloudTrail log file integrity validation that will verify that the files delivered in S3 are exactly as they should be and they have not been tempered with, they have not been modified.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Investigation and forensic signal.

Line 22:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is getting interesting, right?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: Because from CloudTrail, in combining this with S3 and all these notifications, we can have a bunch of use case being opened up.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is hopefully opening some stuff for you and helping you understand the kind of architectures we can be looking at going into the exam.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, another architecture now.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: CloudTrail can be multi-account and multi-region.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 27:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So say we have two accounts, Account A and Account B.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And we have a security account that we want to send the logs to.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 29:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So we'll have CloudTrail in the first account and CloudTrail in the second account.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 30:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: And we'll set up an S3 bucket that will be holding the logs of all these CloudTrails.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 31:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: The thing is CloudTrail needs to be delivering these log files into the S3 buckets of the security account.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 32:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: And so the only way for us to do it is to define an S3 bucket policy.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 33:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: And the S3 bucket policy should allow CloudTrail to deliver files into S3.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Investigation and forensic signal.

Line 34:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: And the cool thing we have here is that the S3 bucket policy, first of all, is necessary and very simple to maintain for cross-account delivery.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 35:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: The second is that if Account A needs to access you know, the logs for the CloudTrail bucket we can create, for example, a cross-account role and assume the role in the security account.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 36:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Or we can edit the bucket policy to allow reads from the Account A.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So it's really up to you to see the kind of architectures then you need.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 38:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: But it's really interesting here to see that there's different options to provide the reads access to S3 based on the use case.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And on top of it, we have demonstrated a good way to have a security account in the middle to keep all these CloudTrail logs into a secure place.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 40:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And maybe the security account has a much tighter security for user management and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 41:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And so we have the certainty that these logs are safe and secure for a long time.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 42:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Okay, so yet another solution architecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 43:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: Say you want to create alerts when certain API calls are done.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 44:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So you have CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 45:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And you can stream all these events into CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 46:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And then from CloudWatch Logs you can open up a bunch of use case.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 47:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And one of the things you can do with CloudWatch logs is to create a metrics filter and then a CloudWatch alarm on top of it.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Event-driven remediation signal.

Line 48:
- Concepts: Audit Logging, Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And this filter will basically filter for the API call you're looking for.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 49:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Maybe you're looking for a terminate instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 50:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: So you create metric filter for terminate instance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 51:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And then if that filter passes through then you would have the metric incremented by one.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 52:
- Concepts: Log Analytics and Investigation, Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And maybe your CloudWatch alarm is set up to be triggered whenever the metric filter is equals to one, in which case the CloudWatch alarm can deliver to an SNS topic.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Event-driven remediation signal.

Line 53:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: And from that SNS topic, you could have a Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 54:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You could have an SQS queue.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 55:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You could have multiple things.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 56:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: But this would be a way to create alerts for API calls.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 57:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: Now these log metric filters can be detecting also a high level of API happening.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 58:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Doesn't have to be a specific API.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 59:
- Concepts: Audit Logging
- Services: Amazon EC2
- Key Insights: So you can be counting the occurrences of a specific API, for example terminate EC2 instances or count the API calls per user or detect a high level of denied API calls.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 60:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Maybe someone is trying to breach into your security.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 61:
- Concepts: Audit Logging, Log Analytics and Investigation, Operational Monitoring
- Services: (none explicit)
- Key Insights: So it's not just for one API call you can be creating a metrics filter.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 62:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: And CloudWatch alarms is for counting them or detecting high level of unusual activity.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 63:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Okay, so there is another feature of CloudTrail need to know about, which is the organizational trail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 64:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: So if you have AWS organizations, for example, you have a management account, and then you have several OUs with other member accounts, then it is possible for you to set up a organizational trail directly in the management accounts.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 65:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: Okay, so it's very important for you to remember this trail is created in the management accounts and not in the children accounts, in the member accounts of your organization.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 66:
- Concepts: Audit Logging, Operational Monitoring
- Services: (none explicit)
- Key Insights: Now what's happening is that once you create this trail then any events into all the member accounts will be monitored by this trail directly, which is very easy to understand.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 67:
- Concepts: Operational Monitoring
- Services: (none explicit)
- Key Insights: So that means that any accounts in the prod OU or the dev OU will be monitored.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 68:
- Concepts: Audit Logging
- Services: Amazon S3
- Key Insights: And from there, while you can send the information from a trail into an S3 bucket, that will be again in your management accounts.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 69:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS CloudTrail, Amazon S3
- Key Insights: And this S3 bucket will contain a certain kind of organization, where as you see the suffix of the S3 prefix represents the account number that is being monitored by CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 70:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: So how can you react to events the fastest in CloudTrail?
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 71:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: Well, first of all, any event in CloudTrail may take 15 minutes to be delivered.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 72:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is something to know.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 73:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: But anyways, so we have EventBridge.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 74:
- Concepts: Audit Logging
- Services: AWS CloudTrail
- Key Insights: And this is cool because this can be triggered for any API call done within CloudTrail, which gives you by far the fastest, most reactive way to react to any events in CloudTrail.
- Hidden/Implicit Meaning: Investigation and forensic signal; Event-driven remediation signal.

Line 75:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So you can have deep integration between them.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 76:
- Concepts: Audit Logging, Operational Monitoring
- Services: AWS CloudTrail, Amazon CloudWatch
- Key Insights: Then we have CloudTrail Delivery in CloudWatch logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal; Investigation and forensic signal.

Line 77:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: So that means that all the events are going to be streamed in the CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 78:
- Concepts: Log Analytics and Investigation
- Services: (none explicit)
- Key Insights: And you can create a metric filter to analyze occurrences and detect anomalies.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 79:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this is when you wanna see if someone is trying too fast to log into your accounts, that kind of things that could be a trigger for maybe an attack.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 80:
- Concepts: Audit Logging
- Services: AWS CloudTrail, Amazon S3
- Key Insights: And you have CloudTrail Delivery in Amazon S3.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 81:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So there the events are delivered every five minutes.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 82:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: And you have also the possibility to guarantee that the logs in S3 are having integrity with a hashing feature.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 83:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: You can deliver them cross-account.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 84:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It's good for long-term storage and analytics.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 85:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: So based on use case you have, if you want to react to an event right away, it's EventBridge.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 86:
- Concepts: Operational Monitoring
- Services: Amazon CloudWatch
- Key Insights: If you want to count events, it's going to be CloudWatch Logs.
- Hidden/Implicit Meaning: Telemetry and visibility signal.

Line 87:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: And if you want to do analytics on all of them at scale, it's going to be Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 88:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 89:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 90:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/036_AWS Config.txt

Line 1:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And next we talk about AWS config.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 2:
- Concepts: Audit Logging
- Services: (none explicit)
- Key Insights: So it's a service to help you audit and record compliance of your AWS resources.
- Hidden/Implicit Meaning: Investigation and forensic signal.

Line 3:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 4:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Because you can record the configurations and their changes to configuration of your resources over time.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 5:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Now, when you define rules to make sure that these resources configurations are compliant or not over time, these rules are just here to evaluate compliance.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 6:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: They're not here to prevent actions from happening on your resources.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 7:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So for example, say you have a compliance rule to look at whether or not SSH is opened on any of your security group because you are not using SSH in your company, maybe using something like SSM systems manager.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 8:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So in this case, if someone creates a change in your security group rule and allows SSH the config rule does not prevent this from happening.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 9:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: There is no deny rule.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 10:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: This is a very good use case instead for something like an SCP.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 11:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Instead, what the config rule will be doing will be to look at the compliance of your security group.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 12:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It will give you a notification to your admins through an SNS topic that, yes one of your security group has changed and it's not compliant anymore and you have to act upon it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 13:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Now, there are some automations you can build, but remember, config rules are not here to prevent actions from happening.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 14:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: They're here to give you the compliance of your resources over time.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 15:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Now, what types of questions can be solved by AWS config?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 16:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, is there unrestricted SSH access to my security group?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 17:
- Concepts: Observability Operational Context
- Services: Amazon S3
- Key Insights: Or do my buckets have any public access in S3?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 18:
- Concepts: Audit Logging
- Services: AWS Config, Elastic Load Balancing
- Key Insights: Or how has my ALB configuration changed over time?
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 19:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Maybe someone did a mistake and I want to backtrack that change.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 20:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: You can receive alerts on SNS topics for any kind of changes, and AOS config is a per region service, so you need to enable it in every region where you need it to be.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 21:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Also, there is a possibility to aggregate all the AWS config data across accounts and regions into one central account, which is a good use case for a security account where you have login, config and so on.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 22:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Now, config resource, you can view the compliance of a resource over time.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 23:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So if some rules apply to that resource then you can see it's red when it's not compliant.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 24:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: And then as soon as you apply a rule it becomes green and becomes compliant.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 25:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: You can view the resource configuration over time so you can see when the changes happen and what changes happen.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 26:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: And finally, in case you have collateral API calls enabled, you can view who made these changes, when the changes happen directly from AWS config, which is very handy.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 27:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So a bit more details on config rules themselves.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 28:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: So we can first use AWS managed config rules Over 75 managed rules we can use.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 29:
- Concepts: Audit Logging
- Services: AWS Config, AWS Lambda
- Key Insights: So it gives us a lot to play with, but we can also if you wanted to, create our own custom configuration rules in this way we would need to create a Lambda function to perform it and link it with config.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 30:
- Concepts: Observability Operational Context
- Services: AWS Lambda, Amazon EBS
- Key Insights: So for example, we can create a Lambda function that checks if EBS disc is of type gp2 or if any two instance is of type t2.micro.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 31:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So this could be helpful.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 32:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: For example, if you have a development environment and you wanted to limit your cost.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 33:
- Concepts: Audit Logging
- Services: AWS Config, AWS Lambda
- Key Insights: So you would create a Lambda function and then create the custom config rule associated with it.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 34:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Then you can evaluate or trigger the rule for every config change in AWS.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 35:
- Concepts: Observability Operational Context
- Services: Amazon EBS
- Key Insights: For example, any time an EBS disc is created then do this rule.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 36:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: Or if you wanted to just at a regular time interval.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 37:
- Concepts: Observability Operational Context
- Services: Amazon EBS
- Key Insights: So for example, every one day, scan all my EBS discs and make sure that they are compliant.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 38:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: It's up to you.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 39:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: You can also trigger Amazon EventBridge in case a rule is noncompliant.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 40:
- Concepts: Distributed Tracing and Events
- Services: Amazon EventBridge
- Key Insights: So thanks to EventBridge, you can catch any noncompliance and you can trigger any kind of destination that is a real destination of EventBridge which allows you a lot of different integrations.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 41:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: But config rules also has a deeper integration with SSM automations, such as if a rule is not compliant.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 42:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: If a resource is not compliant, then you can trigger an auto remediation by triggering an SSM automation.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 43:
- Concepts: Observability Operational Context
- Services: AWS Lambda
- Key Insights: So with SSM automation, you can do a bit more than what you could do with the Lambda function for example, you can change right away security group rules or you can stop instances with non-approved tags and so on.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 44:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: So the actions can be directly written in an automation document in SSM.
- Hidden/Implicit Meaning: Event-driven remediation signal.

Line 45:
- Concepts: Audit Logging
- Services: AWS Config
- Key Insights: Okay, so that's it for AWS config.
- Hidden/Implicit Meaning: Implicitly contributes observability stack behavior detail.

Line 46:
- Concepts: Observability Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
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
- AWS CloudFormation
- AWS CloudTrail
- AWS Config
- AWS DataSync
- AWS Elastic Beanstalk
- AWS Glue
- AWS Lambda
- AWS SAM
- AWS X-Ray
- Amazon Athena
- Amazon CloudWatch
- Amazon Data Firehose
- Amazon DynamoDB
- Amazon EBS
- Amazon EC2
- Amazon ECR
- Amazon ECS
- Amazon EFS
- Amazon EKS
- Amazon EventBridge
- Amazon Glacier
- Amazon Kinesis
- Amazon Lex
- Amazon OpenSearch
- Amazon RDS
- Amazon Redshift
- Amazon S3
- Amazon VPC Flow Logs
- Auto Scaling
- Elastic Load Balancing
- SageMaker
- Trusted Advisor

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
- x-ray

### 4. Use Cases
- 274_CloudWatch vs. CloudTrail vs. Config.txt:17: So all these tools are complementary when you think about it and when you understand that, how they're used for a load balancer, which I think is a great example, then you are going to rock any questions asked for you at the exam.
- 248_AWS Config.txt:8: First of all you should know exactly which resources were deleted and when, and then who deleted that resource.
- 248_AWS Config.txt:18: So for example, there is a user now who goes and changes something into your security group, maybe user adds port 80 in your security group.
- 248_AWS Config.txt:31: And when to apply this rule, that means when to run this rule can be trigger on some action or it could be periodic.
- 248_AWS Config.txt:47: But ultimately, when some rule fail, you can trigger that auto remediation and then this SSM document will go and fix that problem.
- 248_AWS Config.txt:72: Like for example, evaluate if each EBS disc is of type gp2 or evaluate if EC2 instance is t2micro, if instance is not t2micro maybe or to terminate that instance.
- 249_AWS CloudTrail.txt:19: That's the single source of truth for you to find out what happened, when it happened, and who did that?
- 249_AWS CloudTrail.txt:35: Basically, once you have these events in S3 bucket, then you can apply some logic or you can query that data using AWS Athena service, for example.
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
- 036_CloudTrail - Integration with Athena.txt:2: So the idea is that you're going to use Athena directly to query CloudTrail logs stored in Amazon S3, for example, to analyze activity for security and compliance.
- 226_[SAA_SOA] AWS Config.txt:7: Config is a per region service, so you need to configure it for all the regions if you need to, and you can aggregate the data across regions and accounts to centralize it into one place, you can also can store the configuration of all your resources into Amazon history to be later analyzed, for example, by serverless query engine, such as Athena.
- 226_[SAA_SOA] AWS Config.txt:12: For example, you can evaluate if each EBS disk is going to be of type gp2 or if each two instance in your development accounts is of type t2.micro.
- 226_[SAA_SOA] AWS Config.txt:13: Some rules can be evaluated or triggered whenever a configuration is going to change.
- 226_[SAA_SOA] AWS Config.txt:14: So whenever, for example, you have a new configuration of your EBS disc, please evaluate the type of your EBS disk, or you can also have the rule to be evaluated at regular time intervals.
- 226_[SAA_SOA] AWS Config.txt:15: For example, every two hours, please make sure that all my EBS discs are of type gp2.
- 226_[SAA_SOA] AWS Config.txt:25: For example, the security group has been non-compliance.
- 226_[SAA_SOA] AWS Config.txt:27: You can see when the change and who changed it and so on, and you can link it to CloudTrail to view the API calls made for that resource.
- 226_[SAA_SOA] AWS Config.txt:30: So the idea is, for example, you are monitoring whether or not your IAM access keys have expired.
- 226_[SAA_SOA] AWS Config.txt:31: For example, they are older than 90 days.

### 5. Constraints / Limitations
- 274_CloudWatch vs. CloudTrail vs. Config.txt:7: Now, CloudTrail could be new to you, but basically it's to record API calls made within your account by everyone and everything, and you can define some trails for specific resources, so you can get more information on EC2 only, and it's a global service.
- 274_CloudWatch vs. CloudTrail vs. Config.txt:14: We also maybe have a rule to say, oh there's always should be an SSL certificate assigned to the load balancer, and maybe we should never allow non-encrypted traffic into the load balancer, that could be two different compliance rules that you put into Config.
- 248_AWS Config.txt:6: Now this is typically required for, again, maybe for audit purpose or something went bad with your AWS account, somebody deleted something and you want to find out the root cause or probably who did that from where the API call was made.
- 248_AWS Config.txt:8: First of all you should know exactly which resources were deleted and when, and then who deleted that resource.
- 248_AWS Config.txt:10: But then there should be a service which really looks at all these things and then can give you a bit of view of what happened to a particular resource over the time.
- 248_AWS Config.txt:19: Now your security policy says that port 80 should never be opened, right?
- 248_AWS Config.txt:61: That means it doesn't say that do not allow adding port 80 to the security group, it can't do that because it's a reactive action, right?
- 248_AWS Config.txt:64: So config can't really help prevent actions.
- 248_AWS Config.txt:69: If these are the questions that you want to answer, then AWS config should be used.
- 249_AWS CloudTrail.txt:11: Now, this is advisable as well that you should have CloudTrail enabled so that you can audit your account.
- 030_[SAA] CloudTrail.txt:45: For example, in accurate resource provisioning, hitting service limits, burst of AWS IAM actions, gaps in periodic maintenance activity.
- 032_CloudTrail - Data Lake.txt:7: The store is immutable, that means you can't change anything, can't remove it, and you have retention up to 10 years of data in there.
- 034_[SOA] CloudTrail for SysOps.txt:17: Finally, you should protect CloudTrail using IAM if you want to make sure that CloudTrail keeps on delivering these log files into Amazon S3.
- 034_[SOA] CloudTrail for SysOps.txt:32: And the member accounts cannot remove or modify the organization trail which is good for compliance.
- 034_[SOA] CloudTrail for SysOps.txt:33: They can only view that it exists.
- 226_[SAA_SOA] AWS Config.txt:29: Now, although you cannot deny any action from happening from within the config, you can do remediations of your non-compliant resources using an SSM Automation Documents.
- 226_[SAA_SOA] AWS Config.txt:46: So one configuration item, and then if you want it to just filter for only for some events, you could use an SNS filtering to have a filtered SNS topic, and then you can send it these notifications, for example, to an admin email or to a slack channel and so on to get all these notifications in one place.
- 227_[SAA_SOA] AWS Config - Hands On.txt:3: So we're going to record all the resources supported in this region, but if you wanted to, you can record only specific resource types.
- 227_[SAA_SOA] AWS Config - Hands On.txt:58: This is applying only to AWS EC2 security groups, and we have no parameters for that row.
- 227_[SAA_SOA] AWS Config - Hands On.txt:70: So if I go and manage a resource and look at the inbound rules right here, as we can see, we only have one inbound rule, which doesn't have a port, so there's no port 22 in here.
- 227_[SAA_SOA] AWS Config - Hands On.txt:77: And if I delete this rule, this will retrigger an evaluation of my resource, which should make it compliant again.
- 227_[SAA_SOA] AWS Config - Hands On.txt:82: Now I did change yet again, the configuration, so we're going to have to wait a little bit of time for the configuration change to happen right here, which should trigger a rule compliance and then hopefully now a resource will be compliant.
- 227_[SAA_SOA] AWS Config - Hands On.txt:98: So for example, you could say, hey attach EBS volume and here's the right limit based on the non compliant resources.
- 227_[SAA_SOA] AWS Config - Hands On.txt:106: From the CloudWatch consoles or from the Events rules console to intercept only specific non-compliant events for some specific rules.
- 229_[SOA] AWS Config - Aggregators.txt:6: And this account is called an aggregator account, and this is only in the aggregator account that you're going to create an aggregator, okay?
- 229_[SOA] AWS Config - Aggregators.txt:9: So remember, the aggregator is created in only one central account, they're not created in each individual source accounts.
- 229_[SOA] AWS Config - Aggregators.txt:14: Once these authorizations are in place, and this is only, again, if you're not using AWS Organizations, then the aggregator will be able to collect data, to pull data from these targeted accounts and aggregate them.
- 231_AWS Config - Organizational Rules.txt:4: So the scope of the organizational rules is only the organizations, whereas Conformance packs works both for many accounts as well as your organization.
- 231_AWS Config - Organizational Rules.txt:5: On top of it, the organizational rules are defined at the organization level, and they are one rule only so you can deploy one rule at a time, and you manage them only from your organization accounts.
- 231_AWS Config - Organizational Rules.txt:8: So that's the difference, they're very similar, the exam shouldn't ask you the difference between them two but you know that they can come in both cases to deploy rules across your organization.
- 236_Monitoring Overview in AWS.txt:11: The users only care that the application is working.
- 236_Monitoring Overview in AWS.txt:14: Outages, you know, if there's an outage, well, our customer experience should not be degraded, okay?
- 236_Monitoring Overview in AWS.txt:15: It should still be good, that's why we deploy highly available things.
- 239_CloudWatch Logs.txt:3: And to do so, you must first define log groups.
- 239_CloudWatch Logs.txt:33: You can calculate aggregate statistics, you can sort events, limit the number of events, and so on.
- 239_CloudWatch Logs.txt:37: And so as such, it will only query historical data when you run the query.
- 239_CloudWatch Logs.txt:43: Instead, you must use the CloudWatch Logs subscription.
- 239_CloudWatch Logs.txt:56: So the nitty gritty of how this works is that you must use what's called destinations.
- 240_CloudWatch Logs - Hands On.txt:54: So it gives you, for example, if you should click on these, some nice insights to how the query language works for CloudWatch logs insights.
- 241_CloudWatch Logs - Live Tail - Hands On.txt:20: And from a pricing perspective, you only get a few hours a day, so maybe one hour a day of free usage of Live Tail.

### 6. Patterns / Architectures
- 030_[SAA] CloudTrail.txt:47: So whenever something is changed or try to be changed to detect unusual patterns.
- 230_AWS Config - Conformance Packs.txt:4: You can include even custom config rules to evaluate whether your resources are compliant within the config rules, and you can designate a delegated administrator to deploy these conformance packs to your AWS organization.
- 236_Monitoring Overview in AWS.txt:20: Can we look at trends in terms of how things scale, in terms of patterns of outages?
- 240_CloudWatch Logs - Hands On.txt:15: Now, we can create metric filters in here, and these metric filters is a way for us to find a filter pattern.
- 240_CloudWatch Logs - Hands On.txt:17: Okay, And then we need to select for example, a custom data, for example, this log stream and then we test a pattern and it's going to give us three matches out of five in the simple logs.
- 240_CloudWatch Logs - Hands On.txt:23: When there is a filter pattern or matching occur and so, you can say one for example, to add one and to count how many times this installing lines have been filmed.
- 244_CloudWatch Logs - Metric Filters Hands On.txt:7: So I'm going to create a metric filter and then you have to enter a pattern.
- 244_CloudWatch Logs - Metric Filters Hands On.txt:8: Now, patterns can be quite complicated.
- 244_CloudWatch Logs - Metric Filters Hands On.txt:9: There's a whole documentation on the filter and syntax for the pattern, but right now I'm just going to look for 400 and make it extremely simple and then we can send custom log data to test or we can just get stuff directly from my logs and then test the pattern.
- 244_CloudWatch Logs - Metric Filters Hands On.txt:11: So that means that my pattern.
- 247_CloudWatch Synthetics.txt:25: And finally, a GUI Workflow Builder.
- 248_Amazon EventBridge.txt:5: So the events are generated every hour, hence the name Amazon EventBridge, but not just a schedule like every hour, it can also react to an event pattern.
- 248_Amazon EventBridge.txt:20: For example, you can schedule and trigger a Lambda function, you can schedule a batch in AWS Batch, you can launch an ECS task for Amazon ECS, you can send a message to SQS, to SNS, or even to a Kinesis Data Stream, you can, for example, start a Step Function, you can start a CI/CD Pipeline with CodePipeline or a build with CodeBuild so you don't actually know all these things, of course, these are different AWS services, but I'm just giving you an overview what you can do and you can also, for example, start an SSM automation or a specific EC2 action, such as starting or stopping or restarting an EC2 instance.
- 248_Amazon EventBridge.txt:33: For example, this is an example here for a specific CodePipeline in action.
- 249_Amazon EventBridge - Hands On.txt:3: You can create a rule with an event pattern.
- 249_Amazon EventBridge - Hands On.txt:10: So just to get started, we're going to do the first option, EventBridge rule with event pattern.
- 249_Amazon EventBridge - Hands On.txt:29: If you have a look at the event pattern on the bottom line, on the bottom page, sorry, you can have a look at Sample events 1, 2, 3.
- 249_Amazon EventBridge - Hands On.txt:33: So now our event pattern filter is defined right here on the right-hand side.
- 250_Amazon EventBridge - Multi-Account Aggregation.txt:5: Well, you would define an event pattern in one of your accounts and then you would create an event rule for it, so that all the state changes of account A are sent to the event rule.
- 250_Amazon EventBridge - Multi-Account Aggregation.txt:9: Then we can do the exact same pattern in account B and D and C, so that we have all the events and all the state changes of our EC2 instances that will land onto the event bus of the central accounts.
- 250_Amazon EventBridge - Multi-Account Aggregation.txt:11: So that's it, just one thing to know in terms of architecture, I hope you liked it and I will see you in the next lecture.
- 251_X-Ray Overview.txt:15: So, there's no common view of your entire architecture, your entire service map, et cetera.
- 251_X-Ray Overview.txt:32: You can understand the dependencies in your microservice architecture because you can visually see what is happening and how all your microservices interact with one another.
- 257_X-Ray & ECS.txt:13: Now, the second pattern to run X-Ray in your ECS cluster is called the Side Car pattern.
- 257_X-Ray & ECS.txt:14: So what does it mean, Side Car pattern?
- 257_X-Ray & ECS.txt:19: So, this is the way it works, from a Side Car pattern.
- 257_X-Ray & ECS.txt:21: So, we can not use the X-Ray Daemon Container, we also have to use the X-Ray Container as a Side Car pattern.
- 257_X-Ray & ECS.txt:31: And so once the X-Ray Daemon is running, this is a Side Car pattern, here we have our application.
- 259_CloudTrail.txt:47: So whenever something is changed or try to be changed to detect unusual patterns.
- 263_AWS Quick Clean-Up.txt:3: Similarly you can go to CodeDeploy and CodePipeline and if you wanted to you could delete them as well, so the process is pretty easy you go CodePipeline, you click on your pipeline and then you can just edit and delete if you wanted to save some cost, and you can also delete everything else we've created from this course, this just allows you to control your cost, but the most expensive resource right now is going to be Elastic Beanstalk so make sure that you delete Elastic beanstalk if you followed me in this course.
- 270_CloudWatch Logs - Hands On.txt:15: Now, we can create metric filters in here, and these metric filters is a way for us to find a filter pattern.
- 270_CloudWatch Logs - Hands On.txt:17: Okay, And then we need to select for example, a custom data, for example, this log stream and then we test a pattern and it's going to give us three matches out of five in the simple logs.
- 270_CloudWatch Logs - Hands On.txt:23: When there is a filter pattern or matching occur and so, you can say one for example, to add one and to count how many times this installing lines have been filmed.
- 276_EventBridge Overview (formerly CloudWatch Events).txt:5: So the events are generated every hour, hence the name Amazon EventBridge, but not just a schedule like every hour, it can also react to an event pattern.
- 276_EventBridge Overview (formerly CloudWatch Events).txt:20: For example, you can schedule and trigger a Lambda function, you can schedule a batch in AWS Batch, you can launch an ECS task for Amazon ECS, you can send a message to SQS, to SNS, or even to a Kinesis Data Stream, you can, for example, start a Step Function, you can start a CI/CD Pipeline with CodePipeline or a build with CodeBuild so you don't actually know all these things, of course, these are different AWS services, but I'm just giving you an overview what you can do and you can also, for example, start an SSM automation or a specific EC2 action, such as starting or stopping or restarting an EC2 instance.
- 276_EventBridge Overview (formerly CloudWatch Events).txt:33: For example, this is an example here for a specific CodePipeline in action.
- 277_Amazon EventBridge - Hands On.txt:3: You can create a rule with an event pattern.
- 277_Amazon EventBridge - Hands On.txt:10: So just to get started, we're going to do the first option, EventBridge rule with event pattern.
- 277_Amazon EventBridge - Hands On.txt:29: If you have a look at the event pattern on the bottom line, on the bottom page, sorry, you can have a look at Sample events 1, 2, 3.
- 277_Amazon EventBridge - Hands On.txt:33: So now our event pattern filter is defined right here on the right-hand side.

## Step 3 - Deep Expansion (Observability Concepts)

### Core Services in This Topic
- API Gateway: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Batch: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS CloudFormation: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS CloudTrail: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Config: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS DataSync: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Elastic Beanstalk: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Glue: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Lambda: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS SAM: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.

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
