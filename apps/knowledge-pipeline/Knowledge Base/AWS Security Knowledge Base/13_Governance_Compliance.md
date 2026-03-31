# 13_Governance_Compliance.md

## Scope
- Topic: AWS Config, conformance, remediation, advisor frameworks, IaC governance, audit tooling
- Files processed: 26
- Extracted non-empty transcript lines: 874
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 6: Security Foundations and Governance)

This section is the study-first governance blueprint for continuous compliance, policy enforcement, and security-as-code operations.

### Phase 1 - Foundations

#### Module 1: Governance Objectives
- Define control intent before selecting tools.
- Map controls to preventive, detective, and corrective categories.
- Treat auditability and traceability as mandatory architecture requirements.


##### Source Transcript Details
- Module focus: Governance Objectives
- Primary transcript files:
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/227_[SAA_SOA] AWS Config - Hands On.txt
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/245_CloudFormation - Drift.txt
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/226_[SAA_SOA] AWS Config.txt
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/238_Audit Manager.txt
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/250_AWS Resilience Hub.txt
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/232_AWS Config - Use Cases.txt
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/228_[SOA] AWS Config - Remediation Examples.txt
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/230_AWS Config - Conformance Packs.txt
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/231_AWS Config - Organizational Rules.txt
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/240_[CCP_SAA] CloudFormation - Hands On.txt
- Top concept clusters from transcript metadata:
- Governance/Platform Operational Context
- Continuous Compliance
- Governance as Code
- Resilience and Recovery
- Operational Assurance
- Workload Platform Security
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 26
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 874
- Key insights inside selected files: 423
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- And currently, they do not have a compliance status because we haven't defined any kind of rule on top of them.
- Now I did change yet again, the configuration, so we're going to have to wait a little bit of time for the configuration change to happen right here, which should trigger a rule compliance and then hopefully now a res...
- So I have just refreshed my page, and as we can see in here on July 12th, we have after the rule compliance, a CloudTrail event that happened because I did revoke a security group ingress rule because I deleted an ing...
- And so that means that yes, I have fixed the compliance of my resource.
- So Config is a service that allows you to get auditing and record compliance of your resources in AWS, based on some rules that you're going to set, you can also record Configuration and their changes over time to qui...
- Now, Config Rules are just for compliance.
- Okay, but what it does give you is a overview of your configuration and the compliance of your resources.
- Now for the company resource, you're going to be able to view the compliance of a resource over time.
- For example, the security group has been non-compliance.
- So in case the resource is still non-compliance after an auto remediation, it may retry for example, up to five times.
- So, for example, we monitor our security group, it becomes not compliance.
- Or you can also pass on all the changes and all the compliance that notifications of your resources to SNS from Config.
- So, it's a service that's used to assess risk and compliance of your AWS workloads.
- You will then generate reports of compliance based on these frameworks alongside evidence folders.
- Finally, in case you have issues of noncompliance, you can filter and group data to dive deep into causes of noncompliance.
- And then you're gonna be able to monitor the resilience posture and in case anything changes, there's a drift detection mechanism so that you get notified whenever changes are detected in the compliance status.
- You're going to define a sample app and then once you have defined it, you're going to see whether or not it's compliance, and if there is a compliance status of policy breach, you can have a look at the assessment re...
- The conformance packs will give you access to many rules at a time, so you can deploy many rules, many Lambda functions, many remediation actions, and the compliance of these things will be seen at the account level.

##### Polished Architect Notes
- Transcript signals that currently, they do not have a compliance status because we haven't defined any kind of rule on top of them.
- Transcript signals that i did change yet again, the configuration, so we're going to have to wait a little bit of time for the configuration change to happen right here, which should trigger a rule compliance and then hopefully now a res...
- Transcript signals that i have just refreshed my page, and as we can see in here on July 12th, we have after the rule compliance, a CloudTrail event that happened because I did revoke a security group ingress rule because I deleted an in...
- Transcript signals that so that means that yes, I have fixed the compliance of my resource.
- Transcript signals that config is a service that allows you to get auditing and record compliance of your resources in AWS, based on some rules that you're going to set, you can also record Configuration and their changes over time to qu...
- Transcript signals that config Rules are just for compliance.
- Transcript signals that but what it does give you is a overview of your configuration and the compliance of your resources.
- Transcript signals that for the company resource, you're going to be able to view the compliance of a resource over time.
- Transcript signals that for example, the security group has been non-compliance.
- Transcript signals that in case the resource is still non-compliance after an auto remediation, it may retry for example, up to five times.
- Transcript signals that for example, we monitor our security group, it becomes not compliance.
- Transcript signals that or you can also pass on all the changes and all the compliance that notifications of your resources to SNS from Config.

##### Architect Synthesis (Transcript-Derived)
- Treat Governance/Platform Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Continuous Compliance as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Governance as Code as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Resilience and Recovery as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Assurance as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: currently, they do not have a compliance status because we haven't defined any kind of rule on top of them.
- Design implication: i did change yet again, the configuration, so we're going to have to wait a little bit of time for the configuration change to happen right here, which should trigger a rule compliance and then hopefully now a res...
- Design implication: i have just refreshed my page, and as we can see in here on July 12th, we have after the rule compliance, a CloudTrail event that happened because I did revoke a security group ingress rule because I deleted an in...
#### Module 2: Baseline Governance Components
- Configuration tracking and compliance evaluation.
- Security posture insights and architectural best-practice checks.
- Policy-driven infrastructure lifecycle controls.


##### Source Transcript Details
- Module focus: Baseline Governance Components
- Primary transcript files:
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/227_[SAA_SOA] AWS Config - Hands On.txt
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/245_CloudFormation - Drift.txt
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/226_[SAA_SOA] AWS Config.txt
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/238_Audit Manager.txt
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/250_AWS Resilience Hub.txt
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/232_AWS Config - Use Cases.txt
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/228_[SOA] AWS Config - Remediation Examples.txt
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/230_AWS Config - Conformance Packs.txt
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/231_AWS Config - Organizational Rules.txt
- outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/240_[CCP_SAA] CloudFormation - Hands On.txt
- Top concept clusters from transcript metadata:
- Governance/Platform Operational Context
- Continuous Compliance
- Governance as Code
- Resilience and Recovery
- Operational Assurance
- Workload Platform Security
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 26
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 874
- Key insights inside selected files: 423
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- And currently, they do not have a compliance status because we haven't defined any kind of rule on top of them.
- Now I did change yet again, the configuration, so we're going to have to wait a little bit of time for the configuration change to happen right here, which should trigger a rule compliance and then hopefully now a res...
- So I have just refreshed my page, and as we can see in here on July 12th, we have after the rule compliance, a CloudTrail event that happened because I did revoke a security group ingress rule because I deleted an ing...
- And so that means that yes, I have fixed the compliance of my resource.
- So Config is a service that allows you to get auditing and record compliance of your resources in AWS, based on some rules that you're going to set, you can also record Configuration and their changes over time to qui...
- Now, Config Rules are just for compliance.
- Okay, but what it does give you is a overview of your configuration and the compliance of your resources.
- Now for the company resource, you're going to be able to view the compliance of a resource over time.
- For example, the security group has been non-compliance.
- So in case the resource is still non-compliance after an auto remediation, it may retry for example, up to five times.
- So, for example, we monitor our security group, it becomes not compliance.
- Or you can also pass on all the changes and all the compliance that notifications of your resources to SNS from Config.
- So, it's a service that's used to assess risk and compliance of your AWS workloads.
- You will then generate reports of compliance based on these frameworks alongside evidence folders.
- Finally, in case you have issues of noncompliance, you can filter and group data to dive deep into causes of noncompliance.
- And then you're gonna be able to monitor the resilience posture and in case anything changes, there's a drift detection mechanism so that you get notified whenever changes are detected in the compliance status.
- You're going to define a sample app and then once you have defined it, you're going to see whether or not it's compliance, and if there is a compliance status of policy breach, you can have a look at the assessment re...
- The conformance packs will give you access to many rules at a time, so you can deploy many rules, many Lambda functions, many remediation actions, and the compliance of these things will be seen at the account level.

##### Polished Architect Notes
- Transcript signals that currently, they do not have a compliance status because we haven't defined any kind of rule on top of them.
- Transcript signals that i did change yet again, the configuration, so we're going to have to wait a little bit of time for the configuration change to happen right here, which should trigger a rule compliance and then hopefully now a res...
- Transcript signals that i have just refreshed my page, and as we can see in here on July 12th, we have after the rule compliance, a CloudTrail event that happened because I did revoke a security group ingress rule because I deleted an in...
- Transcript signals that so that means that yes, I have fixed the compliance of my resource.
- Transcript signals that config is a service that allows you to get auditing and record compliance of your resources in AWS, based on some rules that you're going to set, you can also record Configuration and their changes over time to qu...
- Transcript signals that config Rules are just for compliance.
- Transcript signals that but what it does give you is a overview of your configuration and the compliance of your resources.
- Transcript signals that for the company resource, you're going to be able to view the compliance of a resource over time.
- Transcript signals that for example, the security group has been non-compliance.
- Transcript signals that in case the resource is still non-compliance after an auto remediation, it may retry for example, up to five times.
- Transcript signals that for example, we monitor our security group, it becomes not compliance.
- Transcript signals that or you can also pass on all the changes and all the compliance that notifications of your resources to SNS from Config.

##### Architect Synthesis (Transcript-Derived)
- Treat Governance/Platform Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Continuous Compliance as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Governance as Code as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Resilience and Recovery as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Operational Assurance as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: currently, they do not have a compliance status because we haven't defined any kind of rule on top of them.
- Design implication: i did change yet again, the configuration, so we're going to have to wait a little bit of time for the configuration change to happen right here, which should trigger a rule compliance and then hopefully now a res...
- Design implication: i have just refreshed my page, and as we can see in here on July 12th, we have after the rule compliance, a CloudTrail event that happened because I did revoke a security group ingress rule because I deleted an in...
### Phase 2 - Core Services

#### AWS Config and Conformance Controls
- Record resource state and evaluate compliance continuously.
- Use rules, packs, and remediation for enforceable governance loops.
- Aggregate visibility across organizational scope for centralized control.

#### Trusted Advisor and Well-Architected Signals
- Use advisory signals to prioritize risk-reduction investments.
- Convert recommendations into accountable remediation backlogs.

#### CloudFormation Governance
- Treat infrastructure definitions as security control artifacts.
- Use stack policy, drift detection, and guard-style checks to prevent control erosion.

#### Audit and Control Tooling
- Audit Manager-style workflows build evidence trails.
- Service catalog and fault-injection patterns support controlled operational governance maturity.

### Phase 3 - Advanced Patterns

#### Pattern 1: Continuous Compliance Pipeline
- Config change detection triggers evaluation and remediation workflows.
- Non-compliance events integrate with ticketing and escalation models.

#### Pattern 2: Policy-as-Code Gatekeeping
- Pre-deployment checks block non-compliant infrastructure templates.
- Post-deployment drift checks ensure runtime state matches approved intent.

#### Pattern 3: Organization-Scale Governance Operations
- Central governance account with delegated operational ownership where needed.
- Exception lifecycle controls to avoid permanent policy bypasses.

### Phase 4 - System Design (Production)

#### Reference Governance Architecture
- Baseline guardrails at organization boundary.
- Continuous state recording and compliance analytics.
- Automated remediation with approval gates for high-risk actions.
- Evidence retention aligned to audit and regulatory timelines.

#### Scaling Considerations
- Rule and policy volume growth with account/resource expansion.
- Exception handling complexity and approval bottlenecks.
- Drift noise if controls are too generic or weakly scoped.

#### Cost Considerations
- Governance control volume drives evaluation and operations overhead.
- Early policy hygiene reduces expensive audit and incident remediation cycles.

### Cross-Cloud Concept Mapping (Governance and Compliance)

#### Underlying Concept: Continuous Configuration Compliance
- AWS: Config and conformance packs
- Azure: policy and posture governance models
- GCP: organization policy and posture evaluation models
- Trade-off: control expression differs; compliance objective should remain cloud-agnostic.

#### Underlying Concept: Infrastructure Governance as Code
- AWS: CloudFormation governance controls
- Azure: infrastructure template governance plus policy checks
- GCP: IaC governance with policy validation patterns
- Trade-off: strongest outcomes come from integrating policy checks into CI/CD, not manual reviews.

### Real-World Use Cases from Transcript Signals
- Detect and remediate configuration drift at scale.
- Enforce baseline controls across multi-account estates.
- Generate auditable evidence for control compliance and review cycles.

### Constraints and Exam-Relevant Traps Captured
- Compliance reporting without remediation loops gives limited risk reduction.
- Governance tools require explicit ownership and exception governance.
- Drift is inevitable; unattended drift is preventable.

## DevOps Domain 6 Additions - Security and Compliance Operations

### Source Files
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/207_[SAA_SOA] AWS Config - Overview.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/208_[SAA_SOA] AWS Config - Hands On.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/209_AWS Config - Configurations Recorder and Aggregator.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/210_AWS Config - Conformance Packs.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/211_AWS Config - Organizational Rules.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/212_AWS Organizations - Overview.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/213_AWS Organizations - Service Control Policies (SCPs).txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/214_AWS Control Tower - Overview.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/215_[SOA] AWS Control Tower - Hands On.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/216_AWS Control Tower - Landing Zones.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/217_AWS Control Tower - Account Factory & Migrating Accounts.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/218_Customizations for AWS Control Tower (CfCT).txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/219_AWS Control Tower - Config Integration.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/220_AWS Control Tower - Account Factory for Terraform.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/221_[SAA_SOA] IAM Identity Center - Overview.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/222_IAM Identity Center - Extras.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/223_AWS Web Application Firewall (AWS WAF).txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/224_[SAA] AWS Firewall Manager - Overview.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/225_AWS Firewall Manager - Policies.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/226_[SAA_SOA] Amazon GuardDuty - Overview.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/227_Amazon GuardDuty - Advanced.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/228_Amazon GuardDuty - CloudFormation Integration.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/229_Amazon Detective.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/230_[SAA_SOA] Amazon Inspector - Overview.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/231_[SOA] Amazon Inspector - Hands On.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/232_Amazon Inspector - EC2 Setup.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/233_[SOA] EC2 Instance Migration using AMIs.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/234_[CCP_SAA_SOA] AWS Trusted Advisor - Overview.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/235_AWS Trusted Advisor - Architectures.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/236_AWS Secrets Manager.txt
- outputs/aws-certified-devops-engineer-professional-hands-on/08_Domain 6_ Security and Compliance/237_AWS Secrets Manager - Hands On.txt

### Security and Compliance Synthesis
- Config plus conformance packs should be treated as a continuous compliance pipeline, not a static audit report generator.
- Organizational controls are strongest when SCPs, Control Tower guardrails, and Config organizational rules are aligned with the same control objective.
- WAF and Firewall Manager provide policy distribution at scale, while GuardDuty, Detective, and Inspector provide detection and investigation depth.
- Secrets Manager and IAM Identity Center reduce credential sprawl and centralize identity posture when integrated with account lifecycle governance.
- Trusted Advisor findings should be converted into tracked remediation workflows with explicit ownership and closure criteria.

## Step 1 — Line-by-Line Extraction

Every non-empty line from every source transcript is preserved below with extraction fields.

### File: outputs/aws-solutions-architect-professional/04_Security/036_AWS Config.txt

Line 1:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: And next we talk about AWS config.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 2:
- Concepts: Continuous Compliance, Operational Assurance
- Services: (none explicit)
- Key Insights: So it's a service to help you audit and record compliance of your AWS resources.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Because you can record the configurations and their changes to configuration of your resources over time.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 5:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: Now, when you define rules to make sure that these resources configurations are compliant or not over time, these rules are just here to evaluate compliance.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: They're not here to prevent actions from happening on your resources.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: So for example, say you have a compliance rule to look at whether or not SSH is opened on any of your security group because you are not using SSH in your company, maybe using something like SSM systems manager.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So in this case, if someone creates a change in your security group rule and allows SSH the config rule does not prevent this from happening.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 9:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: There is no deny rule.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: This is a very good use case instead for something like an SCP.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Instead, what the config rule will be doing will be to look at the compliance of your security group.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It will give you a notification to your admins through an SNS topic that, yes one of your security group has changed and it's not compliant anymore and you have to act upon it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Now, there are some automations you can build, but remember, config rules are not here to prevent actions from happening.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 14:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: They're here to give you the compliance of your resources over time.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Now, what types of questions can be solved by AWS config?
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: For example, is there unrestricted SSH access to my security group?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Or do my buckets have any public access in S3?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: Or how has my ALB configuration changed over time?
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Maybe someone did a mistake and I want to backtrack that change.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: You can receive alerts on SNS topics for any kind of changes, and AOS config is a per region service, so you need to enable it in every region where you need it to be.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 21:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Also, there is a possibility to aggregate all the AWS config data across accounts and regions into one central account, which is a good use case for a security account where you have login, config and so on.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 22:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Now, config resource, you can view the compliance of a resource over time.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So if some rules apply to that resource then you can see it's red when it's not compliant.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: And then as soon as you apply a rule it becomes green and becomes compliant.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You can view the resource configuration over time so you can see when the changes happen and what changes happen.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 26:
- Concepts: Continuous Compliance, Workload Platform Security
- Services: AWS Config
- Key Insights: And finally, in case you have collateral API calls enabled, you can view who made these changes, when the changes happen directly from AWS config, which is very handy.
- Hidden/Implicit Meaning: Governance and compliance signal; Platform workload security signal.

Line 27:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So a bit more details on config rules themselves.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 28:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So we can first use AWS managed config rules Over 75 managed rules we can use.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 29:
- Concepts: Continuous Compliance, Workload Platform Security
- Services: AWS Config, AWS Lambda
- Key Insights: So it gives us a lot to play with, but we can also if you wanted to, create our own custom configuration rules in this way we would need to create a Lambda function to perform it and link it with config.
- Hidden/Implicit Meaning: Governance and compliance signal; Platform workload security signal.

