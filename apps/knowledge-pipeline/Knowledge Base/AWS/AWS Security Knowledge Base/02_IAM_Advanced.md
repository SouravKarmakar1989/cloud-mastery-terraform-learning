# 02_IAM_Advanced.md

## Scope
- Topic: Permission boundaries, ABAC, policy logic, STS, trust, metadata and evaluation flows
- Files processed: 23
- Extracted non-empty transcript lines: 757
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 4 Topic 2: IAM Advanced)

This section is the study-first deep dive into authorization logic, permission constraints, trust boundaries, and policy evaluation mechanics.

### Phase 1 - Foundations

#### Module 1: Authorization Evaluation Logic
- Effective permission is the intersection of multiple policy layers, not one document.
- Explicit deny always dominates allow.
- Context and conditions determine runtime outcome for otherwise valid permissions.


##### Source Transcript Details
- Module focus: Authorization Evaluation Logic
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/290_IAM - Policy Evaluation Logic.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/128_IAM Policy Evaluation Logic.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/288_IAM - Advanced Policies.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/131_IAM MFA.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/289_IAM - Resource-based Policies vs IAM Roles.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/005_IAM Access Analyzer.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/138_IAM Access Analyzer.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/127_IAM Permission Boundaries.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/142_STS - Revoking IAM Role Temporary Security Credentials.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/135_IAM Trust Policies.txt
- Top concept clusters from transcript metadata:
- IAM Domain Operational Context
- Authorization Model
- Identity Lifecycle
- Access Boundary Controls
- Organization Governance
- Temporary Credential Strategy
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 23
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 757
- Key insights inside selected files: 368
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- Let's get into IAM Permission Boundaries.
- And they're an advanced feature that allow you to define the maximum amount of permissions an IAM entity can get.
- We have this IAM permission boundaries.
- It looks just like an IAM policy.
- So we attach this, for example, to an IAM user and that's its permission boundaries.
- And then you need to specify on top of things an IAM permission through policy.
- And so here, say we attach to the very same user, allow iam:CreateUser, resource *.
- So there is a boundary and there is an IAM policy with permissions.
- Well, nothing, no permissions because the IAM policy is outside the IAM permission boundary.
- Therefore, our user is not allowed to create other IAM users because that is not in its IAM permission boundary.
- So I want to show you where IAM permission boundaries are created.
- So IAM permission boundaries can be used in combinations of AWS Organizations SCP.
- And your organization SCP, which applies to every single IAM entity in your account.
- For example, to delegate responsibilities to non-administrators within their permission boundaries, for example to create new IAM users.
- So let's have a look at the IAM Policy Evaluation Logic.
- So we can see there's a whole flow, but at every step, there is an evaluation.
- And so we're going to look at Deny evaluation, we're going to look at Organizations SCP, Resource-based policy, Identity-based policy, IAM permission boundaries, and then finally, Session policies to allow or deny a s...
- Then we look at IAM permission boundaries that we just saw.

##### Polished Architect Notes
- Transcript signals that let's get into IAM Permission Boundaries.
- Transcript signals that they're an advanced feature that allow you to define the maximum amount of permissions an IAM entity can get.
- Transcript signals that we have this IAM permission boundaries.
- Transcript signals that it looks just like an IAM policy.
- Transcript signals that we attach this, for example, to an IAM user and that's its permission boundaries.
- Transcript signals that then you need to specify on top of things an IAM permission through policy.
- Transcript signals that so here, say we attach to the very same user, allow iam:CreateUser, resource *.
- Transcript signals that there is a boundary and there is an IAM policy with permissions.
- Transcript signals that nothing, no permissions because the IAM policy is outside the IAM permission boundary.
- Transcript signals that therefore, our user is not allowed to create other IAM users because that is not in its IAM permission boundary.
- Transcript signals that i want to show you where IAM permission boundaries are created.
- Transcript signals that iAM permission boundaries can be used in combinations of AWS Organizations SCP.

##### Architect Synthesis (Transcript-Derived)
- Treat IAM Domain Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Authorization Model as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Identity Lifecycle as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Access Boundary Controls as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Organization Governance as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: let's get into IAM Permission Boundaries.
- Design implication: they're an advanced feature that allow you to define the maximum amount of permissions an IAM entity can get.
- Design implication: we have this IAM permission boundaries.
#### Module 2: Advanced IAM Constructs
- Permission boundaries constrain the maximum privilege envelope.
- ABAC uses attributes/tags to scale authorization design.
- Resource-based policies and identity-based policies interact and must be modeled together.


##### Source Transcript Details
- Module focus: Advanced IAM Constructs
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/290_IAM - Policy Evaluation Logic.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/128_IAM Policy Evaluation Logic.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/131_IAM MFA.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/288_IAM - Advanced Policies.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/134_IAM Roles Anywhere.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/289_IAM - Resource-based Policies vs IAM Roles.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/005_IAM Access Analyzer.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/137_[CCP_SAA_DVA_SOA] IAM Security Tools - Hands On.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/138_IAM Access Analyzer.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/127_IAM Permission Boundaries.txt
- Top concept clusters from transcript metadata:
- IAM Domain Operational Context
- Authorization Model
- Identity Lifecycle
- Access Boundary Controls
- Organization Governance
- Temporary Credential Strategy
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 23
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 757
- Key insights inside selected files: 396
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- Let's get into IAM Permission Boundaries.
- And they're an advanced feature that allow you to define the maximum amount of permissions an IAM entity can get.
- We have this IAM permission boundaries.
- It looks just like an IAM policy.
- So we attach this, for example, to an IAM user and that's its permission boundaries.
- And then you need to specify on top of things an IAM permission through policy.
- And so here, say we attach to the very same user, allow iam:CreateUser, resource *.
- So there is a boundary and there is an IAM policy with permissions.
- Well, nothing, no permissions because the IAM policy is outside the IAM permission boundary.
- Therefore, our user is not allowed to create other IAM users because that is not in its IAM permission boundary.
- So I want to show you where IAM permission boundaries are created.
- So IAM permission boundaries can be used in combinations of AWS Organizations SCP.
- And your organization SCP, which applies to every single IAM entity in your account.
- For example, to delegate responsibilities to non-administrators within their permission boundaries, for example to create new IAM users.
- So let's have a look at the IAM Policy Evaluation Logic.
- And so we're going to look at Deny evaluation, we're going to look at Organizations SCP, Resource-based policy, Identity-based policy, IAM permission boundaries, and then finally, Session policies to allow or deny a s...
- Then we look at IAM permission boundaries that we just saw.
- But what I want you to remember is that all these things are evaluated when making a specific IAM action.

##### Polished Architect Notes
- Transcript signals that let's get into IAM Permission Boundaries.
- Transcript signals that they're an advanced feature that allow you to define the maximum amount of permissions an IAM entity can get.
- Transcript signals that we have this IAM permission boundaries.
- Transcript signals that it looks just like an IAM policy.
- Transcript signals that we attach this, for example, to an IAM user and that's its permission boundaries.
- Transcript signals that then you need to specify on top of things an IAM permission through policy.
- Transcript signals that so here, say we attach to the very same user, allow iam:CreateUser, resource *.
- Transcript signals that there is a boundary and there is an IAM policy with permissions.
- Transcript signals that nothing, no permissions because the IAM policy is outside the IAM permission boundary.
- Transcript signals that therefore, our user is not allowed to create other IAM users because that is not in its IAM permission boundary.
- Transcript signals that i want to show you where IAM permission boundaries are created.
- Transcript signals that iAM permission boundaries can be used in combinations of AWS Organizations SCP.

##### Architect Synthesis (Transcript-Derived)
- Treat IAM Domain Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Authorization Model as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Identity Lifecycle as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Access Boundary Controls as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Organization Governance as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: let's get into IAM Permission Boundaries.
- Design implication: they're an advanced feature that allow you to define the maximum amount of permissions an IAM entity can get.
- Design implication: we have this IAM permission boundaries.
#### Module 3: STS and Trust Semantics
- STS-issued temporary credentials are central to secure delegated access.
- Trust policies define who may assume a role and under what constraints.
- External IDs and session context help protect cross-account assumption paths.


##### Source Transcript Details
- Module focus: STS and Trust Semantics
- Primary transcript files:
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/135_IAM Trust Policies.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/006_STS.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/142_STS - Revoking IAM Role Temporary Security Credentials.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/141_STS External ID.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/139_[SOA] STS Overview.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/140_STS Version 1 & Version 2.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/005_IAM Access Analyzer.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/138_IAM Access Analyzer.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/290_IAM - Policy Evaluation Logic.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/128_IAM Policy Evaluation Logic.txt
- Top concept clusters from transcript metadata:
- IAM Domain Operational Context
- Authorization Model
- Identity Lifecycle
- Temporary Credential Strategy
- Access Boundary Controls
- Organization Governance
- Federated Authentication
- Least Privilege
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 23
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 757
- Key insights inside selected files: 360
- Unique concept tags in selected files: 8

##### Transcript-Enriched Learning Notes
- So now let's talk about IAM trust policies.
- So trust policies defines who is allowed to assume an IAM role, and we've overlooked them a lot, but every IAM role will have a trust policy and a permission policy.
- So the permission defines what the IAM role can do, and the trust policy defines who is allowed to assume this IAM role.
- So here is the default trust policy.
- So you have this allow principal with the account number and then root action, sts:AssumeRole.
- So as soon as a service needs to assume a role, you will find in the trust policy the fact that the principal and the service will be matching that service.
- So it's important to have a look at this because the exam make show you IAM policies or may ask you about trust policies, and you need to know that trust policies can be restricting, can be used to restrict who can ac...
- So now let's talk about STS, which is a service that is so important in AWS, which isn't going to allow us to assume roles across different accounts within the same accounts, and also enable us to do identity federati...
- First, we define IAM role within your accounts or across accounts that we want to assume.
- Then we define which principals can access this IAM role, and we'll use the STS service, which stands for Security Token Service, to retrieve credentials, and they're gonna be temporary, and this will allow us to impe...
- Our users wants to access a role, for example, it's within the same or another accounts, and so, to do so, it's going to use the AssumeRole API on STS.
- STS will check the permissions and make sure the setup is correct, and we'll go into details on how that look likes, and then, we'll get security credentials back.
- They're gonna be temporary, and these security credentials will allow us to access the target role, so in which situations would we want to assume a role using STS?
- Well, first of all, if you want to provide access to an IAM user in an AWS account that you own or your own accounts to another resource, or maybe you want to provide IAM access users in other accounts, third parties...
- Now, for STS, there's this feature which allows you to revoke active sessions and credentials for a role, and so this is very simple.
- Remember, when we use STS, when we assume a role for it be a user, an application, or a service, we give up our original permissions, and we take the permissions assigned to the role, and so we already had a discussio...
- Okay, so here is the deep dive a little bit on providing access to an IAM user in your or another AWS accounts that you own, so this is within your circle of trust, in which case, we can, for example, create a role in...
- Okay, but what does it look like in practice when we have STS cross-account access?

##### Polished Architect Notes
- Transcript signals that now let's talk about IAM trust policies.
- Transcript signals that trust policies defines who is allowed to assume an IAM role, and we've overlooked them a lot, but every IAM role will have a trust policy and a permission policy.
- Transcript signals that the permission defines what the IAM role can do, and the trust policy defines who is allowed to assume this IAM role.
- Transcript signals that here is the default trust policy.
- Transcript signals that you have this allow principal with the account number and then root action, sts:AssumeRole.
- Transcript signals that as soon as a service needs to assume a role, you will find in the trust policy the fact that the principal and the service will be matching that service.
- Transcript signals that it's important to have a look at this because the exam make show you IAM policies or may ask you about trust policies, and you need to know that trust policies can be restricting, can be used to restrict who can a...
- Transcript signals that now let's talk about STS, which is a service that is so important in AWS, which isn't going to allow us to assume roles across different accounts within the same accounts, and also enable us to do identity federat...
- Transcript signals that first, we define IAM role within your accounts or across accounts that we want to assume.
- Transcript signals that we define which principals can access this IAM role, and we'll use the STS service, which stands for Security Token Service, to retrieve credentials, and they're gonna be temporary, and this will allow us to impe...
- Transcript signals that our users wants to access a role, for example, it's within the same or another accounts, and so, to do so, it's going to use the AssumeRole API on STS.
- Transcript signals that sTS will check the permissions and make sure the setup is correct, and we'll go into details on how that look likes, and then, we'll get security credentials back.

##### Architect Synthesis (Transcript-Derived)
- Treat IAM Domain Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Authorization Model as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Identity Lifecycle as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Temporary Credential Strategy as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Access Boundary Controls as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: now let's talk about IAM trust policies.
- Design implication: trust policies defines who is allowed to assume an IAM role, and we've overlooked them a lot, but every IAM role will have a trust policy and a permission policy.
- Design implication: the permission defines what the IAM role can do, and the trust policy defines who is allowed to assume this IAM role.
### Phase 2 - Core Services

#### IAM Access Analyzer and Exposure Review
- Analyzer patterns detect externally shared resources and unintended trust exposure.
- Security value: proactive detection of policy-based blast-radius expansion.

#### Policy Conditions and Boundaries in Practice
- Conditions enforce runtime context requirements.
- Boundaries prevent delegated identity creation from escalating beyond intended limits.
- Use both to reduce privilege amplification risk.

#### Instance Metadata Security (IMDS Patterns)
- Metadata service access controls are part of IAM threat model.
- Harden metadata paths to reduce credential exfiltration opportunities in compromised compute contexts.

### Phase 3 - Advanced Patterns

#### Pattern 1: ABAC at Scale
- Use standardized tagging taxonomy across identity and resources.
- ABAC reduces role count but increases dependency on tag quality and governance.

#### Pattern 2: Cross-Account Delegation Guardrails
- Use scoped trust, external ID patterns, and session constraints.
- Monitor role-assumption behavior with audit telemetry and anomaly detection.

#### Pattern 3: Policy Simulation and Change Safety
- Validate policy changes before deployment in production accounts.
- Establish pre-merge checks for high-impact policy resources.

### Phase 4 - System Design (Production)

#### Reference Advanced IAM Architecture
- Central policy framework with reusable boundary templates.
- Federation and STS broker patterns for temporary privileged sessions.
- Continuous exposure analysis and runtime audit integration.

#### Scaling Considerations
- ABAC adoption fails without strict tag governance.
- Boundary and condition complexity can degrade troubleshooting speed.
- Cross-account trust graph expands quickly in large organizations.

#### Cost Considerations
- Main cost is operational complexity, not IAM API price.
- Poor advanced-policy hygiene causes long-tail security and incident response costs.

### Cross-Cloud Concept Mapping (IAM Advanced)

#### Underlying Concept: Authorization Constraints and Conditions
- AWS: permission boundaries and condition keys
- Azure: RBAC scope plus conditional access/policy constraints
- GCP: IAM conditions and org policy constraints
- Trade-off: abstraction parity is partial; model and test by scenario, not by name.

#### Underlying Concept: Delegated Temporary Access
- AWS: STS and trust policy patterns
- Azure: managed identity and token delegation patterns
- GCP: short-lived credentials and impersonation flows
- Trade-off: strongest outcome comes from minimizing standing privilege across all clouds.

### Real-World Use Cases from Transcript Signals
- Prevent delegated admin identities from privilege escalation via boundaries.
- Implement attribute-based access controls for large dynamic resource fleets.
- Secure cross-account role assumptions for shared operations and platform teams.

### Constraints and Exam-Relevant Traps Captured
- Reading one policy in isolation leads to wrong authorization conclusions.
- Overly complex condition logic can create hidden authorization gaps.
- STS trust misconfiguration is a frequent root cause in cross-account incidents.
## Step 1 â€” Line-by-Line Extraction

Every non-empty line from every source transcript is preserved below with extraction fields.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/005_IAM Access Analyzer.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Access Analyzer
- Key Insights: So now let's discuss IAM Access Analyzer.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: And this is a service within the IAM console that is used to find out which resources are going to be shared externally.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: So this applies with S3 buckets, IAM roles, KMS keys, Lambda functions and layers, SQS queues, and Secrets Manager Secrets.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: So the idea is that some of these, obviously, can have resource policies attached to them, or they can be shared with other accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But sometimes you forget about sharing these items and it can be a security risk for your company because some of the data may be accessible by external sources.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: And so, you define a zone of trust, which is going to correspond to your AWS accounts or your entire AWS organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then anything outside your zone of trust that has access to the resources said above are going to be reported as findings.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: Identity Lifecycle
- Services: IAM Roles
- Key Insights: So for example, we have an S3 bucket, we can share it with a specific role, a user, an account, an external client by IP, or a VPC endpoint.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: Identity Lifecycle
- Services: IAM Roles
- Key Insights: But if we define the zone of trust to be our accounts and only the role, the user, and the VPC endpoints are within our accounts, then the accounts and the external clients are going to be flagged as a finding, and you can look at it within the console to take action if you think this is a security risk.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Access Analyzer
- Key Insights: There are other sides of IAM Access Analyzer you need to know about.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Access Analyzer, IAM Policies
- Key Insights: So first of all, you can do policy validation on IAM Access Analyzer.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 12:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So you can validate your policy against the policy grammar and best practices.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: You're going to get general warnings, security warnings, errors, and suggestions, as well as actionable recommendations on how to improve your policies.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Access Analyzer, IAM Policies
- Key Insights: But also you can generate policies directly from IAM Access Analyzer.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: And that's really cool because it's actually going to generate an IAM policy tailored to your access activity based on the API calls that have been made.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example of a Lambda function doing API calls into an S3 bucket or a Kinesis Data Stream.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Then, of course, these API calls are going to be logged into CloudTrail.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Access Analyzer, IAM Policies
- Key Insights: Now, what's going to happen is that the CloudTrail logs are going to be reviewed by the IAM Access Analyzer feature to generate a policy and then is going to get fine-grained permissions with the appropriate actions and services.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Access Analyzer
- Key Insights: So IAM Access Analyzer review the logs.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And it's up to 90 days of logs.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 21:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: And then, out of it, will generate an IAM policy that is going to be most likely security best practice because it will encompass all the API calls that your application has been making over the past 90 days.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/006_STS.txt

Line 1:
- Concepts: Authorization Model, Federated Authentication, Temporary Credential Strategy
- Services: AWS STS, SAML/OIDC Federation
- Key Insights: So now let's talk about STS, which is a service that is so important in AWS, which isn't going to allow us to assume roles across different accounts within the same accounts, and also enable us to do identity federation, so let's get started.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Authentication and trust-chain signal; Multi-account governance signal; Authorization decision-path signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: First, we define IAM role within your accounts or across accounts that we want to assume.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: Authorization Model, Identity Lifecycle, Temporary Credential Strategy
- Services: AWS IAM, AWS STS, IAM Roles
- Key Insights: Then we define which principals can access this IAM role, and we'll use the STS service, which stands for Security Token Service, to retrieve credentials, and they're gonna be temporary, and this will allow us to impersonate the IAM role we have access to using the AssumeRole API, and the credentials are going to be temporary, as I said, between 15 minutes to 12 hours, so the diagram, what does it look like?
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal; Authorization decision-path signal.

Line 4:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS, IAM Roles
- Key Insights: Our users wants to access a role, for example, it's within the same or another accounts, and so, to do so, it's going to use the AssumeRole API on STS.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 5:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS
- Key Insights: STS will check the permissions and make sure the setup is correct, and we'll go into details on how that look likes, and then, we'll get security credentials back.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 6:
- Concepts: Authorization Model, Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS, IAM Roles
- Key Insights: They're gonna be temporary, and these security credentials will allow us to access the target role, so in which situations would we want to assume a role using STS?
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal; Authorization decision-path signal.

Line 7:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: Well, first of all, if you want to provide access to an IAM user in an AWS account that you own or your own accounts to another resource, or maybe you want to provide IAM access users in other accounts, third parties access to your account as well.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: Maybe you want to also help your AWS services do what they need, so using service roles, and then, maybe we also want to perform identity federation, and we'll have a deep dive onto identity federation in this course because you need to know them all.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 9:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS, IAM Roles
- Key Insights: Now, for STS, there's this feature which allows you to revoke active sessions and credentials for a role, and so this is very simple.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal; Authorization decision-path signal.

Line 10:
- Concepts: Access Boundary Controls, Authorization Model
- Services: IAM Policies, IAM Roles
- Key Insights: You just need to change the policy and add a time statement or use the AWSRevokeOlderSessions manage policy, and that's perfect, and so using this time condition, you're able to say, "Okay, this role cannot be used anymore," and so that gives you an extra level of security.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 11:
- Concepts: Access Boundary Controls, Authorization Model, Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS, IAM Policies, IAM Roles
- Key Insights: Remember, when we use STS, when we assume a role for it be a user, an application, or a service, we give up our original permissions, and we take the permissions assigned to the role, and so we already had a discussion as to whether we should use a role or a resource-based policy, but just a slight reminder here.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Authentication and trust-chain signal; Multi-account governance signal; Authorization decision-path signal.

Line 12:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Roles
- Key Insights: Okay, so here is the deep dive a little bit on providing access to an IAM user in your or another AWS accounts that you own, so this is within your circle of trust, in which case, we can, for example, create a role in Account A or A*.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It could be another account that you own, okay?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 14:
- Concepts: Identity Lifecycle
- Services: IAM Roles
- Key Insights: To terminate EC2 instances, and so this is very important that this is all the accounts that you own because in the next slide, we'll see about the accounts we don't own, third parties, so in this case, the user will assume a role, and that role will be allowing us to terminate EC2 instances, and the benefits is that, is that we need to explicitly grant our users permission to assume the role to perform the Terminate EC2 Instance action.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 15:
- Concepts: Identity Lifecycle
- Services: IAM Roles
- Key Insights: We can also force the users to switch to that role using the Management Console or the CLI and the AssumeRole API, and so the idea is that we have an extra level of security here.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 16:
- Concepts: Identity Lifecycle, Least Privilege
- Services: IAM Roles, MFA
- Key Insights: We can also add multifactor authentication protection to the role so that only users are assigned using MFA can assume the role, and so what this gives us, as well, is least privilege and auditing using CloudTrail, so by using this intermediary step to do terminate EC2 instances, we have a lot of extra security added to it, and that is a very common pattern in AWS, something that a solutions architect should be thinking about a lot.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Multi-account governance signal.

Line 17:
- Concepts: Temporary Credential Strategy
- Services: AWS STS
- Key Insights: Okay, but what does it look like in practice when we have STS cross-account access?
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 18:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Again, just a reminder, but something you've already seen before, probably, so we have a production accounts with an S3 buckets and a development accounts with two groups of users, for example, testers and developers, and we want to provide developers access to the S3 bucket production app.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: Authorization Model
- Services: IAM Roles
- Key Insights: Okay, so the first thing we do is that in the production accounts, the admin will create a role that grants the development account read/write access to the productionapp bucket, so this role will allow us to access the S3 buckets.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 20:
- Concepts: Identity Lifecycle
- Services: IAM Roles
- Key Insights: Then, in the development accounts, we're granting the members of the developer group access to assume this UpdateApp role, so what happens then?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 21:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS, IAM Roles
- Key Insights: The users of that group, the developers group only, can access or request access to the role using the STS API, and STS will return the role temporary credentials, and using these credentials, the users can access the S3 bucket using the role credentials, so very, very, very simple.
- Hidden/Implicit Meaning: Constraint or limitation signal; Authentication and trust-chain signal; Multi-account governance signal.

Line 22:
- Concepts: Temporary Credential Strategy
- Services: AWS Organizations, AWS STS
- Key Insights: Again, just revision, but I want to make dead clear how STS works because it gets a little bit more complicated right now, and this is probably something new for you, but very important to note going into the exam, so in case you want to provide access to AWS accounts owned by third parties, there's going to be an extra thing called external ID, so this is text, and then I have a diagram, so there's a zone of trust, and the zone of trust is all the accounts and organizations that you own, and outside of that zone of trust is going to be third parties.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Authentication and trust-chain signal; Multi-account governance signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, you work with a partner, and they provide you a service, and you want to give, like I say, consulting company, and you want to give that consulting company access to your accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 24:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: They're outside of your zone of trust.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: Organization Governance
- Services: AWS IAM, AWS Organizations, IAM Access Analyzer
- Key Insights: They're not directly in your organization, and so you can use IAM Access Analyzer to find out which resources in your accounts are outside of your zone of trust, okay?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: Which account, which resources, for example, your S3 buckets are going to be granted to third parties, and so if you wanna grant access to your third parties to some of your resources, you can get something called the third-party AWS account ID, which is a very obvious, and the most important thing here is you define an external ID, and this external ID is a secret between you and the third party, and you have to define it, and this is because if you give access to the third party to a role in your accounts, you want to make sure that only that third party has access to this role, so this is to uniquely associate the role between you and a third party, and you must be provided when defining the trust and when assuming the role, and we'll see why, and it must be chosen by the third party.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Multi-account governance signal.