Line 30:
- Concepts: Workload Platform Security
- Services: AWS Lambda, Amazon EBS
- Key Insights: So for example, we can create a Lambda function that checks if EBS disc is of type gp2 or if any two instance is of type t2.micro.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 31:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this could be helpful.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 32:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: For example, if you have a development environment and you wanted to limit your cost.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 33:
- Concepts: Continuous Compliance, Workload Platform Security
- Services: AWS Config, AWS Lambda
- Key Insights: So you would create a Lambda function and then create the custom config rule associated with it.
- Hidden/Implicit Meaning: Governance and compliance signal; Platform workload security signal.

Line 34:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Then you can evaluate or trigger the rule for every config change in AWS.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 35:
- Concepts: Continuous Compliance
- Services: Amazon EBS
- Key Insights: For example, any time an EBS disc is created then do this rule.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 36:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Or if you wanted to just at a regular time interval.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 37:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: So for example, every one day, scan all my EBS discs and make sure that they are compliant.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 38:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It's up to you.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 39:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: You can also trigger Amazon EventBridge in case a rule is noncompliant.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 40:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So thanks to EventBridge, you can catch any noncompliance and you can trigger any kind of destination that is a real destination of EventBridge which allows you a lot of different integrations.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 41:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: But config rules also has a deeper integration with SSM automations, such as if a rule is not compliant.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 42:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: If a resource is not compliant, then you can trigger an auto remediation by triggering an SSM automation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 43:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: So with SSM automation, you can do a bit more than what you could do with the Lambda function for example, you can change right away security group rules or you can stop instances with non-approved tags and so on.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 44:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the actions can be directly written in an automation document in SSM.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 45:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Okay, so that's it for AWS config.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 46:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/226_[SAA_SOA] AWS Config.txt

Line 1:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Okay, let's have a look at AWS Config.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 2:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So Config is a service that allows you to get auditing and record compliance of your resources in AWS, based on some rules that you're going to set, you can also record Configuration and their changes over time to quickly be able to roll back and to figure out what happened in your infrastructure if you need to.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 3:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So some questions that can be solved by Config are, is there an unrestricted SSH access to my security groups?
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Or do my buckets have anybody public access?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: Or is there an ALB configuration that has changed over time?
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Then based on these rules being compliant or not, you can receive alerts or SNS notifications for any changes.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Config is a per region service, so you need to configure it for all the regions if you need to, and you can aggregate the data across regions and accounts to centralize it into one place, you can also can store the configuration of all your resources into Amazon history to be later analyzed, for example, by serverless query engine, such as Athena.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 8:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So what types of rules go into Config?
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 9:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Well, you can have AWS managed config rules, and there are over 75 rules that you can use, or you can create your own config rules.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 10:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: In this case, you need to define that rule yourself.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: We're using a Lambda function.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: For example, you can evaluate if each EBS disk is going to be of type gp2 or if each two instance in your development accounts is of type t2.micro.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Some rules can be evaluated or triggered whenever a configuration is going to change.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Governance and compliance signal.

Line 14:
- Concepts: Continuous Compliance
- Services: Amazon EBS
- Key Insights: So whenever, for example, you have a new configuration of your EBS disc, please evaluate the type of your EBS disk, or you can also have the rule to be evaluated at regular time intervals.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Governance and compliance signal.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: For example, every two hours, please make sure that all my EBS discs are of type gp2.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Now, Config Rules are just for compliance.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: They do not prevent actions from happening.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: This is not a denied action on anything.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It doesn't replace security mechanisms such as IAM.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: Okay, but what it does give you is a overview of your configuration and the compliance of your resources.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 21:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Now there's no future for config.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It can be quite expensive very quickly.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: You're going to pay 0.003 cents per configuration, item recorded per region and 0.001 cents per config rule evaluation per region.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 24:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: Now for the company resource, you're going to be able to view the compliance of a resource over time.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: For example, the security group has been non-compliance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Then you can view the config resource configuration over time, okay?
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 27:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: You can see when the change and who changed it and so on, and you can link it to CloudTrail to view the API calls made for that resource.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So you can get a full picture of everything that's happening.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Now, although you cannot deny any action from happening from within the config, you can do remediations of your non-compliant resources using an SSM Automation Documents.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and compliance signal.

Line 30:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the idea is, for example, you are monitoring whether or not your IAM access keys have expired.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 31:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: For example, they are older than 90 days.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 32:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: In which case you want to mark them as non-compliant.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 33:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this will not prevent them from not being compliant, but you can trigger whenever a resource is not compliant, a remediation action.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 34:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: For example, there's an SSM document named RevokeUnusedIAMUserCredentials, okay.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 35:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Maybe you want to use this one and then is going to be applied to whatever resource you have, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 36:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And in this instance, it's going to deactivate your IAM access keys.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 37:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that's either using either using AWS-Managed Documents or creating your own automation documents, you can have remediations of your non-compliant resources, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 38:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And if you want it to and go all the way through with the scripting, you could create a document that will invoke a Lambda function and you're free to do whatever you want there.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 39:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Finally, your remediation may have retries.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 40:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: So in case the resource is still non-compliance after an auto remediation, it may retry for example, up to five times.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 41:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So lastly, what about notifications?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 42:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Well, we can use if EventBridge to trigger notifications, whenever our resources are not compliant.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 43:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: So, for example, we monitor our security group, it becomes not compliance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 44:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Then we can trigger an event in EventBridge, and then pass it on to whatever resource you wants.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 45:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Or you can also pass on all the changes and all the compliance that notifications of your resources to SNS from Config.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 46:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So one configuration item, and then if you want it to just filter for only for some events, you could use an SNS filtering to have a filtered SNS topic, and then you can send it these notifications, for example, to an admin email or to a slack channel and so on to get all these notifications in one place.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and compliance signal.

Line 47:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So that's it for a Config.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 48:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and it will see you in the next lecture for some hands-on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/227_[SAA_SOA] AWS Config - Hands On.txt

Line 1:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So let's go into the config service and start to configure it.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we are in it and I'm going to click on get started to start recording some settings.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we're going to record all the resources supported in this region, but if you wanted to, you can record only specific resource types.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: In which case you can find resource categories and then resource types on the right hand side.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But because I want to show you all the resources I can record, I'm going to click on this.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And on top of it, you can include global resources, such as IAM users, group roles and customer managed policies.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Just be aware that again, config is not a part of the feature here, so the more resources you record, the more money you going to pay.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so I'm doing this to show you everything to you, but if you don't want to pay any money from this course, please do not follow on with this hands-on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we're going to record our resources.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: We're going to include global resources and then to record all the resource configuration, we need to create a config service linked role.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we're going to click on that.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Then all this information is going to be delivered into an Amazon S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So once you create a bucket, and the bucket name is already entered for me, so that's perfect.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then we can have a prefix if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then finally, this is where the data is going to be stored.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And in terms of notification, we can stream all the configuration changes and notifications into an Amazon SNS topic if we wanted to, and again, remember this is for everything into one topic.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But I don't wanna do this, so I will leave this unticked.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I click on next and next we find some AWS Managed Rules.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we have a lot, as you can see, and I want to define them later, so I'm going to skip that part, but you can have a look at them if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So click on next, and we can review the configuration.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So yes, we want to record all resources, including global resources.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And we're going to deliver this into an S3 bucket and currently we haven't defined any role.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's click on confirm.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Now the role is being created, the bucket is created and then config is going to be started.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 25:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Now it's going to take a bit of time for config to have a look at everything within your account and look at the configuration.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to post the video until this is done.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 27:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, so my resources are still being discovered, but I can go on the left hand side to resources, and actually we will see that some resources have already been discovered in my account as you can see.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Some route tables, sub-net, VPC and so on, have been discovered.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So what I can do is that I can look at resource type and I can look for example, for EC2 security groups and find that yes, my security groups are here.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 30:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: And currently, they do not have a compliance status because we haven't defined any kind of rule on top of them.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 31:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look for example, at one of these EC2 security group.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 32:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And from within the group, we can have a look at the rules applied, so currently none.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 33:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And we could look at the configuration of the security group itself, okay?
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 34:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We can also look at the resource timeline.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 35:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And the resource timeline will give you all the events related to that resource.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 36:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So there's a configuration change, which is the initial right here.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 37:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: There's some CloudTrail events also that were related to the security group.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 38:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: For example, authorizeSecurityGroupingress rules, CreateLaunchConfiguration and CreateSecurityGroup, this kinda thing.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 39:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And we can go to CloudTrail to find these events.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 40:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So what I want to do is to figure out whether or not my security groups are compliant or not.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 41:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so for this, we're gonna go into rules.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 42:
- Concepts: Continuous Compliance, Workload Platform Security
- Services: AWS Lambda
- Key Insights: And rules is going to be able to give us the option to add a rule, and we can either add an AWS managed rule or create our own custom rule with a lambda function.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 43:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: So to keep it simple, I'm going to add an AWS managed rule and let's have a look at rules that are accessible to us.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 44:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So one that I like is for example, approved-amis-by-id.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 45:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this is to check whether running instances are in your account using the specified AMIs.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 46:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: So if I click on it, for example, and click on next, which is not related to security groups, but I just wanna show you one rule.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 47:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this one will check whether or not your EC2 running instances, will be using the specified AMIs.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 48:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so you can trigger this based on whenever a resource that's changed.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 49:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: And then you can also specify all the EC2 instances in here, and we have to specify a parameter for that rule, which is the list of all the AMI IDs are approved within their account and this is going to be used by the rules and inputs to figure out whether or not EC2 instance is compliant.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 50:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: Because we do not have many EC2 instances yet, we're not going to use that rule.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 51:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: So instead we're going to use a managed rule, but this time for SSH.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 52:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And this is going to be applied to our security groups.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 53:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we want to make sure that we're not allowing any incoming SSH traffic from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 54:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we click on next, this is called the restricted SSH and the trigger is going to be on our resource whenever the configuration changes, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Governance and compliance signal.

Line 55:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: But as we can see, if we define a different kind of rule, we could have it to be run periodically as well.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 56:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So, okay, we're once.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 57:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: Whenever our security group resource will change, please evaluate that rule.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 58:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: This is applying only to AWS EC2 security groups, and we have no parameters for that row.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 59:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: Click on next and click on add rule.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 60:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: And now we have defined this first rule, so let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 61:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So currently it's not evaluated and we don't have any remediation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 62:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's wait a little bit until this is done.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 63:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I just refreshed my page and as you can see, an evaluation was done automatically.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 64:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: And if we look at this rule, we have seven security groups, no six security groups right here, which are not compliant.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 65:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So if we go into our resources on the left hand side, and we're going to filter again by EC2 security group and have a look at all our resources.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 66:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: As we can see, some of them are compliant and some of them are not compliant.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 67:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So if we look at the compliant and the non compliant one let's see the difference.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 68:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this one is compliant, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 69:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: And a rule was applied to it as we can see it says compliant.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 70:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: So if I go and manage a resource and look at the inbound rules right here, as we can see, we only have one inbound rule, which doesn't have a port, so there's no port 22 in here.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 71:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this is why this is working.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 72:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But if I look at a non-compliant resource, for example, this launch-wizard-3 I believe it was not compliant, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 73:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And you click on manage resource, we are taken again straight into the console for security groups.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 74:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: And if you look at the inbound rule, as we can see, port 22 on IPv4 from anywhere is being open.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 75:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this is a big problem.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 76:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: So what I can do instead is delete this rule right here.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 77:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: And if I delete this rule, this will retrigger an evaluation of my resource, which should make it compliant again.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 78:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's delete it and save my rules.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 79:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So then security group has been modified, and so let me close this.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 80:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this is my non-compliant security group, and I can go into resource timeline to have a look.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 81:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: And so within the resource timeline, as we can see the configuration change happens, and then the rule was run and it was not compliant.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 82:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: Now I did change yet again, the configuration, so we're going to have to wait a little bit of time for the configuration change to happen right here, which should trigger a rule compliance and then hopefully now a resource will be compliant.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Governance and compliance signal.

Line 83:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let me pause a little bit and get back to you.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 84:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: So I have just refreshed my page, and as we can see in here on July 12th, we have after the rule compliance, a CloudTrail event that happened because I did revoke a security group ingress rule because I deleted an ingress rule, that's true.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 85:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: Then it recorded as well, a configuration change saying hey, this rule that had the port 22 in it got deleted so from and to is empty because it got deleted.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 86:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: And then config, they run my rule again, named restricted SSH.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 87:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And now my resource is compliant.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 88:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: And so that means that yes, I have fixed the compliance of my resource.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 89:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I can go back into here and we can have a look at another security group, for example, this one.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 90:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: And under the rule here, you can do action and then manage remediation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 91:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: So this is to remediate this for this rule, so if you look at this rule, we have manage remediation and we can have manual remediation or automatic remediation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 92:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: In which case, you can specify your number of retries and a number of seconds for the retries to happen, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 93:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we can select a manual remediation for example, and then you need to choose a remediation action.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 94:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So these are SSM automation documents that we can select.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 95:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So these are defined by AWS, but we can also create our own.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 96:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And for example, well, we could delete a snapshot or delete an image if it's not compliant to whatever we wanted.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 97:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's really up to you to define the action you want.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 98:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: So for example, you could say, hey attach EBS volume and here's the right limit based on the non compliant resources.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 99:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The resource ID parameters, if you need them to be given to the remediation and so on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 100:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Now this doesn't make any sense, this remediation action, right?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 101:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: We need to define a remediation action that makes sense for our rule, but as you can see, we can set up automatic or manual remediation and configure it and so on, and also best in some parameters around the document itself.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 102:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So that's it for config, I hope you liked it.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 103:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then aggregators is to integrate across multiple accounts, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 104:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then under settings, you can have a look at the settings we defined from before, including, for example, sending all the data into an SNS topic.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 105:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Or you can set up Amazon CloudWatch Event rules, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 106:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: From the CloudWatch consoles or from the Events rules console to intercept only specific non-compliant events for some specific rules.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 107:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this section, I hope you liked it, And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/228_[SOA] AWS Config - Remediation Examples.txt

Line 1:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Okay, so now let's see some examples of how to use Config and remediations.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's say we want to disable incoming SSH traffic on all our EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Say we have an EC2 instance with Port:22 open.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: We define a Config rule and then the resource itself, the security group will be marked as non-compliant.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: From then, we know we can invoke an SSM automation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So we're going to trigger it from Config and we're going to use the one provided by AWS out of the box called the AWS-DisableIncomingSSHOnPort22, which is going to disable the port on the security group.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 7:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: And this is done all out of the box from Config.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Here's another example.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We can enable logging on an S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So again, Config will have a rule to monitor the non-compliant S3 buckets.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And if one is non-compliant, we'll trigger an SSM automation again out of the box named AWS-ConfigureS3BucketLogging, in which we're going to enable logging on the bucket and we'll be good to go.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/229_[SOA] AWS Config - Aggregators.txt

Line 1:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So a question that has come up in the exam is around AWS Config aggregators, so what is it?
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Well, say you are managing multiple accounts and multiple regions within these accounts.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we have Account A, Account B, and they're called "source accounts", why?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Because they all have a deployment of AWS Config.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But you want to aggregate all this information into a central AWS account.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And this account is called an aggregator account, and this is only in the aggregator account that you're going to create an aggregator, okay?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: From the aggregator, you're going to get an aggregated view, which is allowing you to see all the compliant and non-compliant resources across all your accounts and all your regions.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that makes a lot of sense, to have this kind of aggregation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So remember, the aggregator is created in only one central account, they're not created in each individual source accounts.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Then this aggregator will aggregate everything that is available in the target accounts, for example, rules, resources, et cetera, across multiple accounts and multiple regions.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And if you are using AWS Organization, then there is no need to do authorization at the individual accounts, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You just create your aggregator in your management account in Organization, and the authorizations will happen automatically.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But if you're not using AWS Organizations then you would need to create an authorization in an account A to say "Hey, I authorize the AWS accounts aggregator "to collect data," and then you would create a second authorization, obviously in Account B, to do the exact same thing.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Once these authorizations are in place, and this is only, again, if you're not using AWS Organizations, then the aggregator will be able to collect data, to pull data from these targeted accounts and aggregate them.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Now the rules management is done at the individual account level, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the aggregator is just here to aggregate data, it's not here to centralize rules, and so on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So if you want to deploy rules across multiple accounts, the best way to do it, in multiple regions, obviously, the best way to do it would be to use CloudFormation StackSets, which allows you to deploy a CloudFormation Stack across multiple accounts and multiple regions.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I hope this makes sense, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/230_AWS Config - Conformance Packs.txt

Line 1:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Now let's talk about conformance packs.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 2:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So it's a collection of AWS config rules and remediation actions, and we can deploy it to an account and region or deploy it across multiple accounts through an AWS organization.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 3:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: It's a prebuilt sample pack, or you can create your own custom conformance pack.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 4:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: You can include even custom config rules to evaluate whether your resources are compliant within the config rules, and you can designate a delegated administrator to deploy these conformance packs to your AWS organization.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It can be a member account.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So the idea is that in this pack, for example, this one, we're going to define a config rule and who is the owner of this conflict role, for example, it could be AWS or it could be a custom role.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then this role is going to be deployed across all your accounts and all your regions.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this short lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/231_AWS Config - Organizational Rules.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about organizational rules.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: So they are rules that you can manage across all your accounts within your organization, so you define the rule at the management accounts or the delegated administrator, and then this rule is deployed to all the member accounts.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So you may say, "Hey, that looks very similar to conformance packs." And you're right, it is the same scope, as in we deploy rules from the management account into many member accounts all across your organization, but it turns out there is a little bit of a difference.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 4:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So the scope of the organizational rules is only the organizations, whereas Conformance packs works both for many accounts as well as your organization.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and compliance signal.

Line 5:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: On top of it, the organizational rules are defined at the organization level, and they are one rule only so you can deploy one rule at a time, and you manage them only from your organization accounts.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: Continuous Compliance, Workload Platform Security
- Services: AWS Config, AWS Lambda
- Key Insights: The conformance packs will give you access to many rules at a time, so you can deploy many rules, many Lambda functions, many remediation actions, and the compliance of these things will be seen at the account level.
- Hidden/Implicit Meaning: Governance and compliance signal; Platform workload security signal.

Line 7:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: So the first rule will be at the organization level and the second one will be for each account level, we'll see whether or not we are compliant.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that's the difference, they're very similar, the exam shouldn't ask you the difference between them two but you know that they can come in both cases to deploy rules across your organization.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/232_AWS Config - Use Cases.txt

Line 1:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So let's talk about a few Use Cases for Config that can appear in the exam.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 2:
- Concepts: Operational Assurance
- Services: (none explicit)
- Key Insights: The first one is to audit IAM policies, and making sure that they are fully compliant, and that they don't give, for example, too much permissions to your users.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The second one is to detect whether or not CloudTrail has been disabled, it's very important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You can also detect if EC2 instances are created with unapproved AMIs.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You can detect if Security Groups are open to the public.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You can detect if Internet Gateways are added to unauthorized VPC, so that your VPC that are supposed to remain private will remain private.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS, Amazon RDS
- Key Insights: You can detect if your EBS volumes are encrypted or not, and if your RDS databases are made public.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So, let's talk about some automation for AWS Config.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So, let's talk about expired IAM Keys.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So with Config, for example, you can define a rule to detect whether or not IAM keys are expired, it's called Access-Keys-Rotated.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 11:
- Concepts: Workload Platform Security
- Services: AWS Lambda
- Key Insights: And in case something is non-compliant, this will trigger Amazon EventBridge, which can in turn invoke a Lambda function to actually rotate these Access Keys, or an SNS topic to notify the users, or even to rotate Access Keys if you wanted to hook your Lambda function to that SNS topic.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 12:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Another option, as you know for Config, is to use Automated Remediations through SSM Automation.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 13:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: So in case Config is detected to be non-compliant, we can automatically trigger an SSM Automation, which will, for example, rotate our Access Keys.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 14:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: Alright, that's it for Config, I hope you liked it.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/233_[CCP_SAA_SOA] Trusted Advisor + Hands On.txt

Line 1:
- Concepts: Operational Assurance
- Services: Trusted Advisor
- Key Insights: So now, let's talk about AWS Trusted Advisor.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So you don't need to install anything.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It's a service that gives you a high level account assessment on your account.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It's going to check for a few things and advise you on them.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: So the checks can be, for example, do you have EBS Public Snapshots?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS
- Key Insights: Or do you have RDS Public Snapshots?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Or are you using the root accounts for your accounts?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Operational Assurance
- Services: Trusted Advisor
- Key Insights: So all these things are checked by Trusted Advisor and they are grouped in six categories.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We have cost optimization, performance, security, fault tolerance, service limits, and operational excellence.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So you have what's called the three sets of checks, the core sets of checks, and then you have the full set of checks.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And to have access to the full set of checks, you need to have a business or an enterprise support plan.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Operational Assurance, Workload Platform Security
- Services: Trusted Advisor
- Key Insights: On top of it, if you do switch on the business and enterprise support plan, then you get programmatic access to Trusted Advisor through the AWS Support API.
- Hidden/Implicit Meaning: Governance and compliance signal; Platform workload security signal.

Line 13:
- Concepts: Operational Assurance
- Services: Trusted Advisor
- Key Insights: So I think it's best for you to see what Trusted Advisor is made of to really understand it.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 14:
- Concepts: Operational Assurance
- Services: Trusted Advisor
- Key Insights: So here, I am in Trusted Advisor.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, you have recommendations.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So zero actions are recommended, but two investigations are recommended for me, and then there are some checks on excluded items or not.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But as we can see, we have two on security that must be looked at.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it turns out that one of my bucket is actually allowing a global access.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I need to verify it and make sure it's correct.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, 29 of my 60 security group rules allow unrestricted access to a specific port.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So again, this is something I should look at.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Maybe that's my intention, maybe that's a problem.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Operational Assurance
- Services: Trusted Advisor
- Key Insights: But you can see right away, I get prompted to upgrade my support plan to get all Trusted Advisor checks.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 24:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let me show you what I mean.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: On the left-hand side, we have the Recommendation categories.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And if I click on Cost optimization, as you can see, I get none of the checks available because I need to update my support plan.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 27:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So all these things are actually not available for me and I need to pay for the service to actually make some cost optimizations.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Same for performance, I get access to nothing.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: If I go to Fault tolerance, again, I get access to nothing.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 30:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Operational excellence, again, access to nothing.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 31:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The only two things I have access to is security.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 32:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So here, we get some checks, the core checks.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 33:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS, Amazon RDS
- Key Insights: And in here, I have my Bucket Permissions, my Security Group ports, my EBS Public Snapshot, RDS Public Snapshot, and so on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 34:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But as soon as I go in here to the more advanced security checks, then, again, I need to update my support plan.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 35:
- Concepts: Operational Assurance
- Services: Trusted Advisor
- Key Insights: Finally, you can have a look at Service limits directly in Trusted Advisor.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and compliance signal.

Line 36:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: That's one way of doing it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 37:
- Concepts: Governance as Code
- Services: Amazon DynamoDB, CloudFormation
- Key Insights: So you can have a look at your Auto Scaling Groups, your CloudFormation Stacks, your DynamoDB Read and Write Capacity and so on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 38:
- Concepts: Operational Assurance
- Services: Trusted Advisor
- Key Insights: So Trusted Advisor is not a very interesting service to look at when you don't pay for the support plan, but at least this should give you an idea of how Trusted Advisor is used in AWS, and therefore answer your exam questions on it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Governance and compliance signal.

Line 39:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: All right, so that's it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 40:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/234_[SAA_SOA] AWS Cost Explorer.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So a small service that can come up in the exam is a billing service called Cost Explorer, which is used to visualize, understand, and manage your AWS cost and usage over time.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It allows you to create custom reports that analyze your cost and usage data.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so with this, you get dashboards, and diagrams, and so on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so you can analyze your data at a high level, for example, total cost and usage across all accounts, but you can also go down to get it monthly, hourly, or at the resource level granularity.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then thanks to Cost Explorer, you can do some cost savings because it allows you to choose an optimal savings plan to lower the prices on your bill.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You can forecast usage as well up to 18 months based on previous usage, which can be helpful for cost planning.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So if we look at Cost Explorer, here's an example.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We get monthly cost by AWS service.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: In this example, we can see, for example, that some instances based on instance type can be more expensive than others, and so we can start optimizing our costs, asking ourselves the question, "Are these instances correctly used?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Are they maximally used?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Are they the right size?" These kind of things.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Then we can get also hourly and resource level.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So in this example, we get to, again, some EC2 instance resource level information, and we get the cost over time, so we can see what happens every single hour to get a better breakdown and understanding of our bill.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: This is also to find, as I said, a savings plan.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So savings plan is an alternative to reserved instances, we have seen this.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so thanks to Cost Explorer, we get this little popup that will come up and it will tell us what kind of savings plan we can have based on our usage, and it will give us some recommendation, and give us some estimated monthly spend, and so on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this is quite handy.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Finally, we can forecast usage.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So based on previous costs that we had in the past, we can get some forecasts and some confidence of the forecast around how much we're expected to pay for our bill based on our previous usage, and that could be quite helpful.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So these kind of use cases can come up in the exam, and this is probably the only billing service that AWS will ask you in the exam.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that's it, I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/235_[CCP] AWS Cost Anomaly Detection.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So here is a quick lecture on the service named AWS Cost Anomaly Detection.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And the name is quite explicit this time.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this continuously monitors your cost and usage data, and it will use machine learning to detect unusual spends.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's going to learn from you.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It's going to learn your unique historical patterns, and then it will detect one-time cost spikes and/or continuous cost increases.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And you don't have to define anything, you don't have to define thresholds.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It just knows on its own what looks a little bit weird.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's going to monitor for your AWS services, your member accounts, your cost allocation tags, and your cost categories.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And it will send you an anomaly detection report with the root cause analysis of what is happening in your account.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You can get notified by either using individual alerts or a daily or weekly summary that leverages SNS.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So to summarize, using machine learning, you can have a look at your cost, you can get alerted and quickly analyze the root cause, all of using the AWS cost anomaly detection service.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt

Line 1:
- Concepts: Operational Assurance
- Services: AWS Well-Architected
- Key Insights: So there is a framework called the AWS Well-Architected Framework.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to describe it to you.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Operational Assurance
- Services: (none explicit)
- Key Insights: This is a tool as well as a framework that allows you to do good applications on AWS.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's quite a long read and so I try to summarize it for you in a few slides.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Operational Assurance
- Services: AWS Well-Architected
- Key Insights: So the idea is that with the well-architected framework once you implement the best practices, then you go to outcomes, and I'll give you the main guidelines of it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Governance and compliance signal.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The first one is that to stop guessing your capacity need instead use auto scaling groups and so on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Test systems at production scale.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So with AWS, you can very quickly perform big test big infrastructure, and then shut them down an hour later.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So there's no reason for you not to test at production scale.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Also automate that allows you to make architectural experimentation easier.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: If you have a Cloud formation template you can easily deploy it in multiple environments to experiments.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You can also allow for evolutionary architectures.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Workload Platform Security
- Services: API Gateway, AWS Lambda
- Key Insights: So your architecture can show over time it can start with for example, EC2 instances and a load bouncer and evolve towards a more serverless architecture such as API Gateway and Lambda.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So design based on these changing requirements and so on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Also drive architecture using data.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So data is very important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: You have to move it around storage and so on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And finally, improve through game days.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The idea is that you must try out your architecture good production, give it a go and see how you can improve.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So you need to submit your application, for example for flash sale days that put a lot of pressure on your architecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Operational Assurance
- Services: (none explicit)
- Key Insights: So the architecture framework is six pillars.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The first one is operational excellence.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The second one is security.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The third one is reliability.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Fourth one, performance efficiency.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Fifth one, cost optimization.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 27:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And six one, sustainability.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So you have to know them all, I mean, just the names, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Not what they represent, but the names are pretty explicit and you can go on the website to learn more about them but this is not the focus of this course.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 30:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so these pillars are not something to balance or trade off, they're actually a synergy.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 31:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: For example, if you improve your operational excellence you most likely will improve as well your cost optimization.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 32:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And if you are or more sustainable, most likely you'll also be having a higher performance efficiency and so on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 33:
- Concepts: Operational Assurance
- Services: AWS Well-Architected
- Key Insights: So to help you guide you through this framework there is something called the AWS Well-Architected tool.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 34:
- Concepts: Operational Assurance
- Services: (none explicit)
- Key Insights: And it's a framework tool to review your architectures against the six pillars I just defined.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 35:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then you adapt architectural best practices.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 36:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this is whether your looks like and we'll see this in a second.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 37:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So how does it work?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 38:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Well, you select your workload and then you answer questions.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 39:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You review your answers against the six pillars that I just defined.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 40:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then you obtain advice.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 41:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You get videos, documentation reports and you see results in a dashboard.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 42:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look to see how this tool works.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 43:
- Concepts: Operational Assurance
- Services: AWS Well-Architected
- Key Insights: So here I am in the well-architected tool UI and I'm going to define a workload.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 44:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So you can, for example, define a demo workload and say this is your production application.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 45:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You can say, this is my prod application.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 46:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, the review owner will be John@example.com.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 47:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We are in production and we are functioning in two either of this regions that I will choose.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 48:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this one and then US-West-2, perfect.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 49:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We can specify non-AWS regions, account IDs and so on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 50:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And you can just specify a lot of information around your infrastructure and architecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 51:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So next I'm going to apply lenses.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 52:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And these lenses are the kind of questions you apply to your architecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 53:
- Concepts: Operational Assurance
- Services: AWS Well-Architected
- Key Insights: So we'll apply the well-architected framework lens.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 54:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But you have the FTR lens, the serverless lens, the SaaS lens and you can even create your custom lenses if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 55:
- Concepts: Operational Assurance
- Services: AWS Well-Architected
- Key Insights: But for now, we'll keep it simple and just answer questions regarding the well-architected framework.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 56:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's define the workload.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 57:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And once you have that, you need to start reviewing.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 58:
- Concepts: Operational Assurance
- Services: AWS Well-Architected
- Key Insights: So we'll start reviewing and then we'll review for the lens of the AWS Well-Architected Framework.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 59:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So in here I get some resources on the right hand side that I can close.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 60:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that you're going to have a lot of questions on the six pillars, for example, 11 questions on operational excellence and then 10 questions on security, six on sustainability and things can change over time, of course but the idea is that you answer questions and then you're gonna get recommendations.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 61:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So for example, how do you determine that what your priorities are?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 62:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And we'll say, okay, we evaluate governance requirements external customer needs and trade offs.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 63:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then next, so answer one question.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 64:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then how do you structure your organization?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 65:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Maybe I just have this answer and then next.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 66:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so you can answer questions in the various pillars and you should answer them all for all pillars, but let's answer one as well in performance efficiency, randomly and next.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 67:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So once you answer maybe three questions of course they're a lot more, then you save and continue.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 68:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then here, as you can see, we have three high risks.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 69:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So you can click on this lens right here and then you're going to get the overview of this lens as well as the risks.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 70:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So you can click on the risk itself by going to improvement plan.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 71:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We see we have three high risk and zero medium risk and so this one was a high risk and here are the recommendations regarding this risk.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 72:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I need to evaluate internal customer needs evaluate threat landscape and so on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 73:
- Concepts: Operational Assurance
- Services: (none explicit)
- Key Insights: And then if I click on it, I get the section in the framework itself that tells me exactly what I need to do.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 74:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's very important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 75:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then I will go back to answering more questions and making sure that this is addressed.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 76:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so this tool just gives you feedback.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 77:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And over time you can define milestones.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 78:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You can look at your improvement plans and so on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 79:
- Concepts: Operational Assurance
- Services: (none explicit)
- Key Insights: And the idea is that once you are very confident that this framework works for you then your application is production ready and your workload is compliant and well architected, okay?
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 80:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this tool.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 81:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/237_AWS Acceptable Use Policy (AUP).txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about the AWS Acceptable Use Policy or AUP.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this governs your use of the AWS services and there's some things you cannot do with them.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So you may not use your account to do any illegal or fraudulent activity.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You may not violate the rights of others.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You may not threaten, perform terrorism, violence, or do any serious harm to anyone.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You cannot host any child sexual abuse content or activity.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You cannot violate the security, integrity, and availability for other networks and computers. for example, by performing a DDoS.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You may not distribute, publish, or facilitate any unsolicited mass emails, for example, by hosting spam servers.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: In case that is detected, AWS is going to remove or disable any content that violates this policy.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And if you wanna read more, this is the link.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/238_Audit Manager.txt

Line 1:
- Concepts: Operational Assurance
- Services: Audit Manager
- Key Insights: So, now let's talk about AWS Audit Manager.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 2:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: So, it's a service that's used to assess risk and compliance of your AWS workloads.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Operational Assurance
- Services: (none explicit)
- Key Insights: It's used to continuously audit IT services usage and prepare audits.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You have prebuilt frameworks inside, such as the CIS AWS Foundation Benchmark v1.2 and 1.3, the GDPR, the Health Insurance Portability and Accountability Act, HIPAA, the PCI DS 4.0 standard.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And this can come up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Operational Assurance
- Services: Audit Manager
- Key Insights: So, think Audit Manager if you see this.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: CIS Controls 7.1.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Operational Assurance
- Services: (none explicit)
- Key Insights: And you can customize these existing pre-built frameworks or you can also create your own framework.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 9:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: You will then generate reports of compliance based on these frameworks alongside evidence folders.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 10:
- Concepts: Continuous Compliance
- Services: AWS Config
- Key Insights: This also has a deep integration with Security Hub, Config, Control Tower, CloudTrail, and License Manager.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And you can run and across multiple accounts via the integration with AWS Organizations.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Operational Assurance
- Services: Audit Manager
- Key Insights: So, the idea is that you're going to select the framework, you're going to define the scope, and then Audit Manager will conduct automated evidence collection to make sure that you comply with the framework.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You'll also be able to conduct control reviews or to delegate some of the things to resource owners to validate.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Finally, in case you have issues of noncompliance, you can filter and group data to dive deep into causes of noncompliance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And finally, you can generate a report with links to the evidence.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Continuous Compliance, Operational Assurance
- Services: AWS Config, Audit Manager
- Key Insights: So, to summarize, you get multiple data sources into Audit Manager, such as CloudTrail, Config, Security Hub, License Manager.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But there's also a feature that you should know about, which is the ability to manually upload other kind of evidence.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So, you can manually upload policy documents, training transcripts, screenshots, architecture diagrams, any kind of PDFs, really.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Operational Assurance
- Services: Audit Manager
- Key Insights: Also, you have an option to search the evidence through the Audit Manager Evidence Finder feature.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So to summarize, here is the UI, what it looks like.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Operational Assurance
- Services: (none explicit)
- Key Insights: So you choose a framework, and then the framework will tell you how many controls are automated and manual, how many control sets there are, how many control and control sources, and then you get some information around the controls of this framework.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: For example, the data source, if it's manual or if it comes from a service of AWS, and so on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Once you run an assessment, then you're going to get a report detail, and all the data is going to be in Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It tells you how many evidence points it has, and then it tells you all the information you need to know to understand this assessment.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So, that's it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It's really just for added purposes, but now you know the features around manual upload of information, the type of frameworks that it supports, where the data is at the end, and so on.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 27:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/239_[CCP_SAA] CloudFormation.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Welcome to this section on Deploying and Managing Infrastructure at Scale.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: In this section, we'll see different ways to deploy your workloads onto AWS.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: And the first technology I wanna talk about is CloudFormation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So CloudFormation is such an important technology in the AWS because it is a declarative way of outlining your AWS infrastructure, for any resources, and most of them are supported.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 5:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So to give you a concrete example, in CloudFormation, you would say, I want a security group.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I want two EC2 instances that will be using that security group.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: I also want an S3 bucket, and I want a load balancer in front of all these machines.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: Then CloudFormation automatically creates all these things for you, in the right order, with the exact configuration that you specify.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 9:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So the benefits of using CloudFormation are multiple, but the first one is that all your infrastructure is as code.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: That means that you will never, ever create resources manually like we've done in this course, which is excellent for control.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And that means that anytime you do changes to how your AWS cloud is doing, then it needs to be reviewed through code review, which is a great way to operate in a cloud.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: On top of things, there is a cost advantage because each resource within the stack is going to get a tag that is going to be similar to all the other resources creating within the stack.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: And you can also easily estimate the cost of your resources using the CloudFormation templates.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: And finally, thanks to CloudFormation, you can have a saving strategy.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: For example, you can say that in some environment you could automate the deletion of all the templates at 5:00 PM, which will delete all the associated resources with that template, and then recreate it at 9:00 AM or 8:00 AM safely.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so therefore, you have cost savings because you don't have any resources between 5:00 PM and 8:00 AM.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: With CloudFormation, it's super easy to create and delete resources, which is one of the biggest cloud principle.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Then for productivity.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So as I said, you're able to destroy and recreate infrastructure on the fly.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It's also generating diagrams for your templates as we'll see very quickly.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: Amazon DynamoDB
- Key Insights: And there's declarative programming, so you don't need to figure out if you need to create a DynamoDB table first, or an EC2 instance, or all these things together.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 22:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: The CloudFormation template is smart enough to figure out how to do things.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: Finally, with CloudFormation, we don't reinvent the wheel.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So that means that we can leverage existing templates on the web, we can leverage documentation, and CloudFormation supports almost all AWS resources.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: That means that everything we'll see in this course is supported by CloudFormation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And in case it isn't, you can use something called a custom resource for resources that are not supported.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 27:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So CloudFormation really is the base of infrastructure as code on AWS.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 28:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So as I said, you can visualize a CloudFormation template using the Infrastructure Composer service and to (indistinct) to visualize a WordPress CloudFormation stack.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: And as you can see, we can see all the resources of our CloudFormation templates.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 30:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So we can see the ALB Listener, the database security group, the SQL database, different security groups, launch configuration, application balancers, and so on.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 31:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But on top of it, we can see the relations between all of these components and how they're linked together, which is very handy when you want to understand your architecture diagrams.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 32:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So from an exam perspective, CloudFormation is going to be used when we have infrastructure as code, when we need to repeat an architecture in different environments, different regions, or even different AWS accounts.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 33:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that's it for me.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 34:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: I will see you in the next lecture for a short practice on CloudFormation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/240_[CCP_SAA] CloudFormation - Hands On.txt