Line 27:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: You define the permissions in the IAM policy, and you're good to go, so let's have a look at a bit more details to make this a bit more clear about this, why this external ID is so important, and this is called the confused deputy, so this is a diagram directly coming from the documentation, and so we see here is that we have your AWS accounts on the left-hand side, and we have the third party in the middle, and we have another AWS accounts on the right-hand side, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 28:
- Concepts: Authorization Model
- Services: IAM Roles
- Key Insights: And what the account on the right-hand side that we don't own is going to try to attack us on the left-hand side, and to attack us, it's going to be using the account in the middle, so let's see what happens when you don't use the external ID and how this attack is possible and what happens when the, once we have the external ID, and how this prevents this attack, so in the first case, our AWS accounts right here has created an ExampleRole right here, and this ExampleRole is going to be able to be assumed by the middle accounts, so we're saying, "Okay, here is the ARN of this ExampleRole, and you are able to assume this role and access some of our resources within our accounts using this role, so this is everything we've seen so far, and then, the other AWS accounts is going to try to attack us, so it's going to say, "Hey," to the middle accounts, "Hey, I have a role for you, "and this role is going to allow you "to access stuff in my accounts," but instead of providing a role in their accounts, they provide the exact same AWS1 ExampleRole ARN to the middle accounts, so this one doesn't know.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: It can't verify whether this role belongs to the accounts on the left or on the right, and so it's going to assume that role, and by assuming that role, instead of assuming the role on the right-hand side accounts, it's going to assume roles in the left-hand side accounts without knowing it, and so, therefore, it's going to think that it's going to be performing actions on the right-hand side accounts, but actually, it performs action on the left-hand side accounts, and this is called the confused deputy because the account in the middle is confused.
- Hidden/Implicit Meaning: Constraint or limitation signal; Authentication and trust-chain signal; Multi-account governance signal.

Line 30:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: It thinks it's going to operate on the right-hand side accounts, but it actually operates on the left-hand side accounts, and so this is why AWS defined this external ID thing, and let's see how this protects against this attack, and this is an exam question, so this is why I'm going go deep into this, so we have now the same setup, but this time, we also define an external ID to assume this role, and this external ID is something secret that is shared between your accounts and the account in the middle, so we're saying, "Okay, here is the ARN of the account you should assume, but when you do assume this ARN, you need to pass in the external ID that we have defined together, and so, as such, okay, it's able to access this role because we know we both know the secrets, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 31:
- Concepts: Temporary Credential Strategy
- Services: AWS STS, IAM Roles
- Key Insights: And when we look at the other AWS accounts on the right-hand side, which is trying to attack us, it's going to try to use, again, this role on the left-hand side, but it doesn't know the external ID, and so it's going to give another external ID to the account in the middle, and this time, by providing the wrong external ID, this is going to be preventing the account in the middle to access our AWS accounts because the external ID is not matching, and therefore, we have added an extra level of security, so bottom line is you don't need to know exactly all the steps, but I want to show you exactly how that works and not just tell you using external ID prevents this kind of attacks, so bottom line is still if you are using third-party accounts, and they need to get access to your AWS accounts, and you need to secure that, the answer is to use the STS AssumeRole API, but also to define an external ID, and this, hopefully, description of how this works helps you.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 32:
- Concepts: Temporary Credential Strategy
- Services: AWS STS
- Key Insights: You can also use session tags in STS.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 33:
- Concepts: Federated Authentication, Identity Lifecycle, Temporary Credential Strategy
- Services: AWS IAM, AWS STS, IAM Roles, SAML/OIDC Federation
- Key Insights: The idea is that when you assume an IAM role, or, for example, you have user federation that leverages STS, it is possible for you to pass a session tag, so how does that work?
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 34:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS
- Key Insights: Well, your user is going to, for example, do the STS AssumeRole API call and pass a session tag as part of the API call, for example, for Department=HR, and STS will then return temporary security credentials for that user with the session tag, so why do we do this?
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 35:
- Concepts: Access Boundary Controls, Temporary Credential Strategy
- Services: AWS IAM, AWS STS, IAM Policies
- Key Insights: Well, then, in our IAM policies, we can use a condition called the aws:PrincipalTag, and the idea is that using this, the tag of the condition is going to be compared to the tag passed to the STS AssumeRole, and so this allows us to have conditions to make sure that the principal making the request has the specified tags.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal; Authorization decision-path signal.

Line 36:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: For example, we have an S3 bucket named hr-docs, and it contains this S3 bucket policy.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 37:
- Concepts: Access Boundary Controls, Federated Authentication, Identity Lifecycle, Temporary Credential Strategy
- Services: AWS IAM, AWS STS, IAM Policies, SAML/OIDC Federation
- Key Insights: As you can see in the condition, there is a StringEquals PrincipalTag/Department equals HR, and therefore, only a user that has done an AssumeRole with that specific session tag will be able to make an API call into the S3 buckets, so this is particularly helpful when you federate users in STS and you want to have some conditions in your IAM policies based on some tags passed through the federation, so finally, to conclude with STS, there's a few important APIs you need to know.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Authentication and trust-chain signal; Multi-account governance signal; Authorization decision-path signal.

Line 38:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: The AssumRole is the most basic one, which is to access a role within your account or across accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 39:
- Concepts: Federated Authentication, Identity Lifecycle
- Services: SAML/OIDC Federation
- Key Insights: AssumeRoleWithSAML, which is to get credentials when we are federated with SAML.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 40:
- Concepts: Federated Authentication
- Services: Amazon Cognito, SAML/OIDC Federation
- Key Insights: AssumeRoleWithWebIdentity, which we are using a IdP, and so that includes Amazon Cognito, Login with Amazon, Facebook, Google, or any OpenID Connect-compatible IdP, and so we'll be seeing this in detail in the federation section, and overall, just so you know right now, AWS does not recommend to use the AssumeRoleWithWebIdentity API anymore.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 41:
- Concepts: IAM Domain Operational Context
- Services: Amazon Cognito
- Key Insights: It recommends to use Cognito instead.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 42:
- Concepts: Federated Authentication, Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS, MFA, SAML/OIDC Federation
- Key Insights: Then we have a GetSessionToken, which is used for MFA, so when we log using MFA to get credentials back, or GetFederationToken, which is usually to get a credentials, temporary credentials, when we have federation using a proxy app, for example, when we have something that distributes tokens within a corporate network, okay?
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 43:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So at a high level, these are the important APIs you need to know.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 44:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The most important ones are going to be the first four.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 45:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I don't think the fifth one is going to be in the exam, but still, for me, good to tell you what it is, okay?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 46:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 47:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: I will see you in the next lecture for some identity federation.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/127_IAM Permission Boundaries.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, Permission Boundaries
- Key Insights: So, now let's talk about IAM Permission Boundaries.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: Authorization Model, Identity Lifecycle
- Services: AWS IAM, IAM Policies, Permission Boundaries
- Key Insights: So, permission boundaries are a concept that allows you to restrict an IAM policy, and they're supported only for users and roles, so not groups.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: And they are used to restrict the maximum permissions an IAM entity can get, so it's a bit complicated to understand.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Let's go through an example.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: Access Boundary Controls, Authorization Model
- Services: AWS IAM, Permission Boundaries
- Key Insights: So, let's say here we have an IAM permission boundary where we say we allow s3:*, cloudwatch:* and ec2:*.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 6:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: That doesn't mean that we allow these things.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 7:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: That means that this is a boundary of what's possible to be allowed for your IAM policy.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 8:
- Concepts: Authorization Model
- Services: AWS IAM
- Key Insights: And then, if we have a permission right here that says Allow iam:CreateUser, that means that, the result, there is no permission.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 10:
- Concepts: Authorization Model, Identity Lifecycle
- Services: AWS IAM
- Key Insights: Well, the right-hand side defines the actual permissions of the user, which is to allow iam:CreateUser, but the left-hand side restricted what the user can get permissions on, and the user is only allowed to have permissions on S3, CloudWatch and EC2.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Therefore, the union of these two things represents no permissions.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: Permission Boundaries
- Key Insights: That's why it's called Permission Boundaries.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: You define the boundary of what's allowed for a policy to allow.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 14:
- Concepts: Organization Governance
- Services: AWS Organizations, Service Control Policies
- Key Insights: So, these can be used in combination with AWS Organizations SCP.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: Access Boundary Controls, Authorization Model, Organization Governance
- Services: IAM Policies, Permission Boundaries, Service Control Policies
- Key Insights: So, here we have the SCP, the permission boundary, and the identity-based policy, and the effective permissions are right in the center.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 16:
- Concepts: Organization Governance
- Services: AWS Organizations, Permission Boundaries, Service Control Policies
- Key Insights: So, permission boundaries, they operate a little bit like Organizations SCP.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: They just define what is the boundary of what's allowed, but then the identity-based policy defines what's actually allowed.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 18:
- Concepts: Authorization Model, Identity Lifecycle
- Services: AWS IAM, IAM Policies, Permission Boundaries
- Key Insights: So, the use cases for permission boundaries is to delegate responsibilities to non administrators within their permission boundaries, for example, to create new IAM users, or to allow developers to self-assign policies and manage their own permissions, while making sure they cannot elevate or escalate the privileges.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, make themself admins because you have defined a boundary around their permissions.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 20:
- Concepts: Identity Lifecycle, Organization Governance
- Services: AWS Organizations, Service Control Policies
- Key Insights: It's also very useful to restrict one specific user instead of a whole account using Organizations &amp; SCP, or to test out an SCP beforehand by just playing around with a permissions boundary.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay, so I hope that helps you, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/128_IAM Policy Evaluation Logic.txt

Line 1:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: So now let's talk about the evaluation logic of IAM policies.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So here is a simplified version and then we'll see the more complicated version.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 3:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So by default, all the requests are implicitly denied except for the root user, which has full access no matter what.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 4:
- Concepts: Access Boundary Controls, Authorization Model
- Services: IAM Policies
- Key Insights: An explicit allow in an identity-based or resource-based policy overrides the default in one, so that means that everything was implicitly denied, but then we have an explicit deny, so things are gonna be accepted.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 5:
- Concepts: Access Boundary Controls, Authorization Model, Organization Governance
- Services: AWS Organizations, IAM Policies, Permission Boundaries, Service Control Policies
- Key Insights: If there is a permission boundary or an Organizations SCP or a session policy, then an explicit allow is used to limit actions.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 6:
- Concepts: Access Boundary Controls, Authorization Model, Organization Governance
- Services: IAM Policies, Permission Boundaries, Service Control Policies
- Key Insights: So anything that is not explicitly allowed through a permission boundary, an SCP, or a session policy is going to be an implicit deny and then the final decision will be overridden.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 7:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: It will be a deny.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 8:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: Any explicit deny, finally, in any policy overrides any allows you've ever had.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 9:
- Concepts: Access Boundary Controls, Authorization Model, Organization Governance
- Services: IAM Policies, Permission Boundaries, Service Control Policies
- Key Insights: So bottom line is if you have an organizational SCP, a permission boundary or a session policy, you must see an explicit allow, but it's not enough.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 10:
- Concepts: Access Boundary Controls, Authorization Model
- Services: IAM Policies
- Key Insights: You must also have an explicit allow in an identity-based or resource-based policy.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: That's for the simplified version.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It may take a few times for you to agree with this and here is the longer graph.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you have a look at all these things.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 14:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So we start at deny and then we evaluate all applicable policies.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 15:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: Then we look at if there is an explicit deny amongst all policies.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 16:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: If yes, the final decision is deny.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: There is no way around it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: Authorization Model, Organization Governance
- Services: Service Control Policies
- Key Insights: Then we look at if there is an SCP, and if there's an SCP, as we said before, there must be an explicit allow.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Good.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Then we move on to the next phase.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 21:
- Concepts: Access Boundary Controls
- Services: IAM Policies
- Key Insights: We looked at resource-based policies.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 22:
- Concepts: Access Boundary Controls, Authorization Model
- Services: IAM Policies
- Key Insights: So if we have a resource-based policy, we have a look at if there's an allow.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 23:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: And if there's an allow, it's good enough.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 24:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: Else, we look into what's next and if there's an identity-based policy.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 25:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So if there is an identity-based policy, yes, we look at whether or not there is an allow.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 26:
- Concepts: Authorization Model
- Services: IAM Policies, Permission Boundaries
- Key Insights: If there's an allow, we look at permission boundaries to make sure that the boundaries of your identity-based policies are correct.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 27:
- Concepts: Access Boundary Controls, Authorization Model
- Services: Permission Boundaries
- Key Insights: And if there is a permission boundary if it's present, and there is an allow, we're good.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Otherwise, no.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: And finally, we look at session policies.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 30:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: So this is when we have a role session and so on.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 31:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is the more complicated version, but the version I just gave you from before should be enough for you to understand how to evaluate some logic.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 32:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we'll walk through several examples in this course, so don't worry too much, but you have the basics.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 33:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So let's take a look at this policy right here.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 34:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: We have Deny sqs:* and Allow sqs:DeleteQueue.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 35:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: What can we do?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 36:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So can we create a queue?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 37:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Well, the answer is no.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 38:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: We cannot create a queue because we have Deny sqs:*.
- Hidden/Implicit Meaning: Constraint or limitation signal; Authorization decision-path signal.

Line 39:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And can we delete a queue?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 40:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Well, it's been explicitly allowed, sure, but it's also been explicitly denied for the first statement.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 41:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we cannot do sqs:DeleteQueue.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 42:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And finally, can we do ec2:DescribeInstances?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 43:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The answer is no, it hasn't been explicitly allowed and so therefore it's been implicitly denied.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 44:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay, when we go cross-account, it gets a little bit more funky.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 45:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example of the account A that has Alice and account B that has an S3 bucket and we look at a request from account A to account B.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 46:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So the requester in account A must have an identity-based policy that allows the action on the S3 buckets.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 47:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: And then in the bucket in account B, you must have a resource policy that is going to allow the requester in account A to access the resource.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 48:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So this is different from being in the same account because when you're in the same account, you look at the combination of the identity-based policy and the resource policy and you look for one allow in between the two.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 49:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: But when you have two accounts, you look at whether or not do both accounts allow the request.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 50:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: That's why we're saying it's a bit more funky with cross-account access.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 51:
- Concepts: Authorization Model, Identity Lifecycle
- Services: AWS IAM, IAM Policies
- Key Insights: So if you have a look of the simple use case of an IAM policy and a resource policy in the same account, if we have an empty IAM user IAM policy, but then the S3 bucket policy, the resource policy, actually explicitly allows this user through its ARN to access the bucket, then this is allowed.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 52:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Remember, this is not allowed.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 53:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Cross-account, when the same account, it is going to be allowed.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 54:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: If we take a look at a more complicated use case where we have an IAM policy, a VPC endpoint policy, and a resource policy, what is evaluated?
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 55:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: So we have a look at the instance role.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 56:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Here, we have s3:*.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 57:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we are allowed to do stuff on S3.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 58:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: Then the VPC endpoint policy does allow us to do list bucket, get object and put object on the bucket itself.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 59:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we've restricted the actions that are being made on the bucket.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 60:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: And finally, the bucket policy is saying, you cannot access me unless you come from this specific VPC endpoint.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 61:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So as a whole, the EC2 instance will be allowed to do list bucket, get object, and put object on the VPC endpoint and only through the VPC endpoint.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 62:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: Because if the EC2 instance tries to access the S3 bucket directly, as you can see on the right-hand side, the policy is saying deny.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 63:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: And so we have an explicit deny.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 64:
- Concepts: Access Boundary Controls, Authorization Model
- Services: (none explicit)
- Key Insights: And because of the condition, if we try to access it without the VPC endpoint, the condition is going to trigger and so we'll get an explicit deny.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 65:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So with this setup, we have effectively forced the EC2 instance to access the S3 bucket through the VPC endpoint and the VPC endpoint itself restricted the type of actions that the EC2 instance could do on our S3 bucket.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 66:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Hopefully all of that makes sense for you now.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 67:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 68:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/129_Identity-Based Policies vs. Resource-Based Policies.txt

Line 1:
- Concepts: Access Boundary Controls, Authorization Model
- Services: AWS IAM, IAM Policies, IAM Roles
- Key Insights: So now let's understand the difference between in a cross account type of use case accessing a resource Thanks to resource-based policy or a cross account IAM role.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 2:
- Concepts: Access Boundary Controls, Authorization Model
- Services: IAM Policies
- Key Insights: So the first option is to attach a resource-based policy to a specific resource, for example an S3 bucket policy and allow another account to access it.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: Or the second option is to use a role as a proxy for this.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: What do I mean?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 5:
- Concepts: Identity Lifecycle
- Services: IAM Roles
- Key Insights: Well, we can have a user in account A, and we create a role in account B that allows us to access the Amazon S3 bucket in account B.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 6:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies
- Key Insights: The other option is to actually attach an S3 bucket policy of the Amazon S3 bucket in account B To allow the user in account A to access it.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So they look similar, but there are a few differences.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 8:
- Concepts: Identity Lifecycle
- Services: IAM Roles
- Key Insights: The first one is that when you assume a role would it be from a user application or service.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: Any type of original permissions are going to be given up and we're going to take only the permission assigned to the role.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Access Boundary Controls, Authorization Model, Identity Lifecycle
- Services: IAM Policies
- Key Insights: When you're using a resource-based policy the principle doesn't have to give up his permissions because just the resource policy will allow the user to do a specific action.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So an example of where this becomes very important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: For example, you have a user in account A and you need to do at the same time a scan of a DynamoDB table in the same account A and then send the output to an industry bucket in account B.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: Access Boundary Controls, Authorization Model
- Services: IAM Policies
- Key Insights: In this case, resource-based policy will make your life a little bit easier.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 14:
- Concepts: Access Boundary Controls
- Services: IAM Policies
- Key Insights: So resource-based policies are supported by so many resources on AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You have S3 buckets, SNS topics, SQS queues extra, extra, extra.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 16:
- Concepts: Authorization Model, Identity Lifecycle, Temporary Credential Strategy
- Services: AWS IAM, IAM Roles
- Key Insights: So to summarize, IAM roles are going to be very helpful to give temporary permissions for a specific task and they will allow a user and application to perform many actions in a different account than the one you have When you are assuming an IAM role, The permissions will expire over time.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal; Authorization decision-path signal.

Line 17:
- Concepts: Access Boundary Controls, Authorization Model
- Services: IAM Policies
- Key Insights: Resource-based policy on the other end are used to control access to specific resources from a resource centric point of view.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So the resource controls who can access it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: Access Boundary Controls, Authorization Model
- Services: IAM Policies
- Key Insights: This also allows cross account access very easily and it's a permanent can authorization as long as it's still in the resource-based policy.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So if you take an example of Amazon Event Bridge for example, when the rule runs, it needs permission on the targets.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 21:
- Concepts: Access Boundary Controls, Authorization Model
- Services: IAM Policies
- Key Insights: So there is some targets that allow resource-based policies such as Lambda functions, SNS topics, SQS queues CloudWatch Logs, API Gateway.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 22:
- Concepts: Access Boundary Controls, Authorization Model
- Services: IAM Policies
- Key Insights: So, in that case we have an Eve bridge rule and the Lambda will have, for example a resource-based policy that allows Eve Bridge to invoke it.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: That's one way of doing things.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 24:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: The other way that Eve Bridge can work is that the IAM role may be needed.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: For example, if the target is a Kinesis data stream or systems manager run command or an ECS task, in that case the event bridge rule is going to assume an IAM role to make that API call onto the target service.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 26:
- Concepts: Access Boundary Controls, Organization Governance
- Services: AWS Organizations, IAM Policies
- Key Insights: On top of it, you can use the principle org ID condition in your resource policies to restrict access to accounts that are all members of the same organization.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 27:
- Concepts: Authorization Model, Identity Lifecycle
- Services: AWS Organizations
- Key Insights: So it's very simple On your S3 bucket you just create and allow, put object and get object where the principle org ID is equals to the Org ID You have and any member accounts can access your S3 buckets but user outside your organizations or accounts outside your organizations cannot.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: So it's a very common way of using resource policies.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: So another example of resource policies is, for example for cross account access.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 30:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Here we have two accounts, one SQS queue and an EC2 instance.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 31:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And the EC2 instance is polling for messages.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 32:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: And so here we have an SQS queue access policy that is going to allow all of the accounts so 1 1 1 2 2 2, 3 3 3 to do SQS receive message on the queue.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 33:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is necessary.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 34:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then the EC2 instance, of course itself must have enough permissions to also do the message polling on account A.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 35:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: An another example is to publish S3 event notifications to an SQS queue.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 36:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So here we upload an object into the S3 bucket and the message is sent into the SQS queue.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 37:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: In that case, again, we can do a queue access policy that allows the source ARN to be a bucket.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 38:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So here we're using a source ARN because it is a service to service type of communication.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 39:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Then we can have string equal source account to identify the bucket owner account id and then we have the action SQS send message as authorized.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 40:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So hopefully that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 41:
- Concepts: Access Boundary Controls
- Services: AWS IAM, IAM Policies, IAM Roles
- Key Insights: You start seeing the difference between resource-based policies and IAM roles and several examples of how it works within the same accounts or cross accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 42:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/130_ABAC (Attribute based access control).txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: ABAC
- Key Insights: So let's look at ABAC or Attributes Based Access Control.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is a newer kind of way of doing access in AWS but it makes a lot of sense.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 3:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So let's say you have a lot of users and a lot of AWS resources.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Where you can do is that you can authorize each user to access specific resources but that can become very complicated to manage.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: The other option is to use fine word permissions based on user attributes.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 6:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So for example, you say a user belongs to a department, a user belongs to a specific job, a user belongs to a specific team.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Roles
- Key Insights: And then instead of creating IAM roles for every team, you're going to use attributes based control to group attributes and identify which resources a set of user can access.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: How do we have these attributes?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Well, by using tags.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 10:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: And so we are going to tag the users, and we're going to tag the resources, and we're going to create an IAM permissions to see if they match.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies
- Key Insights: So this is very helpful in rapidly growing environment because you can add resources and tag them and don't have to edit the IAM policies.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's take the example of these two resources are tagged in red, these are tagged in green, and then the last ones are tagged in blue.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: Authorization Model, Identity Lifecycle
- Services: AWS IAM, IAM Policies
- Key Insights: And then we tag the user in red, in green, and in blue with the correct IAM policy.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 14:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Then we make sure that the user A, can only access the resources tagged in red.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 15:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: The user B, tagged in green and the user C, tagged in blue.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And that scales a lot and it's much easier.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So to give you a concrete example of how tags are used for security, let's take an example of an EC2 instance.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And this EC2 instance has an owner, user C, and another tag called Access Project equals Star Projects.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 19:
- Concepts: Authorization Model, Identity Lifecycle
- Services: AWS IAM, IAM Policies
- Key Insights: Now we're going to create an IAM policy and the IAM policy is going to be attached to all the users.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 20:
- Concepts: Access Boundary Controls, Authorization Model, Identity Lifecycle
- Services: AWS IAM, IAM Policies
- Key Insights: And here we're saying that there is a condition in this IAM policy for start and stop instances and we're saying that we want the resource tag of key owner to be equals to the username of the user and also want to have the access project tag to be equal to the same principle tag that has attached to the user for the key access projects.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it's a bit more complicated.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 22:
- Concepts: Authorization Model, Identity Lifecycle
- Services: AWS IAM, IAM Policies
- Key Insights: We have IAM policy variables in there but basically what that means is that if you do attach the same tag, Access Project equals Star Project to user C, then automatically it's going to be allowed to access the EC2 instance because the access projects tag matches for user C and the EC2 instance.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 23:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: But then for user A or user B, which have a different tag, then it doesn't match and the access is denied.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 24:
- Concepts: Identity Lifecycle
- Services: ABAC, IAM Roles
- Key Insights: So if you wanna compare ABAC and RBAC, so role based access control will define fine grain permissions based on the user role or function.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you have administrators or DB admins or DevOps.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: And you can create different policies for different job functions.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 27:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: Disadvantage that when you want to create new resources, you may have to update your policies.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 28:
- Concepts: Authorization Model, Identity Lifecycle
- Services: ABAC, AWS IAM, IAM Policies
- Key Insights: If you're using attribute based access controls using tags, then the advantage is that you can scale permissions easily because you can just create new resources, tag them appropriately, and you don't need to update the underlying IAM policy of your users.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then, the permissions are granted automatically based on these attributes.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 30:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: So you require fewer policies, you don't need to create different policies for different job functions.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 31:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And on top of it, you can get some users attributes directly from corporate directories.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 32:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: For example, SAML 2.0 IDP or a Web IDP.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 33:
- Concepts: IAM Domain Operational Context
- Services: ABAC
- Key Insights: So hopefully you now understand the power of attribute based access control.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 34:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you like this lecture and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/131_IAM MFA.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: So, now let's talk about MFA or Multi-Factor Authentication.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So users have access to your account and they can possibly change configurations or delete resources in your accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: And so you want to make sure that you are going to protect your Roots account and your IAM users.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: So, MFA implies that you have a password you know to log into AWS and then a security device you own that's going to give you a code that allows you to do the login.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, Alice has a password and then thanks to the device you own, for example, your phone or a security key or whatever, then you're going to get a successful login.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: So the main benefit of MFA is that even if you lose your password, then the account is not compromised.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: The hacker will still need to be able to access your MFA device which is very unlikely, to access your accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, you have different options.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: In AWS, you have a virtual MFA device which is something that Google Authenticator or Authy.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And you can have support from multiple tokens on a single device.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, you just register the service and then it gives you a code.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: Or you can use, for example, a security key such as a YubiKey, which supports for multiple root and IAM users using a single security key.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: You also have the hardware type of MFA devices.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: So for example, one by Gemalto which gives you a code or you have the hardware Key Fob MFA device for AWS GovCloud which is provided by SurePassID and again gives you a code that you just enter while logging in.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: So, why do I talk about MFA?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: Well, because thanks to MFA we can have conditions and the first one is around Amazon S3 - MFA Delete.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 17:
- Concepts: Identity Lifecycle
- Services: MFA
- Key Insights: So if you enable MFA Delete, you force users to generate a code on a device before doing important operations on Amazon S3.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: So MFA can be required, for example, to permanently delete an object version because this is a destructive type of operation or suspend versioning on the bucket.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: But MFA for MFA Delete is not going to be required for enabling versioning or listing deleted versions.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So lesser, less dangerous API calls, let's say.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: So to use MFA Delete, you must first enable versioning on the bucket and only the bucket owner so the root accounts can enable or disable MFA Deletes.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Multi-account governance signal.