Line 1:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: Okay, so I'm going to give you a quick introduction to CloudFormation and give you an overview that really allows you to understand how it works.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's create a stack and let's make sure first of all that we are in the US East, Northern Virginia, US East 1 region, because the template I've created for you only works in that region.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And I will tell you why when we see the template.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So please make sure to switch the region to this one.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Next we create a stack and we have to prepare templates.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So multiple options.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We can choose an existing one, use a sample template and some samples are provided or build from Application Composer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But we're going to choose an existing template.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We're going to upload a template file and let me show you what the file looks like.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So in your course code under CloudFormation, you have 0-just-EC2.yaml.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And this is a very simple file right now which has a resource blog and it creates an instance called My instance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The type is EC2 instance, and then you have a few properties.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: The first one is the availability zone, which is US East 1a and this is why you have to choose US East 1 as your region in CloudFormation service right now.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And the image ID is this AMI ID.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And as you should know, AMI IDs are scoped within the region.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So for these two reasons, you must be in US East 1 for this hands-on.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The instance type is T2 micro.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so as you can see we define how to launch an EC2 instance through this YAML file.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and actually upload this file.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So select it and then you can actually view it in Application Composer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So open this in a new tab.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So here is my template.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, Application Composer gives us a visual understanding of our templates.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So if we look within templates, we get back the code that we just uploaded right here and we can switch it to YAML and JSON if we wanted to.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But in the canvas we see that we have one standard component, which is an EC2 instance in my instance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You could double click on it and view it the fact that it's an EC2 instance as well.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 27:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So Application Composer is a nice way of getting a visual feedback of your templates.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Anyway, back into our stack.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Let's click on next.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 30:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We have to provide a demo stack name.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 31:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So I'll call this one demo CloudFormation and then some parameters.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 32:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But because we don't define any parameters in our templates so far, we don't do anything here.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 33:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Let's click on next here we have tags.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 34:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So I'm just going to show you tag being CFDemo just to show you how tags work in CloudFormation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 35:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We scroll down, no permissions to set.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 36:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We don't touch these options and neither of these options.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 37:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's click on next and we review and create.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 38:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And when we're good to go, let's click on submit.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 39:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So as you can see now this template I uploaded is going to generate some events and that was very quick.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 40:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the events are done and this actually created a resource right here, which is an EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 41:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the code got a resource out of it, and this is why it's called Infrastructure as Code.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 42:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So you can click on this EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 43:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: As you can see right now in the EC2 console, my instance is running and you can check the fact that indeed it is a T2 micro type of instance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 44:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And you can also check the fact that the AMI ID we have selected is the one that was entered in our template.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 45:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this is all very convenient.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 46:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: On top of it, we notice that if you go to our EC2 instance and we look at the tags, we can see that some tags were applied by CloudFormation, which are the name of the CloudFormation, the name of the logical ID and the stack ID, but also the name we have specified.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 47:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the tag we specified has name CFDemo has also been applied to this EC2 instance, and therefore it's named correctly.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 48:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now that we have an instance, let's go ahead and update this stack.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 49:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we click on update and we replace the existing template.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 50:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And this time we're going to choose this 1-ec2-with-sg-eip file.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 51:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And if you have a look at it, this file is right here.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 52:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we have a more complete file now.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 53:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We have a parameter section to set the security group description.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 54:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We have the EC2 instance section, which is a bit more complete because now it has security groups and it has two of those.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 55:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We have an Elastic IP here that is attached to my instance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 56:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And we have one security group here defined for SSH rules.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 57:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So port 22 is going to be open and we have the server security group, which is going to be open on port 80 from everyone and port 22 from a very specific IP.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 58:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So this is a more complete CloudFormation template.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 59:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: Now let's go back to CloudFormation and we're going to apply these template.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 60:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So here we are prompted with a parameter.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 61:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So what is the security group description?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 62:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's enter demo description.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 63:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And as you can see now we are entering some texts, which is going to make everything vary.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 64:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We don't touch the tags, we don't touch anything.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 65:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Let's click on next.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 66:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And now because we are applying an update, as you can see, we have a change set.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 67:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: And so we can preview the change sets, which is what is going to change in our CloudFormation stack.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 68:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, a few things are added.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 69:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: There is an Elastic IP, there is an SSH security group and a server security group.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 70:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And it's add, so it's new.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 71:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And my instance is going to change, it's going to be modified, and there is a column here says replacement true.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 72:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: That means that this EC2 instance is going to be replaced, that means that the previous one is going to be deleted and a new one is going to be created.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 73:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's good to know in case you had some data on your EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 74:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So now let's submit this update and see what happens.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 75:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So CloudFormation is a very smart service because well, from just this code right here it's able to figure out exactly what to do thanks to the change sets, so it knows exactly what to create first.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 76:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, the server security group and the SSH security group already are created.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 77:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And only then will it update the EC2 instance.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 78:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So now the my instance is an update in progress, and as you can see, it says requested updates requires the creation of a new physical resource, hence creating one.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 79:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So if you go into the EC2 console and we remove this filter, now we see that we have two EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 80:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: This one was created before and this one is the new one and it was pending and now it is running.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 81:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So a new instance got created and once it's created, again, it's going to be updated here, the update is complete.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 82:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And now we have MyEIP.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 83:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So now the Elastic IP is going to be created and then attached to my EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 84:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So if we're quick and we go on the left hand side to Elastic IP, even though we may not have seen what it is here is Elastic IP that is properly created, properly tagged, and it is attached already to our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 85:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So now if I click on this one and then I click on networking at the bottom, you see Elastic IP address here was attached.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 86:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So everything was done by CloudFormation and was done well.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 87:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: And if you look at CloudFormation now in the events, as you can see, the Elastic IP was created and then there was a cleanup in progress due in progress.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 88:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So that means that the previous EC2 instance right here, this one got terminated, which is very handy because CloudFormation takes care of everything.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 89:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So you can go into the resources tab and see everything that was created through CloudFormation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 90:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: On top of it, if you go to the template and you click on view in Application Composer, you're able to see now your new architecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 91:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we have an EC2 instance connected to an Elastic IP and connected to two security groups.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 92:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this is very handy because it gets a visual representation again of our templates.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 93:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So finally, of course, confirmation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 94:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You could go ahead and delete things manually.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 95:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You could delete this Elastic IP and so on, and the EC2 instances manually.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 96:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But this is actually not recommended.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 97:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: You don't wanna touch anything manually when using CloudFormation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 98:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Instead, you want to either update the templates, or if you wanted to delete everything, just click on delete.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 99:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: And CloudFormation will delete all the stack resources.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 100:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And the stack resources are also going to be deleted in the right orders.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 101:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So CloudFormation will figure out what to delete first and so on to clean up everything.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 102:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So CloudFormation is a really powerful service to do infrastructure as code because it's declarative.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 103:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: You just say what you want and CloudFormation figures it out, and all the code will control your infrastructure, which is very, very handy.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 104:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So learning how to use it and write it can be a very good skill in AWS.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 105:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/241_[SAA_DVA_SOA] CloudFormation - Service Role.txt

Line 1:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So here is one thing you need to know about CloudFormation and security.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So CloudFormation can use service roles.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: What are they?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: Well, they are iam roles that you create and they're dedicated to CloudFormation and they allow CloudFormation to actually create update and delete stack resources on your behalf.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So if you want to give the ability to users to actually create, update and delete stack resources, but they don't have the permissions to directly work with the resources, what you would do is use a service role.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So for example, we define a template and our own iam permissions as a user is to do actions on the CloudFormation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And we have iam PassRole.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: We also create a service role that we're going to be dedicating to CloudFormation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And this service role has the S3 star buckets, permissions, for example, to create, update and delete a bucket.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So here CloudFormation will be able to create this S3 bucket thanks to its service role because the user was able to pass that role to CloudFormation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So the use cases for security is if you want to achieve the least privileged principle and you don't want to give the users all the permissions to create the stack resources, only the permissions to invoke a service role on CloudFormation.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: For this to work, remember the user must have the permission named iam PassRole, which is a necessary permission to give a role to a specific service in AWS.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 13:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So let me show you an example of iam roles with CloudFormation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So if you go to iam and then you go to the roles section in iam, we're going to create a role and it's for an AWS service, the service being CloudFormation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And next for permission policies, I'm going to give S3 full access just to have dedicated role for Amazon S3, just as an example.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Click on next and I'll call it DemoRole for CFN with S3 capabilities.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: And so this role allows CloudFormation to do anything with Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this role has been created.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: Now if I go to CloudFormation and create a stack, I will just use one of my existing templates.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I don't need to have anything very fancy.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We will not go all the way with it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I call this one DemoRole.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Click on next.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And as you can see here, within permissions there is an iam role.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: This is optional.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So if I don't specify, then iam role is going to use my own personal permissions.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 27:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But if I want to specify an iam role, I can look at this DemoRole for CFN with S3 capabilities.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And this role is going to be used for all stack operations.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that means that the role now will not use my own personal permissions, but this one, and because this one is just powered with Amazon S3 permissions, then actually my stack will fail because my stack is actually creating an EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 30:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: But this is where actually the permissions are defined if you want to use an iam role for CloudFormation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 31:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And that's it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 32:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/242_[DVA_SOA] CloudFormation - Stack Policy.txt

Line 1:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So now, let's do a quick lecture on CloudFormation Stack policies.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So, when you have a CloudFormation Stack update, by default, any action is going to be allowed on all resources so you can change your stack as you wish, but sometimes, you may want to protect your stack against updates, or part of your stack against updates.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: This is where Stack policies come in.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Stack policies are JSON documents, and they define what update actions are allowed on specific resources during Stack updates.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So here, we have an example where the first statement is saying "Allow update*" on everything, meaning that everything in your CloudFormation Stack can be updated, and the second part is saying "Deny update*" on Resource Production Database.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: That means that whatever is named "Production Database" in your CloudFormation Stack is going to be protected against any kind of updates, so by default, and your production database is fine.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance as Code
- Services: (none explicit)
- Key Insights: So, the goal of Stack policies is really to protect resources against unintentional updates and when you set a Stack policy by default, all the resources are protected, and so what you need is to have an explicit "allow" for the resources that you want to be allowed to be updated.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So, that's it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You should know enough to answer maybe one question on the exam on this.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/243_CloudFormation - Dynamic References.txt

Line 1:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So now let's talk about CloudFormation Dynamic References.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So the idea is that from within a CloudFormation template, you wanna reference external values that are stored in the SSM Parameter Store or Secrets Manager.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: And what's going to happen is that CloudFormation will retrieve the value during any stack, create and update operations.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Workload Platform Security
- Services: (none explicit)
- Key Insights: So we can store, for example, database credentials, password, third-party API keys, etc. in Parameter Store or Secrets Manager and they will be retrieved at runtime.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So here's the example.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: CloudFormation is going to receive a template for create or update, and then it can get values from SSM or Secrets Manager.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we have three kind of dynamic references.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We have the SSM Dynamic reference, and it's for plain text values stored in the SSM Parameter Store.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Then we have the SSM Secure, which is for secure strings stored in SSM Parameter Store.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So please notice here that SSM and SSM Secure indicate, one, plain text, the other one, Secure Strings.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You cannot mix them together.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And finally, we have Secrets Manager to retrieve secret value directly stored in Secrets Manager.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: And so the way it works is that in your CloudFormation template, you should have a resolve, then service name, and then reference key.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I'll show you in a second how that works.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So say for example, we have this IAM user and we resolve an IAM password user from SSM, and we use SSM Secure.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's going to be a secure value, so it's going to be encrypted.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So in that case, confirmation will at runtime fetch the SSM Secure value from the SSM Parameter Store and then we'll be able to create an IAM user.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS
- Key Insights: For RDS, for example, here we use Secrets Manager, and again, the values are stored in Secrets Manager.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS
- Key Insights: So we have Resolve Secrets Manager, and then we fetch the secret value to create an RDS database instance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So hopefully you get the idea behind dynamic references and its benefits for security.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/244_[DVA_SOA] CloudFormation - Termination Protection.txt

Line 1:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So a very quick lecture, but to actually prevent accidental deletes of your CloudFormation stacks, you must use Termination Protection.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I will show you right now how to enable it in the console.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let me create a stack.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I will upload and type of file, name just EC2, and then demo, next, scroll down, next, and then actually upload this.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is my stack, and what I'm going to do now is that I'm going to edit the termination protection.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So as you can see right now it was deactivated, but I'm going to activate this termination protection.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And now it was successfully changed.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So my stack right here, if I try to delete it, it's impossible.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It says that termination protection is enabled in the stack, and first, I must disable the termination protection before deleting it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this is a safety against accidental deletes.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: Now, if I have the necessary permissions to actually edit the termination protection, I can deactivate it, and then from there I can actually delete my CloudFormation stack.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And that's it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You've seen termination protection.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/245_CloudFormation - Drift.txt