Line 22:
- Concepts: Access Boundary Controls
- Services: AWS IAM, MFA
- Key Insights: The other way to use MFA is around IAM conditions with the condition MultiFactorAuthPresent.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 23:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: So here we have an IAM policy which allows everything on EC2, but then the second statement is quite interesting.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 24:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, we're saying that we cannot stop or terminate the instances if we have MultiFactorAuthenticationPresent false.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: So that means that if we don't have MFA, we cannot stop or terminate instances.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 26:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 27:
- Concepts: Identity Lifecycle
- Services: MFA
- Key Insights: It's very secure because, well, you want to make sure your users are authenticated using MFA.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 28:
- Concepts: Access Boundary Controls
- Services: (none explicit)
- Key Insights: So, we'll use this Boolean condition and then we'll restrict very dangerous operations such as stopping an instance or terminating an instance.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And it's compatible with the Console, but also compatible with the CLI.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 30:
- Concepts: Access Boundary Controls
- Services: (none explicit)
- Key Insights: There is another condition we can use such as MultiFactorAuthAge.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 31:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, this is what it would look like.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 32:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You would have MultiFactorAuthPresent and also MultiFactorAuthAge in your conditions.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 33:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: And this allows you to grant access only within a specified time after the MFA authentication.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 34:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So in this example, we're using the numeric less than and we're saying, "Hey, if the multifactor of age is less than 300 seconds, then you should allow it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 35:
- Concepts: Access Boundary Controls, Authorization Model
- Services: (none explicit)
- Key Insights: But if it's more than 300 seconds, then don't allow it." So, this is how you would use this condition.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 36:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: You also have a very important edge case with MFA.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 37:
- Concepts: Identity Lifecycle
- Services: AWS IAM, MFA
- Key Insights: You're going to get sometimes an error message saying, "Not Authorized to Perform the iam:DeleteVirtualMFADevice." So this happens even though the user has the correct permissions to delete this virtual MFA device.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 38:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, you make an API call to delete it and then you're not authorized.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 39:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, this is a very small edge case on AWS, but you need to know about it for the exam.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 40:
- Concepts: Identity Lifecycle
- Services: MFA
- Key Insights: And this happens if someone began assigning a virtual MFA device to a user, but then canceled the process.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 41:
- Concepts: Identity Lifecycle
- Services: MFA
- Key Insights: So for example, you created an MFA device for a user but you never activated it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 42:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: Then what you need to do is of course delete the existing MFA device and then associate a new device.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 43:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies, MFA
- Key Insights: And to prevent this thing, you can have a policy that allows a user to delete their own MFA device if they are already authenticated with MFA.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 44:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, if you are getting into this kind of issue then the only option out of it is to have the administrator to use the CLI or the APIs of AWS to remove the existing but deactivated device.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 45:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: So, the administrator is the one to delete the virtual MFA device and then you're unstuck.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 46:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, it's a weird one I know, but something that can come up in the exam and that's the answer.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 47:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: The admin has to delete the virtual MFA device.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 48:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 49:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 50:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/132_IAM Credentials Report.txt

Line 1:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So here is a short lecture on the IAM credentials report.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 2:
- Concepts: Identity Lifecycle
- Services: AWS IAM, MFA
- Key Insights: So this report gives you the IAM users and the status of their password, their access keys, and their MFA device.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: It's just a CSV document that you can download using the IAM Console, the API, the CLI, or the SDK, and it's going to help you in auditing and compliance.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It's going to be generated as often as once every four hours, and you need to do an API call to actually retrieve the content of that file.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is something you should know about, but there is a better way to do things if you want to manage aged access keys.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's say, for example, that you want to detect whenever an access key is going to be old.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: What you can do is that you can set up AWS Config, with the access-key-rotated rule, to be triggered for keys that are over 90 days old.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then from this, you can trigger an SSM automation to actually rotate these access keys, for example, and then send a notification to Jira, Slack or API endpoints or notifications into an SNS topic for a master security account that you have.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So the exam may ask you, "Do you prefer Config or do you prefer the IAM credentials report to automate, you know, rotating and alerting on old keys?" Well, the answer is absolutely use Config, but still you should know about the IAM credentials report.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/133_IAM Roles and PassRole to Services.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: So let's have a look at IAM Roles for Services.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: So we know that some services will need to perform actions on our behalf, and so therefore we must assign permissions to AWS services, and we are using for this IAM roles.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we know this for a fact.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: Whenever we have an EC2 instance that wants to access the APIs of AWS, we must assign it an IAM role and then it will be able to access and allocate the DynamoDB table and so on.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: So I'm not telling you anything new here, I hope, so the common roles will be EC2 instance roles, Lambda function roles, roles for CloudFormation but really I think pretty much every AWS service at some point requires to have a role being created.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: The other thing you should know about role is how to pass a role to AWS services.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 7:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Roles
- Key Insights: So you can grant a user to pass an IAM role to a service and that's maybe something that you do not know.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Roles
- Key Insights: So with this permission, you can ensure that only the approved users can configure an AWS service with an IAM role that grants permissions.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 9:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Roles
- Key Insights: So for this, for the user to be able to pass a role to a service you have the IAM action, API call called iam:PassRole.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And this can be assigned, for example, to a user.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: And in this example we have the GetRole and the PassRole assigned to a very specific role.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we have resource and then we have a star.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we match all roles that have the prefix EC2 roles for.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And so that means that this user will be only able to PassRole that starts with EC2 roles for.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And so we have effectively restricted which roles a user can pass to EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So PassRole is not an API call on its own so you will not have any CloudTrail logs generated out of it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: But instead you can review the CloudTrail log for the API call that actually created or modified the resource receiving the target IAM role.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: So if you create an EC2 instance and you assign it an IAM role then this is where you will find who assigned which IAM role to that EC2 instance.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/134_IAM Roles Anywhere.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: So, now let's talk about IAM Roles Anywhere.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS IAM, AWS STS, IAM Roles
- Key Insights: So, the idea is that you want to attach IAM roles to your workloads within AWS, but also to workloads outside of AWS with temporary credentials.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So for example, you have an on-premises server or you have containers, applications or multi-cloud workloads, anything that runs outside of AWS cloud.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies, IAM Roles
- Key Insights: So, the idea is that you want to share the same IAM Roles and Policies for both the inside and outside workloads of AWS for management purposes and for security purposes.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: This guarantees that you don't need to store and manage long-term AWS credentials.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, AWS Access Keys on on-premises servers.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: And traditionally, this is what you had to do before the feature of IAM Roles Anywhere.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, how does that work?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: Well, we're going to create a Role A that we want to give the on-premises server A access to.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: And this Role A is going to have a profile.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so this is going to define the permissions.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: So, we're going to create an AWS Private CA or Certificate Authority, and we're going to have a, establish a trust between the IAM Roles Anywhere and this Private CA.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This allows us to generate certificates.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so we are going to generate a certificate from this Private CA and we're going to store this certificate directly onto the on-premises server A.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: Now everything is in place because thanks to this certificate and using the right API calls directly into IAM Roles Anywhere, the on-premises server will be able to prove its identity to the AWS cloud and then assume a role and therefore endorse the permissions of the role.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And will be able to access the bucket A it has access to.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: If you have another on-premises server, the best practice is not to reuse the same certificate, but instead to generate a new certificate, again from the Private CA called Certificate B.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: And this is going to, again, assume another role, Role B, and then from there access another bucket.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: And of course, because you use AWS permissions, the on-premises server A cannot access Role B and the permissions of the Role A cannot access Bucket B.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, you have full separation of identities and, as well, security.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 21:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Roles
- Key Insights: So, what's the difference you say, for example, between using IAM Users and IAM Roles Anywhere for on-premises server access to AWS?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 22:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: Well, traditionally you only had to use IAM Users.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The idea is that you would create access keys and these keys really, they never expire.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 24:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You can make them expire in AWS, but it's not the default.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: These keys can also get leaked.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 26:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, someone will post the keys on GitHub, logs or backups.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 27:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And rotating this key can be very painful.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 28:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: Auditing is super messy, and actually IAM Users are made for users, indeed, real human users.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: Instead, we use IAM Roles Anywhere and we're going to use the X509 certificates coming from this Private CA, and this certificate is the identity proof that the server claims it is who it claims to be.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 30:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS
- Key Insights: So, you get temporary credentials by using the correct STS API call.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 31:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: These credentials expire automatically, so after one year, for example, they'll be gone.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 32:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And in case you want to expire the certificate, you can rotate it after expiration, or you can also manually expire certificates from within the Private Certificate Authority.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 33:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And this solution is made for on-premises servers or really anything that is outside of AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 34:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, that's it for this lecture, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/135_IAM Trust Policies.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies
- Key Insights: So now let's talk about IAM trust policies.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies, IAM Roles
- Key Insights: So trust policies defines who is allowed to assume an IAM role, and we've overlooked them a lot, but every IAM role will have a trust policy and a permission policy.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 3:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies, IAM Roles
- Key Insights: So the permission defines what the IAM role can do, and the trust policy defines who is allowed to assume this IAM role.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 4:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So here is the default trust policy.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 5:
- Concepts: Authorization Model, Temporary Credential Strategy
- Services: AWS STS
- Key Insights: So you have this allow principal with the account number and then root action, sts:AssumeRole.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal; Authorization decision-path signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: So this allows any identity in this account to assume the role, but you can have more restrictive steps.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 7:
- Concepts: Access Boundary Controls
- Services: IAM Roles
- Key Insights: For example, if you have a condition to the previous statement and you say, "I want MultiFactorAuthPresent to be true, then this allows any identity to assume the role as long as the multifactor authentication mechanism is present, which is an enhanced security.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But also for example, when you create EC2 instance profile roles, we have a service principal.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: So instead of principal being AWS root, we have now principal being Service ec2.amazonaws.com, which is saying that only the EC2 instances or the EC2 service can assume this role, and you can have this for so many things.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 10:
- Concepts: Authorization Model
- Services: IAM Policies, IAM Roles
- Key Insights: So as soon as a service needs to assume a role, you will find in the trust policy the fact that the principal and the service will be matching that service.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies, IAM Roles
- Key Insights: So it's important to have a look at this because the exam make show you IAM policies or may ask you about trust policies, and you need to know that trust policies can be restricting, can be used to restrict who can access this IAM role.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/136_[CCP_SAA_DVA_SOA] IAM Security Tools.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: We are nearing the end of the section, but first let's talk about the kind of security tools we have in IAM.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So we can create an IAM Credentials Report and this is at your account-level.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: This report will contain all your accounts users and the status of their various credentials.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We'll be actually generating it right now and having a look at it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: The second security tool we're gonna use in IAM is called IAM Access Advisor.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 6:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: This one is at the user-level and the Access Advisor is going to show the service permissions granted to a user and when those services were last accessed.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 7:
- Concepts: Identity Lifecycle, Least Privilege
- Services: (none explicit)
- Key Insights: This will be very helpful because we are talking already about the principle of least privilege, and so using this tool, we're able to see which permissions are not used and reduce the permission a user can get to be inline with the principle of least privilege.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I will see you in the next lecture to show you how to use the security tools.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/137_[CCP_SAA_DVA_SOA] IAM Security Tools - Hands On.txt

Line 1:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So let's generate a credentials report.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 2:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: For this, on the left hand side, I just click on Credential report and then Download credential report which is going to create a CSV file.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now this CSV, because I'm using a training account, is not fascinating, but as we can see we have two rows in it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We have my root account and my account name, stephane.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: We can see when the user was created, if the password was enabled, when the password was last used and last changed, when is the next rotation to be expected if we do enable password rotation?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: Is MFA active?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we can see it's active from my root accounts but it is not active for my Stefane accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Then access keys, are they generated or not?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Yes, they're created for my Stefane account, but not for my root account, and when they were last rotated, last used and so on, you can get more information about other access keys and certificates and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So this report is extremely helpful if you want to look at some users that haven't been changing the password, or using it, or their account, it could be giving you a great way to find which users that deserve your attention from a security standpoint.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: Now let's have a look at IAM Access Advisor.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 12:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: For this, I'm gonna go to my user, stephane, and then on the right hand side, I click on Access Advisor.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 13:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And Access Advisor is going to show me which services were accessed by my user and when.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: Identity Lifecycle
- Services: AWS IAM, AWS Organizations
- Key Insights: So as you can see, organizations, health, identity and access managers with IAM Service, EC2, Resource Explorer, were all accessed by my user.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So I use my user to access these things by clicking in the UI, but some services were not accessed, for example, Alexa for Business or AWS App2Container and so on.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 16:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So using Access and Advisor, you can actually have a look at whether or not the user has the correct permissions.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And it turns out that maybe based on this access, have 37 pages of this, maybe the user needs access only to a few services but not all of them.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And this UI allows you to drill down.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 19:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: On top of it, if a user accesses a specific service for example Amazon EC2, we are told that this is the administrator access that granted access to this service.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 20:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So to summarize, Access Advisor becomes very helpful when you need to do granular user access permissions on AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/138_IAM Access Analyzer.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Access Analyzer
- Key Insights: So now let's discuss IAM Access Analyzer.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: And this is a service within the IAM console that is used to find out which resources are going to be shared externally.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: So this applies with S3 buckets, IAM roles, KMS keys, Lambda functions and layers, SQS queues, and Secrets Manager Secrets.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: So the idea is that some of these, obviously, can have resource policies attached to them, or they can be shared with other accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But sometimes you forget about sharing these items and it can be a security risk for your company because some of the data may be accessible by external sources.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: And so, you define a zone of trust, which is going to correspond to your AWS accounts or your entire AWS organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then anything outside your zone of trust that has access to the resources said above are going to be reported as findings.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: Identity Lifecycle
- Services: IAM Roles
- Key Insights: So for example, we have an S3 bucket, we can share it with a specific role, a user, an account, an external client by IP, or a VPC endpoint.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: Identity Lifecycle
- Services: IAM Roles
- Key Insights: But if we define the zone of trust to be our accounts and only the role, the user, and the VPC endpoints are within our accounts, then the accounts and the external clients are going to be flagged as a finding, and you can look at it within the console to take action if you think this is a security risk.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Access Analyzer
- Key Insights: There are other sides of IAM Access Analyzer you need to know about.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Access Analyzer, IAM Policies
- Key Insights: So first of all, you can do policy validation on IAM Access Analyzer.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 12:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So you can validate your policy against the policy grammar and best practices.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: You're going to get general warnings, security warnings, errors, and suggestions, as well as actionable recommendations on how to improve your policies.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Access Analyzer, IAM Policies
- Key Insights: But also you can generate policies directly from IAM Access Analyzer.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: And that's really cool because it's actually going to generate an IAM policy tailored to your access activity based on the API calls that have been made.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example of a Lambda function doing API calls into an S3 bucket or a Kinesis Data Stream.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Then, of course, these API calls are going to be logged into CloudTrail.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Access Analyzer, IAM Policies
- Key Insights: Now, what's going to happen is that the CloudTrail logs are going to be reviewed by the IAM Access Analyzer feature to generate a policy and then is going to get fine-grained permissions with the appropriate actions and services.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Access Analyzer
- Key Insights: So IAM Access Analyzer review the logs.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And it's up to 90 days of logs.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 21:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: And then, out of it, will generate an IAM policy that is going to be most likely security best practice because it will encompass all the API calls that your application has been making over the past 90 days.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/139_[SOA] STS Overview.txt

Line 1:
- Concepts: Temporary Credential Strategy
- Services: AWS STS
- Key Insights: So now let's talk about AWS STS which is a security service at the backbone of all of AWS.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 2:
- Concepts: Temporary Credential Strategy
- Services: (none explicit)
- Key Insights: So it's called a Security Token Service and it allows to grant limited and temporary access to AWS resources.
- Hidden/Implicit Meaning: Constraint or limitation signal; Authentication and trust-chain signal; Multi-account governance signal; Authorization decision-path signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you have tech tokens and they can be valid up for to one hour or more and they must be refreshed when they're invalid.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 4:
- Concepts: Temporary Credential Strategy
- Services: AWS STS
- Key Insights: So when you want to get these tokens you must first issue an API call into the STS service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Authentication and trust-chain signal; Multi-account governance signal.

Line 5:
- Concepts: Temporary Credential Strategy
- Services: AWS STS, IAM Roles
- Key Insights: So when you assume a role, for example, this is an STS AssumeRole API call.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 6:
- Concepts: Identity Lifecycle
- Services: IAM Roles
- Key Insights: What's going to happen is that you assume a role within your accounts for enhanced security so that you have credentials that will be invalidated after a while, or you can assume a role in a Cross Account Access type of setting, to assume a role in a target account to perform actions there.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So AssumeRole gives you credentials and then they will be expired at some point.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So you need to AssumeRole when credentials expire.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You can also AssumeRoleWithSAML.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 10:
- Concepts: Federated Authentication, Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS, SAML/OIDC Federation
- Key Insights: So that means that your users are logged in with SAML and then you extend that SAML token to get credentials from STS, you first must configure of course, STS, to be able to exchange and verify these SAML tokens.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Authentication and trust-chain signal; Multi-account governance signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You can also do AssumeRoleWithWebIdentity.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: Federated Authentication, Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS, SAML/OIDC Federation
- Key Insights: So this way when the users are identified with an identity provider such as Facebook Login Google Dot login, or anything OIDC compatible, and then they're going to exchange these credentials for, again, credentials of STS.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 13:
- Concepts: Temporary Credential Strategy
- Services: (none explicit)
- Key Insights: They're gonna be temporary.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: Amazon Cognito
- Key Insights: And now this API call is sort of deprecated and AWS is going to recommend for you to use Cognito instead.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You also have GetSessionToken.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 16:
- Concepts: Identity Lifecycle
- Services: MFA
- Key Insights: So this is when you're doing MFA from a user or an account root user and you want to get actual credentials after having logged in with MFA.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: Temporary Credential Strategy
- Services: AWS IAM, AWS STS, IAM Roles
- Key Insights: So when you're using STS to assume a role, you must first define an IAM role within your account or cross account, and then you define which principles can access this IAM role.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Authentication and trust-chain signal; Multi-account governance signal.

Line 18:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS IAM, AWS STS, IAM Roles
- Key Insights: Then you're going to use the STS service, to retrieve credentials, and then impersonate the IAM role you have access to, for example, using the AssumeRole API.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 19:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS
- Key Insights: So again, as I said, you have temporary credentials.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 20:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS, IAM Roles
- Key Insights: So if you have a look here, for example a user wants to access a role in the same or another account is going to do AssumeRole API to STS.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Of course he must be authorized to perform that API call.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 22:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS, IAM Roles
- Key Insights: Then STS is going to look at the permissions, and then say, "Okay, you're good to go." Here are some temporary credentials, and then these credentials are going to be used, and we will have assumed the role, Thanks to these credentials.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 23:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS IAM, AWS STS
- Key Insights: So if we have a look at Cross-Account Access with STS, let's say we have a Dev account and a Prod account and we have an S3 bucket in Prod that we want to access from IAM users in a group in Dev.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 24:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: So the first thing we have to do is to create an IAM role in the production account And this IAM role is going to have access to the S3 buckets.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Roles
- Key Insights: Next, we grant in the IAM group permissions, to assume the UpdateApp IAM role from the other accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS, IAM Roles
- Key Insights: So we're going to be able to assume this role and then we're going to get back STS Role Credentials.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 27:
- Concepts: Authorization Model, Identity Lifecycle
- Services: (none explicit)
- Key Insights: And then these credentials will allow us to access the bucket in the target accounts.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: So this IAM role, that we define in the production accounts, must also of course, authorize the development accounts to assume it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 29:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Roles
- Key Insights: And so if you have an IAM group of testers that are not authorized to assume this role then they cannot access your production account.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 30:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS, IAM Roles
- Key Insights: So you've seen the process of using STS to assume a role and get temporary credentials.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 31:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/140_STS Version 1 & Version 2.txt

Line 1:
- Concepts: Temporary Credential Strategy
- Services: AWS STS
- Key Insights: So there are two versions of STS you need to know about.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 2:
- Concepts: Temporary Credential Strategy
- Services: AWS STS
- Key Insights: You have STS Version 1 and STS Version 2.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 3:
- Concepts: Temporary Credential Strategy
- Services: AWS STS
- Key Insights: So by default, STS Version 1 is available as a global single endpoint at this URL.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 4:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS
- Key Insights: And so when you're a user, you're going to make an API call into STS.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 5:
- Concepts: Temporary Credential Strategy
- Services: AWS STS
- Key Insights: You're going to use it's global endpoint and you're going to get back an STS Token v1.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 6:
- Concepts: Temporary Credential Strategy
- Services: AWS STS
- Key Insights: And this global endpoint supports only the regions that are enabled by default in your accounts, but you can actually have a setting to change and enable "All Regions" for STS.
- Hidden/Implicit Meaning: Constraint or limitation signal; Authentication and trust-chain signal; Multi-account governance signal.

Line 7:
- Concepts: Temporary Credential Strategy
- Services: AWS STS
- Key Insights: The other option is to have STS Version 2.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 8:
- Concepts: Temporary Credential Strategy
- Services: AWS STS
- Key Insights: And the reason why we have STS Version 2 is that the Version 1 tokens, as I said, they do not work with for the new AWS Regions.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, if you consider the me-south-1 region, it's not enabled by default.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: Temporary Credential Strategy
- Services: AWS STS
- Key Insights: And so to get a token for that region, you must use, instead, a Regional STS endpoint, and that's available in all regions.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Authentication and trust-chain signal; Multi-account governance signal.

Line 11:
- Concepts: Temporary Credential Strategy
- Services: AWS STS
- Key Insights: So here for the me-south-1 region, we have a STS Regional endpoint, and if we do a query onto it, we're going to get an STS token in the Version 2 format.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So whether we have a global endpoint and a regional endpoint, well, if you're using a regional endpoint you're going to get reduced latency.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You're going to get built-in redundancy.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And you can increase the session token validity.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, by the way, the tokens you are going to obtain through a regional endpoint are still going to be valid for all the AWS Regions.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So overall, it's much better for you to use token Version 2 than token Version 1.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So if you have an error like this, which says, "Hey, you cannot, for example, describe your instances because AWS was not able to validate the provided access credentials." You have two options.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 18:
- Concepts: Temporary Credential Strategy
- Services: AWS STS
- Key Insights: This is an issue with STS.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 19:
- Concepts: Temporary Credential Strategy
- Services: AWS STS
- Key Insights: The first one is to use the Regional STS Endpoint in any region, which is going to return the STS Tokens Version 2.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then you use the closest regional endpoint for the lowest latency.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 21:
- Concepts: Temporary Credential Strategy
- Services: AWS STS
- Key Insights: The second one is to use the global endpoint, which is going to give you Version 1 Tokens, but you can actually change the setting on the global endpoint to start issuing you STS Tokens Version 2.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It's an exam question.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 24:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/141_STS External ID.txt

Line 1:
- Concepts: Temporary Credential Strategy
- Services: AWS STS
- Key Insights: So we're still talking about STS and now we're talking about security of the AssumeRole API.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So when you're using the AssumeRole API, you have the option to pass in what's called an external ID.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And this external ID has a purpose.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It's a security mechanism.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 5:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies, IAM Roles
- Key Insights: When you have a external ID in the AssumeRole IAM policy, then the role can only be assumed if the API call made it to assume that role also contains the external id you have defined, for example, in this example 56789.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It solves what's called the Confused Deputy problem.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And this problem I'm going to explain you in the next slide.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This prevents you from having any other customer from tricking, for example, a 3rd party into accessing your resources.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it's quite confusing, I know, but hear me out.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's say, for example, that you have a deputy and it's a 3rd party account and you give access to the deputy to your account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, it needs to be able to manage resources in your accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: So your accounts may have an IAM role and use this IAM role trust the 3rd party to assume that role.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: Now, an IAM user that's, for example, we're not using external ID for now, we does not pass external id.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: You're going to tell the deputy, "Hey, please assume my role here is the role ARN." And then the deputy is going to assume the role and then access the role and your resources within your account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And we're very happy, right?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But there's a catch with this.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: If you have another account, another AWS account, that is going to tell the deputy, hey, can you access my ARN role, but this time the ARN is not coming from its own accounts coming from our accounts, the example ARN, then the deputy is going to assume the role and access the resources.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so you may say in which type of use case can this be exploited?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Well, imagine that the deputy, for example, is a software as a service company and the software's service company has access to many different accounts to perform its roles and its job functions.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 20:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And let's say I am a user.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: And I guess what is your IAM role in your accounts?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: Because I know your account ID and I know your role name.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Then I will connect to this software as a service and I will pass in your ARN, and click on connect.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 24:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then the SAS will give me access to your account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This is obviously not something you want, right?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is what's called the confused deputy.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 27:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so what's going to happen is that we're going to use external ID to fix that problem.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So here the deputy is also going to generate an external id, for example, 5678 for our accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: And so the IAM role is going to be edited so that the IAM role trusts the third-party only if the external ID is equal to 56789.
- Hidden/Implicit Meaning: Constraint or limitation signal; Authentication and trust-chain signal.

Line 30:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So in the use case of what we did before, we're going to also use our own external ID because we know it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 31:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we can do the AssumeRole with the proper external ID and then we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 32:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: But if the other account, which has its own external ID, by the way, is trying to guess our ARN, it doesn't know our external id so it's going to pass a random external ID or its own and then we're not going to be able to assume that role.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 33:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies, IAM Roles
- Key Insights: So this external ID is going to be generated by the deputy and then you add it in your trust policy of the IAM role and it will solve this confused deputy problem.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 34:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So hopefully that makes sense and this will allow you to answer maybe one exam question.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 35:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/142_STS - Revoking IAM Role Temporary Security Credentials.txt

Line 1:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS IAM, AWS STS, IAM Roles
- Key Insights: So now let's talk how we can revoke IAM role's temporary credentials.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 2:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So when you have a session with IAM, for example, a long session of 12 hours, in case the credentials are exposed, they can be used for the duration of the session.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that means that if you leak them, then someone can use them, and this is bad.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Roles
- Key Insights: So what we want to do is that if they're exposed, we want to immediately revoke all permissions to the IAM role's credentials before a certain time.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 5:
- Concepts: Authorization Model, Identity Lifecycle
- Services: AWS IAM, IAM Policies, IAM Roles
- Key Insights: And we can do this with the console and in the backend what's going to happen is that AWS is going to attach a new inline IAM policy onto the IAM role that is going to deny everything if the token is too old which will force users to reauthenticate.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 6:
- Concepts: Access Boundary Controls
- Services: (none explicit)
- Key Insights: So this is where the DateLessThan is going to be used as a condition.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 7:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies, IAM Roles
- Key Insights: So this policy is going to be attached to your IAM role is gonna say deny everything if the token issue time is less than right now.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 8:
- Concepts: Authorization Model, Identity Lifecycle
- Services: (none explicit)
- Key Insights: And what's going to happen out of it is that your users that had a token issued before right now will not be able to do any actions on AWS because you have now an explicit deny.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 9:
- Concepts: Authorization Model, Identity Lifecycle
- Services: AWS IAM, IAM Roles
- Key Insights: So it doesn't affect any user who assumed the IAM role after you revoke the sessions because, well, the token issue time is going to be greater than, so this deny section will never come into place.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 10:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So you don't need to delete this policy called AWSRevokeOlderSessions Policy.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You can leave it forever and you're fine.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: Authorization Model, Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS, IAM Policies
- Key Insights: So in case you have, as I said, a leaked credential, and you want to revoke these temporary credentials because an attacker had access to them, then you're going to, as an administrator, attach this AWSRevokeOlderSessions Policy and then automatically, the attacker will not have access anymore.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal; Authorization decision-path signal.

Line 13:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: It will not be able to use the credentials that have leaked.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 15:
- Concepts: Access Boundary Controls
- Services: (none explicit)
- Key Insights: That's the one time where you can use the token issue time condition in AWS.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/144_EC2 Instance Metadata Overview.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: EC2 Instance Metadata
- Key Insights: So now let's talk about the AWS EC2 Instance Metadata Service, also called IMDS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this service gives you information about an EC2 instance.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, it's hostname, the instance type, the network settings, and so on.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And how do we know about this?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Well, there is this special URL that you can access from within the EC2 instance itself, and it's called the metadata service.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is the URL right here: 169.254.169.254/latest/meta-data.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: EC2 Instance Metadata
- Key Insights: It's called the IMDS Service Endpoint.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so when you have an EC2 instance you can just perform Http request into it and get some information.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you can either use some CLI tools such as Curl or Web gets, or use the EC2 API from AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: EC2 Instance Metadata
- Key Insights: So the metadata inside of this IMDS service is going to be stored in key value pairs.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So when do you use this?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Well, it's very helpful when you want to be automating tasks such as setting up an instance hostname, configure networking or installing software.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: EC2 Instance Metadata
- Key Insights: So I'm gonna give you a couple of information around what can be obtained as of using the IMDS service.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you can get the ami-id, the block-device-mappings for your disks, the instance-id, the instance-type, the network.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You can get the hostname, the local-hostname the local-ipv4, the public-hostname, and the public-ipv4.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: You can get some information around Iam such as the InstanceProfileArn, and the InstanceId.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS, IAM Roles
- Key Insights: You can even get temporary credentials for the role attached to your instance.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: This is the magic behind Iam roles.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I will show you in a second in the diagram how that works.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 20:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: You can also get the placement information for your EC2 instance, such as the region has been launched in, the AZ it's been launched in, or the placement group name.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 21:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So for example, if you have a cluster or spread or a partition placement group, you have security groups so the names of the security groups that are attached onto the instance as well as any tags attached to the instance.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: EC2 Instance Metadata
- Key Insights: So as you can see from within the EC2 instance, you can get a lot of information from the Instance Metadata Service.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: So how does it work for the EC2 instance role?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 24:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: How does the EC2 instance actually obtain credentials?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 25:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Well, whenever you have an application on your EC2 instance that leverages the SDK or the CLI and makes an API call into AWS, the SDK itself or the CLI is going to make first a call into the security credentials part of the metadata service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 26:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS, EC2 Instance Metadata
- Key Insights: And then the IMDS service endpoint is going to be returning an access key id, a secret access key and an exploration in a token, which means that you have temporary credentials onto your EC2 instances.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 27:
- Concepts: Authorization Model, Identity Lifecycle, Temporary Credential Strategy
- Services: AWS IAM, AWS STS, IAM Policies, IAM Roles
- Key Insights: And these temporary credentials are allowed to do whatever you have assigned in terms of policy for the EC2 instance Iam role.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal; Authorization decision-path signal.

Line 28:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And this is the magic behind how EC2 instances actually get credentials to perform the API calls they need against AWS.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: EC2 Instance Metadata
- Key Insights: You may also want sometimes to restrict access to the EC2 Instance Metadata Service.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 30:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So two ways you can do it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 31:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Number one is to use local firewall rules which is going to disable access for some or all processes on your EC2 instance.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 32:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you can use IP tables for Linux or PF or IPFW for FreeBSD.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 33:
- Concepts: IAM Domain Operational Context
- Services: EC2 Instance Metadata
- Key Insights: So this is the kind of command you can have and you say, "Hey, reject any traffic going into 169.254." That 169.254. which is the URL for the EC2 instance metadata service.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 34:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Or you can simply turn off access using the AWS console or the CLI when you start an EC2 instance.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 35:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It's called HttpEndpoint equals disabled.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 36:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies
- Key Insights: And this is very important because this ap, this part, the HttpEndpoint equal disabled can come up sometimes in Iam policies.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 37:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Alright, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 38:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's talk about the difference between IMDSv1 and IMDSv2.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you have two versions.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The first version is accessible at this URL and the second version is more secure and is done in actually two steps.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The first one is to get a session token using headers and PUT.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This will be the kind of request you do so, you query the same IP, but this time the path is / latest / API / token And you do a PUT on there and you define a TTL for that token, so time to live.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then using the token you will get out of this API call.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You're going to use that token in IMDSv2 calls using headers.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So they're the same API calls as before but this time you add a header and the header is passing the token you had before as the AWS EC2 metadata token.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this may seem just like one extra step and that's it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But the version two has security implications that AWS is describing on their own blog.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I won't argue with it but you can have a long read if you want.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It's quite a long piece.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But the idea is that you have a newer version of IMDSv2 that's more secure and has two steps now.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And it's preferable to use IMDSv2 than IMDSv1.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So how do we require the usage of IMDSv2?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Well, it turns out that both versions are available no matter what they're enabled by default.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But then there's a CloudWatch metric called Metadata No Token that shows how much IMDSv1 is used.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Why is it called Metadata No Token?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Well, if you don't use a token to access the metadata service which is IMDSv1 then you're using Metadata No Token.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so therefore, if that metric is greater than zero that means that you are still using IMDSv1.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You can also, if you wanted to force Metadata version 2 at instance launch using either the console.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So there's an option when you start your EC2 Instance to say "Hey, I want V1 and V2" or "I want V2 only" where the token is required.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Or using the CLI saying "Hey, HTP tokens required" Again, remember tokens means IMDSv2.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 24:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Finally, when you create an AMI, you can also require IMDSv2 by using the command line option.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: EC2 Instance Metadata
- Key Insights: IMDS support V2 when registering that AMI.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 26:
- Concepts: Identity Lifecycle
- Services: IAM Roles
- Key Insights: There's also other ways you can do, so for example, you can make sure that the Role Credentials are retrieved for the EC2 instance is only from IMDSv2.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 27:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Well, how?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: Well when you have a roll delivered to your EC2 instance, now there is a IAM contacts key called the EC2 Role Delivery.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Which is going to be equal to 1.0 if you're using IMDSv1 and 2.0 if you're using IMDSv2.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 30:
- Concepts: Authorization Model, Identity Lifecycle
- Services: AWS IAM, IAM Policies, IAM Roles
- Key Insights: So if we have this policy that's attached to the IAM role of an EC2 instance and we say "Hey deny everything, if the EC2 role delivery is less than 2.0" What's going to happen is that if you are getting credentials for role delivery 1 then this denied statement is going to come into place and everything is going to be denied.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 31:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's one way of doing it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 32:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: The other way to protect only some resources, for example, would be to attach the same policy to an S3 bucket.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 33:
- Concepts: Identity Lifecycle
- Services: IAM Roles
- Key Insights: And what you would do is that any EC2 instance that would've obtained role credentials with IMDSv1 one would be refused into the S3 buckets.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 34:
- Concepts: Authorization Model, Organization Governance
- Services: IAM Policies, Service Control Policies
- Key Insights: And if you want to restrict an entire account for IMDSv2, then you can attach this very same policy as an SCP in your account and then you will force IMDSv2 to be used everywhere.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 35:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Otherwise API calls will be denied.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 36:
- Concepts: Authorization Model, Organization Governance
- Services: AWS IAM, EC2 Instance Metadata, IAM Policies, Service Control Policies
- Key Insights: So to prevent the launch of an EC2 two instance using old instance metadata, what you can do is that you can attach it as an SCP or an IAM policy, whatever you want, you can attach this and it says deny EC2 two run instances when metadata tokens is not equals to required.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 37:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So if we don't specify tokens then you cannot launch run instances.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 38:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 39:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Or if you have an instance that's already running you can modify the metadata option.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 40:
- Concepts: Authorization Model
- Services: EC2 Instance Metadata
- Key Insights: It's called modify instance metadata options API call for EC2, and you can say "Hey deny this API call" except if you are, for example an admin that has the ability to re enable IMDSv1.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 41:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So those are some options but you can definitely force IMDSv2 in several ways.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 42:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 43:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/288_IAM - Advanced Policies.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies
- Key Insights: So, now, let's talk about IAM conditions and what they can imply for your policies.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies
- Key Insights: So, just so you know, they apply to policies within IAM.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: Identity Lifecycle
- Services: IAM Policies
- Key Insights: So that could be for policies for users, that could be policies for your resource policies, for example, for your S3 buckets, or that could be endpoint policies, and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, really, anything.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So the first one is aws:SourceIP.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And this is used to restrict the client IP from which the API calls are being made.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 7:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So if we look at this one right here, it has a Deny star on everything if it's not an IP address.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then we have a list of two CIDRs, of two IP address ranges.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that means that unless the client makes an API call from within these IP addresses, then the API call is being denied.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And this can be used, for example, to restrict usage on AWS only to, for example, your company network and, therefore, guaranteeing that only your company can access your own AWS environment.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's one of these conditions.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Then we have aws:RequestedRegion.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is, again, something global because it started at the AWS, and it's restricting the region the API calls are made to.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So in this one we deny anything on EC2, RDS, and DynamoDB if we are in the region eu-central-1 or eu-west-1.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 15:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: Okay, so here we deny access to these services in the specific regions.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 16:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations, Service Control Policies
- Key Insights: And this can be applied more globally on their organization SCP to deny or to allow only access to a specific region.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Next, we have ec2:ResourceTag.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, as you can see now, the prefix of this tag is EC2, therefore, this applies to the tags on your EC2 instance.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: And, so, here we allow to start and to stop instances, okay, for any instance if the ResourceTag/Project is equal to DataAnalytics.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that means that if the EC2 instance has the correct tags, being Project and DataAnalytics, then we're good.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 21:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: But then, as you can see, there is the aws:PrincipalTag, and this applies to your user tag, okay.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 22:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So it's not an EC2 instance tag, this is a user tag.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 23:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And, so, your user must also be part of the department data to perform these actions.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 24:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We have aws:MultiFactorAuthPresent to force multifactor authentication.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you can have a look at it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: Authorization Model, Identity Lifecycle
- Services: (none explicit)
- Key Insights: But the user can do anything on EC2, but they can only stop and terminate instances if they have MultiFactorAuthenticationPresent, so this is a deny on the false.
- Hidden/Implicit Meaning: Constraint or limitation signal; Authorization decision-path signal.

Line 27:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: Now let's have a look at an IAM policy for your S3 buckets.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 28:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So this is a bucket policy, and we have two statements.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And the first one is a ListBucket, and this applies to this arn right here, so s3:::test.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 30:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Because it's a bucket level permission and, therefore, we have to specify the bucket itself.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 31:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But if we have a look at GetObject, PutObject, and DeleteObject, this applies to objects within a bucket and, therefore, your arn is going to be different, and you're going to have /* to represent all the objects within your buckets.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 32:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And this is why you have a different arn here because this is an object level permission.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 33:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And, again, this is something that can come up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 34:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: Now let's have a look at the resource policies and the aws:PrincipalOrgID.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 35:
- Concepts: Access Boundary Controls, Organization Governance
- Services: AWS Organizations, IAM Policies
- Key Insights: So this condition right here, the aws:PrincipalOrgID, can be used to restrict resource policies to only accounts that are a member of an AWS organization.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 36:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations, IAM Policies
- Key Insights: So we have an organization with multiple accounts, and say we have S3 buckets with this policy on it.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 37:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And it's saying that you can do a PutObject or a GetObject only if the API call is made from an account that has the PrincipalOrgID of whatever.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 38:
- Concepts: Authorization Model, Identity Lifecycle, Organization Governance
- Services: AWS Organizations, IAM Policies
- Key Insights: And, therefore, it's only going to allow member accounts from your organization to access the S3 bucket, but any user outside the organization will be denied because of this S3 bucket policy.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 39:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies
- Key Insights: Okay, so you've seen a lot of different conditions in now your IAM policies, but hopefully that makes sense, and it can really start to drill down your use case and make really advanced use cases in terms of security.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 40:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 41:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/289_IAM - Resource-based Policies vs IAM Roles.txt

Line 1:
- Concepts: Access Boundary Controls
- Services: AWS IAM, IAM Policies, IAM Roles
- Key Insights: So let's have a look now at the fundamental differences between IAM roles and resource-based policies.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So for cross accounts, especially when you want to perform an API call on an S3 bucket cross account, you have two options.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: Access Boundary Controls, Authorization Model
- Services: IAM Policies, IAM Roles
- Key Insights: You can attach a resource-based policy to a resource, for example, an S3 bucket policy on an S3 bucket, or you can decide to use a role that can actually access the resource.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example of these two options.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 5:
- Concepts: Identity Lifecycle
- Services: IAM Roles
- Key Insights: So this is the example where the user in Account A can assume a role in Account B, and that role has the permissions to access your Amazon S3 buckets.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies
- Key Insights: Or similarly, the user in Account A, through a bucket policy placed on the Amazon S3 bucket in Account B, can access the S3 buckets.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So both these two situations are valid, but there is a little bit of difference, okay?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: The first one is an IAM role that has access to the S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 9:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies
- Key Insights: The second one is the S3 bucket policy that allows the user.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So what's the difference?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: When you actually assume a role, okay, you actually give up all your original permissions, and you take all the permissions assigned to the role.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is very important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: That means that we, for example, assume a role, and this role can do whatever.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: We can now do anything that the role does, but we cannot use our original permissions.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 15:
- Concepts: Access Boundary Controls, Authorization Model
- Services: IAM Policies, IAM Roles
- Key Insights: And so when you use a resource-based policy, instead, the principal does not assume a role, and therefore, he does not have to give up his permissions.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 16:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So if you take an example of user in Account A, they need to scan a DynamoDB table in Account A, and then dump it in an S3 bucket in Account B.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: Access Boundary Controls, Authorization Model
- Services: IAM Policies, IAM Roles
- Key Insights: What they can do is we should use a resource-based policy because this way, we don't have to assume a role, and we can both scan the DynamoDB table and write to an S3 bucket in another account.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 18:
- Concepts: Access Boundary Controls
- Services: IAM Policies
- Key Insights: So resource-based policies are supported by more and more AWS services and resources over time.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we have the Amazon S3 buckets, the SNS topics, the SQS queues, the Lambda functions, and so on.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And the big difference of when this comes into play is when you use Amazon EventBridge.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So when an EventBridge rule runs, it's going to need permissions on the targets.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 22:
- Concepts: Access Boundary Controls, Authorization Model
- Services: IAM Policies
- Key Insights: And if your target supports resource-based policies, for example, Lambda functions, SNS topics, SQS queues, S3 buckets, or API Gateway, then it's possible that EventBridge will just add a resource-based policy on the target to allow the invocation from the EventBridge rule.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: That's one case.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 24:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies, IAM Roles
- Key Insights: On the other hand, if the resource doesn't necessarily support a resource policy, then EventBridge will use an IAM role to invoke the target service, for example, for Kinesis Stream, EC2 Auto Scaling, System Manager Run Command, ECS task, and so on.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 25:
- Concepts: Access Boundary Controls
- Services: AWS IAM, IAM Policies, IAM Roles
- Key Insights: And for example, for Kinesis Data Streams, as a note, it supports resource-based policies, but still, EventBridge is going to use an IAM role.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So how do you know which one is going to be used in which?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 27:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: Well, you need to look at the configuration of the EventBridge role itself to see how this is going to work, and then you will know, okay?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 28:
- Concepts: Access Boundary Controls
- Services: IAM Policies
- Key Insights: But as a matter of fact, Lambda, SNS, SQS, S3 buckets are using resource-based policies.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: And Kinesis Data Streams, EC2 Auto Scaling, and so on are using IAM roles.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 30:
- Concepts: Access Boundary Controls, Authorization Model
- Services: IAM Policies
- Key Insights: Even though it's possible for you to use a resource-based policy with Kinesis Data Stream, that's not yet supported by EventBridge.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 31:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So all the information you need to know for the exam is on this slide, and I know that'll be enough for you at the exam.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 32:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 33:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/290_IAM - Policy Evaluation Logic.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, Permission Boundaries
- Key Insights: Let's get into IAM Permission Boundaries.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: Identity Lifecycle
- Services: Permission Boundaries
- Key Insights: And so these permission boundaries are supported for users and roles and they're not available for groups, so remember this.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: Authorization Model
- Services: AWS IAM
- Key Insights: And they're an advanced feature that allow you to define the maximum amount of permissions an IAM entity can get.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's have an example.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, Permission Boundaries
- Key Insights: We have this IAM permission boundaries.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: It looks just like an IAM policy.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 7:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So we're saying, allow everything on S3 CloudWatch and EC2.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 8:
- Concepts: Identity Lifecycle
- Services: AWS IAM, Permission Boundaries
- Key Insights: So we attach this, for example, to an IAM user and that's its permission boundaries.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: That means that it can only do things within S3 CloudWatch and EC2.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 10:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: And then you need to specify on top of things an IAM permission through policy.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 11:
- Concepts: Authorization Model, Identity Lifecycle
- Services: AWS IAM
- Key Insights: And so here, say we attach to the very same user, allow iam:CreateUser, resource *.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 12:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: So there is a boundary and there is an IAM policy with permissions.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: What is going to be the results permission in this case?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: Access Boundary Controls, Authorization Model
- Services: AWS IAM, IAM Policies, Permission Boundaries
- Key Insights: Well, nothing, no permissions because the IAM policy is outside the IAM permission boundary.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 15:
- Concepts: Access Boundary Controls, Identity Lifecycle
- Services: AWS IAM, Permission Boundaries
- Key Insights: Therefore, our user is not allowed to create other IAM users because that is not in its IAM permission boundary.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, Permission Boundaries
- Key Insights: So I want to show you where IAM permission boundaries are created.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So let's go create a user.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 18:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: I'm going to call the user John, and then I'm going to give him programmatic access.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Next permissions.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I will not set anything, and next Tags.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 21:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Review, and Create user.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: Permission Boundaries
- Key Insights: So we have created John and we're going to set permission boundaries for John.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 23:
- Concepts: Access Boundary Controls
- Services: Permission Boundaries
- Key Insights: So imagine John is a developer in our company and he needs to have certain permissions but we want to make sure that he has a permission boundary.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 24:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So for this, we could assign a policy, for example, for John, so if I add permission and I say, "Hey, John, I'm going to attach to you AdministratorAccess." It seems like John can do everything right now.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 25:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So John is a super user.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 26:
- Concepts: Access Boundary Controls
- Services: Permission Boundaries
- Key Insights: But I'm also going to set a permission boundary on John.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 27:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And I'm going say, okay, here is your boundary and this is an advanced feature.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And I'm gonna say the only thing you can do, actually, John, is to have AmazonS3FullAccess.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 29:
- Concepts: Access Boundary Controls
- Services: Permission Boundaries
- Key Insights: And so here, what I've been setting is a permission boundary for John.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 30:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: And so through this AWS S3 full access managed policy, even though John has an administrator access, when John logs in, the only thing he can do is to access S3 because S3 is its boundary.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 31:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So here we've seen that, even though there is a policy attached to John that gives him an administrator access, the boundary is actually going to be more restrictive.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 32:
- Concepts: Organization Governance
- Services: AWS IAM, AWS Organizations, Permission Boundaries, Service Control Policies
- Key Insights: So IAM permission boundaries can be used in combinations of AWS Organizations SCP.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 33:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies
- Key Insights: So if look at this diagram, we have the effective permissions to be in the middle of your identity-based policy, so whatever is attached to your user or your group.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 34:
- Concepts: Access Boundary Controls, Identity Lifecycle
- Services: IAM Roles, Permission Boundaries
- Key Insights: The permission boundary, which by the way, only applies to a user or a role and not a group.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 35:
- Concepts: Organization Governance
- Services: AWS IAM, AWS Organizations, Service Control Policies
- Key Insights: And your organization SCP, which applies to every single IAM entity in your account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 36:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So in the middle lies what the users can do.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 37:
- Concepts: IAM Domain Operational Context
- Services: Permission Boundaries
- Key Insights: So we can use permission boundaries for a few use cases.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 38:
- Concepts: Identity Lifecycle
- Services: AWS IAM, Permission Boundaries
- Key Insights: For example, to delegate responsibilities to non-administrators within their permission boundaries, for example to create new IAM users.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 39:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: Or to allow developers to self assign and manage their own permissions, while making sure they can't escalate their privileges, that means making themselves administrators.
- Hidden/Implicit Meaning: Constraint or limitation signal; Authorization decision-path signal.

Line 40:
- Concepts: Identity Lifecycle, Organization Governance
- Services: AWS Organizations, Service Control Policies
- Key Insights: Or for example, restrict one very specific user inside yours organization instead of applying an entire SCP to your account and restricting everyone in your whole account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 41:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: So let's have a look at the IAM Policy Evaluation Logic.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 42:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Because this diagram basically explains to you how you are authorized, or not, to do actions within AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 43:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And you don't need to know by heart, but it should make sense to you.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 44:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So we can see there's a whole flow, but at every step, there is an evaluation.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 45:
- Concepts: Access Boundary Controls, Authorization Model, Organization Governance
- Services: AWS IAM, AWS Organizations, IAM Policies, Permission Boundaries, Service Control Policies
- Key Insights: And so we're going to look at Deny evaluation, we're going to look at Organizations SCP, Resource-based policy, Identity-based policy, IAM permission boundaries, and then finally, Session policies to allow or deny a specific IAM action.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 46:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look in details to see how that works.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 47:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: So we're going to look at all the possible policies in here.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 48:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: And if there is an explicit deny, then we know that it's going to be denied automatically.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 49:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations, Service Control Policies
- Key Insights: Then we look at the organizations SCP, and is there an allow?
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 50:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: If yes, then go to next step.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 51:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: If not, then it's a deny because it's an implicit deny.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 52:
- Concepts: Access Boundary Controls, Authorization Model
- Services: IAM Policies
- Key Insights: Then we look at resource-based policy, for example, that can be applied to S3 buckets.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 53:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: They can be applied to SQS and so on.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 54:
- Concepts: Access Boundary Controls, Authorization Model
- Services: IAM Policies
- Key Insights: And again, we have a look, is there a resource-based policy?
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 55:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: If so, is there an allow?
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 56:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Yes or no?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 57:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: Then we have identity-based policy.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 58:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So we look, again, as whether or not there's an identity-based policy, whether or not there's an allow, and then we deny implicitly or go onto the next step.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 59:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, Permission Boundaries
- Key Insights: Then we look at IAM permission boundaries that we just saw.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 60:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: And then finally, we look at session policies that won't go over them, this is more related to SDS.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 61:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: But what I want you to remember is that all these things are evaluated when making a specific IAM action.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 62:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: And so, only if all these things are allowing and working together, or not denying specifically, then you will have a final decision allow, and you'll be able to do your action.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 63:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it's just to give you a bit more overview but hopefully you understand better how security works in AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 64:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So let's have a look at this policy and see what it can do to make it a bit more concrete.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 65:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So we have sqs:*, Deny on resource *, and we have action, sqs:DeleteQueue, Allow on resource *.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 66:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So first question is, can you perform sqs:CreateQueue?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 67:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: The answer is no, you cannot because there is a Deny star on SQS, and CreateQueue belongs to that block and there's a deny on it, so it's definitely going to be denied.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 68:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now, can you perform an sqs:DeleteQueue?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 69:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So there's a deny on the top part and there's an allow on the bottom part and they conflict.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 70:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: There's a deny and allow.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 71:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But what did I just tell you?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 72:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: I told you that as soon as you have an explicit deny, then the decision is going to be denied.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 73:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So because there is an explicit deny on sqs:*, and sqs:DeleteQueue is within that sqs:*, then no matter what, even there's an allow here, this is going to be denied this action.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 74:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you cannot perform sqs:DeleteQueue, even though you have allowed it explicitly in the second block.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 75:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So very important to know.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 76:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And finally, can you perform ec2:DescribeInstances?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 77:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So as we can see, there's nothing on EC2 in this thing.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 78:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: And this is an IAM policy.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 79:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: And so, because there is no explicit deny but also there's no explicit allow, then you cannot perform ec2:DescribeInstances with this IAM policy.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 80:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: All right, hope that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 81:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 82:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: Hopefully you understand IAM better.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 83:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