Line 1:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: Now let's talk about CloudFormation Drift.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So we know that CloudFormation allows you to create infrastructure, but it doesn't protect you against performing manual configuration changes to whatever you create.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so how do we know if your resource configuration has changed?
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: How do we know if they have drifted?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So drifted is the same as changed.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: For this we can use, of course, CloudFormation Drift.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So the idea is that we upload a template into CloudFormation, for example, this one creates a security group.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But we're going to modify this using the EC2 console to change it to that.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: Then using the Drift feature, CloudFormation is going to compare the configuration of your security group to what is expected, and is going to tell you that it has drifted.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And this is very handy.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance as Code
- Services: (none explicit)
- Key Insights: So you can detect the drift on an entire stack or even individual resources within a stack.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So you can also use the CloudFormation Drift detection on StackSets.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance as Code
- Services: (none explicit)
- Key Insights: And the idea is that when you apply this, it's going to apply drift on every stack instance within the StackSets.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So in case there are problems and resources have drifted, then the stack will be considered drifted.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Every the stack instance as well will be considered drifted and the StackSet as well.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So again, all these warnings will be displayed at the resource stack, stack instance, and StackSet level.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So drift detection is going to allow you to really identify any unmanaged changes outside of CloudFormation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: And then if it's made through CloudFormation though, but not at the StackSet level, then it's not considered drifted, although it's not best practice to update a stack instance outside of a StackSets.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Governance as Code
- Services: (none explicit)
- Key Insights: And you can also stop this drift detection on the StackSet if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Alright, so now let's have a look at this drifting feature.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Governance as Code
- Services: (none explicit)
- Key Insights: So let's go ahead and practice drift by creating a stack.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The template is ready.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance as Code
- Services: (none explicit)
- Key Insights: I'm going to upload it, and we'll choose 3-drift-security-group.yaml.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We can view this template in the designer, just to have a look.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And if you look at the template itself, which is not very handy here, we have two security groups, one and two.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And if we look at them, there is an SSHSecurityGroup and an HTTPSecurityGroup as well as a VPC parameter to link it to the security groups.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 27:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so we want to do is to ensure that the configuration of the security groups has not changed over time.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and first create the template.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I'm clicked on the Cloud upload button, which is going to make me click on Next, and then I'll call it DemoDriftSG.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 30:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We need to specify a VPC ID.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 31:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I will use drop down and specify my default one.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 32:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Click on Next, scroll down and click on Create Stack.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 33:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the effect of this is that this is going to create two security groups for me.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 34:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And as you can expect, I'm going to change manually the security group configuration.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 35:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this should be very quick.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 36:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The security groups are in create in progress, and they're now both completed.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 37:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So if I go to Resources, I have a link to my both security groups.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 38:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: So if I go to my HTTP security group under Inbound Rule, I can edit it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 39:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: And for example, I can change this rule to say that I want a different CIDR, and I can add a description.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 40:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So Foobar and then this one maybe I want to add HTTPS as well in this security group from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 41:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: Okay, click on Save Rule.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 42:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: And in terms of the other security group, which is right here, this one I can go into Inbound Rule and I can edit them and just delete this rule overall.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 43:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And click on Save.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 44:
- Concepts: Governance as Code
- Services: (none explicit)
- Key Insights: So obviously the configuration of our security groups have changed, and so therefore I'm going to have to detect the drift.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 45:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: But right now CloudFormation is not aware that anything has changed.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 46:
- Concepts: Governance as Code
- Services: (none explicit)
- Key Insights: So to make it aware, we can click on Stack Actions and then click on Detect Drift.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 47:
- Concepts: Governance as Code
- Services: (none explicit)
- Key Insights: And this is going to start a drift detection mechanism.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 48:
- Concepts: Governance as Code
- Services: (none explicit)
- Key Insights: And then under Stack Action view Drift results, you can look at the results.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 49:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, it's already finished.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 50:
- Concepts: Governance as Code
- Services: (none explicit)
- Key Insights: The drift status is drifted.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 51:
- Concepts: Governance as Code
- Services: (none explicit)
- Key Insights: And so there are two modified security groups, and we can click on one for example and click on View drift detail.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 52:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: So it is saying that the CIDR IP is not equal, and there's been one rule added.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 53:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So there are two differences, and it shows us what the expected configuration is and what the actual configuration is.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 54:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So as we can see here, well they're not equal.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 55:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so we can go ahead and either update our templates to match the actual configuration, because maybe this is something we want to include in our templates, or we want to revert our stack by making sure this is applied instead.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 56:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And we could go, for example, into CloudTrail to understand who has changed our security group, and when to really understand the root cause of this.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 57:
- Concepts: Governance as Code
- Services: (none explicit)
- Key Insights: And so for the SSH security group, again, I can click on View drift details and it's modified.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 58:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And we can see here there's a change.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 59:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: This rule has been removed, and so the expected is this and the actual is that.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 60:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So it's really, really cool to see really the drift, because they're really helpful to know if your CloudFormation templates have drifted once in a while.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 61:
- Concepts: Governance as Code
- Services: (none explicit)
- Key Insights: So I would recommend for you to run the drift quite often.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 62:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: If you can.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 63:
- Concepts: Governance as Code
- Services: (none explicit)
- Key Insights: You can also access the Drift menu from the left hand side on the Drifts, and this will take you to the Drift menu.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 64:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But that's it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 65:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And when you're done, just delete this template and you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 66:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/246_CloudFormation Guard.txt

Line 1:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: Now let's talk about CloudFormation Guard, or the cfn-guard.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So it's a command line interface CLI tool that is used to validate CloudFormation templates against organization policy guidelines, so what can you do with it?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Continuous Compliance, Governance as Code
- Services: CloudFormation
- Key Insights: Well, for example, you can create a rule saying that every S3 bucket should be encrypted if created via CloudFormation.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So for this, how do we do it?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Well, we create these policies thanks to Domain-Specific Language, which looks like this.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance as Code
- Services: (none explicit)
- Key Insights: For example, we have a file named rules.guard.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And in it we say that for the S3 bucket, the property of ServiceSideEncryptionConfiguration should say AES256.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Governance and compliance signal; Data protection and resilience signal.

Line 8:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: Otherwise, we're saying that it will fail because the bucket encryption is not configured with the correct algorithm.
- Hidden/Implicit Meaning: Governance and compliance signal; Data protection and resilience signal.

Line 9:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: And so once we have this, we have our template.yaml file and we run the CLI tool to validate the YAML file against the rules that we have defined as part of CloudFormation Guard.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And if it passes, we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: If it doesn't pass, then we can start, for example, a CI/CD pipeline.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: So cfn-guard is not used to verify the syntax of your CloudFormation templates.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: It's used to verify if your CloudFormation templates obey some rules that you have defined as part of CloudFormation Guard.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/247_[CCP] AWS Service Catalog.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: AWS Service Catalog
- Key Insights: So now let's talk about the AWS Service Catalog.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the users that are new to AWS, they have too many options and they don't follow this course, for example when they get started.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so if you leave them the option to do anything they want in AWS, whatever they create may not be in line with what the rest of your organization is doing.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And some users that just want to have access to quick self-service portal that allows them to launch a set of authorized products, and these have to be predefined by admins.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: So as you can see, these could include virtual machines, databases, storage options, and so on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: AWS Service Catalog
- Key Insights: So to do so, to have this self-service portal, you use the AWS Service Catalog.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: AWS Service Catalog
- Key Insights: So very simply, as an admin in AWS and Service Catalog, you're going to create products.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: And products are just CloudFormation templates with the proper parameters.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And you can include them in a portfolio, and a portfolio is a collection of products.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then you define who has access to launching what products within my portfolio.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: AWS Service Catalog
- Key Insights: And then as a user, you log in to your portal on Service Catalog and you have a quick list of all the products that you can use because of your permissions.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance as Code
- Services: CloudFormation
- Key Insights: And then the users can launch these products and automatically they get provisioned by CloudFormation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But we know that they've been properly configured, properly tagged, and that they respect the way our organization is supposed to work.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS
- Key Insights: So say for example, that a user wants to have access to a quick RDS database but doesn't know how to create one properly.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: AWS Service Catalog
- Key Insights: Then you could offer this as a service from within the Service Catalog.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So hopefully that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/248_AWS Resource Access Manager (AWS RAM).txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Let's talk about a new type of service which is called AWS Resource Access Manager or RAM, is actually a very simple service.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's allowing you to share AWS resources that you own with other accounts.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You can share with any accounts or within your organization.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The idea is that you avoid resource duplication.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So what can you share with RAM or Resource Access Manager?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Well, you can share VPC Subnets, to allow you to have all the resources lunch within the same subnets, and they must be from within the same organizations.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And currently, though, you cannot share security groups or the default VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then from this, the participants can manage their own resources in your shared VPC.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But the participants cannot view, modify or delete resources that don't belong to them.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So if they belong to other participants or the owner, you will not see those.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So you share the underlying VPC but you don't share the resources within the VPC.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Other resources you can share but maybe won't be in the exam, will be AWS Transit Gateway, Route53 Resolver Rules, License Manager Configurations.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And as you'll see in the hands on right now, there's a few more.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at a concrete example and use case of how you would use Resource Access Manager.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example of the VPC.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we have AWS accounts, and it's going to be the VPC owner, and we're going to create a VPC within that accounts.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And the VPC will have a private subnet, where we deploy our resources.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And other accounts are going to be sharing the same VPC.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So account one and account two are going to be sharing the same VPC, thanks to Resource Access Manager.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So each account will be responsible for its own resources, and cannot view, modify or delete other resources in other accounts.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the only thing that is shared here is the private subnet, it's the networking layer.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So account one can create an EC2 instance, and have an Application Load Balancer, and they can communicate with one another obviously, but they belong to account one.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And account two, the account that has the VPC owner cannot see these resources.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 24:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Likewise, account two can create EC2 instances within the account two, and account one cannot view these EC2 instances.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS
- Key Insights: And, for example, we can also create an Amazon RDS database in our VPC owner accounts.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And again, this will not be visible to any other accounts.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 27:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But the network is shared, so that means that, anything deployed in the VPC can talk to the other resources in the VPC.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that means that the application can access each other using their private IP.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: They don't need to access each other over a public IP, and that could be a huge security benefits.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 30:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS
- Key Insights: So even though on top of things, we can even reference security groups to have a maximum amount security across accounts, so that means that if we modify the security group of an Amazon RDS database to allow the security group of our EC2 instances from account one, then our EC2 instance, is going to be able to access our Amazon RDS database from the VPC owner accounts.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 31:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: And if we allow again from the ALB in account one access to the EC2 instances and account two, then the EC2 instances in account two can access our ALB directly using its private IP, or private DNS.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 32:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so this is extremely helpful, because now we have shared an entire networking layer across multiple accounts, and we have simplified a massive challenge, which is how do we make these resources talk to each other.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 33:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So in the console, let's type Resource Access Manager or RAM.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 34:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then I'm going to create a resource share, and as you can see, we can share resources with other accounts, these resources shared by me, and then shared with me, so it makes a lot of sense.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 35:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Let's create a resource, I'll just call it MyFirstResourceShare.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 36:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then what can I share?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 37:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Here we go.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 38:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS, EC2 Image Builder
- Key Insights: It could be an Aurora DB Cluster, Capacity Reservations, CodeBuild Projects, Dedicated Host, Image Builder, License Configurations, Resolver Rules, Resource Groups, Subnets, Traffic Mirror Targets and Transit Gateways.
- Hidden/Implicit Meaning: Governance and compliance signal; Platform workload security signal.

Line 39:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But from an exam perspective, I think the most likely thing you're going to be tested on is going to be VPC Subnets.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 40:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So as your subnet, and right now there's no resources found, that's because I don't have a subnet that is not belonging to the default VPC.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 41:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this is why we can't find anything.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 42:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's not going to be very fascinating, but as you can see, I could have shared subnet if I had one, and then I scroll down here is principles, which is optional, which is okay, which accounts should have access to my subnets that I've selected.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 43:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so it could be external accounts.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 44:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And we can look at account number, OU or organization.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 45:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it makes a lot of sense again.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 46:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And finally, we can tag this resource here, and you'll be done.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 47:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And once this is done, then we'll have to accept it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 48:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The other accounts will have to accept that resource share in here, and they can start using it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 49:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: A very simple service, is not gonna be very complicated at the exam, if you see sharing a VPC subnet, think Resource Access Manager.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 50:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 51:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/249_[CCP] AWS Fault Injection Simulator (FIS).txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: Fault Injection Simulator
- Key Insights: Now let's talk about AWS Fault Injection Simulator, FIS.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this is a way for you to run fault injection experiments on AWS workloads.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And this is based on something called Chaos Engineering, which is that you want to stress an application by creating really, really disruptive events.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: For example, the CPU starts skyrocketing or the memories go out of memory, or the database is having a failure, or all these kinds of things.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And you want to see how your entire application stack reacts to these disasters.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And this is why it's called Chaos Engineering, because you're actually creating chaos within your infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So why do we do this?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Well to make sure our application is really solid, and this allows us to uncover hidden bugs and performance bottlenecks.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECS, Amazon EKS, Amazon RDS, Fault Injection Simulator
- Key Insights: And currently, FIS supports some services, you don't need to know them all, so here's a list and maybe there'll be others over time, but EC2 for example, by terminating EC2 instances, ECS by stopping ECS tasks, EKS, and so on to stop a Kubernetes task and RDS to make failures go alongside our database.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: Fault Injection Simulator
- Key Insights: Well, we have FIS and we're going to create experiments.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so we can use pre-built templates to generate these disruptions, and then they're going to have disruptions on resources.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECS, Amazon RDS
- Key Insights: So really you have to choose what happens to your EC2 instances, what happens to your ECS clusters, your RDS database and so on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then these experiments will start.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the resources will get disrupted, and then you have to see how your application behaves.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we can monitor it using CloudWatch or EventBridge or X-Ray or whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then once you're done, then you stop the experiment and you have a look at your results.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Was there any performance issue?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Was there observability issues or resiliency issues?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And you can improve your application to see where the bottlenecks are okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: Fault Injection Simulator
- Key Insights: So FIS is definitely an advanced kind of monitoring and advanced kind of debugging, but it's definitely helpful.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And I'm so glad that AWS is now having this as a native feature from within AWS.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: Fault Injection Simulator
- Key Insights: So that's it for FIS.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/250_AWS Resilience Hub.txt

Line 1:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: So now let's talk about the AWS Resilience Hub.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: It's used to centrally manage and improve the resilience posture of your apps.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: So you're going to define resilience goals, then assess and implement the recommendations.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance as Code
- Services: Amazon EKS, CloudFormation
- Key Insights: So to define your app, it could be from a CloudFormation stack or resource groups or using Terraform or your EKS cluster.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And you're going to set your targets, so you say, what is my RTO, my recovery time objective or my RPO my recovery point objective for my application.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Operational Assurance, Resilience and Recovery
- Services: AWS Well-Architected
- Key Insights: And then based on what you've provided, Resilience Hub is going to assess your app against the AWS Well-Architected Framework.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then finally is going to provide recommendations that are actionable using standard operating procedures.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Now these procedures are a set of steps to recover your app in the event of an outage.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance as Code, Resilience and Recovery
- Services: (none explicit)
- Key Insights: It's also going to be able to give you a resilience drift detection to get notified when your application is no longer meeting its resilience policy.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Resilience and Recovery
- Services: Fault Injection Simulator
- Key Insights: And you can test it because Resilience Hub is integrated with AWS fault injection service or FIS, you're going to be able to validate that the app recovers within the defined resilience targets.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: Finally, you also have an option to set up resilience app across multiple accounts through your organization and also set up delegated administrators.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: So to summarize, you're going to add the applications and then you're going to assess the application resilience by defining resilience policies and assessing the app.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Then you're going to take action to implement recommendations, alarms, and standard operating procedures.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Resilience and Recovery
- Services: Fault Injection Simulator
- Key Insights: Then you're going to test the app resilience by using tests using the AWS fault injection simulator service FIS.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Continuous Compliance, Governance as Code, Resilience and Recovery
- Services: (none explicit)
- Key Insights: And then you're gonna be able to monitor the resilience posture and in case anything changes, there's a drift detection mechanism so that you get notified whenever changes are detected in the compliance status.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So here is an example.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: You're going to define a sample app and then once you have defined it, you're going to see whether or not it's compliance, and if there is a compliance status of policy breach, you can have a look at the assessment report and view the recommendations.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS
- Key Insights: So when you look at the recommendations, for example, you can see that this RDS instance has a policy breached and it gives you two options to do, either to do option one or option two.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Option one is to optimize for cost and optimize for minimal changes.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And it gives you the seven changes that you should do to make sure that you are meeting the correct RTO and RPO you defined, or option two again gives you nine changes and this time is optimizing the availability zone eight RTO and RPO.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: So super nice because well, you can really assess your architectures, your applications, and get very concrete recommendations of the changes you need to do to make sure that you meet the resilience requirements you have.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Alright, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

## Step 2 — Consolidation

### 1. Concepts List
- Continuous Compliance
- Data Plane Hardening
- Governance as Code
- Governance/Platform Operational Context
- Operational Assurance
- Resilience and Recovery
- Workload Platform Security

### 2. Services List
- API Gateway
- AWS Config
- AWS Lambda
- AWS Service Catalog
- AWS Well-Architected
- Amazon DynamoDB
- Amazon EBS
- Amazon ECS
- Amazon EKS
- Amazon RDS
- Audit Manager
- CloudFormation
- EC2 Image Builder
- Elastic Load Balancing
- Fault Injection Simulator
- Trusted Advisor

### 3. Features List
- aggregator
- conformance
- drift
- encryption
- guard
- remediation
- runtime
- stack policy