## Step 2 â€” Consolidation

### 1. Concepts List
- Access Boundary Controls
- Authorization Model
- Federated Authentication
- IAM Domain Operational Context
- Identity Lifecycle
- Least Privilege
- Organization Governance
- Temporary Credential Strategy

### 2. Services List
- ABAC
- AWS IAM
- AWS Organizations
- AWS STS
- Amazon Cognito
- EC2 Instance Metadata
- IAM Access Analyzer
- IAM Policies
- IAM Roles
- MFA
- Permission Boundaries
- SAML/OIDC Federation
- Service Control Policies

### 3. Features List
- access analyzer
- boundaries
- conditions
- credentials report
- evaluation
- federation
- mfa
- oidc
- saml
- scp
- trust policy

### 4. Use Cases
- 005_IAM Access Analyzer.txt:8: So for example, we have an S3 bucket, we can share it with a specific role, a user, an account, an external client by IP, or a VPC endpoint.
- 006_STS.txt:1: So now let's talk about STS, which is a service that is so important in AWS, which isn't going to allow us to assume roles across different accounts within the same accounts, and also enable us to do identity federation, so let's get started.
- 006_STS.txt:4: Our users wants to access a role, for example, it's within the same or another accounts, and so, to do so, it's going to use the AssumeRole API on STS.
- 006_STS.txt:11: Remember, when we use STS, when we assume a role for it be a user, an application, or a service, we give up our original permissions, and we take the permissions assigned to the role, and so we already had a discussion as to whether we should use a role or a resource-based policy, but just a slight reminder here.
- 006_STS.txt:12: Okay, so here is the deep dive a little bit on providing access to an IAM user in your or another AWS accounts that you own, so this is within your circle of trust, in which case, we can, for example, create a role in Account A or A*.
- 006_STS.txt:17: Okay, but what does it look like in practice when we have STS cross-account access?
- 006_STS.txt:18: Again, just a reminder, but something you've already seen before, probably, so we have a production accounts with an S3 buckets and a development accounts with two groups of users, for example, testers and developers, and we want to provide developers access to the S3 bucket production app.
- 006_STS.txt:23: For example, you work with a partner, and they provide you a service, and you want to give, like I say, consulting company, and you want to give that consulting company access to your accounts.
- 006_STS.txt:26: Which account, which resources, for example, your S3 buckets are going to be granted to third parties, and so if you wanna grant access to your third parties to some of your resources, you can get something called the third-party AWS account ID, which is a very obvious, and the most important thing here is you define an external ID, and this external ID is a secret between you and the third party, and you have to define it, and this is because if you give access to the third party to a role in your accounts, you want to make sure that only that third party has access to this role, so this is to uniquely associate the role between you and a third party, and you must be provided when defining the trust and when assuming the role, and we'll see why, and it must be chosen by the third party.
- 006_STS.txt:28: And what the account on the right-hand side that we don't own is going to try to attack us on the left-hand side, and to attack us, it's going to be using the account in the middle, so let's see what happens when you don't use the external ID and how this attack is possible and what happens when the, once we have the external ID, and how this prevents this attack, so in the first case, our AWS accounts right here has created an ExampleRole right here, and this ExampleRole is going to be able to be assumed by the middle accounts, so we're saying, "Okay, here is the ARN of this ExampleRole, and you are able to assume this role and access some of our resources within our accounts using this role, so this is everything we've seen so far, and then, the other AWS accounts is going to try to attack us, so it's going to say, "Hey," to the middle accounts, "Hey, I have a role for you, "and this role is going to allow you "to access stuff in my accounts," but instead of providing a role in their accounts, they provide the exact same AWS1 ExampleRole ARN to the middle accounts, so this one doesn't know.
- 006_STS.txt:30: It thinks it's going to operate on the right-hand side accounts, but it actually operates on the left-hand side accounts, and so this is why AWS defined this external ID thing, and let's see how this protects against this attack, and this is an exam question, so this is why I'm going go deep into this, so we have now the same setup, but this time, we also define an external ID to assume this role, and this external ID is something secret that is shared between your accounts and the account in the middle, so we're saying, "Okay, here is the ARN of the account you should assume, but when you do assume this ARN, you need to pass in the external ID that we have defined together, and so, as such, okay, it's able to access this role because we know we both know the secrets, okay?
- 006_STS.txt:31: And when we look at the other AWS accounts on the right-hand side, which is trying to attack us, it's going to try to use, again, this role on the left-hand side, but it doesn't know the external ID, and so it's going to give another external ID to the account in the middle, and this time, by providing the wrong external ID, this is going to be preventing the account in the middle to access our AWS accounts because the external ID is not matching, and therefore, we have added an extra level of security, so bottom line is you don't need to know exactly all the steps, but I want to show you exactly how that works and not just tell you using external ID prevents this kind of attacks, so bottom line is still if you are using third-party accounts, and they need to get access to your AWS accounts, and you need to secure that, the answer is to use the STS AssumeRole API, but also to define an external ID, and this, hopefully, description of how this works helps you.
- 006_STS.txt:33: The idea is that when you assume an IAM role, or, for example, you have user federation that leverages STS, it is possible for you to pass a session tag, so how does that work?
- 006_STS.txt:34: Well, your user is going to, for example, do the STS AssumeRole API call and pass a session tag as part of the API call, for example, for Department=HR, and STS will then return temporary security credentials for that user with the session tag, so why do we do this?
- 006_STS.txt:36: For example, we have an S3 bucket named hr-docs, and it contains this S3 bucket policy.
- 006_STS.txt:37: As you can see in the condition, there is a StringEquals PrincipalTag/Department equals HR, and therefore, only a user that has done an AssumeRole with that specific session tag will be able to make an API call into the S3 buckets, so this is particularly helpful when you federate users in STS and you want to have some conditions in your IAM policies based on some tags passed through the federation, so finally, to conclude with STS, there's a few important APIs you need to know.
- 006_STS.txt:39: AssumeRoleWithSAML, which is to get credentials when we are federated with SAML.
- 006_STS.txt:42: Then we have a GetSessionToken, which is used for MFA, so when we log using MFA to get credentials back, or GetFederationToken, which is usually to get a credentials, temporary credentials, when we have federation using a proxy app, for example, when we have something that distributes tokens within a corporate network, okay?
- 127_IAM Permission Boundaries.txt:10: Well, the right-hand side defines the actual permissions of the user, which is to allow iam:CreateUser, but the left-hand side restricted what the user can get permissions on, and the user is only allowed to have permissions on S3, CloudWatch and EC2.
- 127_IAM Permission Boundaries.txt:13: You define the boundary of what's allowed for a policy to allow.
- 127_IAM Permission Boundaries.txt:18: So, the use cases for permission boundaries is to delegate responsibilities to non administrators within their permission boundaries, for example, to create new IAM users, or to allow developers to self-assign policies and manage their own permissions, while making sure they cannot elevate or escalate the privileges.
- 127_IAM Permission Boundaries.txt:19: For example, make themself admins because you have defined a boundary around their permissions.
- 128_IAM Policy Evaluation Logic.txt:30: So this is when we have a role session and so on.
- 128_IAM Policy Evaluation Logic.txt:44: Okay, when we go cross-account, it gets a little bit more funky.
- 128_IAM Policy Evaluation Logic.txt:47: And then in the bucket in account B, you must have a resource policy that is going to allow the requester in account A to access the resource.
- 128_IAM Policy Evaluation Logic.txt:48: So this is different from being in the same account because when you're in the same account, you look at the combination of the identity-based policy and the resource policy and you look for one allow in between the two.
- 128_IAM Policy Evaluation Logic.txt:49: But when you have two accounts, you look at whether or not do both accounts allow the request.
- 128_IAM Policy Evaluation Logic.txt:51: So if you have a look of the simple use case of an IAM policy and a resource policy in the same account, if we have an empty IAM user IAM policy, but then the S3 bucket policy, the resource policy, actually explicitly allows this user through its ARN to access the bucket, then this is allowed.
- 128_IAM Policy Evaluation Logic.txt:53: Cross-account, when the same account, it is going to be allowed.
- 128_IAM Policy Evaluation Logic.txt:54: If we take a look at a more complicated use case where we have an IAM policy, a VPC endpoint policy, and a resource policy, what is evaluated?
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:1: So now let's understand the difference between in a cross account type of use case accessing a resource Thanks to resource-based policy or a cross account IAM role.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:2: So the first option is to attach a resource-based policy to a specific resource, for example an S3 bucket policy and allow another account to access it.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:6: The other option is to actually attach an S3 bucket policy of the Amazon S3 bucket in account B To allow the user in account A to access it.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:8: The first one is that when you assume a role would it be from a user application or service.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:10: When you're using a resource-based policy the principle doesn't have to give up his permissions because just the resource policy will allow the user to do a specific action.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:12: For example, you have a user in account A and you need to do at the same time a scan of a DynamoDB table in the same account A and then send the output to an industry bucket in account B.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:16: So to summarize, IAM roles are going to be very helpful to give temporary permissions for a specific task and they will allow a user and application to perform many actions in a different account than the one you have When you are assuming an IAM role, The permissions will expire over time.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:20: So if you take an example of Amazon Event Bridge for example, when the rule runs, it needs permission on the targets.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:22: So, in that case we have an Eve bridge rule and the Lambda will have, for example a resource-based policy that allows Eve Bridge to invoke it.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:25: For example, if the target is a Kinesis data stream or systems manager run command or an ECS task, in that case the event bridge rule is going to assume an IAM role to make that API call onto the target service.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:29: So another example of resource policies is, for example for cross account access.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:32: And so here we have an SQS queue access policy that is going to allow all of the accounts so 1 1 1 2 2 2, 3 3 3 to do SQS receive message on the queue.
- 130_ABAC (Attribute based access control).txt:6: So for example, you say a user belongs to a department, a user belongs to a specific job, a user belongs to a specific team.
- 130_ABAC (Attribute based access control).txt:27: Disadvantage that when you want to create new resources, you may have to update your policies.
- 130_ABAC (Attribute based access control).txt:32: For example, SAML 2.0 IDP or a Web IDP.
- 131_IAM MFA.txt:5: So, Alice has a password and then thanks to the device you own, for example, your phone or a security key or whatever, then you're going to get a successful login.
- 131_IAM MFA.txt:12: Or you can use, for example, a security key such as a YubiKey, which supports for multiple root and IAM users using a single security key.
- 131_IAM MFA.txt:14: So for example, one by Gemalto which gives you a code or you have the hardware Key Fob MFA device for AWS GovCloud which is provided by SurePassID and again gives you a code that you just enter while logging in.
- 131_IAM MFA.txt:18: So MFA can be required, for example, to permanently delete an object version because this is a destructive type of operation or suspend versioning on the bucket.
- 131_IAM MFA.txt:41: So for example, you created an MFA device for a user but you never activated it.
- 132_IAM Credentials Report.txt:6: So let's say, for example, that you want to detect whenever an access key is going to be old.
- 132_IAM Credentials Report.txt:8: And then from this, you can trigger an SSM automation to actually rotate these access keys, for example, and then send a notification to Jira, Slack or API endpoints or notifications into an SNS topic for a master security account that you have.
- 133_IAM Roles and PassRole to Services.txt:4: Whenever we have an EC2 instance that wants to access the APIs of AWS, we must assign it an IAM role and then it will be able to access and allocate the DynamoDB table and so on.
- 133_IAM Roles and PassRole to Services.txt:10: And this can be assigned, for example, to a user.
- 134_IAM Roles Anywhere.txt:3: So for example, you have an on-premises server or you have containers, applications or multi-cloud workloads, anything that runs outside of AWS cloud.
- 134_IAM Roles Anywhere.txt:6: For example, AWS Access Keys on on-premises servers.
- 134_IAM Roles Anywhere.txt:21: So, what's the difference you say, for example, between using IAM Users and IAM Roles Anywhere for on-premises server access to AWS?
- 134_IAM Roles Anywhere.txt:26: For example, someone will post the keys on GitHub, logs or backups.
- 134_IAM Roles Anywhere.txt:31: These credentials expire automatically, so after one year, for example, they'll be gone.
- 135_IAM Trust Policies.txt:7: For example, if you have a condition to the previous statement and you say, "I want MultiFactorAuthPresent to be true, then this allows any identity to assume the role as long as the multifactor authentication mechanism is present, which is an enhanced security.
- 135_IAM Trust Policies.txt:8: But also for example, when you create EC2 instance profile roles, we have a service principal.
- 136_[CCP_SAA_DVA_SOA] IAM Security Tools.txt:6: This one is at the user-level and the Access Advisor is going to show the service permissions granted to a user and when those services were last accessed.
- 137_[CCP_SAA_DVA_SOA] IAM Security Tools - Hands On.txt:5: We can see when the user was created, if the password was enabled, when the password was last used and last changed, when is the next rotation to be expected if we do enable password rotation?
- 137_[CCP_SAA_DVA_SOA] IAM Security Tools - Hands On.txt:9: Yes, they're created for my Stefane account, but not for my root account, and when they were last rotated, last used and so on, you can get more information about other access keys and certificates and so on.
- 137_[CCP_SAA_DVA_SOA] IAM Security Tools - Hands On.txt:13: And Access Advisor is going to show me which services were accessed by my user and when.
- 137_[CCP_SAA_DVA_SOA] IAM Security Tools - Hands On.txt:15: So I use my user to access these things by clicking in the UI, but some services were not accessed, for example, Alexa for Business or AWS App2Container and so on.
- 137_[CCP_SAA_DVA_SOA] IAM Security Tools - Hands On.txt:19: On top of it, if a user accesses a specific service for example Amazon EC2, we are told that this is the administrator access that granted access to this service.
- 137_[CCP_SAA_DVA_SOA] IAM Security Tools - Hands On.txt:20: So to summarize, Access Advisor becomes very helpful when you need to do granular user access permissions on AWS.
- 138_IAM Access Analyzer.txt:8: So for example, we have an S3 bucket, we can share it with a specific role, a user, an account, an external client by IP, or a VPC endpoint.
- 139_[SOA] STS Overview.txt:3: So you have tech tokens and they can be valid up for to one hour or more and they must be refreshed when they're invalid.
- 139_[SOA] STS Overview.txt:4: So when you want to get these tokens you must first issue an API call into the STS service.
- 139_[SOA] STS Overview.txt:5: So when you assume a role, for example, this is an STS AssumeRole API call.
- 139_[SOA] STS Overview.txt:8: So you need to AssumeRole when credentials expire.
- 139_[SOA] STS Overview.txt:12: So this way when the users are identified with an identity provider such as Facebook Login Google Dot login, or anything OIDC compatible, and then they're going to exchange these credentials for, again, credentials of STS.
- 139_[SOA] STS Overview.txt:16: So this is when you're doing MFA from a user or an account root user and you want to get actual credentials after having logged in with MFA.
- 139_[SOA] STS Overview.txt:17: So when you're using STS to assume a role, you must first define an IAM role within your account or cross account, and then you define which principles can access this IAM role.
- 139_[SOA] STS Overview.txt:18: Then you're going to use the STS service, to retrieve credentials, and then impersonate the IAM role you have access to, for example, using the AssumeRole API.
- 139_[SOA] STS Overview.txt:20: So if you have a look here, for example a user wants to access a role in the same or another account is going to do AssumeRole API to STS.
- 140_STS Version 1 & Version 2.txt:4: And so when you're a user, you're going to make an API call into STS.
- 140_STS Version 1 & Version 2.txt:9: For example, if you consider the me-south-1 region, it's not enabled by default.
- 140_STS Version 1 & Version 2.txt:17: So if you have an error like this, which says, "Hey, you cannot, for example, describe your instances because AWS was not able to validate the provided access credentials." You have two options.
- 141_STS External ID.txt:2: So when you're using the AssumeRole API, you have the option to pass in what's called an external ID.
- 141_STS External ID.txt:5: When you have a external ID in the AssumeRole IAM policy, then the role can only be assumed if the API call made it to assume that role also contains the external id you have defined, for example, in this example 56789.
- 141_STS External ID.txt:8: This prevents you from having any other customer from tricking, for example, a 3rd party into accessing your resources.
- 141_STS External ID.txt:10: So let's say, for example, that you have a deputy and it's a 3rd party account and you give access to the deputy to your account.
- 141_STS External ID.txt:11: For example, it needs to be able to manage resources in your accounts.
- 141_STS External ID.txt:13: Now, an IAM user that's, for example, we're not using external ID for now, we does not pass external id.
- 141_STS External ID.txt:18: And so you may say in which type of use case can this be exploited?
- 141_STS External ID.txt:19: Well, imagine that the deputy, for example, is a software as a service company and the software's service company has access to many different accounts to perform its roles and its job functions.
- 141_STS External ID.txt:28: So here the deputy is also going to generate an external id, for example, 5678 for our accounts.
- 141_STS External ID.txt:30: So in the use case of what we did before, we're going to also use our own external ID because we know it.
- 142_STS - Revoking IAM Role Temporary Security Credentials.txt:2: So when you have a session with IAM, for example, a long session of 12 hours, in case the credentials are exposed, they can be used for the duration of the session.
- 142_STS - Revoking IAM Role Temporary Security Credentials.txt:5: And we can do this with the console and in the backend what's going to happen is that AWS is going to attach a new inline IAM policy onto the IAM role that is going to deny everything if the token is too old which will force users to reauthenticate.
- 144_EC2 Instance Metadata Overview.txt:3: For example, it's hostname, the instance type, the network settings, and so on.
- 144_EC2 Instance Metadata Overview.txt:8: And so when you have an EC2 instance you can just perform Http request into it and get some information.
- 144_EC2 Instance Metadata Overview.txt:11: So when do you use this?
- 144_EC2 Instance Metadata Overview.txt:12: Well, it's very helpful when you want to be automating tasks such as setting up an instance hostname, configure networking or installing software.
- 144_EC2 Instance Metadata Overview.txt:21: So for example, if you have a cluster or spread or a partition placement group, you have security groups so the names of the security groups that are attached onto the instance as well as any tags attached to the instance.
- 144_EC2 Instance Metadata Overview.txt:25: Well, whenever you have an application on your EC2 instance that leverages the SDK or the CLI and makes an API call into AWS, the SDK itself or the CLI is going to make first a call into the security credentials part of the metadata service.
- 144_EC2 Instance Metadata Overview.txt:34: Or you can simply turn off access using the AWS console or the CLI when you start an EC2 instance.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:22: So there's an option when you start your EC2 Instance to say "Hey, I want V1 and V2" or "I want V2 only" where the token is required.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:24: Finally, when you create an AMI, you can also require IMDSv2 by using the command line option.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:25: IMDS support V2 when registering that AMI.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:26: There's also other ways you can do, so for example, you can make sure that the Role Credentials are retrieved for the EC2 instance is only from IMDSv2.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:28: Well when you have a roll delivered to your EC2 instance, now there is a IAM contacts key called the EC2 Role Delivery.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:32: The other way to protect only some resources, for example, would be to attach the same policy to an S3 bucket.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:36: So to prevent the launch of an EC2 two instance using old instance metadata, what you can do is that you can attach it as an SCP or an IAM policy, whatever you want, you can attach this and it says deny EC2 two run instances when metadata tokens is not equals to required.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:40: It's called modify instance metadata options API call for EC2, and you can say "Hey deny this API call" except if you are, for example an admin that has the ability to re enable IMDSv1.
- 288_IAM - Advanced Policies.txt:3: So that could be for policies for users, that could be policies for your resource policies, for example, for your S3 buckets, or that could be endpoint policies, and so on.
- 288_IAM - Advanced Policies.txt:10: And this can be used, for example, to restrict usage on AWS only to, for example, your company network and, therefore, guaranteeing that only your company can access your own AWS environment.
- 288_IAM - Advanced Policies.txt:16: And this can be applied more globally on their organization SCP to deny or to allow only access to a specific region.
- 288_IAM - Advanced Policies.txt:38: And, therefore, it's only going to allow member accounts from your organization to access the S3 bucket, but any user outside the organization will be denied because of this S3 bucket policy.
- 288_IAM - Advanced Policies.txt:39: Okay, so you've seen a lot of different conditions in now your IAM policies, but hopefully that makes sense, and it can really start to drill down your use case and make really advanced use cases in terms of security.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:2: So for cross accounts, especially when you want to perform an API call on an S3 bucket cross account, you have two options.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:3: You can attach a resource-based policy to a resource, for example, an S3 bucket policy on an S3 bucket, or you can decide to use a role that can actually access the resource.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:11: When you actually assume a role, okay, you actually give up all your original permissions, and you take all the permissions assigned to the role.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:13: That means that we, for example, assume a role, and this role can do whatever.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:15: And so when you use a resource-based policy, instead, the principal does not assume a role, and therefore, he does not have to give up his permissions.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:20: And the big difference of when this comes into play is when you use Amazon EventBridge.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:21: So when an EventBridge rule runs, it's going to need permissions on the targets.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:22: And if your target supports resource-based policies, for example, Lambda functions, SNS topics, SQS queues, S3 buckets, or API Gateway, then it's possible that EventBridge will just add a resource-based policy on the target to allow the invocation from the EventBridge rule.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:24: On the other hand, if the resource doesn't necessarily support a resource policy, then EventBridge will use an IAM role to invoke the target service, for example, for Kinesis Stream, EC2 Auto Scaling, System Manager Run Command, ECS task, and so on.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:25: And for example, for Kinesis Data Streams, as a note, it supports resource-based policies, but still, EventBridge is going to use an IAM role.
- 290_IAM - Policy Evaluation Logic.txt:8: So we attach this, for example, to an IAM user and that's its permission boundaries.
- 290_IAM - Policy Evaluation Logic.txt:24: So for this, we could assign a policy, for example, for John, so if I add permission and I say, "Hey, John, I'm going to attach to you AdministratorAccess." It seems like John can do everything right now.
- 290_IAM - Policy Evaluation Logic.txt:30: And so through this AWS S3 full access managed policy, even though John has an administrator access, when John logs in, the only thing he can do is to access S3 because S3 is its boundary.
- 290_IAM - Policy Evaluation Logic.txt:37: So we can use permission boundaries for a few use cases.
- 290_IAM - Policy Evaluation Logic.txt:38: For example, to delegate responsibilities to non-administrators within their permission boundaries, for example to create new IAM users.
- 290_IAM - Policy Evaluation Logic.txt:39: Or to allow developers to self assign and manage their own permissions, while making sure they can't escalate their privileges, that means making themselves administrators.
- 290_IAM - Policy Evaluation Logic.txt:40: Or for example, restrict one very specific user inside yours organization instead of applying an entire SCP to your account and restricting everyone in your whole account.
- 290_IAM - Policy Evaluation Logic.txt:45: And so we're going to look at Deny evaluation, we're going to look at Organizations SCP, Resource-based policy, Identity-based policy, IAM permission boundaries, and then finally, Session policies to allow or deny a specific IAM action.
- 290_IAM - Policy Evaluation Logic.txt:52: Then we look at resource-based policy, for example, that can be applied to S3 buckets.
- 290_IAM - Policy Evaluation Logic.txt:61: But what I want you to remember is that all these things are evaluated when making a specific IAM action.

### 5. Constraints / Limitations
- 005_IAM Access Analyzer.txt:9: But if we define the zone of trust to be our accounts and only the role, the user, and the VPC endpoints are within our accounts, then the accounts and the external clients are going to be flagged as a finding, and you can look at it within the console to take action if you think this is a security risk.
- 005_IAM Access Analyzer.txt:12: So you can validate your policy against the policy grammar and best practices.
- 005_IAM Access Analyzer.txt:21: And then, out of it, will generate an IAM policy that is going to be most likely security best practice because it will encompass all the API calls that your application has been making over the past 90 days.
- 006_STS.txt:1: So now let's talk about STS, which is a service that is so important in AWS, which isn't going to allow us to assume roles across different accounts within the same accounts, and also enable us to do identity federation, so let's get started.
- 006_STS.txt:10: You just need to change the policy and add a time statement or use the AWSRevokeOlderSessions manage policy, and that's perfect, and so using this time condition, you're able to say, "Okay, this role cannot be used anymore," and so that gives you an extra level of security.
- 006_STS.txt:11: Remember, when we use STS, when we assume a role for it be a user, an application, or a service, we give up our original permissions, and we take the permissions assigned to the role, and so we already had a discussion as to whether we should use a role or a resource-based policy, but just a slight reminder here.
- 006_STS.txt:14: To terminate EC2 instances, and so this is very important that this is all the accounts that you own because in the next slide, we'll see about the accounts we don't own, third parties, so in this case, the user will assume a role, and that role will be allowing us to terminate EC2 instances, and the benefits is that, is that we need to explicitly grant our users permission to assume the role to perform the Terminate EC2 Instance action.
- 006_STS.txt:16: We can also add multifactor authentication protection to the role so that only users are assigned using MFA can assume the role, and so what this gives us, as well, is least privilege and auditing using CloudTrail, so by using this intermediary step to do terminate EC2 instances, we have a lot of extra security added to it, and that is a very common pattern in AWS, something that a solutions architect should be thinking about a lot.
- 006_STS.txt:21: The users of that group, the developers group only, can access or request access to the role using the STS API, and STS will return the role temporary credentials, and using these credentials, the users can access the S3 bucket using the role credentials, so very, very, very simple.
- 006_STS.txt:22: Again, just revision, but I want to make dead clear how STS works because it gets a little bit more complicated right now, and this is probably something new for you, but very important to note going into the exam, so in case you want to provide access to AWS accounts owned by third parties, there's going to be an extra thing called external ID, so this is text, and then I have a diagram, so there's a zone of trust, and the zone of trust is all the accounts and organizations that you own, and outside of that zone of trust is going to be third parties.
- 006_STS.txt:26: Which account, which resources, for example, your S3 buckets are going to be granted to third parties, and so if you wanna grant access to your third parties to some of your resources, you can get something called the third-party AWS account ID, which is a very obvious, and the most important thing here is you define an external ID, and this external ID is a secret between you and the third party, and you have to define it, and this is because if you give access to the third party to a role in your accounts, you want to make sure that only that third party has access to this role, so this is to uniquely associate the role between you and a third party, and you must be provided when defining the trust and when assuming the role, and we'll see why, and it must be chosen by the third party.
- 006_STS.txt:27: You define the permissions in the IAM policy, and you're good to go, so let's have a look at a bit more details to make this a bit more clear about this, why this external ID is so important, and this is called the confused deputy, so this is a diagram directly coming from the documentation, and so we see here is that we have your AWS accounts on the left-hand side, and we have the third party in the middle, and we have another AWS accounts on the right-hand side, okay?
- 006_STS.txt:29: It can't verify whether this role belongs to the accounts on the left or on the right, and so it's going to assume that role, and by assuming that role, instead of assuming the role on the right-hand side accounts, it's going to assume roles in the left-hand side accounts without knowing it, and so, therefore, it's going to think that it's going to be performing actions on the right-hand side accounts, but actually, it performs action on the left-hand side accounts, and this is called the confused deputy because the account in the middle is confused.
- 006_STS.txt:30: It thinks it's going to operate on the right-hand side accounts, but it actually operates on the left-hand side accounts, and so this is why AWS defined this external ID thing, and let's see how this protects against this attack, and this is an exam question, so this is why I'm going go deep into this, so we have now the same setup, but this time, we also define an external ID to assume this role, and this external ID is something secret that is shared between your accounts and the account in the middle, so we're saying, "Okay, here is the ARN of the account you should assume, but when you do assume this ARN, you need to pass in the external ID that we have defined together, and so, as such, okay, it's able to access this role because we know we both know the secrets, okay?
- 006_STS.txt:37: As you can see in the condition, there is a StringEquals PrincipalTag/Department equals HR, and therefore, only a user that has done an AssumeRole with that specific session tag will be able to make an API call into the S3 buckets, so this is particularly helpful when you federate users in STS and you want to have some conditions in your IAM policies based on some tags passed through the federation, so finally, to conclude with STS, there's a few important APIs you need to know.
- 006_STS.txt:43: So at a high level, these are the important APIs you need to know.
- 006_STS.txt:44: The most important ones are going to be the first four.
- 127_IAM Permission Boundaries.txt:2: So, permission boundaries are a concept that allows you to restrict an IAM policy, and they're supported only for users and roles, so not groups.
- 127_IAM Permission Boundaries.txt:10: Well, the right-hand side defines the actual permissions of the user, which is to allow iam:CreateUser, but the left-hand side restricted what the user can get permissions on, and the user is only allowed to have permissions on S3, CloudWatch and EC2.
- 127_IAM Permission Boundaries.txt:18: So, the use cases for permission boundaries is to delegate responsibilities to non administrators within their permission boundaries, for example, to create new IAM users, or to allow developers to self-assign policies and manage their own permissions, while making sure they cannot elevate or escalate the privileges.
- 128_IAM Policy Evaluation Logic.txt:5: If there is a permission boundary or an Organizations SCP or a session policy, then an explicit allow is used to limit actions.
- 128_IAM Policy Evaluation Logic.txt:9: So bottom line is if you have an organizational SCP, a permission boundary or a session policy, you must see an explicit allow, but it's not enough.
- 128_IAM Policy Evaluation Logic.txt:10: You must also have an explicit allow in an identity-based or resource-based policy.
- 128_IAM Policy Evaluation Logic.txt:18: Then we look at if there is an SCP, and if there's an SCP, as we said before, there must be an explicit allow.
- 128_IAM Policy Evaluation Logic.txt:31: So this is the more complicated version, but the version I just gave you from before should be enough for you to understand how to evaluate some logic.
- 128_IAM Policy Evaluation Logic.txt:38: We cannot create a queue because we have Deny sqs:*.
- 128_IAM Policy Evaluation Logic.txt:41: So we cannot do sqs:DeleteQueue.
- 128_IAM Policy Evaluation Logic.txt:46: So the requester in account A must have an identity-based policy that allows the action on the S3 buckets.
- 128_IAM Policy Evaluation Logic.txt:47: And then in the bucket in account B, you must have a resource policy that is going to allow the requester in account A to access the resource.
- 128_IAM Policy Evaluation Logic.txt:60: And finally, the bucket policy is saying, you cannot access me unless you come from this specific VPC endpoint.
- 128_IAM Policy Evaluation Logic.txt:61: So as a whole, the EC2 instance will be allowed to do list bucket, get object, and put object on the VPC endpoint and only through the VPC endpoint.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:9: Any type of original permissions are going to be given up and we're going to take only the permission assigned to the role.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:11: So an example of where this becomes very important.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:27: So it's very simple On your S3 bucket you just create and allow, put object and get object where the principle org ID is equals to the Org ID You have and any member accounts can access your S3 buckets but user outside your organizations or accounts outside your organizations cannot.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:34: And then the EC2 instance, of course itself must have enough permissions to also do the message polling on account A.
- 130_ABAC (Attribute based access control).txt:14: Then we make sure that the user A, can only access the resources tagged in red.
- 131_IAM MFA.txt:17: So if you enable MFA Delete, you force users to generate a code on a device before doing important operations on Amazon S3.
- 131_IAM MFA.txt:18: So MFA can be required, for example, to permanently delete an object version because this is a destructive type of operation or suspend versioning on the bucket.
- 131_IAM MFA.txt:19: But MFA for MFA Delete is not going to be required for enabling versioning or listing deleted versions.
- 131_IAM MFA.txt:21: So to use MFA Delete, you must first enable versioning on the bucket and only the bucket owner so the root accounts can enable or disable MFA Deletes.
- 131_IAM MFA.txt:24: So, we're saying that we cannot stop or terminate the instances if we have MultiFactorAuthenticationPresent false.
- 131_IAM MFA.txt:25: So that means that if we don't have MFA, we cannot stop or terminate instances.
- 131_IAM MFA.txt:33: And this allows you to grant access only within a specified time after the MFA authentication.
- 131_IAM MFA.txt:34: So in this example, we're using the numeric less than and we're saying, "Hey, if the multifactor of age is less than 300 seconds, then you should allow it.
- 131_IAM MFA.txt:36: You also have a very important edge case with MFA.
- 131_IAM MFA.txt:44: So, if you are getting into this kind of issue then the only option out of it is to have the administrator to use the CLI or the APIs of AWS to remove the existing but deactivated device.
- 132_IAM Credentials Report.txt:5: So this is something you should know about, but there is a better way to do things if you want to manage aged access keys.
- 132_IAM Credentials Report.txt:9: So the exam may ask you, "Do you prefer Config or do you prefer the IAM credentials report to automate, you know, rotating and alerting on old keys?" Well, the answer is absolutely use Config, but still you should know about the IAM credentials report.
- 133_IAM Roles and PassRole to Services.txt:2: So we know that some services will need to perform actions on our behalf, and so therefore we must assign permissions to AWS services, and we are using for this IAM roles.
- 133_IAM Roles and PassRole to Services.txt:4: Whenever we have an EC2 instance that wants to access the APIs of AWS, we must assign it an IAM role and then it will be able to access and allocate the DynamoDB table and so on.
- 133_IAM Roles and PassRole to Services.txt:6: The other thing you should know about role is how to pass a role to AWS services.
- 133_IAM Roles and PassRole to Services.txt:8: So with this permission, you can ensure that only the approved users can configure an AWS service with an IAM role that grants permissions.
- 133_IAM Roles and PassRole to Services.txt:14: And so that means that this user will be only able to PassRole that starts with EC2 roles for.
- 134_IAM Roles Anywhere.txt:17: If you have another on-premises server, the best practice is not to reuse the same certificate, but instead to generate a new certificate, again from the Private CA called Certificate B.
- 134_IAM Roles Anywhere.txt:19: And of course, because you use AWS permissions, the on-premises server A cannot access Role B and the permissions of the Role A cannot access Bucket B.
- 134_IAM Roles Anywhere.txt:22: Well, traditionally you only had to use IAM Users.
- 135_IAM Trust Policies.txt:9: So instead of principal being AWS root, we have now principal being Service ec2.amazonaws.com, which is saying that only the EC2 instances or the EC2 service can assume this role, and you can have this for so many things.
- 135_IAM Trust Policies.txt:11: So it's important to have a look at this because the exam make show you IAM policies or may ask you about trust policies, and you need to know that trust policies can be restricting, can be used to restrict who can access this IAM role.
- 137_[CCP_SAA_DVA_SOA] IAM Security Tools - Hands On.txt:17: And it turns out that maybe based on this access, have 37 pages of this, maybe the user needs access only to a few services but not all of them.
- 138_IAM Access Analyzer.txt:9: But if we define the zone of trust to be our accounts and only the role, the user, and the VPC endpoints are within our accounts, then the accounts and the external clients are going to be flagged as a finding, and you can look at it within the console to take action if you think this is a security risk.
- 138_IAM Access Analyzer.txt:12: So you can validate your policy against the policy grammar and best practices.
- 138_IAM Access Analyzer.txt:21: And then, out of it, will generate an IAM policy that is going to be most likely security best practice because it will encompass all the API calls that your application has been making over the past 90 days.
- 139_[SOA] STS Overview.txt:2: So it's called a Security Token Service and it allows to grant limited and temporary access to AWS resources.
- 139_[SOA] STS Overview.txt:3: So you have tech tokens and they can be valid up for to one hour or more and they must be refreshed when they're invalid.
- 139_[SOA] STS Overview.txt:4: So when you want to get these tokens you must first issue an API call into the STS service.
- 139_[SOA] STS Overview.txt:10: So that means that your users are logged in with SAML and then you extend that SAML token to get credentials from STS, you first must configure of course, STS, to be able to exchange and verify these SAML tokens.
- 139_[SOA] STS Overview.txt:17: So when you're using STS to assume a role, you must first define an IAM role within your account or cross account, and then you define which principles can access this IAM role.
- 139_[SOA] STS Overview.txt:21: Of course he must be authorized to perform that API call.
- 139_[SOA] STS Overview.txt:28: So this IAM role, that we define in the production accounts, must also of course, authorize the development accounts to assume it.
- 139_[SOA] STS Overview.txt:29: And so if you have an IAM group of testers that are not authorized to assume this role then they cannot access your production account.
- 140_STS Version 1 & Version 2.txt:6: And this global endpoint supports only the regions that are enabled by default in your accounts, but you can actually have a setting to change and enable "All Regions" for STS.
- 140_STS Version 1 & Version 2.txt:10: And so to get a token for that region, you must use, instead, a Regional STS endpoint, and that's available in all regions.
- 140_STS Version 1 & Version 2.txt:17: So if you have an error like this, which says, "Hey, you cannot, for example, describe your instances because AWS was not able to validate the provided access credentials." You have two options.
- 141_STS External ID.txt:5: When you have a external ID in the AssumeRole IAM policy, then the role can only be assumed if the API call made it to assume that role also contains the external id you have defined, for example, in this example 56789.
- 141_STS External ID.txt:29: And so the IAM role is going to be edited so that the IAM role trusts the third-party only if the external ID is equal to 56789.
- 144_EC2 Instance Metadata Overview.txt:36: And this is very important because this ap, this part, the HttpEndpoint equal disabled can come up sometimes in Iam policies.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:22: So there's an option when you start your EC2 Instance to say "Hey, I want V1 and V2" or "I want V2 only" where the token is required.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:23: Or using the CLI saying "Hey, HTP tokens required" Again, remember tokens means IMDSv2.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:26: There's also other ways you can do, so for example, you can make sure that the Role Credentials are retrieved for the EC2 instance is only from IMDSv2.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:32: The other way to protect only some resources, for example, would be to attach the same policy to an S3 bucket.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:36: So to prevent the launch of an EC2 two instance using old instance metadata, what you can do is that you can attach it as an SCP or an IAM policy, whatever you want, you can attach this and it says deny EC2 two run instances when metadata tokens is not equals to required.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:37: So if we don't specify tokens then you cannot launch run instances.
- 288_IAM - Advanced Policies.txt:10: And this can be used, for example, to restrict usage on AWS only to, for example, your company network and, therefore, guaranteeing that only your company can access your own AWS environment.
- 288_IAM - Advanced Policies.txt:16: And this can be applied more globally on their organization SCP to deny or to allow only access to a specific region.
- 288_IAM - Advanced Policies.txt:23: And, so, your user must also be part of the department data to perform these actions.
- 288_IAM - Advanced Policies.txt:26: But the user can do anything on EC2, but they can only stop and terminate instances if they have MultiFactorAuthenticationPresent, so this is a deny on the false.
- 288_IAM - Advanced Policies.txt:35: So this condition right here, the aws:PrincipalOrgID, can be used to restrict resource policies to only accounts that are a member of an AWS organization.
- 288_IAM - Advanced Policies.txt:37: And it's saying that you can do a PutObject or a GetObject only if the API call is made from an account that has the PrincipalOrgID of whatever.
- 288_IAM - Advanced Policies.txt:38: And, therefore, it's only going to allow member accounts from your organization to access the S3 bucket, but any user outside the organization will be denied because of this S3 bucket policy.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:12: So this is very important.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:14: We can now do anything that the role does, but we cannot use our original permissions.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:17: What they can do is we should use a resource-based policy because this way, we don't have to assume a role, and we can both scan the DynamoDB table and write to an S3 bucket in another account.
- 290_IAM - Policy Evaluation Logic.txt:9: That means that it can only do things within S3 CloudWatch and EC2.
- 290_IAM - Policy Evaluation Logic.txt:28: And I'm gonna say the only thing you can do, actually, John, is to have AmazonS3FullAccess.
- 290_IAM - Policy Evaluation Logic.txt:30: And so through this AWS S3 full access managed policy, even though John has an administrator access, when John logs in, the only thing he can do is to access S3 because S3 is its boundary.
- 290_IAM - Policy Evaluation Logic.txt:34: The permission boundary, which by the way, only applies to a user or a role and not a group.
- 290_IAM - Policy Evaluation Logic.txt:39: Or to allow developers to self assign and manage their own permissions, while making sure they can't escalate their privileges, that means making themselves administrators.
- 290_IAM - Policy Evaluation Logic.txt:43: And you don't need to know by heart, but it should make sense to you.
- 290_IAM - Policy Evaluation Logic.txt:62: And so, only if all these things are allowing and working together, or not denying specifically, then you will have a final decision allow, and you'll be able to do your action.
- 290_IAM - Policy Evaluation Logic.txt:67: The answer is no, you cannot because there is a Deny star on SQS, and CreateQueue belongs to that block and there's a deny on it, so it's definitely going to be denied.
- 290_IAM - Policy Evaluation Logic.txt:74: So you cannot perform sqs:DeleteQueue, even though you have allowed it explicitly in the second block.
- 290_IAM - Policy Evaluation Logic.txt:75: So very important to know.
- 290_IAM - Policy Evaluation Logic.txt:79: And so, because there is no explicit deny but also there's no explicit allow, then you cannot perform ec2:DescribeInstances with this IAM policy.

### 6. Patterns / Architectures
- 005_IAM Access Analyzer.txt:6: And so, you define a zone of trust, which is going to correspond to your AWS accounts or your entire AWS organization.
- 006_STS.txt:1: So now let's talk about STS, which is a service that is so important in AWS, which isn't going to allow us to assume roles across different accounts within the same accounts, and also enable us to do identity federation, so let's get started.
- 006_STS.txt:8: Maybe you want to also help your AWS services do what they need, so using service roles, and then, maybe we also want to perform identity federation, and we'll have a deep dive onto identity federation in this course because you need to know them all.
- 006_STS.txt:17: Okay, but what does it look like in practice when we have STS cross-account access?
- 006_STS.txt:22: Again, just revision, but I want to make dead clear how STS works because it gets a little bit more complicated right now, and this is probably something new for you, but very important to note going into the exam, so in case you want to provide access to AWS accounts owned by third parties, there's going to be an extra thing called external ID, so this is text, and then I have a diagram, so there's a zone of trust, and the zone of trust is all the accounts and organizations that you own, and outside of that zone of trust is going to be third parties.
- 006_STS.txt:25: They're not directly in your organization, and so you can use IAM Access Analyzer to find out which resources in your accounts are outside of your zone of trust, okay?
- 006_STS.txt:33: The idea is that when you assume an IAM role, or, for example, you have user federation that leverages STS, it is possible for you to pass a session tag, so how does that work?
- 006_STS.txt:37: As you can see in the condition, there is a StringEquals PrincipalTag/Department equals HR, and therefore, only a user that has done an AssumeRole with that specific session tag will be able to make an API call into the S3 buckets, so this is particularly helpful when you federate users in STS and you want to have some conditions in your IAM policies based on some tags passed through the federation, so finally, to conclude with STS, there's a few important APIs you need to know.
- 006_STS.txt:40: AssumeRoleWithWebIdentity, which we are using a IdP, and so that includes Amazon Cognito, Login with Amazon, Facebook, Google, or any OpenID Connect-compatible IdP, and so we'll be seeing this in detail in the federation section, and overall, just so you know right now, AWS does not recommend to use the AssumeRoleWithWebIdentity API anymore.
- 006_STS.txt:42: Then we have a GetSessionToken, which is used for MFA, so when we log using MFA to get credentials back, or GetFederationToken, which is usually to get a credentials, temporary credentials, when we have federation using a proxy app, for example, when we have something that distributes tokens within a corporate network, okay?
- 006_STS.txt:47: I will see you in the next lecture for some identity federation.
- 127_IAM Permission Boundaries.txt:14: So, these can be used in combination with AWS Organizations SCP.
- 127_IAM Permission Boundaries.txt:16: So, permission boundaries, they operate a little bit like Organizations SCP.
- 127_IAM Permission Boundaries.txt:20: It's also very useful to restrict one specific user instead of a whole account using Organizations &amp; SCP, or to test out an SCP beforehand by just playing around with a permissions boundary.
- 128_IAM Policy Evaluation Logic.txt:5: If there is a permission boundary or an Organizations SCP or a session policy, then an explicit allow is used to limit actions.
- 128_IAM Policy Evaluation Logic.txt:9: So bottom line is if you have an organizational SCP, a permission boundary or a session policy, you must see an explicit allow, but it's not enough.
- 128_IAM Policy Evaluation Logic.txt:44: Okay, when we go cross-account, it gets a little bit more funky.
- 128_IAM Policy Evaluation Logic.txt:50: That's why we're saying it's a bit more funky with cross-account access.
- 128_IAM Policy Evaluation Logic.txt:53: Cross-account, when the same account, it is going to be allowed.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:26: On top of it, you can use the principle org ID condition in your resource policies to restrict access to accounts that are all members of the same organization.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:27: So it's very simple On your S3 bucket you just create and allow, put object and get object where the principle org ID is equals to the Org ID You have and any member accounts can access your S3 buckets but user outside your organizations or accounts outside your organizations cannot.
- 137_[CCP_SAA_DVA_SOA] IAM Security Tools - Hands On.txt:14: So as you can see, organizations, health, identity and access managers with IAM Service, EC2, Resource Explorer, were all accessed by my user.
- 138_IAM Access Analyzer.txt:6: And so, you define a zone of trust, which is going to correspond to your AWS accounts or your entire AWS organization.
- 139_[SOA] STS Overview.txt:23: So if we have a look at Cross-Account Access with STS, let's say we have a Dev account and a Prod account and we have an S3 bucket in Prod that we want to access from IAM users in a group in Dev.
- 288_IAM - Advanced Policies.txt:16: And this can be applied more globally on their organization SCP to deny or to allow only access to a specific region.
- 288_IAM - Advanced Policies.txt:35: So this condition right here, the aws:PrincipalOrgID, can be used to restrict resource policies to only accounts that are a member of an AWS organization.
- 288_IAM - Advanced Policies.txt:36: So we have an organization with multiple accounts, and say we have S3 buckets with this policy on it.
- 288_IAM - Advanced Policies.txt:38: And, therefore, it's only going to allow member accounts from your organization to access the S3 bucket, but any user outside the organization will be denied because of this S3 bucket policy.
- 290_IAM - Policy Evaluation Logic.txt:32: So IAM permission boundaries can be used in combinations of AWS Organizations SCP.
- 290_IAM - Policy Evaluation Logic.txt:35: And your organization SCP, which applies to every single IAM entity in your account.
- 290_IAM - Policy Evaluation Logic.txt:40: Or for example, restrict one very specific user inside yours organization instead of applying an entire SCP to your account and restricting everyone in your whole account.
- 290_IAM - Policy Evaluation Logic.txt:45: And so we're going to look at Deny evaluation, we're going to look at Organizations SCP, Resource-based policy, Identity-based policy, IAM permission boundaries, and then finally, Session policies to allow or deny a specific IAM action.
- 290_IAM - Policy Evaluation Logic.txt:49: Then we look at the organizations SCP, and is there an allow?

## Step 3 â€” Deep Expansion (Core Concepts and Services)

### AWS IAM
- What it is: Core authorization framework for identities, resources, and service principals in AWS.
- Why it exists: Enforces least privilege and explicit decision logic over cloud actions.
- Internal working: Evaluates identity policies, resource policies, boundaries, SCPs, and context conditions.
- Architecture: Caller identity -> policy evaluation engine -> explicit allow/deny decision -> API result.
- Key components: Users, groups, roles, policies, trust policies, condition keys, policy simulator.

### AWS STS
- What it is: Token service issuing short-lived credentials for role assumption and federation.
- Why it exists: Reduces standing credentials and enables secure cross-account/workload access.
- Internal working: AuthN context + trust policy + optional external ID/session constraints -> temp credentials.
- Architecture: Principal -> AssumeRole/Federation call -> temporary credentials -> scoped API actions.
- Key components: AssumeRole APIs, session policies, duration limits, external IDs, session tags.

### AWS Organizations and SCPs
- What it is: Multi-account governance layer for billing, account structure, and global guardrails.
- Why it exists: Separates workloads by account while enforcing centralized security boundaries.
- Internal working: OU/account hierarchy with SCP evaluation that bounds account-level IAM permissions.
- Architecture: Root -> OUs -> accounts with inherited and attached SCP controls.
- Key components: Management account, member accounts, OUs, SCPs, delegated administrators.

### Amazon Cognito
- What it is: Managed identity service for application user directories and federated sign-in.
- Why it exists: Offloads app auth lifecycle, federation, and token issuance.
- Internal working: User Pools for authentication and Identity Pools for AWS credential brokering.
- Architecture: App client -> Cognito auth flow -> JWT tokens/temporary AWS credentials -> app/API access.
- Key components: User Pools, Identity Pools, app clients, federation providers, groups.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Identity and access control plane | IAM + STS | Microsoft Entra ID + RBAC + PIM | Cloud IAM + IAM Conditions |
| SSO and workforce federation | IAM Identity Center | Entra ID SSO | Cloud Identity + Workforce Identity Federation |
| App/user federation | Cognito | Entra External ID / Azure AD B2C | Identity Platform |
| Organization-level guardrails | Organizations + SCPs + Control Tower | Management Groups + Azure Policy + Landing Zones | Resource Manager org policies + folders |
| Directory integration | AWS Directory Service | Entra Domain Services / AD DS integration | Managed Microsoft AD / directory integrations |