### 4. Use Cases
- 036_AWS Config.txt:5: Now, when you define rules to make sure that these resources configurations are compliant or not over time, these rules are just here to evaluate compliance.
- 036_AWS Config.txt:7: So for example, say you have a compliance rule to look at whether or not SSH is opened on any of your security group because you are not using SSH in your company, maybe using something like SSM systems manager.
- 036_AWS Config.txt:10: This is a very good use case instead for something like an SCP.
- 036_AWS Config.txt:16: For example, is there unrestricted SSH access to my security group?
- 036_AWS Config.txt:21: Also, there is a possibility to aggregate all the AWS config data across accounts and regions into one central account, which is a good use case for a security account where you have login, config and so on.
- 036_AWS Config.txt:23: So if some rules apply to that resource then you can see it's red when it's not compliant.
- 036_AWS Config.txt:25: You can view the resource configuration over time so you can see when the changes happen and what changes happen.
- 036_AWS Config.txt:26: And finally, in case you have collateral API calls enabled, you can view who made these changes, when the changes happen directly from AWS config, which is very handy.
- 036_AWS Config.txt:30: So for example, we can create a Lambda function that checks if EBS disc is of type gp2 or if any two instance is of type t2.micro.
- 036_AWS Config.txt:32: For example, if you have a development environment and you wanted to limit your cost.
- 036_AWS Config.txt:35: For example, any time an EBS disc is created then do this rule.
- 036_AWS Config.txt:37: So for example, every one day, scan all my EBS discs and make sure that they are compliant.
- 036_AWS Config.txt:43: So with SSM automation, you can do a bit more than what you could do with the Lambda function for example, you can change right away security group rules or you can stop instances with non-approved tags and so on.
- 226_[SAA_SOA] AWS Config.txt:7: Config is a per region service, so you need to configure it for all the regions if you need to, and you can aggregate the data across regions and accounts to centralize it into one place, you can also can store the configuration of all your resources into Amazon history to be later analyzed, for example, by serverless query engine, such as Athena.
- 226_[SAA_SOA] AWS Config.txt:12: For example, you can evaluate if each EBS disk is going to be of type gp2 or if each two instance in your development accounts is of type t2.micro.
- 226_[SAA_SOA] AWS Config.txt:13: Some rules can be evaluated or triggered whenever a configuration is going to change.
- 226_[SAA_SOA] AWS Config.txt:14: So whenever, for example, you have a new configuration of your EBS disc, please evaluate the type of your EBS disk, or you can also have the rule to be evaluated at regular time intervals.
- 226_[SAA_SOA] AWS Config.txt:15: For example, every two hours, please make sure that all my EBS discs are of type gp2.
- 226_[SAA_SOA] AWS Config.txt:25: For example, the security group has been non-compliance.
- 226_[SAA_SOA] AWS Config.txt:27: You can see when the change and who changed it and so on, and you can link it to CloudTrail to view the API calls made for that resource.
- 226_[SAA_SOA] AWS Config.txt:30: So the idea is, for example, you are monitoring whether or not your IAM access keys have expired.
- 226_[SAA_SOA] AWS Config.txt:31: For example, they are older than 90 days.
- 226_[SAA_SOA] AWS Config.txt:33: So this will not prevent them from not being compliant, but you can trigger whenever a resource is not compliant, a remediation action.
- 226_[SAA_SOA] AWS Config.txt:34: For example, there's an SSM document named RevokeUnusedIAMUserCredentials, okay.
- 226_[SAA_SOA] AWS Config.txt:40: So in case the resource is still non-compliance after an auto remediation, it may retry for example, up to five times.
- 226_[SAA_SOA] AWS Config.txt:42: Well, we can use if EventBridge to trigger notifications, whenever our resources are not compliant.
- 226_[SAA_SOA] AWS Config.txt:43: So, for example, we monitor our security group, it becomes not compliance.
- 226_[SAA_SOA] AWS Config.txt:46: So one configuration item, and then if you want it to just filter for only for some events, you could use an SNS filtering to have a filtered SNS topic, and then you can send it these notifications, for example, to an admin email or to a slack channel and so on to get all these notifications in one place.
- 227_[SAA_SOA] AWS Config - Hands On.txt:29: So what I can do is that I can look at resource type and I can look for example, for EC2 security groups and find that yes, my security groups are here.
- 227_[SAA_SOA] AWS Config - Hands On.txt:31: So let's have a look for example, at one of these EC2 security group.
- 227_[SAA_SOA] AWS Config - Hands On.txt:38: For example, authorizeSecurityGroupingress rules, CreateLaunchConfiguration and CreateSecurityGroup, this kinda thing.
- 227_[SAA_SOA] AWS Config - Hands On.txt:44: So one that I like is for example, approved-amis-by-id.
- 227_[SAA_SOA] AWS Config - Hands On.txt:46: So if I click on it, for example, and click on next, which is not related to security groups, but I just wanna show you one rule.
- 227_[SAA_SOA] AWS Config - Hands On.txt:48: And so you can trigger this based on whenever a resource that's changed.
- 227_[SAA_SOA] AWS Config - Hands On.txt:54: So we click on next, this is called the restricted SSH and the trigger is going to be on our resource whenever the configuration changes, okay?
- 227_[SAA_SOA] AWS Config - Hands On.txt:57: Whenever our security group resource will change, please evaluate that rule.
- 227_[SAA_SOA] AWS Config - Hands On.txt:72: But if I look at a non-compliant resource, for example, this launch-wizard-3 I believe it was not compliant, okay?
- 227_[SAA_SOA] AWS Config - Hands On.txt:89: So I can go back into here and we can have a look at another security group, for example, this one.
- 227_[SAA_SOA] AWS Config - Hands On.txt:91: So this is to remediate this for this rule, so if you look at this rule, we have manage remediation and we can have manual remediation or automatic remediation.
- 227_[SAA_SOA] AWS Config - Hands On.txt:93: So we can select a manual remediation for example, and then you need to choose a remediation action.
- 227_[SAA_SOA] AWS Config - Hands On.txt:96: And for example, well, we could delete a snapshot or delete an image if it's not compliant to whatever we wanted.
- 227_[SAA_SOA] AWS Config - Hands On.txt:98: So for example, you could say, hey attach EBS volume and here's the right limit based on the non compliant resources.
- 227_[SAA_SOA] AWS Config - Hands On.txt:104: And then under settings, you can have a look at the settings we defined from before, including, for example, sending all the data into an SNS topic.
- 229_[SOA] AWS Config - Aggregators.txt:10: Then this aggregator will aggregate everything that is available in the target accounts, for example, rules, resources, et cetera, across multiple accounts and multiple regions.
- 230_AWS Config - Conformance Packs.txt:6: So the idea is that in this pack, for example, this one, we're going to define a config rule and who is the owner of this conflict role, for example, it could be AWS or it could be a custom role.
- 232_AWS Config - Use Cases.txt:1: So let's talk about a few Use Cases for Config that can appear in the exam.
- 232_AWS Config - Use Cases.txt:2: The first one is to audit IAM policies, and making sure that they are fully compliant, and that they don't give, for example, too much permissions to your users.
- 232_AWS Config - Use Cases.txt:10: So with Config, for example, you can define a rule to detect whether or not IAM keys are expired, it's called Access-Keys-Rotated.
- 232_AWS Config - Use Cases.txt:13: So in case Config is detected to be non-compliant, we can automatically trigger an SSM Automation, which will, for example, rotate our Access Keys.
- 233_[CCP_SAA_SOA] Trusted Advisor + Hands On.txt:5: So the checks can be, for example, do you have EBS Public Snapshots?
- 233_[CCP_SAA_SOA] Trusted Advisor + Hands On.txt:38: So Trusted Advisor is not a very interesting service to look at when you don't pay for the support plan, but at least this should give you an idea of how Trusted Advisor is used in AWS, and therefore answer your exam questions on it.
- 234_[SAA_SOA] AWS Cost Explorer.txt:4: And so you can analyze your data at a high level, for example, total cost and usage across all accounts, but you can also go down to get it monthly, hourly, or at the resource level granularity.
- 234_[SAA_SOA] AWS Cost Explorer.txt:9: In this example, we can see, for example, that some instances based on instance type can be more expensive than others, and so we can start optimizing our costs, asking ourselves the question, "Are these instances correctly used?
- 234_[SAA_SOA] AWS Cost Explorer.txt:20: So these kind of use cases can come up in the exam, and this is probably the only billing service that AWS will ask you in the exam.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:13: So your architecture can show over time it can start with for example, EC2 instances and a load bouncer and evolve towards a more serverless architecture such as API Gateway and Lambda.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:20: So you need to submit your application, for example for flash sale days that put a lot of pressure on your architecture.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:31: For example, if you improve your operational excellence you most likely will improve as well your cost optimization.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:44: So you can, for example, define a demo workload and say this is your production application.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:60: And the idea is that you're going to have a lot of questions on the six pillars, for example, 11 questions on operational excellence and then 10 questions on security, six on sustainability and things can change over time, of course but the idea is that you answer questions and then you're gonna get recommendations.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:61: So for example, how do you determine that what your priorities are?
- 237_AWS Acceptable Use Policy (AUP).txt:7: You cannot violate the security, integrity, and availability for other networks and computers. for example, by performing a DDoS.
- 237_AWS Acceptable Use Policy (AUP).txt:8: You may not distribute, publish, or facilitate any unsolicited mass emails, for example, by hosting spam servers.
- 238_Audit Manager.txt:22: For example, the data source, if it's manual or if it comes from a service of AWS, and so on.
- 239_[CCP_SAA] CloudFormation.txt:15: For example, you can say that in some environment you could automate the deletion of all the templates at 5:00 PM, which will delete all the associated resources with that template, and then recreate it at 9:00 AM or 8:00 AM safely.
- 239_[CCP_SAA] CloudFormation.txt:31: But on top of it, we can see the relations between all of these components and how they're linked together, which is very handy when you want to understand your architecture diagrams.
- 239_[CCP_SAA] CloudFormation.txt:32: So from an exam perspective, CloudFormation is going to be used when we have infrastructure as code, when we need to repeat an architecture in different environments, different regions, or even different AWS accounts.
- 240_[CCP_SAA] CloudFormation - Hands On.txt:3: And I will tell you why when we see the template.
- 240_[CCP_SAA] CloudFormation - Hands On.txt:38: And when we're good to go, let's click on submit.
- 240_[CCP_SAA] CloudFormation - Hands On.txt:97: You don't wanna touch anything manually when using CloudFormation.
- 241_[SAA_DVA_SOA] CloudFormation - Service Role.txt:6: So for example, we define a template and our own iam permissions as a user is to do actions on the CloudFormation.
- 241_[SAA_DVA_SOA] CloudFormation - Service Role.txt:9: And this service role has the S3 star buckets, permissions, for example, to create, update and delete a bucket.
- 241_[SAA_DVA_SOA] CloudFormation - Service Role.txt:11: So the use cases for security is if you want to achieve the least privileged principle and you don't want to give the users all the permissions to create the stack resources, only the permissions to invoke a service role on CloudFormation.
- 242_[DVA_SOA] CloudFormation - Stack Policy.txt:2: So, when you have a CloudFormation Stack update, by default, any action is going to be allowed on all resources so you can change your stack as you wish, but sometimes, you may want to protect your stack against updates, or part of your stack against updates.
- 242_[DVA_SOA] CloudFormation - Stack Policy.txt:7: So, the goal of Stack policies is really to protect resources against unintentional updates and when you set a Stack policy by default, all the resources are protected, and so what you need is to have an explicit "allow" for the resources that you want to be allowed to be updated.
- 243_CloudFormation - Dynamic References.txt:4: So we can store, for example, database credentials, password, third-party API keys, etc. in Parameter Store or Secrets Manager and they will be retrieved at runtime.
- 243_CloudFormation - Dynamic References.txt:15: So say for example, we have this IAM user and we resolve an IAM password user from SSM, and we use SSM Secure.
- 243_CloudFormation - Dynamic References.txt:18: For RDS, for example, here we use Secrets Manager, and again, the values are stored in Secrets Manager.
- 245_CloudFormation - Drift.txt:7: So the idea is that we upload a template into CloudFormation, for example, this one creates a security group.
- 245_CloudFormation - Drift.txt:13: And the idea is that when you apply this, it's going to apply drift on every stack instance within the StackSets.
- 245_CloudFormation - Drift.txt:39: And for example, I can change this rule to say that I want a different CIDR, and I can add a description.
- 245_CloudFormation - Drift.txt:51: And so there are two modified security groups, and we can click on one for example and click on View drift detail.
- 245_CloudFormation - Drift.txt:56: And we could go, for example, into CloudTrail to understand who has changed our security group, and when to really understand the root cause of this.
- 245_CloudFormation - Drift.txt:65: And when you're done, just delete this template and you're good to go.
- 246_CloudFormation Guard.txt:3: Well, for example, you can create a rule saying that every S3 bucket should be encrypted if created via CloudFormation.
- 246_CloudFormation Guard.txt:6: For example, we have a file named rules.guard.
- 246_CloudFormation Guard.txt:11: If it doesn't pass, then we can start, for example, a CI/CD pipeline.
- 247_[CCP] AWS Service Catalog.txt:2: So the users that are new to AWS, they have too many options and they don't follow this course, for example when they get started.
- 247_[CCP] AWS Service Catalog.txt:14: So say for example, that a user wants to have access to a quick RDS database but doesn't know how to create one properly.
- 248_AWS Resource Access Manager (AWS RAM).txt:14: So let's have a look at a concrete example and use case of how you would use Resource Access Manager.
- 248_AWS Resource Access Manager (AWS RAM).txt:25: And, for example, we can also create an Amazon RDS database in our VPC owner accounts.
- 249_[CCP] AWS Fault Injection Simulator (FIS).txt:4: For example, the CPU starts skyrocketing or the memories go out of memory, or the database is having a failure, or all these kinds of things.
- 249_[CCP] AWS Fault Injection Simulator (FIS).txt:9: And currently, FIS supports some services, you don't need to know them all, so here's a list and maybe there'll be others over time, but EC2 for example, by terminating EC2 instances, ECS by stopping ECS tasks, EKS, and so on to stop a Kubernetes task and RDS to make failures go alongside our database.
- 250_AWS Resilience Hub.txt:9: It's also going to be able to give you a resilience drift detection to get notified when your application is no longer meeting its resilience policy.
- 250_AWS Resilience Hub.txt:15: And then you're gonna be able to monitor the resilience posture and in case anything changes, there's a drift detection mechanism so that you get notified whenever changes are detected in the compliance status.
- 250_AWS Resilience Hub.txt:18: So when you look at the recommendations, for example, you can see that this RDS instance has a policy breached and it gives you two options to do, either to do option one or option two.

### 5. Constraints / Limitations
- 036_AWS Config.txt:32: For example, if you have a development environment and you wanted to limit your cost.
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
- 232_AWS Config - Use Cases.txt:3: The second one is to detect whether or not CloudTrail has been disabled, it's very important.
- 233_[CCP_SAA_SOA] Trusted Advisor + Hands On.txt:9: We have cost optimization, performance, security, fault tolerance, service limits, and operational excellence.
- 233_[CCP_SAA_SOA] Trusted Advisor + Hands On.txt:17: But as we can see, we have two on security that must be looked at.
- 233_[CCP_SAA_SOA] Trusted Advisor + Hands On.txt:21: So again, this is something I should look at.
- 233_[CCP_SAA_SOA] Trusted Advisor + Hands On.txt:31: The only two things I have access to is security.
- 233_[CCP_SAA_SOA] Trusted Advisor + Hands On.txt:35: Finally, you can have a look at Service limits directly in Trusted Advisor.
- 233_[CCP_SAA_SOA] Trusted Advisor + Hands On.txt:38: So Trusted Advisor is not a very interesting service to look at when you don't pay for the support plan, but at least this should give you an idea of how Trusted Advisor is used in AWS, and therefore answer your exam questions on it.
- 234_[SAA_SOA] AWS Cost Explorer.txt:20: So these kind of use cases can come up in the exam, and this is probably the only billing service that AWS will ask you in the exam.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:5: So the idea is that with the well-architected framework once you implement the best practices, then you go to outcomes, and I'll give you the main guidelines of it.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:16: So data is very important.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:19: The idea is that you must try out your architecture good production, give it a go and see how you can improve.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:35: And then you adapt architectural best practices.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:66: And so you can answer questions in the various pillars and you should answer them all for all pillars, but let's answer one as well in performance efficiency, randomly and next.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:74: So it's very important.
- 237_AWS Acceptable Use Policy (AUP).txt:2: So this governs your use of the AWS services and there's some things you cannot do with them.
- 237_AWS Acceptable Use Policy (AUP).txt:6: You cannot host any child sexual abuse content or activity.
- 237_AWS Acceptable Use Policy (AUP).txt:7: You cannot violate the security, integrity, and availability for other networks and computers. for example, by performing a DDoS.
- 238_Audit Manager.txt:17: But there's also a feature that you should know about, which is the ability to manually upload other kind of evidence.
- 239_[CCP_SAA] CloudFormation.txt:4: So CloudFormation is such an important technology in the AWS because it is a declarative way of outlining your AWS infrastructure, for any resources, and most of them are supported.
- 240_[CCP_SAA] CloudFormation - Hands On.txt:2: So let's create a stack and let's make sure first of all that we are in the US East, Northern Virginia, US East 1 region, because the template I've created for you only works in that region.
- 240_[CCP_SAA] CloudFormation - Hands On.txt:15: And as you should know, AMI IDs are scoped within the region.
- 240_[CCP_SAA] CloudFormation - Hands On.txt:16: So for these two reasons, you must be in US East 1 for this hands-on.
- 240_[CCP_SAA] CloudFormation - Hands On.txt:77: And only then will it update the EC2 instance.
- 241_[SAA_DVA_SOA] CloudFormation - Service Role.txt:11: So the use cases for security is if you want to achieve the least privileged principle and you don't want to give the users all the permissions to create the stack resources, only the permissions to invoke a service role on CloudFormation.
- 241_[SAA_DVA_SOA] CloudFormation - Service Role.txt:12: For this to work, remember the user must have the permission named iam PassRole, which is a necessary permission to give a role to a specific service in AWS.
- 242_[DVA_SOA] CloudFormation - Stack Policy.txt:9: You should know enough to answer maybe one question on the exam on this.
- 243_CloudFormation - Dynamic References.txt:11: You cannot mix them together.
- 243_CloudFormation - Dynamic References.txt:13: And so the way it works is that in your CloudFormation template, you should have a resolve, then service name, and then reference key.
- 244_[DVA_SOA] CloudFormation - Termination Protection.txt:1: So a very quick lecture, but to actually prevent accidental deletes of your CloudFormation stacks, you must use Termination Protection.
- 244_[DVA_SOA] CloudFormation - Termination Protection.txt:9: It says that termination protection is enabled in the stack, and first, I must disable the termination protection before deleting it.
- 245_CloudFormation - Drift.txt:18: And then if it's made through CloudFormation though, but not at the StackSet level, then it's not considered drifted, although it's not best practice to update a stack instance outside of a StackSets.
- 245_CloudFormation - Drift.txt:35: So this should be very quick.
- 246_CloudFormation Guard.txt:3: Well, for example, you can create a rule saying that every S3 bucket should be encrypted if created via CloudFormation.
- 246_CloudFormation Guard.txt:7: And in it we say that for the S3 bucket, the property of ServiceSideEncryptionConfiguration should say AES256.
- 248_AWS Resource Access Manager (AWS RAM).txt:6: Well, you can share VPC Subnets, to allow you to have all the resources lunch within the same subnets, and they must be from within the same organizations.
- 248_AWS Resource Access Manager (AWS RAM).txt:7: And currently, though, you cannot share security groups or the default VPC.
- 248_AWS Resource Access Manager (AWS RAM).txt:9: But the participants cannot view, modify or delete resources that don't belong to them.
- 248_AWS Resource Access Manager (AWS RAM).txt:20: So each account will be responsible for its own resources, and cannot view, modify or delete other resources in other accounts.
- 248_AWS Resource Access Manager (AWS RAM).txt:21: So the only thing that is shared here is the private subnet, it's the networking layer.
- 248_AWS Resource Access Manager (AWS RAM).txt:23: And account two, the account that has the VPC owner cannot see these resources.
- 248_AWS Resource Access Manager (AWS RAM).txt:24: Likewise, account two can create EC2 instances within the account two, and account one cannot view these EC2 instances.
- 248_AWS Resource Access Manager (AWS RAM).txt:41: So this is why we can't find anything.
- 248_AWS Resource Access Manager (AWS RAM).txt:42: So it's not going to be very fascinating, but as you can see, I could have shared subnet if I had one, and then I scroll down here is principles, which is optional, which is okay, which accounts should have access to my subnets that I've selected.
- 250_AWS Resilience Hub.txt:20: And it gives you the seven changes that you should do to make sure that you are meeting the correct RTO and RPO you defined, or option two again gives you nine changes and this time is optimizing the availability zone eight RTO and RPO.