### Trade-offs and Decision Notes
- AWS gives strongest account-native IAM plus STS role assumption patterns for multi-account environments.
- Azure is strongest for enterprise workforce identity centralized in Entra and policy-driven landing zones.
- GCP is strong for condition-based IAM and workload identity federation in cloud-native platforms.
- For IAM_Advanced, keep conceptual policy intent portable while implementing cloud-native controls.

## Phase-wise Architect-Level Organization

### Phase 1 â€” Foundations
- Identity model, principal types, and authentication mechanisms.
- Authorization basics with explicit allow/deny and context-aware policy conditions.

### Phase 2 â€” Core Services
- Implement IAM roles/policies, STS, and account-level guardrails based on topic focus.
- Use access analysis and reports to detect policy drift and credential risk.

### Phase 3 â€” Advanced Patterns
- Multi-account delegated administration, federated trust chains, and policy boundary controls.
- Organization-wide standards and targeted exception-handling workflows.

### Phase 4 â€” System Design
- Enterprise identity architecture: workforce, workload, and external identities with auditable trust flows.
- Scaling considerations: account growth, policy sprawl, permission debt, and federation complexity.
- Cost considerations: primarily operational/governance overhead, tool integration, and identity platform licensing in multi-cloud.

## Deduped Consolidation Snapshot

This additive section keeps original extraction untouched and provides duplicate-clean views for faster review.

### Concepts (Deduped)
- Access Boundary Controls
- Authorization Model
- Federated Authentication
- IAM Domain Operational Context
- Identity Lifecycle
- Least Privilege
- Organization Governance
- Temporary Credential Strategy

### Services (Deduped)
- ABAC
- AWS IAM
- AWS Organizations
- AWS STS
- Amazon Cognito
- EC2 Instance Metadata
- IAM Access Analyzer
- IAM Policies
- IAM Roles
- MFA
- Permission Boundaries
- SAML/OIDC Federation
- Service Control Policies

### Features (Deduped)
- access analyzer
- boundaries
- conditions
- credentials report
- evaluation
- federation
- mfa
- oidc
- saml
- scp
- trust policy

### Use Cases (Deduped)
- 005_IAM Access Analyzer.txt:8: So for example, we have an S3 bucket, we can share it with a specific role, a user, an account, an external client by IP, or a VPC endpoint.
- 006_STS.txt:1: So now let's talk about STS, which is a service that is so important in AWS, which isn't going to allow us to assume roles across different accounts within the same accounts, and also enable us to do identity federation, so let's get started.
- 006_STS.txt:4: Our users wants to access a role, for example, it's within the same or another accounts, and so, to do so, it's going to use the AssumeRole API on STS.
- 006_STS.txt:11: Remember, when we use STS, when we assume a role for it be a user, an application, or a service, we give up our original permissions, and we take the permissions assigned to the role, and so we already had a discussion as to whether we should use a role or a resource-based policy, but just a slight reminder here.
- 006_STS.txt:12: Okay, so here is the deep dive a little bit on providing access to an IAM user in your or another AWS accounts that you own, so this is within your circle of trust, in which case, we can, for example, create a role in Account A or A*.
- 006_STS.txt:17: Okay, but what does it look like in practice when we have STS cross-account access?
- 006_STS.txt:18: Again, just a reminder, but something you've already seen before, probably, so we have a production accounts with an S3 buckets and a development accounts with two groups of users, for example, testers and developers, and we want to provide developers access to the S3 bucket production app.
- 006_STS.txt:23: For example, you work with a partner, and they provide you a service, and you want to give, like I say, consulting company, and you want to give that consulting company access to your accounts.
- 006_STS.txt:26: Which account, which resources, for example, your S3 buckets are going to be granted to third parties, and so if you wanna grant access to your third parties to some of your resources, you can get something called the third-party AWS account ID, which is a very obvious, and the most important thing here is you define an external ID, and this external ID is a secret between you and the third party, and you have to define it, and this is because if you give access to the third party to a role in your accounts, you want to make sure that only that third party has access to this role, so this is to uniquely associate the role between you and a third party, and you must be provided when defining the trust and when assuming the role, and we'll see why, and it must be chosen by the third party.
- 006_STS.txt:28: And what the account on the right-hand side that we don't own is going to try to attack us on the left-hand side, and to attack us, it's going to be using the account in the middle, so let's see what happens when you don't use the external ID and how this attack is possible and what happens when the, once we have the external ID, and how this prevents this attack, so in the first case, our AWS accounts right here has created an ExampleRole right here, and this ExampleRole is going to be able to be assumed by the middle accounts, so we're saying, "Okay, here is the ARN of this ExampleRole, and you are able to assume this role and access some of our resources within our accounts using this role, so this is everything we've seen so far, and then, the other AWS accounts is going to try to attack us, so it's going to say, "Hey," to the middle accounts, "Hey, I have a role for you, "and this role is going to allow you "to access stuff in my accounts," but instead of providing a role in their accounts, they provide the exact same AWS1 ExampleRole ARN to the middle accounts, so this one doesn't know.
- 006_STS.txt:30: It thinks it's going to operate on the right-hand side accounts, but it actually operates on the left-hand side accounts, and so this is why AWS defined this external ID thing, and let's see how this protects against this attack, and this is an exam question, so this is why I'm going go deep into this, so we have now the same setup, but this time, we also define an external ID to assume this role, and this external ID is something secret that is shared between your accounts and the account in the middle, so we're saying, "Okay, here is the ARN of the account you should assume, but when you do assume this ARN, you need to pass in the external ID that we have defined together, and so, as such, okay, it's able to access this role because we know we both know the secrets, okay?
- 006_STS.txt:31: And when we look at the other AWS accounts on the right-hand side, which is trying to attack us, it's going to try to use, again, this role on the left-hand side, but it doesn't know the external ID, and so it's going to give another external ID to the account in the middle, and this time, by providing the wrong external ID, this is going to be preventing the account in the middle to access our AWS accounts because the external ID is not matching, and therefore, we have added an extra level of security, so bottom line is you don't need to know exactly all the steps, but I want to show you exactly how that works and not just tell you using external ID prevents this kind of attacks, so bottom line is still if you are using third-party accounts, and they need to get access to your AWS accounts, and you need to secure that, the answer is to use the STS AssumeRole API, but also to define an external ID, and this, hopefully, description of how this works helps you.
- 006_STS.txt:33: The idea is that when you assume an IAM role, or, for example, you have user federation that leverages STS, it is possible for you to pass a session tag, so how does that work?
- 006_STS.txt:34: Well, your user is going to, for example, do the STS AssumeRole API call and pass a session tag as part of the API call, for example, for Department=HR, and STS will then return temporary security credentials for that user with the session tag, so why do we do this?
- 006_STS.txt:36: For example, we have an S3 bucket named hr-docs, and it contains this S3 bucket policy.
- 006_STS.txt:37: As you can see in the condition, there is a StringEquals PrincipalTag/Department equals HR, and therefore, only a user that has done an AssumeRole with that specific session tag will be able to make an API call into the S3 buckets, so this is particularly helpful when you federate users in STS and you want to have some conditions in your IAM policies based on some tags passed through the federation, so finally, to conclude with STS, there's a few important APIs you need to know.
- 006_STS.txt:39: AssumeRoleWithSAML, which is to get credentials when we are federated with SAML.
- 006_STS.txt:42: Then we have a GetSessionToken, which is used for MFA, so when we log using MFA to get credentials back, or GetFederationToken, which is usually to get a credentials, temporary credentials, when we have federation using a proxy app, for example, when we have something that distributes tokens within a corporate network, okay?
- 127_IAM Permission Boundaries.txt:10: Well, the right-hand side defines the actual permissions of the user, which is to allow iam:CreateUser, but the left-hand side restricted what the user can get permissions on, and the user is only allowed to have permissions on S3, CloudWatch and EC2.
- 127_IAM Permission Boundaries.txt:13: You define the boundary of what's allowed for a policy to allow.
- 127_IAM Permission Boundaries.txt:18: So, the use cases for permission boundaries is to delegate responsibilities to non administrators within their permission boundaries, for example, to create new IAM users, or to allow developers to self-assign policies and manage their own permissions, while making sure they cannot elevate or escalate the privileges.
- 127_IAM Permission Boundaries.txt:19: For example, make themself admins because you have defined a boundary around their permissions.
- 128_IAM Policy Evaluation Logic.txt:30: So this is when we have a role session and so on.
- 128_IAM Policy Evaluation Logic.txt:44: Okay, when we go cross-account, it gets a little bit more funky.
- 128_IAM Policy Evaluation Logic.txt:47: And then in the bucket in account B, you must have a resource policy that is going to allow the requester in account A to access the resource.
- 128_IAM Policy Evaluation Logic.txt:48: So this is different from being in the same account because when you're in the same account, you look at the combination of the identity-based policy and the resource policy and you look for one allow in between the two.
- 128_IAM Policy Evaluation Logic.txt:49: But when you have two accounts, you look at whether or not do both accounts allow the request.
- 128_IAM Policy Evaluation Logic.txt:51: So if you have a look of the simple use case of an IAM policy and a resource policy in the same account, if we have an empty IAM user IAM policy, but then the S3 bucket policy, the resource policy, actually explicitly allows this user through its ARN to access the bucket, then this is allowed.
- 128_IAM Policy Evaluation Logic.txt:53: Cross-account, when the same account, it is going to be allowed.
- 128_IAM Policy Evaluation Logic.txt:54: If we take a look at a more complicated use case where we have an IAM policy, a VPC endpoint policy, and a resource policy, what is evaluated?
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:1: So now let's understand the difference between in a cross account type of use case accessing a resource Thanks to resource-based policy or a cross account IAM role.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:2: So the first option is to attach a resource-based policy to a specific resource, for example an S3 bucket policy and allow another account to access it.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:6: The other option is to actually attach an S3 bucket policy of the Amazon S3 bucket in account B To allow the user in account A to access it.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:8: The first one is that when you assume a role would it be from a user application or service.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:10: When you're using a resource-based policy the principle doesn't have to give up his permissions because just the resource policy will allow the user to do a specific action.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:12: For example, you have a user in account A and you need to do at the same time a scan of a DynamoDB table in the same account A and then send the output to an industry bucket in account B.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:16: So to summarize, IAM roles are going to be very helpful to give temporary permissions for a specific task and they will allow a user and application to perform many actions in a different account than the one you have When you are assuming an IAM role, The permissions will expire over time.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:20: So if you take an example of Amazon Event Bridge for example, when the rule runs, it needs permission on the targets.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:22: So, in that case we have an Eve bridge rule and the Lambda will have, for example a resource-based policy that allows Eve Bridge to invoke it.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:25: For example, if the target is a Kinesis data stream or systems manager run command or an ECS task, in that case the event bridge rule is going to assume an IAM role to make that API call onto the target service.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:29: So another example of resource policies is, for example for cross account access.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:32: And so here we have an SQS queue access policy that is going to allow all of the accounts so 1 1 1 2 2 2, 3 3 3 to do SQS receive message on the queue.
- 130_ABAC (Attribute based access control).txt:6: So for example, you say a user belongs to a department, a user belongs to a specific job, a user belongs to a specific team.
- 130_ABAC (Attribute based access control).txt:27: Disadvantage that when you want to create new resources, you may have to update your policies.
- 130_ABAC (Attribute based access control).txt:32: For example, SAML 2.0 IDP or a Web IDP.
- 131_IAM MFA.txt:5: So, Alice has a password and then thanks to the device you own, for example, your phone or a security key or whatever, then you're going to get a successful login.
- 131_IAM MFA.txt:12: Or you can use, for example, a security key such as a YubiKey, which supports for multiple root and IAM users using a single security key.
- 131_IAM MFA.txt:14: So for example, one by Gemalto which gives you a code or you have the hardware Key Fob MFA device for AWS GovCloud which is provided by SurePassID and again gives you a code that you just enter while logging in.
- 131_IAM MFA.txt:18: So MFA can be required, for example, to permanently delete an object version because this is a destructive type of operation or suspend versioning on the bucket.
- 131_IAM MFA.txt:41: So for example, you created an MFA device for a user but you never activated it.
- 132_IAM Credentials Report.txt:6: So let's say, for example, that you want to detect whenever an access key is going to be old.
- 132_IAM Credentials Report.txt:8: And then from this, you can trigger an SSM automation to actually rotate these access keys, for example, and then send a notification to Jira, Slack or API endpoints or notifications into an SNS topic for a master security account that you have.
- 133_IAM Roles and PassRole to Services.txt:4: Whenever we have an EC2 instance that wants to access the APIs of AWS, we must assign it an IAM role and then it will be able to access and allocate the DynamoDB table and so on.
- 133_IAM Roles and PassRole to Services.txt:10: And this can be assigned, for example, to a user.
- 134_IAM Roles Anywhere.txt:3: So for example, you have an on-premises server or you have containers, applications or multi-cloud workloads, anything that runs outside of AWS cloud.
- 134_IAM Roles Anywhere.txt:6: For example, AWS Access Keys on on-premises servers.
- 134_IAM Roles Anywhere.txt:21: So, what's the difference you say, for example, between using IAM Users and IAM Roles Anywhere for on-premises server access to AWS?
- 134_IAM Roles Anywhere.txt:26: For example, someone will post the keys on GitHub, logs or backups.
- 134_IAM Roles Anywhere.txt:31: These credentials expire automatically, so after one year, for example, they'll be gone.
- 135_IAM Trust Policies.txt:7: For example, if you have a condition to the previous statement and you say, "I want MultiFactorAuthPresent to be true, then this allows any identity to assume the role as long as the multifactor authentication mechanism is present, which is an enhanced security.
- 135_IAM Trust Policies.txt:8: But also for example, when you create EC2 instance profile roles, we have a service principal.
- 136_[CCP_SAA_DVA_SOA] IAM Security Tools.txt:6: This one is at the user-level and the Access Advisor is going to show the service permissions granted to a user and when those services were last accessed.
- 137_[CCP_SAA_DVA_SOA] IAM Security Tools - Hands On.txt:5: We can see when the user was created, if the password was enabled, when the password was last used and last changed, when is the next rotation to be expected if we do enable password rotation?
- 137_[CCP_SAA_DVA_SOA] IAM Security Tools - Hands On.txt:9: Yes, they're created for my Stefane account, but not for my root account, and when they were last rotated, last used and so on, you can get more information about other access keys and certificates and so on.
- 137_[CCP_SAA_DVA_SOA] IAM Security Tools - Hands On.txt:13: And Access Advisor is going to show me which services were accessed by my user and when.
- 137_[CCP_SAA_DVA_SOA] IAM Security Tools - Hands On.txt:15: So I use my user to access these things by clicking in the UI, but some services were not accessed, for example, Alexa for Business or AWS App2Container and so on.
- 137_[CCP_SAA_DVA_SOA] IAM Security Tools - Hands On.txt:19: On top of it, if a user accesses a specific service for example Amazon EC2, we are told that this is the administrator access that granted access to this service.
- 137_[CCP_SAA_DVA_SOA] IAM Security Tools - Hands On.txt:20: So to summarize, Access Advisor becomes very helpful when you need to do granular user access permissions on AWS.
- 138_IAM Access Analyzer.txt:8: So for example, we have an S3 bucket, we can share it with a specific role, a user, an account, an external client by IP, or a VPC endpoint.
- 139_[SOA] STS Overview.txt:3: So you have tech tokens and they can be valid up for to one hour or more and they must be refreshed when they're invalid.
- 139_[SOA] STS Overview.txt:4: So when you want to get these tokens you must first issue an API call into the STS service.
- 139_[SOA] STS Overview.txt:5: So when you assume a role, for example, this is an STS AssumeRole API call.
- 139_[SOA] STS Overview.txt:8: So you need to AssumeRole when credentials expire.
- 139_[SOA] STS Overview.txt:12: So this way when the users are identified with an identity provider such as Facebook Login Google Dot login, or anything OIDC compatible, and then they're going to exchange these credentials for, again, credentials of STS.
- 139_[SOA] STS Overview.txt:16: So this is when you're doing MFA from a user or an account root user and you want to get actual credentials after having logged in with MFA.
- 139_[SOA] STS Overview.txt:17: So when you're using STS to assume a role, you must first define an IAM role within your account or cross account, and then you define which principles can access this IAM role.
- 139_[SOA] STS Overview.txt:18: Then you're going to use the STS service, to retrieve credentials, and then impersonate the IAM role you have access to, for example, using the AssumeRole API.
- 139_[SOA] STS Overview.txt:20: So if you have a look here, for example a user wants to access a role in the same or another account is going to do AssumeRole API to STS.
- 140_STS Version 1 & Version 2.txt:4: And so when you're a user, you're going to make an API call into STS.
- 140_STS Version 1 & Version 2.txt:9: For example, if you consider the me-south-1 region, it's not enabled by default.
- 140_STS Version 1 & Version 2.txt:17: So if you have an error like this, which says, "Hey, you cannot, for example, describe your instances because AWS was not able to validate the provided access credentials." You have two options.
- 141_STS External ID.txt:2: So when you're using the AssumeRole API, you have the option to pass in what's called an external ID.
- 141_STS External ID.txt:5: When you have a external ID in the AssumeRole IAM policy, then the role can only be assumed if the API call made it to assume that role also contains the external id you have defined, for example, in this example 56789.
- 141_STS External ID.txt:8: This prevents you from having any other customer from tricking, for example, a 3rd party into accessing your resources.
- 141_STS External ID.txt:10: So let's say, for example, that you have a deputy and it's a 3rd party account and you give access to the deputy to your account.
- 141_STS External ID.txt:11: For example, it needs to be able to manage resources in your accounts.
- 141_STS External ID.txt:13: Now, an IAM user that's, for example, we're not using external ID for now, we does not pass external id.
- 141_STS External ID.txt:18: And so you may say in which type of use case can this be exploited?
- 141_STS External ID.txt:19: Well, imagine that the deputy, for example, is a software as a service company and the software's service company has access to many different accounts to perform its roles and its job functions.
- 141_STS External ID.txt:28: So here the deputy is also going to generate an external id, for example, 5678 for our accounts.
- 141_STS External ID.txt:30: So in the use case of what we did before, we're going to also use our own external ID because we know it.
- 142_STS - Revoking IAM Role Temporary Security Credentials.txt:2: So when you have a session with IAM, for example, a long session of 12 hours, in case the credentials are exposed, they can be used for the duration of the session.
- 142_STS - Revoking IAM Role Temporary Security Credentials.txt:5: And we can do this with the console and in the backend what's going to happen is that AWS is going to attach a new inline IAM policy onto the IAM role that is going to deny everything if the token is too old which will force users to reauthenticate.
- 144_EC2 Instance Metadata Overview.txt:3: For example, it's hostname, the instance type, the network settings, and so on.
- 144_EC2 Instance Metadata Overview.txt:8: And so when you have an EC2 instance you can just perform Http request into it and get some information.
- 144_EC2 Instance Metadata Overview.txt:11: So when do you use this?
- 144_EC2 Instance Metadata Overview.txt:12: Well, it's very helpful when you want to be automating tasks such as setting up an instance hostname, configure networking or installing software.
- 144_EC2 Instance Metadata Overview.txt:21: So for example, if you have a cluster or spread or a partition placement group, you have security groups so the names of the security groups that are attached onto the instance as well as any tags attached to the instance.
- 144_EC2 Instance Metadata Overview.txt:25: Well, whenever you have an application on your EC2 instance that leverages the SDK or the CLI and makes an API call into AWS, the SDK itself or the CLI is going to make first a call into the security credentials part of the metadata service.
- 144_EC2 Instance Metadata Overview.txt:34: Or you can simply turn off access using the AWS console or the CLI when you start an EC2 instance.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:22: So there's an option when you start your EC2 Instance to say "Hey, I want V1 and V2" or "I want V2 only" where the token is required.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:24: Finally, when you create an AMI, you can also require IMDSv2 by using the command line option.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:25: IMDS support V2 when registering that AMI.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:26: There's also other ways you can do, so for example, you can make sure that the Role Credentials are retrieved for the EC2 instance is only from IMDSv2.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:28: Well when you have a roll delivered to your EC2 instance, now there is a IAM contacts key called the EC2 Role Delivery.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:32: The other way to protect only some resources, for example, would be to attach the same policy to an S3 bucket.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:36: So to prevent the launch of an EC2 two instance using old instance metadata, what you can do is that you can attach it as an SCP or an IAM policy, whatever you want, you can attach this and it says deny EC2 two run instances when metadata tokens is not equals to required.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:40: It's called modify instance metadata options API call for EC2, and you can say "Hey deny this API call" except if you are, for example an admin that has the ability to re enable IMDSv1.
- 288_IAM - Advanced Policies.txt:3: So that could be for policies for users, that could be policies for your resource policies, for example, for your S3 buckets, or that could be endpoint policies, and so on.
- 288_IAM - Advanced Policies.txt:10: And this can be used, for example, to restrict usage on AWS only to, for example, your company network and, therefore, guaranteeing that only your company can access your own AWS environment.
- 288_IAM - Advanced Policies.txt:16: And this can be applied more globally on their organization SCP to deny or to allow only access to a specific region.
- 288_IAM - Advanced Policies.txt:38: And, therefore, it's only going to allow member accounts from your organization to access the S3 bucket, but any user outside the organization will be denied because of this S3 bucket policy.
- 288_IAM - Advanced Policies.txt:39: Okay, so you've seen a lot of different conditions in now your IAM policies, but hopefully that makes sense, and it can really start to drill down your use case and make really advanced use cases in terms of security.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:2: So for cross accounts, especially when you want to perform an API call on an S3 bucket cross account, you have two options.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:3: You can attach a resource-based policy to a resource, for example, an S3 bucket policy on an S3 bucket, or you can decide to use a role that can actually access the resource.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:11: When you actually assume a role, okay, you actually give up all your original permissions, and you take all the permissions assigned to the role.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:13: That means that we, for example, assume a role, and this role can do whatever.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:15: And so when you use a resource-based policy, instead, the principal does not assume a role, and therefore, he does not have to give up his permissions.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:20: And the big difference of when this comes into play is when you use Amazon EventBridge.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:21: So when an EventBridge rule runs, it's going to need permissions on the targets.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:22: And if your target supports resource-based policies, for example, Lambda functions, SNS topics, SQS queues, S3 buckets, or API Gateway, then it's possible that EventBridge will just add a resource-based policy on the target to allow the invocation from the EventBridge rule.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:24: On the other hand, if the resource doesn't necessarily support a resource policy, then EventBridge will use an IAM role to invoke the target service, for example, for Kinesis Stream, EC2 Auto Scaling, System Manager Run Command, ECS task, and so on.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:25: And for example, for Kinesis Data Streams, as a note, it supports resource-based policies, but still, EventBridge is going to use an IAM role.
- 290_IAM - Policy Evaluation Logic.txt:8: So we attach this, for example, to an IAM user and that's its permission boundaries.
- 290_IAM - Policy Evaluation Logic.txt:24: So for this, we could assign a policy, for example, for John, so if I add permission and I say, "Hey, John, I'm going to attach to you AdministratorAccess." It seems like John can do everything right now.
- 290_IAM - Policy Evaluation Logic.txt:30: And so through this AWS S3 full access managed policy, even though John has an administrator access, when John logs in, the only thing he can do is to access S3 because S3 is its boundary.
- 290_IAM - Policy Evaluation Logic.txt:37: So we can use permission boundaries for a few use cases.
- 290_IAM - Policy Evaluation Logic.txt:38: For example, to delegate responsibilities to non-administrators within their permission boundaries, for example to create new IAM users.
- 290_IAM - Policy Evaluation Logic.txt:39: Or to allow developers to self assign and manage their own permissions, while making sure they can't escalate their privileges, that means making themselves administrators.
- 290_IAM - Policy Evaluation Logic.txt:40: Or for example, restrict one very specific user inside yours organization instead of applying an entire SCP to your account and restricting everyone in your whole account.
- 290_IAM - Policy Evaluation Logic.txt:45: And so we're going to look at Deny evaluation, we're going to look at Organizations SCP, Resource-based policy, Identity-based policy, IAM permission boundaries, and then finally, Session policies to allow or deny a specific IAM action.
- 290_IAM - Policy Evaluation Logic.txt:52: Then we look at resource-based policy, for example, that can be applied to S3 buckets.
- 290_IAM - Policy Evaluation Logic.txt:61: But what I want you to remember is that all these things are evaluated when making a specific IAM action.

### Constraints / Limitations (Deduped)
- 005_IAM Access Analyzer.txt:9: But if we define the zone of trust to be our accounts and only the role, the user, and the VPC endpoints are within our accounts, then the accounts and the external clients are going to be flagged as a finding, and you can look at it within the console to take action if you think this is a security risk.
- 005_IAM Access Analyzer.txt:12: So you can validate your policy against the policy grammar and best practices.
- 005_IAM Access Analyzer.txt:21: And then, out of it, will generate an IAM policy that is going to be most likely security best practice because it will encompass all the API calls that your application has been making over the past 90 days.
- 006_STS.txt:1: So now let's talk about STS, which is a service that is so important in AWS, which isn't going to allow us to assume roles across different accounts within the same accounts, and also enable us to do identity federation, so let's get started.
- 006_STS.txt:10: You just need to change the policy and add a time statement or use the AWSRevokeOlderSessions manage policy, and that's perfect, and so using this time condition, you're able to say, "Okay, this role cannot be used anymore," and so that gives you an extra level of security.
- 006_STS.txt:11: Remember, when we use STS, when we assume a role for it be a user, an application, or a service, we give up our original permissions, and we take the permissions assigned to the role, and so we already had a discussion as to whether we should use a role or a resource-based policy, but just a slight reminder here.
- 006_STS.txt:14: To terminate EC2 instances, and so this is very important that this is all the accounts that you own because in the next slide, we'll see about the accounts we don't own, third parties, so in this case, the user will assume a role, and that role will be allowing us to terminate EC2 instances, and the benefits is that, is that we need to explicitly grant our users permission to assume the role to perform the Terminate EC2 Instance action.
- 006_STS.txt:16: We can also add multifactor authentication protection to the role so that only users are assigned using MFA can assume the role, and so what this gives us, as well, is least privilege and auditing using CloudTrail, so by using this intermediary step to do terminate EC2 instances, we have a lot of extra security added to it, and that is a very common pattern in AWS, something that a solutions architect should be thinking about a lot.
- 006_STS.txt:21: The users of that group, the developers group only, can access or request access to the role using the STS API, and STS will return the role temporary credentials, and using these credentials, the users can access the S3 bucket using the role credentials, so very, very, very simple.
- 006_STS.txt:22: Again, just revision, but I want to make dead clear how STS works because it gets a little bit more complicated right now, and this is probably something new for you, but very important to note going into the exam, so in case you want to provide access to AWS accounts owned by third parties, there's going to be an extra thing called external ID, so this is text, and then I have a diagram, so there's a zone of trust, and the zone of trust is all the accounts and organizations that you own, and outside of that zone of trust is going to be third parties.
- 006_STS.txt:26: Which account, which resources, for example, your S3 buckets are going to be granted to third parties, and so if you wanna grant access to your third parties to some of your resources, you can get something called the third-party AWS account ID, which is a very obvious, and the most important thing here is you define an external ID, and this external ID is a secret between you and the third party, and you have to define it, and this is because if you give access to the third party to a role in your accounts, you want to make sure that only that third party has access to this role, so this is to uniquely associate the role between you and a third party, and you must be provided when defining the trust and when assuming the role, and we'll see why, and it must be chosen by the third party.
- 006_STS.txt:27: You define the permissions in the IAM policy, and you're good to go, so let's have a look at a bit more details to make this a bit more clear about this, why this external ID is so important, and this is called the confused deputy, so this is a diagram directly coming from the documentation, and so we see here is that we have your AWS accounts on the left-hand side, and we have the third party in the middle, and we have another AWS accounts on the right-hand side, okay?
- 006_STS.txt:29: It can't verify whether this role belongs to the accounts on the left or on the right, and so it's going to assume that role, and by assuming that role, instead of assuming the role on the right-hand side accounts, it's going to assume roles in the left-hand side accounts without knowing it, and so, therefore, it's going to think that it's going to be performing actions on the right-hand side accounts, but actually, it performs action on the left-hand side accounts, and this is called the confused deputy because the account in the middle is confused.
- 006_STS.txt:30: It thinks it's going to operate on the right-hand side accounts, but it actually operates on the left-hand side accounts, and so this is why AWS defined this external ID thing, and let's see how this protects against this attack, and this is an exam question, so this is why I'm going go deep into this, so we have now the same setup, but this time, we also define an external ID to assume this role, and this external ID is something secret that is shared between your accounts and the account in the middle, so we're saying, "Okay, here is the ARN of the account you should assume, but when you do assume this ARN, you need to pass in the external ID that we have defined together, and so, as such, okay, it's able to access this role because we know we both know the secrets, okay?
- 006_STS.txt:37: As you can see in the condition, there is a StringEquals PrincipalTag/Department equals HR, and therefore, only a user that has done an AssumeRole with that specific session tag will be able to make an API call into the S3 buckets, so this is particularly helpful when you federate users in STS and you want to have some conditions in your IAM policies based on some tags passed through the federation, so finally, to conclude with STS, there's a few important APIs you need to know.
- 006_STS.txt:43: So at a high level, these are the important APIs you need to know.
- 006_STS.txt:44: The most important ones are going to be the first four.
- 127_IAM Permission Boundaries.txt:2: So, permission boundaries are a concept that allows you to restrict an IAM policy, and they're supported only for users and roles, so not groups.
- 127_IAM Permission Boundaries.txt:10: Well, the right-hand side defines the actual permissions of the user, which is to allow iam:CreateUser, but the left-hand side restricted what the user can get permissions on, and the user is only allowed to have permissions on S3, CloudWatch and EC2.
- 127_IAM Permission Boundaries.txt:18: So, the use cases for permission boundaries is to delegate responsibilities to non administrators within their permission boundaries, for example, to create new IAM users, or to allow developers to self-assign policies and manage their own permissions, while making sure they cannot elevate or escalate the privileges.
- 128_IAM Policy Evaluation Logic.txt:5: If there is a permission boundary or an Organizations SCP or a session policy, then an explicit allow is used to limit actions.
- 128_IAM Policy Evaluation Logic.txt:9: So bottom line is if you have an organizational SCP, a permission boundary or a session policy, you must see an explicit allow, but it's not enough.
- 128_IAM Policy Evaluation Logic.txt:10: You must also have an explicit allow in an identity-based or resource-based policy.
- 128_IAM Policy Evaluation Logic.txt:18: Then we look at if there is an SCP, and if there's an SCP, as we said before, there must be an explicit allow.
- 128_IAM Policy Evaluation Logic.txt:31: So this is the more complicated version, but the version I just gave you from before should be enough for you to understand how to evaluate some logic.
- 128_IAM Policy Evaluation Logic.txt:38: We cannot create a queue because we have Deny sqs:*.
- 128_IAM Policy Evaluation Logic.txt:41: So we cannot do sqs:DeleteQueue.
- 128_IAM Policy Evaluation Logic.txt:46: So the requester in account A must have an identity-based policy that allows the action on the S3 buckets.
- 128_IAM Policy Evaluation Logic.txt:47: And then in the bucket in account B, you must have a resource policy that is going to allow the requester in account A to access the resource.
- 128_IAM Policy Evaluation Logic.txt:60: And finally, the bucket policy is saying, you cannot access me unless you come from this specific VPC endpoint.
- 128_IAM Policy Evaluation Logic.txt:61: So as a whole, the EC2 instance will be allowed to do list bucket, get object, and put object on the VPC endpoint and only through the VPC endpoint.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:9: Any type of original permissions are going to be given up and we're going to take only the permission assigned to the role.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:11: So an example of where this becomes very important.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:27: So it's very simple On your S3 bucket you just create and allow, put object and get object where the principle org ID is equals to the Org ID You have and any member accounts can access your S3 buckets but user outside your organizations or accounts outside your organizations cannot.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:34: And then the EC2 instance, of course itself must have enough permissions to also do the message polling on account A.
- 130_ABAC (Attribute based access control).txt:14: Then we make sure that the user A, can only access the resources tagged in red.
- 131_IAM MFA.txt:17: So if you enable MFA Delete, you force users to generate a code on a device before doing important operations on Amazon S3.
- 131_IAM MFA.txt:18: So MFA can be required, for example, to permanently delete an object version because this is a destructive type of operation or suspend versioning on the bucket.
- 131_IAM MFA.txt:19: But MFA for MFA Delete is not going to be required for enabling versioning or listing deleted versions.
- 131_IAM MFA.txt:21: So to use MFA Delete, you must first enable versioning on the bucket and only the bucket owner so the root accounts can enable or disable MFA Deletes.
- 131_IAM MFA.txt:24: So, we're saying that we cannot stop or terminate the instances if we have MultiFactorAuthenticationPresent false.
- 131_IAM MFA.txt:25: So that means that if we don't have MFA, we cannot stop or terminate instances.
- 131_IAM MFA.txt:33: And this allows you to grant access only within a specified time after the MFA authentication.
- 131_IAM MFA.txt:34: So in this example, we're using the numeric less than and we're saying, "Hey, if the multifactor of age is less than 300 seconds, then you should allow it.
- 131_IAM MFA.txt:36: You also have a very important edge case with MFA.
- 131_IAM MFA.txt:44: So, if you are getting into this kind of issue then the only option out of it is to have the administrator to use the CLI or the APIs of AWS to remove the existing but deactivated device.
- 132_IAM Credentials Report.txt:5: So this is something you should know about, but there is a better way to do things if you want to manage aged access keys.
- 132_IAM Credentials Report.txt:9: So the exam may ask you, "Do you prefer Config or do you prefer the IAM credentials report to automate, you know, rotating and alerting on old keys?" Well, the answer is absolutely use Config, but still you should know about the IAM credentials report.
- 133_IAM Roles and PassRole to Services.txt:2: So we know that some services will need to perform actions on our behalf, and so therefore we must assign permissions to AWS services, and we are using for this IAM roles.
- 133_IAM Roles and PassRole to Services.txt:4: Whenever we have an EC2 instance that wants to access the APIs of AWS, we must assign it an IAM role and then it will be able to access and allocate the DynamoDB table and so on.
- 133_IAM Roles and PassRole to Services.txt:6: The other thing you should know about role is how to pass a role to AWS services.
- 133_IAM Roles and PassRole to Services.txt:8: So with this permission, you can ensure that only the approved users can configure an AWS service with an IAM role that grants permissions.
- 133_IAM Roles and PassRole to Services.txt:14: And so that means that this user will be only able to PassRole that starts with EC2 roles for.
- 134_IAM Roles Anywhere.txt:17: If you have another on-premises server, the best practice is not to reuse the same certificate, but instead to generate a new certificate, again from the Private CA called Certificate B.
- 134_IAM Roles Anywhere.txt:19: And of course, because you use AWS permissions, the on-premises server A cannot access Role B and the permissions of the Role A cannot access Bucket B.
- 134_IAM Roles Anywhere.txt:22: Well, traditionally you only had to use IAM Users.
- 135_IAM Trust Policies.txt:9: So instead of principal being AWS root, we have now principal being Service ec2.amazonaws.com, which is saying that only the EC2 instances or the EC2 service can assume this role, and you can have this for so many things.
- 135_IAM Trust Policies.txt:11: So it's important to have a look at this because the exam make show you IAM policies or may ask you about trust policies, and you need to know that trust policies can be restricting, can be used to restrict who can access this IAM role.
- 137_[CCP_SAA_DVA_SOA] IAM Security Tools - Hands On.txt:17: And it turns out that maybe based on this access, have 37 pages of this, maybe the user needs access only to a few services but not all of them.
- 138_IAM Access Analyzer.txt:9: But if we define the zone of trust to be our accounts and only the role, the user, and the VPC endpoints are within our accounts, then the accounts and the external clients are going to be flagged as a finding, and you can look at it within the console to take action if you think this is a security risk.
- 138_IAM Access Analyzer.txt:12: So you can validate your policy against the policy grammar and best practices.
- 138_IAM Access Analyzer.txt:21: And then, out of it, will generate an IAM policy that is going to be most likely security best practice because it will encompass all the API calls that your application has been making over the past 90 days.
- 139_[SOA] STS Overview.txt:2: So it's called a Security Token Service and it allows to grant limited and temporary access to AWS resources.
- 139_[SOA] STS Overview.txt:3: So you have tech tokens and they can be valid up for to one hour or more and they must be refreshed when they're invalid.
- 139_[SOA] STS Overview.txt:4: So when you want to get these tokens you must first issue an API call into the STS service.
- 139_[SOA] STS Overview.txt:10: So that means that your users are logged in with SAML and then you extend that SAML token to get credentials from STS, you first must configure of course, STS, to be able to exchange and verify these SAML tokens.
- 139_[SOA] STS Overview.txt:17: So when you're using STS to assume a role, you must first define an IAM role within your account or cross account, and then you define which principles can access this IAM role.
- 139_[SOA] STS Overview.txt:21: Of course he must be authorized to perform that API call.
- 139_[SOA] STS Overview.txt:28: So this IAM role, that we define in the production accounts, must also of course, authorize the development accounts to assume it.
- 139_[SOA] STS Overview.txt:29: And so if you have an IAM group of testers that are not authorized to assume this role then they cannot access your production account.
- 140_STS Version 1 & Version 2.txt:6: And this global endpoint supports only the regions that are enabled by default in your accounts, but you can actually have a setting to change and enable "All Regions" for STS.
- 140_STS Version 1 & Version 2.txt:10: And so to get a token for that region, you must use, instead, a Regional STS endpoint, and that's available in all regions.
- 140_STS Version 1 & Version 2.txt:17: So if you have an error like this, which says, "Hey, you cannot, for example, describe your instances because AWS was not able to validate the provided access credentials." You have two options.
- 141_STS External ID.txt:5: When you have a external ID in the AssumeRole IAM policy, then the role can only be assumed if the API call made it to assume that role also contains the external id you have defined, for example, in this example 56789.
- 141_STS External ID.txt:29: And so the IAM role is going to be edited so that the IAM role trusts the third-party only if the external ID is equal to 56789.
- 144_EC2 Instance Metadata Overview.txt:36: And this is very important because this ap, this part, the HttpEndpoint equal disabled can come up sometimes in Iam policies.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:22: So there's an option when you start your EC2 Instance to say "Hey, I want V1 and V2" or "I want V2 only" where the token is required.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:23: Or using the CLI saying "Hey, HTP tokens required" Again, remember tokens means IMDSv2.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:26: There's also other ways you can do, so for example, you can make sure that the Role Credentials are retrieved for the EC2 instance is only from IMDSv2.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:32: The other way to protect only some resources, for example, would be to attach the same policy to an S3 bucket.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:36: So to prevent the launch of an EC2 two instance using old instance metadata, what you can do is that you can attach it as an SCP or an IAM policy, whatever you want, you can attach this and it says deny EC2 two run instances when metadata tokens is not equals to required.
- 145_EC2 Instance Metadata - IMDSv1 vs IMDSv2.txt:37: So if we don't specify tokens then you cannot launch run instances.
- 288_IAM - Advanced Policies.txt:10: And this can be used, for example, to restrict usage on AWS only to, for example, your company network and, therefore, guaranteeing that only your company can access your own AWS environment.
- 288_IAM - Advanced Policies.txt:16: And this can be applied more globally on their organization SCP to deny or to allow only access to a specific region.
- 288_IAM - Advanced Policies.txt:23: And, so, your user must also be part of the department data to perform these actions.
- 288_IAM - Advanced Policies.txt:26: But the user can do anything on EC2, but they can only stop and terminate instances if they have MultiFactorAuthenticationPresent, so this is a deny on the false.
- 288_IAM - Advanced Policies.txt:35: So this condition right here, the aws:PrincipalOrgID, can be used to restrict resource policies to only accounts that are a member of an AWS organization.
- 288_IAM - Advanced Policies.txt:37: And it's saying that you can do a PutObject or a GetObject only if the API call is made from an account that has the PrincipalOrgID of whatever.
- 288_IAM - Advanced Policies.txt:38: And, therefore, it's only going to allow member accounts from your organization to access the S3 bucket, but any user outside the organization will be denied because of this S3 bucket policy.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:12: So this is very important.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:14: We can now do anything that the role does, but we cannot use our original permissions.
- 289_IAM - Resource-based Policies vs IAM Roles.txt:17: What they can do is we should use a resource-based policy because this way, we don't have to assume a role, and we can both scan the DynamoDB table and write to an S3 bucket in another account.
- 290_IAM - Policy Evaluation Logic.txt:9: That means that it can only do things within S3 CloudWatch and EC2.
- 290_IAM - Policy Evaluation Logic.txt:28: And I'm gonna say the only thing you can do, actually, John, is to have AmazonS3FullAccess.
- 290_IAM - Policy Evaluation Logic.txt:30: And so through this AWS S3 full access managed policy, even though John has an administrator access, when John logs in, the only thing he can do is to access S3 because S3 is its boundary.
- 290_IAM - Policy Evaluation Logic.txt:34: The permission boundary, which by the way, only applies to a user or a role and not a group.
- 290_IAM - Policy Evaluation Logic.txt:39: Or to allow developers to self assign and manage their own permissions, while making sure they can't escalate their privileges, that means making themselves administrators.
- 290_IAM - Policy Evaluation Logic.txt:43: And you don't need to know by heart, but it should make sense to you.
- 290_IAM - Policy Evaluation Logic.txt:62: And so, only if all these things are allowing and working together, or not denying specifically, then you will have a final decision allow, and you'll be able to do your action.
- 290_IAM - Policy Evaluation Logic.txt:67: The answer is no, you cannot because there is a Deny star on SQS, and CreateQueue belongs to that block and there's a deny on it, so it's definitely going to be denied.
- 290_IAM - Policy Evaluation Logic.txt:74: So you cannot perform sqs:DeleteQueue, even though you have allowed it explicitly in the second block.
- 290_IAM - Policy Evaluation Logic.txt:75: So very important to know.
- 290_IAM - Policy Evaluation Logic.txt:79: And so, because there is no explicit deny but also there's no explicit allow, then you cannot perform ec2:DescribeInstances with this IAM policy.

### Patterns / Architectures (Deduped)
- 005_IAM Access Analyzer.txt:6: And so, you define a zone of trust, which is going to correspond to your AWS accounts or your entire AWS organization.
- 006_STS.txt:1: So now let's talk about STS, which is a service that is so important in AWS, which isn't going to allow us to assume roles across different accounts within the same accounts, and also enable us to do identity federation, so let's get started.
- 006_STS.txt:8: Maybe you want to also help your AWS services do what they need, so using service roles, and then, maybe we also want to perform identity federation, and we'll have a deep dive onto identity federation in this course because you need to know them all.
- 006_STS.txt:17: Okay, but what does it look like in practice when we have STS cross-account access?
- 006_STS.txt:22: Again, just revision, but I want to make dead clear how STS works because it gets a little bit more complicated right now, and this is probably something new for you, but very important to note going into the exam, so in case you want to provide access to AWS accounts owned by third parties, there's going to be an extra thing called external ID, so this is text, and then I have a diagram, so there's a zone of trust, and the zone of trust is all the accounts and organizations that you own, and outside of that zone of trust is going to be third parties.
- 006_STS.txt:25: They're not directly in your organization, and so you can use IAM Access Analyzer to find out which resources in your accounts are outside of your zone of trust, okay?
- 006_STS.txt:33: The idea is that when you assume an IAM role, or, for example, you have user federation that leverages STS, it is possible for you to pass a session tag, so how does that work?
- 006_STS.txt:37: As you can see in the condition, there is a StringEquals PrincipalTag/Department equals HR, and therefore, only a user that has done an AssumeRole with that specific session tag will be able to make an API call into the S3 buckets, so this is particularly helpful when you federate users in STS and you want to have some conditions in your IAM policies based on some tags passed through the federation, so finally, to conclude with STS, there's a few important APIs you need to know.
- 006_STS.txt:40: AssumeRoleWithWebIdentity, which we are using a IdP, and so that includes Amazon Cognito, Login with Amazon, Facebook, Google, or any OpenID Connect-compatible IdP, and so we'll be seeing this in detail in the federation section, and overall, just so you know right now, AWS does not recommend to use the AssumeRoleWithWebIdentity API anymore.
- 006_STS.txt:42: Then we have a GetSessionToken, which is used for MFA, so when we log using MFA to get credentials back, or GetFederationToken, which is usually to get a credentials, temporary credentials, when we have federation using a proxy app, for example, when we have something that distributes tokens within a corporate network, okay?
- 006_STS.txt:47: I will see you in the next lecture for some identity federation.
- 127_IAM Permission Boundaries.txt:14: So, these can be used in combination with AWS Organizations SCP.
- 127_IAM Permission Boundaries.txt:16: So, permission boundaries, they operate a little bit like Organizations SCP.
- 127_IAM Permission Boundaries.txt:20: It's also very useful to restrict one specific user instead of a whole account using Organizations &amp; SCP, or to test out an SCP beforehand by just playing around with a permissions boundary.
- 128_IAM Policy Evaluation Logic.txt:5: If there is a permission boundary or an Organizations SCP or a session policy, then an explicit allow is used to limit actions.
- 128_IAM Policy Evaluation Logic.txt:9: So bottom line is if you have an organizational SCP, a permission boundary or a session policy, you must see an explicit allow, but it's not enough.
- 128_IAM Policy Evaluation Logic.txt:44: Okay, when we go cross-account, it gets a little bit more funky.
- 128_IAM Policy Evaluation Logic.txt:50: That's why we're saying it's a bit more funky with cross-account access.
- 128_IAM Policy Evaluation Logic.txt:53: Cross-account, when the same account, it is going to be allowed.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:26: On top of it, you can use the principle org ID condition in your resource policies to restrict access to accounts that are all members of the same organization.
- 129_Identity-Based Policies vs. Resource-Based Policies.txt:27: So it's very simple On your S3 bucket you just create and allow, put object and get object where the principle org ID is equals to the Org ID You have and any member accounts can access your S3 buckets but user outside your organizations or accounts outside your organizations cannot.
- 137_[CCP_SAA_DVA_SOA] IAM Security Tools - Hands On.txt:14: So as you can see, organizations, health, identity and access managers with IAM Service, EC2, Resource Explorer, were all accessed by my user.
- 138_IAM Access Analyzer.txt:6: And so, you define a zone of trust, which is going to correspond to your AWS accounts or your entire AWS organization.
- 139_[SOA] STS Overview.txt:23: So if we have a look at Cross-Account Access with STS, let's say we have a Dev account and a Prod account and we have an S3 bucket in Prod that we want to access from IAM users in a group in Dev.
- 288_IAM - Advanced Policies.txt:16: And this can be applied more globally on their organization SCP to deny or to allow only access to a specific region.
- 288_IAM - Advanced Policies.txt:35: So this condition right here, the aws:PrincipalOrgID, can be used to restrict resource policies to only accounts that are a member of an AWS organization.
- 288_IAM - Advanced Policies.txt:36: So we have an organization with multiple accounts, and say we have S3 buckets with this policy on it.
- 288_IAM - Advanced Policies.txt:38: And, therefore, it's only going to allow member accounts from your organization to access the S3 bucket, but any user outside the organization will be denied because of this S3 bucket policy.
- 290_IAM - Policy Evaluation Logic.txt:32: So IAM permission boundaries can be used in combinations of AWS Organizations SCP.
- 290_IAM - Policy Evaluation Logic.txt:35: And your organization SCP, which applies to every single IAM entity in your account.
- 290_IAM - Policy Evaluation Logic.txt:40: Or for example, restrict one very specific user inside yours organization instead of applying an entire SCP to your account and restricting everyone in your whole account.
- 290_IAM - Policy Evaluation Logic.txt:45: And so we're going to look at Deny evaluation, we're going to look at Organizations SCP, Resource-based policy, Identity-based policy, IAM permission boundaries, and then finally, Session policies to allow or deny a specific IAM action.
- 290_IAM - Policy Evaluation Logic.txt:49: Then we look at the organizations SCP, and is there an allow?

## Deduped Consolidation Snapshot End

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: Therefore, our user is not allowed to create other IAM users because that is not in its IAM permission boundary.
- Signal 2: For example, to delegate responsibilities to non-administrators within their permission boundaries, for example to create new IAM users.
- Signal 3: Transcript signals that therefore, our user is not allowed to create other IAM users because that is not in its IAM permission boundary.
- Signal 4: STS will check the permissions and make sure the setup is correct, and we'll go into details on how that look likes, and then, we'll get security credentials back.
- Signal 5: Okay, so here is the deep dive a little bit on providing access to an IAM user in your or another AWS accounts that you own, so this is within your circle of trust, in which case, we can, for example, create a role in...
- Signal 6: Transcript signals that sTS will check the permissions and make sure the setup is correct, and we'll go into details on how that look likes, and then, we'll get security credentials back.
- Signal 7: Overly complex condition logic can create hidden authorization gaps.
- Signal 8: Key Insights: And this is a service within the IAM console that is used to find out which resources are going to be shared externally.
- Signal 9: Key Insights: But if we define the zone of trust to be our accounts and only the role, the user, and the VPC endpoints are within our accounts, then the accounts and the external clients are going to be flagged as a finding, and you can look at it within the console to take action if you think this is a security risk.
- Signal 10: Key Insights: STS will check the permissions and make sure the setup is correct, and we'll go into details on how that look likes, and then, we'll get security credentials back.

### Service-Specific Lab Paths
### Activity 1: IAM Lab for Permission boundaries, ABAC, policy logic, STS, trust, metadata and evaluation flows
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

### Activity 2: Amazon S3 Lab for Permission boundaries, ABAC, policy logic, STS, trust, metadata and evaluation flows
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

### Activity 3: Amazon CloudWatch Lab for Permission boundaries, ABAC, policy logic, STS, trust, metadata and evaluation flows
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

### Activity 4: Amazon VPC Lab for Permission boundaries, ABAC, policy logic, STS, trust, metadata and evaluation flows
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

Use this lens to study Permission boundaries, ABAC, policy logic, STS, trust, metadata and evaluation flows in a cloud-agnostic way: focus on capability first, provider name second.

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
| Amazon CloudWatch | Amazon CloudWatch | Azure Monitor | Cloud Monitoring |
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