### 6. Patterns / Architectures
- 231_AWS Config - Organizational Rules.txt:1: So now let's talk about organizational rules.
- 231_AWS Config - Organizational Rules.txt:4: So the scope of the organizational rules is only the organizations, whereas Conformance packs works both for many accounts as well as your organization.
- 231_AWS Config - Organizational Rules.txt:5: On top of it, the organizational rules are defined at the organization level, and they are one rule only so you can deploy one rule at a time, and you manage them only from your organization accounts.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:1: So there is a framework called the AWS Well-Architected Framework.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:3: This is a tool as well as a framework that allows you to do good applications on AWS.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:5: So the idea is that with the well-architected framework once you implement the best practices, then you go to outcomes, and I'll give you the main guidelines of it.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:12: You can also allow for evolutionary architectures.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:13: So your architecture can show over time it can start with for example, EC2 instances and a load bouncer and evolve towards a more serverless architecture such as API Gateway and Lambda.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:15: Also drive architecture using data.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:19: The idea is that you must try out your architecture good production, give it a go and see how you can improve.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:20: So you need to submit your application, for example for flash sale days that put a lot of pressure on your architecture.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:21: So the architecture framework is six pillars.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:33: So to help you guide you through this framework there is something called the AWS Well-Architected tool.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:34: And it's a framework tool to review your architectures against the six pillars I just defined.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:50: And you can just specify a lot of information around your infrastructure and architecture.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:52: And these lenses are the kind of questions you apply to your architecture.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:53: So we'll apply the well-architected framework lens.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:55: But for now, we'll keep it simple and just answer questions regarding the well-architected framework.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:58: So we'll start reviewing and then we'll review for the lens of the AWS Well-Architected Framework.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:62: And we'll say, okay, we evaluate governance requirements external customer needs and trade offs.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:73: And then if I click on it, I get the section in the framework itself that tells me exactly what I need to do.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:79: And the idea is that once you are very confident that this framework works for you then your application is production ready and your workload is compliant and well architected, okay?
- 238_Audit Manager.txt:4: You have prebuilt frameworks inside, such as the CIS AWS Foundation Benchmark v1.2 and 1.3, the GDPR, the Health Insurance Portability and Accountability Act, HIPAA, the PCI DS 4.0 standard.
- 238_Audit Manager.txt:8: And you can customize these existing pre-built frameworks or you can also create your own framework.
- 238_Audit Manager.txt:9: You will then generate reports of compliance based on these frameworks alongside evidence folders.
- 238_Audit Manager.txt:12: So, the idea is that you're going to select the framework, you're going to define the scope, and then Audit Manager will conduct automated evidence collection to make sure that you comply with the framework.
- 238_Audit Manager.txt:18: So, you can manually upload policy documents, training transcripts, screenshots, architecture diagrams, any kind of PDFs, really.
- 238_Audit Manager.txt:21: So you choose a framework, and then the framework will tell you how many controls are automated and manual, how many control sets there are, how many control and control sources, and then you get some information around the controls of this framework.
- 238_Audit Manager.txt:26: It's really just for added purposes, but now you know the features around manual upload of information, the type of frameworks that it supports, where the data is at the end, and so on.
- 239_[CCP_SAA] CloudFormation.txt:31: But on top of it, we can see the relations between all of these components and how they're linked together, which is very handy when you want to understand your architecture diagrams.
- 239_[CCP_SAA] CloudFormation.txt:32: So from an exam perspective, CloudFormation is going to be used when we have infrastructure as code, when we need to repeat an architecture in different environments, different regions, or even different AWS accounts.
- 240_[CCP_SAA] CloudFormation - Hands On.txt:90: On top of it, if you go to the template and you click on view in Application Composer, you're able to see now your new architecture.
- 246_CloudFormation Guard.txt:11: If it doesn't pass, then we can start, for example, a CI/CD pipeline.
- 250_AWS Resilience Hub.txt:6: And then based on what you've provided, Resilience Hub is going to assess your app against the AWS Well-Architected Framework.
- 250_AWS Resilience Hub.txt:21: So super nice because well, you can really assess your architectures, your applications, and get very concrete recommendations of the changes you need to do to make sure that you meet the resilience requirements you have.

## Step 3 — Deep Expansion (Core Governance and Platform Security Concepts)

### AWS Config
- What it is: Configuration state recorder and rules engine for continuous compliance tracking.
- Why it exists: Detects drift and non-compliance against desired security baselines.
- Internal working: Records resource configuration changes and evaluates rules continuously or on change.
- Architecture: Resource changes -> Config recorder -> rule evaluation -> findings/remediation triggers.
- Key components: Recorders, rules, conformance packs, aggregators, remediation actions.

### Platform Service Security
- What it is: Service-specific security controls for compute, container, API, and data platforms.
- Why it exists: Each runtime has distinct attack surfaces and operational trust boundaries.
- Internal working: Identity, network, image/package, runtime, and logging controls compose defense-in-depth.
- Architecture: Build -> deploy -> runtime operation with signed artifacts and constrained execution paths.
- Key components: Image signing/scanning, runtime isolation, least-privilege IAM, network boundaries, audit logs.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Continuous config compliance | AWS Config + conformance packs | Azure Policy + Defender for Cloud | Organization Policy + Config Validator / SCC posture |
| IaC governance and drift control | CloudFormation + Guard + Drift | ARM/Bicep + Policy + What-If | Deployment Manager/Terraform + policy controls |
| Backup orchestration | AWS Backup | Azure Backup | Backup and DR services |
| Confidential compute | Nitro Enclaves | Azure Confidential Computing | Confidential VM / Confidential GKE |
| Container platform security | ECR/ECS/EKS controls | ACR/AKS security stack | Artifact Registry/GKE security stack |
| Serverless/API security | Lambda + API Gateway controls | Functions + API Management controls | Cloud Functions/Run + API Gateway controls |

### Trade-offs and Decision Notes
- AWS offers strong account-native governance primitives with deep service integrations.
- Azure excels in enterprise policy inheritance and integrated posture tooling.
- GCP often favors policy-as-code and centralized analytics-centric governance workflows.
- Multi-cloud governance should standardize control objectives, then map to provider-native enforcement mechanisms.

## Phase-wise Architect-Level Organization

### Phase 1 — Foundations
- Control objectives and policy baseline concepts for governance and platform hardening.
- Mapping preventive, detective, and corrective controls across service layers.

### Phase 2 — Core Services
- Implement continuous compliance, backup/recovery, and workload-specific hardening controls.
- Integrate IaC and service operation pipelines with security guardrails.

### Phase 3 — Advanced Patterns
- Organization-wide compliance aggregation and automated remediation workflows.
- Service-specific security reference architectures for container/serverless/data platforms.

### Phase 4 — System Design
- Enterprise platform-security architecture with policy-as-code, auditability, and resilience by default.
- Scaling considerations: policy explosion, exception governance, and control drift management.
- Cost considerations: compliance scan volume, backup storage lifecycle, and platform security operations overhead.

## Deduped Consolidation Snapshot

This additive section keeps original extraction untouched and provides duplicate-clean views for faster review.

### Concepts (Deduped)
- Continuous Compliance
- Data Plane Hardening
- Governance as Code
- Governance/Platform Operational Context
- Operational Assurance
- Resilience and Recovery
- Workload Platform Security

### Services (Deduped)
- API Gateway
- AWS Config
- AWS Lambda
- AWS Service Catalog
- AWS Well-Architected
- Amazon DynamoDB
- Amazon EBS
- Amazon ECS
- Amazon EKS
- Amazon RDS
- Audit Manager
- CloudFormation
- EC2 Image Builder
- Elastic Load Balancing
- Fault Injection Simulator
- Trusted Advisor

### Features (Deduped)
- aggregator
- conformance
- drift
- encryption
- guard
- remediation
- runtime
- stack policy

### Use Cases (Deduped)
- 036_AWS Config.txt:5: Now, when you define rules to make sure that these resources configurations are compliant or not over time, these rules are just here to evaluate compliance.
- 036_AWS Config.txt:7: So for example, say you have a compliance rule to look at whether or not SSH is opened on any of your security group because you are not using SSH in your company, maybe using something like SSM systems manager.
- 036_AWS Config.txt:10: This is a very good use case instead for something like an SCP.
- 036_AWS Config.txt:16: For example, is there unrestricted SSH access to my security group?
- 036_AWS Config.txt:21: Also, there is a possibility to aggregate all the AWS config data across accounts and regions into one central account, which is a good use case for a security account where you have login, config and so on.
- 036_AWS Config.txt:23: So if some rules apply to that resource then you can see it's red when it's not compliant.
- 036_AWS Config.txt:25: You can view the resource configuration over time so you can see when the changes happen and what changes happen.
- 036_AWS Config.txt:26: And finally, in case you have collateral API calls enabled, you can view who made these changes, when the changes happen directly from AWS config, which is very handy.
- 036_AWS Config.txt:30: So for example, we can create a Lambda function that checks if EBS disc is of type gp2 or if any two instance is of type t2.micro.
- 036_AWS Config.txt:32: For example, if you have a development environment and you wanted to limit your cost.
- 036_AWS Config.txt:35: For example, any time an EBS disc is created then do this rule.
- 036_AWS Config.txt:37: So for example, every one day, scan all my EBS discs and make sure that they are compliant.
- 036_AWS Config.txt:43: So with SSM automation, you can do a bit more than what you could do with the Lambda function for example, you can change right away security group rules or you can stop instances with non-approved tags and so on.
- 226_[SAA_SOA] AWS Config.txt:7: Config is a per region service, so you need to configure it for all the regions if you need to, and you can aggregate the data across regions and accounts to centralize it into one place, you can also can store the configuration of all your resources into Amazon history to be later analyzed, for example, by serverless query engine, such as Athena.
- 226_[SAA_SOA] AWS Config.txt:12: For example, you can evaluate if each EBS disk is going to be of type gp2 or if each two instance in your development accounts is of type t2.micro.
- 226_[SAA_SOA] AWS Config.txt:13: Some rules can be evaluated or triggered whenever a configuration is going to change.
- 226_[SAA_SOA] AWS Config.txt:14: So whenever, for example, you have a new configuration of your EBS disc, please evaluate the type of your EBS disk, or you can also have the rule to be evaluated at regular time intervals.
- 226_[SAA_SOA] AWS Config.txt:15: For example, every two hours, please make sure that all my EBS discs are of type gp2.
- 226_[SAA_SOA] AWS Config.txt:25: For example, the security group has been non-compliance.
- 226_[SAA_SOA] AWS Config.txt:27: You can see when the change and who changed it and so on, and you can link it to CloudTrail to view the API calls made for that resource.
- 226_[SAA_SOA] AWS Config.txt:30: So the idea is, for example, you are monitoring whether or not your IAM access keys have expired.
- 226_[SAA_SOA] AWS Config.txt:31: For example, they are older than 90 days.
- 226_[SAA_SOA] AWS Config.txt:33: So this will not prevent them from not being compliant, but you can trigger whenever a resource is not compliant, a remediation action.
- 226_[SAA_SOA] AWS Config.txt:34: For example, there's an SSM document named RevokeUnusedIAMUserCredentials, okay.
- 226_[SAA_SOA] AWS Config.txt:40: So in case the resource is still non-compliance after an auto remediation, it may retry for example, up to five times.
- 226_[SAA_SOA] AWS Config.txt:42: Well, we can use if EventBridge to trigger notifications, whenever our resources are not compliant.
- 226_[SAA_SOA] AWS Config.txt:43: So, for example, we monitor our security group, it becomes not compliance.
- 226_[SAA_SOA] AWS Config.txt:46: So one configuration item, and then if you want it to just filter for only for some events, you could use an SNS filtering to have a filtered SNS topic, and then you can send it these notifications, for example, to an admin email or to a slack channel and so on to get all these notifications in one place.
- 227_[SAA_SOA] AWS Config - Hands On.txt:29: So what I can do is that I can look at resource type and I can look for example, for EC2 security groups and find that yes, my security groups are here.
- 227_[SAA_SOA] AWS Config - Hands On.txt:31: So let's have a look for example, at one of these EC2 security group.
- 227_[SAA_SOA] AWS Config - Hands On.txt:38: For example, authorizeSecurityGroupingress rules, CreateLaunchConfiguration and CreateSecurityGroup, this kinda thing.
- 227_[SAA_SOA] AWS Config - Hands On.txt:44: So one that I like is for example, approved-amis-by-id.
- 227_[SAA_SOA] AWS Config - Hands On.txt:46: So if I click on it, for example, and click on next, which is not related to security groups, but I just wanna show you one rule.
- 227_[SAA_SOA] AWS Config - Hands On.txt:48: And so you can trigger this based on whenever a resource that's changed.
- 227_[SAA_SOA] AWS Config - Hands On.txt:54: So we click on next, this is called the restricted SSH and the trigger is going to be on our resource whenever the configuration changes, okay?
- 227_[SAA_SOA] AWS Config - Hands On.txt:57: Whenever our security group resource will change, please evaluate that rule.
- 227_[SAA_SOA] AWS Config - Hands On.txt:72: But if I look at a non-compliant resource, for example, this launch-wizard-3 I believe it was not compliant, okay?
- 227_[SAA_SOA] AWS Config - Hands On.txt:89: So I can go back into here and we can have a look at another security group, for example, this one.
- 227_[SAA_SOA] AWS Config - Hands On.txt:91: So this is to remediate this for this rule, so if you look at this rule, we have manage remediation and we can have manual remediation or automatic remediation.
- 227_[SAA_SOA] AWS Config - Hands On.txt:93: So we can select a manual remediation for example, and then you need to choose a remediation action.
- 227_[SAA_SOA] AWS Config - Hands On.txt:96: And for example, well, we could delete a snapshot or delete an image if it's not compliant to whatever we wanted.
- 227_[SAA_SOA] AWS Config - Hands On.txt:98: So for example, you could say, hey attach EBS volume and here's the right limit based on the non compliant resources.
- 227_[SAA_SOA] AWS Config - Hands On.txt:104: And then under settings, you can have a look at the settings we defined from before, including, for example, sending all the data into an SNS topic.
- 229_[SOA] AWS Config - Aggregators.txt:10: Then this aggregator will aggregate everything that is available in the target accounts, for example, rules, resources, et cetera, across multiple accounts and multiple regions.
- 230_AWS Config - Conformance Packs.txt:6: So the idea is that in this pack, for example, this one, we're going to define a config rule and who is the owner of this conflict role, for example, it could be AWS or it could be a custom role.
- 232_AWS Config - Use Cases.txt:1: So let's talk about a few Use Cases for Config that can appear in the exam.
- 232_AWS Config - Use Cases.txt:2: The first one is to audit IAM policies, and making sure that they are fully compliant, and that they don't give, for example, too much permissions to your users.
- 232_AWS Config - Use Cases.txt:10: So with Config, for example, you can define a rule to detect whether or not IAM keys are expired, it's called Access-Keys-Rotated.
- 232_AWS Config - Use Cases.txt:13: So in case Config is detected to be non-compliant, we can automatically trigger an SSM Automation, which will, for example, rotate our Access Keys.
- 233_[CCP_SAA_SOA] Trusted Advisor + Hands On.txt:5: So the checks can be, for example, do you have EBS Public Snapshots?
- 233_[CCP_SAA_SOA] Trusted Advisor + Hands On.txt:38: So Trusted Advisor is not a very interesting service to look at when you don't pay for the support plan, but at least this should give you an idea of how Trusted Advisor is used in AWS, and therefore answer your exam questions on it.
- 234_[SAA_SOA] AWS Cost Explorer.txt:4: And so you can analyze your data at a high level, for example, total cost and usage across all accounts, but you can also go down to get it monthly, hourly, or at the resource level granularity.
- 234_[SAA_SOA] AWS Cost Explorer.txt:9: In this example, we can see, for example, that some instances based on instance type can be more expensive than others, and so we can start optimizing our costs, asking ourselves the question, "Are these instances correctly used?
- 234_[SAA_SOA] AWS Cost Explorer.txt:20: So these kind of use cases can come up in the exam, and this is probably the only billing service that AWS will ask you in the exam.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:13: So your architecture can show over time it can start with for example, EC2 instances and a load bouncer and evolve towards a more serverless architecture such as API Gateway and Lambda.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:20: So you need to submit your application, for example for flash sale days that put a lot of pressure on your architecture.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:31: For example, if you improve your operational excellence you most likely will improve as well your cost optimization.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:44: So you can, for example, define a demo workload and say this is your production application.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:60: And the idea is that you're going to have a lot of questions on the six pillars, for example, 11 questions on operational excellence and then 10 questions on security, six on sustainability and things can change over time, of course but the idea is that you answer questions and then you're gonna get recommendations.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:61: So for example, how do you determine that what your priorities are?
- 237_AWS Acceptable Use Policy (AUP).txt:7: You cannot violate the security, integrity, and availability for other networks and computers. for example, by performing a DDoS.
- 237_AWS Acceptable Use Policy (AUP).txt:8: You may not distribute, publish, or facilitate any unsolicited mass emails, for example, by hosting spam servers.
- 238_Audit Manager.txt:22: For example, the data source, if it's manual or if it comes from a service of AWS, and so on.
- 239_[CCP_SAA] CloudFormation.txt:15: For example, you can say that in some environment you could automate the deletion of all the templates at 5:00 PM, which will delete all the associated resources with that template, and then recreate it at 9:00 AM or 8:00 AM safely.
- 239_[CCP_SAA] CloudFormation.txt:31: But on top of it, we can see the relations between all of these components and how they're linked together, which is very handy when you want to understand your architecture diagrams.
- 239_[CCP_SAA] CloudFormation.txt:32: So from an exam perspective, CloudFormation is going to be used when we have infrastructure as code, when we need to repeat an architecture in different environments, different regions, or even different AWS accounts.
- 240_[CCP_SAA] CloudFormation - Hands On.txt:3: And I will tell you why when we see the template.
- 240_[CCP_SAA] CloudFormation - Hands On.txt:38: And when we're good to go, let's click on submit.
- 240_[CCP_SAA] CloudFormation - Hands On.txt:97: You don't wanna touch anything manually when using CloudFormation.
- 241_[SAA_DVA_SOA] CloudFormation - Service Role.txt:6: So for example, we define a template and our own iam permissions as a user is to do actions on the CloudFormation.
- 241_[SAA_DVA_SOA] CloudFormation - Service Role.txt:9: And this service role has the S3 star buckets, permissions, for example, to create, update and delete a bucket.
- 241_[SAA_DVA_SOA] CloudFormation - Service Role.txt:11: So the use cases for security is if you want to achieve the least privileged principle and you don't want to give the users all the permissions to create the stack resources, only the permissions to invoke a service role on CloudFormation.
- 242_[DVA_SOA] CloudFormation - Stack Policy.txt:2: So, when you have a CloudFormation Stack update, by default, any action is going to be allowed on all resources so you can change your stack as you wish, but sometimes, you may want to protect your stack against updates, or part of your stack against updates.
- 242_[DVA_SOA] CloudFormation - Stack Policy.txt:7: So, the goal of Stack policies is really to protect resources against unintentional updates and when you set a Stack policy by default, all the resources are protected, and so what you need is to have an explicit "allow" for the resources that you want to be allowed to be updated.
- 243_CloudFormation - Dynamic References.txt:4: So we can store, for example, database credentials, password, third-party API keys, etc. in Parameter Store or Secrets Manager and they will be retrieved at runtime.
- 243_CloudFormation - Dynamic References.txt:15: So say for example, we have this IAM user and we resolve an IAM password user from SSM, and we use SSM Secure.
- 243_CloudFormation - Dynamic References.txt:18: For RDS, for example, here we use Secrets Manager, and again, the values are stored in Secrets Manager.
- 245_CloudFormation - Drift.txt:7: So the idea is that we upload a template into CloudFormation, for example, this one creates a security group.
- 245_CloudFormation - Drift.txt:13: And the idea is that when you apply this, it's going to apply drift on every stack instance within the StackSets.
- 245_CloudFormation - Drift.txt:39: And for example, I can change this rule to say that I want a different CIDR, and I can add a description.
- 245_CloudFormation - Drift.txt:51: And so there are two modified security groups, and we can click on one for example and click on View drift detail.
- 245_CloudFormation - Drift.txt:56: And we could go, for example, into CloudTrail to understand who has changed our security group, and when to really understand the root cause of this.
- 245_CloudFormation - Drift.txt:65: And when you're done, just delete this template and you're good to go.
- 246_CloudFormation Guard.txt:3: Well, for example, you can create a rule saying that every S3 bucket should be encrypted if created via CloudFormation.
- 246_CloudFormation Guard.txt:6: For example, we have a file named rules.guard.
- 246_CloudFormation Guard.txt:11: If it doesn't pass, then we can start, for example, a CI/CD pipeline.
- 247_[CCP] AWS Service Catalog.txt:2: So the users that are new to AWS, they have too many options and they don't follow this course, for example when they get started.
- 247_[CCP] AWS Service Catalog.txt:14: So say for example, that a user wants to have access to a quick RDS database but doesn't know how to create one properly.
- 248_AWS Resource Access Manager (AWS RAM).txt:14: So let's have a look at a concrete example and use case of how you would use Resource Access Manager.
- 248_AWS Resource Access Manager (AWS RAM).txt:25: And, for example, we can also create an Amazon RDS database in our VPC owner accounts.
- 249_[CCP] AWS Fault Injection Simulator (FIS).txt:4: For example, the CPU starts skyrocketing or the memories go out of memory, or the database is having a failure, or all these kinds of things.
- 249_[CCP] AWS Fault Injection Simulator (FIS).txt:9: And currently, FIS supports some services, you don't need to know them all, so here's a list and maybe there'll be others over time, but EC2 for example, by terminating EC2 instances, ECS by stopping ECS tasks, EKS, and so on to stop a Kubernetes task and RDS to make failures go alongside our database.
- 250_AWS Resilience Hub.txt:9: It's also going to be able to give you a resilience drift detection to get notified when your application is no longer meeting its resilience policy.
- 250_AWS Resilience Hub.txt:15: And then you're gonna be able to monitor the resilience posture and in case anything changes, there's a drift detection mechanism so that you get notified whenever changes are detected in the compliance status.
- 250_AWS Resilience Hub.txt:18: So when you look at the recommendations, for example, you can see that this RDS instance has a policy breached and it gives you two options to do, either to do option one or option two.

### Constraints / Limitations (Deduped)
- 036_AWS Config.txt:32: For example, if you have a development environment and you wanted to limit your cost.
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
- 232_AWS Config - Use Cases.txt:3: The second one is to detect whether or not CloudTrail has been disabled, it's very important.
- 233_[CCP_SAA_SOA] Trusted Advisor + Hands On.txt:9: We have cost optimization, performance, security, fault tolerance, service limits, and operational excellence.
- 233_[CCP_SAA_SOA] Trusted Advisor + Hands On.txt:17: But as we can see, we have two on security that must be looked at.
- 233_[CCP_SAA_SOA] Trusted Advisor + Hands On.txt:21: So again, this is something I should look at.
- 233_[CCP_SAA_SOA] Trusted Advisor + Hands On.txt:31: The only two things I have access to is security.
- 233_[CCP_SAA_SOA] Trusted Advisor + Hands On.txt:35: Finally, you can have a look at Service limits directly in Trusted Advisor.
- 233_[CCP_SAA_SOA] Trusted Advisor + Hands On.txt:38: So Trusted Advisor is not a very interesting service to look at when you don't pay for the support plan, but at least this should give you an idea of how Trusted Advisor is used in AWS, and therefore answer your exam questions on it.
- 234_[SAA_SOA] AWS Cost Explorer.txt:20: So these kind of use cases can come up in the exam, and this is probably the only billing service that AWS will ask you in the exam.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:5: So the idea is that with the well-architected framework once you implement the best practices, then you go to outcomes, and I'll give you the main guidelines of it.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:16: So data is very important.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:19: The idea is that you must try out your architecture good production, give it a go and see how you can improve.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:35: And then you adapt architectural best practices.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:66: And so you can answer questions in the various pillars and you should answer them all for all pillars, but let's answer one as well in performance efficiency, randomly and next.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:74: So it's very important.
- 237_AWS Acceptable Use Policy (AUP).txt:2: So this governs your use of the AWS services and there's some things you cannot do with them.
- 237_AWS Acceptable Use Policy (AUP).txt:6: You cannot host any child sexual abuse content or activity.
- 237_AWS Acceptable Use Policy (AUP).txt:7: You cannot violate the security, integrity, and availability for other networks and computers. for example, by performing a DDoS.
- 238_Audit Manager.txt:17: But there's also a feature that you should know about, which is the ability to manually upload other kind of evidence.
- 239_[CCP_SAA] CloudFormation.txt:4: So CloudFormation is such an important technology in the AWS because it is a declarative way of outlining your AWS infrastructure, for any resources, and most of them are supported.
- 240_[CCP_SAA] CloudFormation - Hands On.txt:2: So let's create a stack and let's make sure first of all that we are in the US East, Northern Virginia, US East 1 region, because the template I've created for you only works in that region.
- 240_[CCP_SAA] CloudFormation - Hands On.txt:15: And as you should know, AMI IDs are scoped within the region.
- 240_[CCP_SAA] CloudFormation - Hands On.txt:16: So for these two reasons, you must be in US East 1 for this hands-on.
- 240_[CCP_SAA] CloudFormation - Hands On.txt:77: And only then will it update the EC2 instance.
- 241_[SAA_DVA_SOA] CloudFormation - Service Role.txt:11: So the use cases for security is if you want to achieve the least privileged principle and you don't want to give the users all the permissions to create the stack resources, only the permissions to invoke a service role on CloudFormation.
- 241_[SAA_DVA_SOA] CloudFormation - Service Role.txt:12: For this to work, remember the user must have the permission named iam PassRole, which is a necessary permission to give a role to a specific service in AWS.
- 242_[DVA_SOA] CloudFormation - Stack Policy.txt:9: You should know enough to answer maybe one question on the exam on this.
- 243_CloudFormation - Dynamic References.txt:11: You cannot mix them together.
- 243_CloudFormation - Dynamic References.txt:13: And so the way it works is that in your CloudFormation template, you should have a resolve, then service name, and then reference key.
- 244_[DVA_SOA] CloudFormation - Termination Protection.txt:1: So a very quick lecture, but to actually prevent accidental deletes of your CloudFormation stacks, you must use Termination Protection.
- 244_[DVA_SOA] CloudFormation - Termination Protection.txt:9: It says that termination protection is enabled in the stack, and first, I must disable the termination protection before deleting it.
- 245_CloudFormation - Drift.txt:18: And then if it's made through CloudFormation though, but not at the StackSet level, then it's not considered drifted, although it's not best practice to update a stack instance outside of a StackSets.
- 245_CloudFormation - Drift.txt:35: So this should be very quick.
- 246_CloudFormation Guard.txt:3: Well, for example, you can create a rule saying that every S3 bucket should be encrypted if created via CloudFormation.
- 246_CloudFormation Guard.txt:7: And in it we say that for the S3 bucket, the property of ServiceSideEncryptionConfiguration should say AES256.
- 248_AWS Resource Access Manager (AWS RAM).txt:6: Well, you can share VPC Subnets, to allow you to have all the resources lunch within the same subnets, and they must be from within the same organizations.
- 248_AWS Resource Access Manager (AWS RAM).txt:7: And currently, though, you cannot share security groups or the default VPC.
- 248_AWS Resource Access Manager (AWS RAM).txt:9: But the participants cannot view, modify or delete resources that don't belong to them.
- 248_AWS Resource Access Manager (AWS RAM).txt:20: So each account will be responsible for its own resources, and cannot view, modify or delete other resources in other accounts.
- 248_AWS Resource Access Manager (AWS RAM).txt:21: So the only thing that is shared here is the private subnet, it's the networking layer.
- 248_AWS Resource Access Manager (AWS RAM).txt:23: And account two, the account that has the VPC owner cannot see these resources.
- 248_AWS Resource Access Manager (AWS RAM).txt:24: Likewise, account two can create EC2 instances within the account two, and account one cannot view these EC2 instances.
- 248_AWS Resource Access Manager (AWS RAM).txt:41: So this is why we can't find anything.
- 248_AWS Resource Access Manager (AWS RAM).txt:42: So it's not going to be very fascinating, but as you can see, I could have shared subnet if I had one, and then I scroll down here is principles, which is optional, which is okay, which accounts should have access to my subnets that I've selected.
- 250_AWS Resilience Hub.txt:20: And it gives you the seven changes that you should do to make sure that you are meeting the correct RTO and RPO you defined, or option two again gives you nine changes and this time is optimizing the availability zone eight RTO and RPO.

### Patterns / Architectures (Deduped)
- 231_AWS Config - Organizational Rules.txt:1: So now let's talk about organizational rules.
- 231_AWS Config - Organizational Rules.txt:4: So the scope of the organizational rules is only the organizations, whereas Conformance packs works both for many accounts as well as your organization.
- 231_AWS Config - Organizational Rules.txt:5: On top of it, the organizational rules are defined at the organization level, and they are one rule only so you can deploy one rule at a time, and you manage them only from your organization accounts.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:1: So there is a framework called the AWS Well-Architected Framework.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:3: This is a tool as well as a framework that allows you to do good applications on AWS.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:5: So the idea is that with the well-architected framework once you implement the best practices, then you go to outcomes, and I'll give you the main guidelines of it.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:12: You can also allow for evolutionary architectures.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:13: So your architecture can show over time it can start with for example, EC2 instances and a load bouncer and evolve towards a more serverless architecture such as API Gateway and Lambda.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:15: Also drive architecture using data.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:19: The idea is that you must try out your architecture good production, give it a go and see how you can improve.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:20: So you need to submit your application, for example for flash sale days that put a lot of pressure on your architecture.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:21: So the architecture framework is six pillars.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:33: So to help you guide you through this framework there is something called the AWS Well-Architected tool.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:34: And it's a framework tool to review your architectures against the six pillars I just defined.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:50: And you can just specify a lot of information around your infrastructure and architecture.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:52: And these lenses are the kind of questions you apply to your architecture.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:53: So we'll apply the well-architected framework lens.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:55: But for now, we'll keep it simple and just answer questions regarding the well-architected framework.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:58: So we'll start reviewing and then we'll review for the lens of the AWS Well-Architected Framework.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:62: And we'll say, okay, we evaluate governance requirements external customer needs and trade offs.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:73: And then if I click on it, I get the section in the framework itself that tells me exactly what I need to do.
- 236_[SAA] AWS Well-Architected Framework & Well-Architected Tool.txt:79: And the idea is that once you are very confident that this framework works for you then your application is production ready and your workload is compliant and well architected, okay?
- 238_Audit Manager.txt:4: You have prebuilt frameworks inside, such as the CIS AWS Foundation Benchmark v1.2 and 1.3, the GDPR, the Health Insurance Portability and Accountability Act, HIPAA, the PCI DS 4.0 standard.
- 238_Audit Manager.txt:8: And you can customize these existing pre-built frameworks or you can also create your own framework.
- 238_Audit Manager.txt:9: You will then generate reports of compliance based on these frameworks alongside evidence folders.
- 238_Audit Manager.txt:12: So, the idea is that you're going to select the framework, you're going to define the scope, and then Audit Manager will conduct automated evidence collection to make sure that you comply with the framework.
- 238_Audit Manager.txt:18: So, you can manually upload policy documents, training transcripts, screenshots, architecture diagrams, any kind of PDFs, really.
- 238_Audit Manager.txt:21: So you choose a framework, and then the framework will tell you how many controls are automated and manual, how many control sets there are, how many control and control sources, and then you get some information around the controls of this framework.
- 238_Audit Manager.txt:26: It's really just for added purposes, but now you know the features around manual upload of information, the type of frameworks that it supports, where the data is at the end, and so on.
- 239_[CCP_SAA] CloudFormation.txt:31: But on top of it, we can see the relations between all of these components and how they're linked together, which is very handy when you want to understand your architecture diagrams.
- 239_[CCP_SAA] CloudFormation.txt:32: So from an exam perspective, CloudFormation is going to be used when we have infrastructure as code, when we need to repeat an architecture in different environments, different regions, or even different AWS accounts.
- 240_[CCP_SAA] CloudFormation - Hands On.txt:90: On top of it, if you go to the template and you click on view in Application Composer, you're able to see now your new architecture.
- 246_CloudFormation Guard.txt:11: If it doesn't pass, then we can start, for example, a CI/CD pipeline.
- 250_AWS Resilience Hub.txt:6: And then based on what you've provided, Resilience Hub is going to assess your app against the AWS Well-Architected Framework.
- 250_AWS Resilience Hub.txt:21: So super nice because well, you can really assess your architectures, your applications, and get very concrete recommendations of the changes you need to do to make sure that you meet the resilience requirements you have.

## Deduped Consolidation Snapshot End

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: The conformance packs will give you access to many rules at a time, so you can deploy many rules, many Lambda functions, many remediation actions, and the compliance of these things will be seen at the account level.
- Signal 2: Key Insights: So it gives us a lot to play with, but we can also if you wanted to, create our own custom configuration rules in this way we would need to create a Lambda function to perform it and link it with config.
- Signal 3: Key Insights: So for example, we can create a Lambda function that checks if EBS disc is of type gp2 or if any two instance is of type t2.micro.
- Signal 4: Key Insights: So you would create a Lambda function and then create the custom config rule associated with it.
- Signal 5: Key Insights: Config is a per region service, so you need to configure it for all the regions if you need to, and you can aggregate the data across regions and accounts to centralize it into one place, you can also can store the configuration of all your resources into Amazon history to be later analyzed, for example, by serverless query engine, such as Athena.
- Signal 6: Key Insights: Well, you can have AWS managed config rules, and there are over 75 rules that you can use, or you can create your own config rules.
- Signal 7: Key Insights: And if you want it to and go all the way through with the scripting, you could create a document that will invoke a Lambda function and you're free to do whatever you want there.
- Signal 8: Key Insights: I hope you liked it, and it will see you in the next lecture for some hands-on.
- Signal 9: Key Insights: So let's go into the config service and start to configure it.
- Signal 10: Key Insights: So we are in it and I'm going to click on get started to start recording some settings.

### Service-Specific Lab Paths
### Activity 1: IAM Lab for AWS Config, conformance, remediation, advisor frameworks, IaC governance, audit tooling
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

### Activity 2: Amazon S3 Lab for AWS Config, conformance, remediation, advisor frameworks, IaC governance, audit tooling
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

### Activity 3: Amazon VPC Lab for AWS Config, conformance, remediation, advisor frameworks, IaC governance, audit tooling
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

### Activity 4: Amazon CloudWatch Lab for AWS Config, conformance, remediation, advisor frameworks, IaC governance, audit tooling
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

### Quick Troubleshooting
- Access denied: verify role permissions or ask admin for least-privilege lab policy.
- Resource limit reached: pick another region or request quota increase.
- Unexpected charges: stop/delete resources and review cost explorer immediately.

## Cross-Cloud Thinking Mode

Use this lens to study AWS Config, conformance, remediation, advisor frameworks, IaC governance, audit tooling in a cloud-agnostic way: focus on capability first, provider name second.

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
| Amazon S3 | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Amazon VPC | Amazon VPC | Azure Virtual Network | VPC Network |
| Amazon CloudWatch | Amazon CloudWatch | Azure Monitor | Cloud Monitoring |

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

