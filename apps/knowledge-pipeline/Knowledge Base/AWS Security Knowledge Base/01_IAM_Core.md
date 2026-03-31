# 01_IAM_Core.md

## Scope
- Topic: IAM users, groups, policies, roles, MFA and operational best practices
- Files processed: 34
- Extracted non-empty transcript lines: 1270
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 4 Topic 1: IAM Core)

This section is the study-first foundation for identity primitives, policy intent, and safe day-1 IAM design.

### Phase 1 - Foundations

#### Module 1: IAM Mental Model
- Identity establishes who is calling.
- Policy establishes what actions are allowed or denied.
- Context establishes when and from where access is valid.
- Audit establishes proof of decisions and actions.


##### Source Transcript Details
- Module focus: IAM Mental Model
- Primary transcript files:
- outputs/aws-solutions-architect-professional/03_Identity & Federation/004_IAM.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/015_IAM Policies Hands On.txt
- outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/126_IAM Global condition context keys.txt
- outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/124_IAM Policies in Depth.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/012_IAM Users & Groups Hands On.txt
- outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/128_IAM Policy Evaluation Logic.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/024_AWS CloudShell.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/016_IAM MFA Overview.txt
- outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/131_IAM MFA.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/011_IAM Introduction_ Users, Groups, Policies.txt
- Top concept clusters from transcript metadata:
- IAM Domain Operational Context
- Identity Lifecycle
- Authorization Model
- Access Boundary Controls
- Organization Governance
- Temporary Credential Strategy
- Least Privilege
- Directory Integration
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 34
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1270
- Key insights inside selected files: 724
- Unique concept tags in selected files: 9

##### Transcript-Enriched Learning Notes
- So let's get started with IAM.
- So first there's a lot of things you should know about IAM already.
- Now you have policies in IAM and they will define what a role or a user can do.
- So what does an IAM policy look like?
- So this is quite specific and you can get very, very crazy with IAM policies but this is how all of AWS works and we know this already.
- If there is an explicit DENY in your IAM policy then it will have precedence over any ALLOW and so that means that explicit DENY's always have the highest priority, and we'll have a lecture exactly to understand how I...
- That means that you need to make sure that the IAM policies are allowed just to do what they need to be doing and not more.
- Some tools we can use to make sure that this is the case, there is IAM Access Advisor where you can see all the permissions you have granted to an IAM policy.
- So in case you have a policy or something that was not used for a year maybe it's worth removing it from the IAM policy to ensure there is less privilege.
- Okay, if you're not very familiar with IAM policy I would encourage you to go to this URL to make sure you look at a few of them and understand them better.
- A few common IAM policies we'll get across is going to be the AdministratorAccess which is meaning that everything should be allowed on any resource.
- And so this is a policy you have to specify so by default, if you set nothing in an IAM policy then everything will be denied.
- And so in the first one, the "Effect" is "Allow", "Not action" on IAM star organizations and account star for resource stars, so that means that it's not going to allow anything to be done on IAM organizations and acc...
- And also it's going to allow still a few IAM actions such as create service link role, delete service link role, list roles, describe organization and list regions.
- Okay next, conditions in IAM policies.
- The first one is going to be a string operator, so for example, you're saying I want my principle tag to be job category: IAM user admin, so this is when you look at tags.
- I just want to show you these things exist so that you know you can have very specific IAM policies such as if the exam is asking you to use an IAM policy as an answer to a problem, this would be possible instead of u...
- For example, if you use resource tag, slash key name or principle tag, slash key name and so on so you can start having some really powerful IAM policies.

##### Polished Architect Notes
- Transcript signals that let's get started with IAM.
- Transcript signals that first there's a lot of things you should know about IAM already.
- Transcript signals that you have policies in IAM and they will define what a role or a user can do.
- Transcript signals that what does an IAM policy look like?
- Transcript signals that this is quite specific and you can get very, very crazy with IAM policies but this is how all of AWS works and we know this already.
- Transcript signals that if there is an explicit DENY in your IAM policy then it will have precedence over any ALLOW and so that means that explicit DENY's always have the highest priority, and we'll have a lecture exactly to understand h...
- Transcript signals that that means that you need to make sure that the IAM policies are allowed just to do what they need to be doing and not more.
- Transcript signals that some tools we can use to make sure that this is the case, there is IAM Access Advisor where you can see all the permissions you have granted to an IAM policy.
- Transcript signals that in case you have a policy or something that was not used for a year maybe it's worth removing it from the IAM policy to ensure there is less privilege.
- Transcript signals that if you're not very familiar with IAM policy I would encourage you to go to this URL to make sure you look at a few of them and understand them better.
- Transcript signals that a few common IAM policies we'll get across is going to be the AdministratorAccess which is meaning that everything should be allowed on any resource.
- Transcript signals that so this is a policy you have to specify so by default, if you set nothing in an IAM policy then everything will be denied.

##### Architect Synthesis (Transcript-Derived)
- Treat IAM Domain Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Identity Lifecycle as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Authorization Model as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Access Boundary Controls as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Organization Governance as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: let's get started with IAM.
- Design implication: first there's a lot of things you should know about IAM already.
- Design implication: you have policies in IAM and they will define what a role or a user can do.
#### Module 2: Core IAM Building Blocks
- Users and groups for human identity administration patterns.
- Roles for temporary and delegated access patterns.
- Policies for identity-based and resource-based authorization control.
- MFA and credential hygiene as baseline hardening.


##### Source Transcript Details
- Module focus: Core IAM Building Blocks
- Primary transcript files:
- outputs/aws-solutions-architect-professional/03_Identity & Federation/004_IAM.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/015_IAM Policies Hands On.txt
- outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/126_IAM Global condition context keys.txt
- outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/124_IAM Policies in Depth.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/012_IAM Users & Groups Hands On.txt
- outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/128_IAM Policy Evaluation Logic.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/024_AWS CloudShell.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/016_IAM MFA Overview.txt
- outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/131_IAM MFA.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/011_IAM Introduction_ Users, Groups, Policies.txt
- Top concept clusters from transcript metadata:
- IAM Domain Operational Context
- Identity Lifecycle
- Authorization Model
- Access Boundary Controls
- Organization Governance
- Temporary Credential Strategy
- Least Privilege
- Directory Integration
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 34
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1270
- Key insights inside selected files: 724
- Unique concept tags in selected files: 9

##### Transcript-Enriched Learning Notes
- So let's get started with IAM.
- So first there's a lot of things you should know about IAM already.
- Now you have policies in IAM and they will define what a role or a user can do.
- So what does an IAM policy look like?
- So this is quite specific and you can get very, very crazy with IAM policies but this is how all of AWS works and we know this already.
- If there is an explicit DENY in your IAM policy then it will have precedence over any ALLOW and so that means that explicit DENY's always have the highest priority, and we'll have a lecture exactly to understand how I...
- That means that you need to make sure that the IAM policies are allowed just to do what they need to be doing and not more.
- Some tools we can use to make sure that this is the case, there is IAM Access Advisor where you can see all the permissions you have granted to an IAM policy.
- So in case you have a policy or something that was not used for a year maybe it's worth removing it from the IAM policy to ensure there is less privilege.
- Okay, if you're not very familiar with IAM policy I would encourage you to go to this URL to make sure you look at a few of them and understand them better.
- A few common IAM policies we'll get across is going to be the AdministratorAccess which is meaning that everything should be allowed on any resource.
- And so this is a policy you have to specify so by default, if you set nothing in an IAM policy then everything will be denied.
- And so in the first one, the "Effect" is "Allow", "Not action" on IAM star organizations and account star for resource stars, so that means that it's not going to allow anything to be done on IAM organizations and acc...
- And also it's going to allow still a few IAM actions such as create service link role, delete service link role, list roles, describe organization and list regions.
- Okay next, conditions in IAM policies.
- The first one is going to be a string operator, so for example, you're saying I want my principle tag to be job category: IAM user admin, so this is when you look at tags.
- I just want to show you these things exist so that you know you can have very specific IAM policies such as if the exam is asking you to use an IAM policy as an answer to a problem, this would be possible instead of u...
- For example, if you use resource tag, slash key name or principle tag, slash key name and so on so you can start having some really powerful IAM policies.

##### Polished Architect Notes
- Transcript signals that let's get started with IAM.
- Transcript signals that first there's a lot of things you should know about IAM already.
- Transcript signals that you have policies in IAM and they will define what a role or a user can do.
- Transcript signals that what does an IAM policy look like?
- Transcript signals that this is quite specific and you can get very, very crazy with IAM policies but this is how all of AWS works and we know this already.
- Transcript signals that if there is an explicit DENY in your IAM policy then it will have precedence over any ALLOW and so that means that explicit DENY's always have the highest priority, and we'll have a lecture exactly to understand h...
- Transcript signals that that means that you need to make sure that the IAM policies are allowed just to do what they need to be doing and not more.
- Transcript signals that some tools we can use to make sure that this is the case, there is IAM Access Advisor where you can see all the permissions you have granted to an IAM policy.
- Transcript signals that in case you have a policy or something that was not used for a year maybe it's worth removing it from the IAM policy to ensure there is less privilege.
- Transcript signals that if you're not very familiar with IAM policy I would encourage you to go to this URL to make sure you look at a few of them and understand them better.
- Transcript signals that a few common IAM policies we'll get across is going to be the AdministratorAccess which is meaning that everything should be allowed on any resource.
- Transcript signals that so this is a policy you have to specify so by default, if you set nothing in an IAM policy then everything will be denied.

##### Architect Synthesis (Transcript-Derived)
- Treat IAM Domain Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Identity Lifecycle as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Authorization Model as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Access Boundary Controls as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Organization Governance as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: let's get started with IAM.
- Design implication: first there's a lot of things you should know about IAM already.
- Design implication: you have policies in IAM and they will define what a role or a user can do.
#### Module 3: Least Privilege as Operating Discipline
- Start with no implicit permission assumptions.
- Grant minimal action, minimal resource scope, and minimal time window.
- Use conditions to encode business context into authorization decisions.


##### Source Transcript Details
- Module focus: Least Privilege as Operating Discipline
- Primary transcript files:
- outputs/aws-solutions-architect-professional/03_Identity & Federation/004_IAM.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/027_IAM Security Tools.txt
- outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/136_[CCP_SAA_DVA_SOA] IAM Security Tools.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/011_IAM Introduction_ Users, Groups, Policies.txt
- outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/126_IAM Global condition context keys.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/015_IAM Policies Hands On.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/016_IAM MFA Overview.txt
- outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/124_IAM Policies in Depth.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/012_IAM Users & Groups Hands On.txt
- outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/128_IAM Policy Evaluation Logic.txt
- Top concept clusters from transcript metadata:
- IAM Domain Operational Context
- Identity Lifecycle
- Authorization Model
- Access Boundary Controls
- Organization Governance
- Least Privilege
- Temporary Credential Strategy
- Directory Integration
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 34
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1270
- Key insights inside selected files: 627
- Unique concept tags in selected files: 9

##### Transcript-Enriched Learning Notes
- So let's get started with IAM.
- So first there's a lot of things you should know about IAM already.
- Now you have policies in IAM and they will define what a role or a user can do.
- So what does an IAM policy look like?
- So this is quite specific and you can get very, very crazy with IAM policies but this is how all of AWS works and we know this already.
- If there is an explicit DENY in your IAM policy then it will have precedence over any ALLOW and so that means that explicit DENY's always have the highest priority, and we'll have a lecture exactly to understand how I...
- Okay so the best practice we know this already is to use the least privilege for maximum security.
- That means that you need to make sure that the IAM policies are allowed just to do what they need to be doing and not more.
- Some tools we can use to make sure that this is the case, there is IAM Access Advisor where you can see all the permissions you have granted to an IAM policy.
- So in case you have a policy or something that was not used for a year maybe it's worth removing it from the IAM policy to ensure there is less privilege.
- Okay, if you're not very familiar with IAM policy I would encourage you to go to this URL to make sure you look at a few of them and understand them better.
- A few common IAM policies we'll get across is going to be the AdministratorAccess which is meaning that everything should be allowed on any resource.
- And so this is a policy you have to specify so by default, if you set nothing in an IAM policy then everything will be denied.
- Another very interesting policy, a bit less privileged, is called AWS PowerUserAccess.
- And so in the first one, the "Effect" is "Allow", "Not action" on IAM star organizations and account star for resource stars, so that means that it's not going to allow anything to be done on IAM organizations and acc...
- And also it's going to allow still a few IAM actions such as create service link role, delete service link role, list roles, describe organization and list regions.
- Okay next, conditions in IAM policies.
- The first one is going to be a string operator, so for example, you're saying I want my principle tag to be job category: IAM user admin, so this is when you look at tags.

##### Polished Architect Notes
- Transcript signals that let's get started with IAM.
- Transcript signals that first there's a lot of things you should know about IAM already.
- Transcript signals that you have policies in IAM and they will define what a role or a user can do.
- Transcript signals that what does an IAM policy look like?
- Transcript signals that this is quite specific and you can get very, very crazy with IAM policies but this is how all of AWS works and we know this already.
- Transcript signals that if there is an explicit DENY in your IAM policy then it will have precedence over any ALLOW and so that means that explicit DENY's always have the highest priority, and we'll have a lecture exactly to understand h...
- Transcript signals that so the best practice we know this already is to use the least privilege for maximum security.
- Transcript signals that that means that you need to make sure that the IAM policies are allowed just to do what they need to be doing and not more.
- Transcript signals that some tools we can use to make sure that this is the case, there is IAM Access Advisor where you can see all the permissions you have granted to an IAM policy.
- Transcript signals that in case you have a policy or something that was not used for a year maybe it's worth removing it from the IAM policy to ensure there is less privilege.
- Transcript signals that if you're not very familiar with IAM policy I would encourage you to go to this URL to make sure you look at a few of them and understand them better.
- Transcript signals that a few common IAM policies we'll get across is going to be the AdministratorAccess which is meaning that everything should be allowed on any resource.

##### Architect Synthesis (Transcript-Derived)
- Treat IAM Domain Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Identity Lifecycle as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Authorization Model as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Access Boundary Controls as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Organization Governance as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: let's get started with IAM.
- Design implication: first there's a lot of things you should know about IAM already.
- Design implication: you have policies in IAM and they will define what a role or a user can do.
### Phase 2 - Core Services

#### IAM Users, Groups, and Policies
- Users and groups simplify baseline workforce access assignment.
- Policies should be explicit, scoped, and documented by purpose.
- Shared user credentials are anti-patterns in enterprise security operations.

#### IAM Roles and Delegation
- Roles are preferred for workloads and cross-account access.
- Role assumption replaces standing keys with temporary credentials.
- Trust policy design is as important as permission policy design.

#### MFA and Security Tooling
- MFA hardens human account abuse paths.
- IAM security tools (for example, reporting and analyzer patterns) improve drift detection and hygiene.

### Phase 3 - Advanced Patterns

#### Pattern 1: Role-First Workforce and Workload Strategy
- Human admin flows use short-lived or delegated access where possible.
- Workloads use service roles, not embedded long-lived secrets.

#### Pattern 2: Condition-Driven Authorization
- Encode source, time, transport, and tag context into policy conditions.
- Use conditions to reduce blast radius without fragmenting role topology.

#### Pattern 3: Policy Lifecycle Governance
- Version, review, and retire permissions as systems evolve.
- Track permission debt and remove stale actions/resources.

### Phase 4 - System Design (Production)

#### Reference IAM Core Architecture
- Central identity administration model with role-based workload access.
- Separation between human access and machine/service access.
- Continuous audit and policy review pipeline.

#### Scaling Considerations
- Role explosion if taxonomy is not standardized.
- Policy duplication and drift across teams/accounts.
- Emergency access and break-glass controls must be pre-defined.

#### Cost Considerations
- IAM service cost is usually not the driver; operational mistakes are.
- Biggest cost comes from weak policy design leading to incidents and cleanup effort.

### Cross-Cloud Concept Mapping (IAM Core)

#### Underlying Concept: Identity and Access Control Plane
- AWS: IAM plus role model
- Azure: Entra ID plus RBAC model
- GCP: Cloud IAM principals and role bindings
- Trade-off: model primitives differ, but least-privilege intent is portable.

#### Underlying Concept: Temporary vs Standing Credentials
- AWS: role assumption and temporary credentials
- Azure: managed identities and token-based access
- GCP: service accounts and short-lived token patterns
- Trade-off: maturity depends on eliminating embedded secrets in application paths.

### Real-World Use Cases from Transcript Signals
- Enforce MFA and baseline policy controls for human users.
- Migrate workload access from static keys to role-based temporary credentials.
- Apply policy conditions for contextual controls like location, transport, and session behavior.

### Constraints and Exam-Relevant Traps Captured
- Overly broad wildcard policies are common silent risk multipliers.
- Role trust misconfiguration can bypass otherwise-correct permission design.
- IAM design without review cadence accumulates permission debt quickly.
## Step 1 — Line-by-Line Extraction

Every non-empty line from every source transcript is preserved below with extraction fields.

### File: outputs/aws-solutions-architect-professional/03_Identity & Federation/004_IAM.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: So let's get started with IAM.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: So first there's a lot of things you should know about IAM already.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I'm not gonna go over the basics.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I will just try to remind you what it is.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So users have long term credentials and therefore you're AWS users.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS
- Key Insights: You can group them and you can also define roles which are going to be short term credentials and then we use the STS service to endorse these roles and get credentials that are gonna be temporary out of those, to do the actions that the roles are authorized to do.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 7:
- Concepts: Identity Lifecycle
- Services: IAM Roles
- Key Insights: A specific kinda role we've been seeing all along in the courses is the EC2 instance role where it's going to use the EC2 metadata service to get these short-term credentials on an EC2 instance.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: And you can assign only one role at a time for the instance.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But this way, your instance can access for example, an S3 Bucket or DynamoDB table and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: There's also service roles which are assigned to services directly.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 11:
- Concepts: Identity Lifecycle
- Services: IAM Roles
- Key Insights: So if you have a service such as API Gateway or CodeDeploy that needs to do an action on an Auto Scaling Group or a Lambda Function or something else, then that service needs to have a role and that role needs to be able and provisioned to do all the actions it needs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay and then finally we have Cross Account roles.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And these roles are going to be really helpful in case you need to access another account to perform actions in that other account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 14:
- Concepts: Authorization Model, Identity Lifecycle
- Services: (none explicit)
- Key Insights: You never share user's credentials Cross Account, you always allow to assume roles and we'll see this in details in this course.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Authentication and trust-chain signal; Multi-account governance signal; Authorization decision-path signal.

Line 15:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Policies, IAM Roles
- Key Insights: Now you have policies in IAM and they will define what a role or a user can do.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: And so you have three kinds, You have AWS Managed, which is policies defined by AWS that are going to be changing over time, maybe, but they will do something very specific.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: Identity Lifecycle
- Services: IAM Policies
- Key Insights: Customer Managed, which is you creating these policies and you can assign them to multiple users or multiple roles and you can make them evolve over time, version them.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: Identity Lifecycle
- Services: IAM Policies, IAM Roles
- Key Insights: Or Inline Policies, which are going to be policies assigned to one specific user or one specific role and you can make them evolve over time but you cannot share them across users or across roles.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: And finally we'll do a discussion on resource based policies.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 20:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So this is when you have an S3 Bucket policy or an SQS queue policy and so on, which would allow us to perform some really interesting patterns and we'll see this in this lecture.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 21:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: So what does an IAM policy look like?
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 22:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: Well, first of all it's going to be JSON document and they will have four things or five things, Effects, Action, Resources, Conditions and sometimes in it, Policy Variables.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We'll do a deep dive in all of those.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 24:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: But the idea is that a JSON policy looks like this.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 25:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: And then we have some statement, for example allow EC2 attach volume, EC2 detach volume on the resource which is all EC2 instances.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 26:
- Concepts: Access Boundary Controls
- Services: (none explicit)
- Key Insights: And the condition is string equals resource type department development.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 27:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: That means that only the EC2 instances tagged with this tag can be attached or detached to volume and so on.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies
- Key Insights: So this is quite specific and you can get very, very crazy with IAM policies but this is how all of AWS works and we know this already.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 29:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: If there is an explicit DENY in your IAM policy then it will have precedence over any ALLOW and so that means that explicit DENY's always have the highest priority, and we'll have a lecture exactly to understand how IAM policies and everything else are evaluated in order.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 30:
- Concepts: Least Privilege
- Services: (none explicit)
- Key Insights: Okay so the best practice we know this already is to use the least privilege for maximum security.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 31:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies
- Key Insights: That means that you need to make sure that the IAM policies are allowed just to do what they need to be doing and not more.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 32:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: Some tools we can use to make sure that this is the case, there is IAM Access Advisor where you can see all the permissions you have granted to an IAM policy.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 33:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And the last time each of these permissions was last accessed.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 34:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: So in case you have a policy or something that was not used for a year maybe it's worth removing it from the IAM policy to ensure there is less privilege.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 35:
- Concepts: Authorization Model
- Services: IAM Access Analyzer
- Key Insights: Okay, another one is going to be Access Analyzer and this is to analyze resources are shared with external entities, for example, S3 Buckets and this will allow you to look at if other accounts have access to your S3 Bucket, maybe there's something you're not expecting here and you want to make sure to lock down that S3 bucket.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 36:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: Okay, if you're not very familiar with IAM policy I would encourage you to go to this URL to make sure you look at a few of them and understand them better.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 37:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But I would assume that by now you know what they look like already and how they work.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 38:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies
- Key Insights: A few common IAM policies we'll get across is going to be the AdministratorAccess which is meaning that everything should be allowed on any resource.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 39:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: And so this is a policy you have to specify so by default, if you set nothing in an IAM policy then everything will be denied.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 40:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: But if you add that statement, which is, allow action star resource star, then everything will be allowed and that will give you AdministratorAccess.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 41:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: And because this is something very common for administrators, AWS provides this as a Managed Policy.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 42:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: Another very interesting policy, a bit less privileged, is called AWS PowerUserAccess.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 43:
- Concepts: Authorization Model
- Services: AWS IAM, AWS Organizations
- Key Insights: And so in the first one, the "Effect" is "Allow", "Not action" on IAM star organizations and account star for resource stars, so that means that it's not going to allow anything to be done on IAM organizations and accounts.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 44:
- Concepts: Authorization Model, Organization Governance
- Services: AWS IAM, AWS Organizations, IAM Roles
- Key Insights: And also it's going to allow still a few IAM actions such as create service link role, delete service link role, list roles, describe organization and list regions.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 45:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So you may be asking me, why on the left hand side is "NotAction" used and not just "Effect":"Deny." So if you use "Effect":"Deny," and then you specify these three actions and then you specify "Effect":"Allow," and these five actions.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 46:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: These five actions will automatically be denied because there will be an explicit deny on the left of hand side.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 47:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So here we have a very interesting use case, in case we don't want to deny everything in there because we want to explicitly allow a few things in there, then we can use the "NotAction" instead of "Deny" to allow for these two things to coexist together.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 48:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies
- Key Insights: Okay next, conditions in IAM policies.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 49:
- Concepts: Access Boundary Controls
- Services: (none explicit)
- Key Insights: So this is what a condition would look like.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 50:
- Concepts: Access Boundary Controls
- Services: (none explicit)
- Key Insights: So we have a condition operator, a condition key and a condition value.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 51:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so we can do a lot of crazy things with conditions.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 52:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: The first one is going to be a string operator, so for example, you're saying I want my principle tag to be job category: IAM user admin, so this is when you look at tags.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 53:
- Concepts: Authorization Model, Directory Integration, Identity Lifecycle
- Services: IAM Policies
- Key Insights: Or you can look at, for example, on this pre-prefix for this pre-Bucket policy to say that we want the users to only access a specific home directory.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 54:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: There's numeric operators where we can look at, is it equal, Equal than or not equal and so on.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 55:
- Concepts: Temporary Credential Strategy
- Services: (none explicit)
- Key Insights: Dates to look at, compare dates, this is very helpful when you want to provide temporary access to a specific service.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 56:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: Booleans which is going to be really helpful for example, if you want to evaluate SSL such as Secure Transport: true, and also when you want to look at MFA using Multifactor Authentication present: true.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 57:
- Concepts: Access Boundary Controls
- Services: (none explicit)
- Key Insights: There's also an IP address condition or not IP address condition.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 58:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: And these conditions will be really helpful for buckets, S3 bucket policies for example or any kind of policy we want to ensure that only a specific kind of source IP can access the service.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 59:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we can have an IP address source IP equals, and here we have a CIDR block slash 24.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 60:
- Concepts: Access Boundary Controls
- Services: (none explicit)
- Key Insights: And finally, we can look at ArnEquals, ArnLike and the Null condition.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 61:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We're also checking if something is null or not.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 62:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now, right now, I just wanna reassure you you don't have to remember all these things okay?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 63:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: I just want to show you these things exist so that you know you can have very specific IAM policies such as if the exam is asking you to use an IAM policy as an answer to a problem, this would be possible instead of using, for example a custom script okay?
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 64:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But you don't remember exactly all these things the exact conditions and so on.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 65:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: Okay next, there is Policy Variables and Tags and these are really, really powerful.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 66:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: One we've seen is dollar sign AWS username and this is most commonly used, for example in S3 buckets policy.
- Hidden/Implicit Meaning: Constraint or limitation signal; Authorization decision-path signal.

Line 67:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we have resource minus S3 buckets, slash the variable AWS username, slash star.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 68:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: And what this does is that it will allow your username to perform actions, all the actions on just the prefix that starts with AWS username.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 69:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: And so that means that every user will have its own little directory in your S3 bucket.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 70:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And that is a very common usage for this.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 71:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies
- Key Insights: There is some AWS specific Policy Variables and Tags, for example CurrentTime, TokenIssueTime, principal type, secure transport, which is for SSL, source IP, user ID and source instance ARN.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 72:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And these are provided by AWS.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 73:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: There's service specific policy roles and tags, for example S3 prefix, max keys, SNS endpoint, SNS protocol.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 74:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: And finally, you can have tag based policy variables.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 75:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies
- Key Insights: For example, if you use resource tag, slash key name or principle tag, slash key name and so on so you can start having some really powerful IAM policies.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 76:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And this is why I would encourage you to use the link from before to just look at a few of them and try to understand them.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 77:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: So you can really see the whole range of what can be done in IAM.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 78:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies, IAM Roles
- Key Insights: Okay, more importantly, and more exam focused is going to be the difference of IAM roles and resource based policies.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 79:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And it may not be very clear exactly what the difference is but there is a very, very clear difference.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 80:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we have two options right?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 81:
- Concepts: Authorization Model
- Services: IAM Policies, IAM Roles
- Key Insights: We can attach a policy to resource, for example, in S3 bucket versus attaching of using a role as a proxy.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 82:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So here is an example.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 83:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: We have a user in account A and is trying to access an S3 bucket in account B.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 84:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now there's two ways of doing this, right?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 85:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: The first one is to use a role in account B and we'll be assuming that role from account A and once you assume the role in account B the role will have the necessary permissions to access the S3 buckets.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 86:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And that works.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 87:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies
- Key Insights: Another option is to use an S3 bucket policy and in the S3 bucket policy, we're saying, okay user in account A can access my Amazon S3 bucket in account B.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 88:
- Concepts: Authorization Model, Identity Lifecycle
- Services: (none explicit)
- Key Insights: And both these solutions allow user account A to access the Amazon S3 bucket in account B.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 89:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But there is a very, very big difference.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 90:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: What is it?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 91:
- Concepts: Identity Lifecycle
- Services: IAM Roles
- Key Insights: It is that when you assume a role, whether it be a user, an application or a service you're going to give up all your original permissions and you're going to take the permissions assigned to the role.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 92:
- Concepts: Identity Lifecycle
- Services: IAM Roles
- Key Insights: So that means that before, when we do assume the role and accounts B, the orange situation when the user in account A, gives up all his permissions in account A while it's being assuming a role in account B.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 93:
- Concepts: Identity Lifecycle
- Services: IAM Roles
- Key Insights: So the idea is that when you assume a role as a user application or service, then you're going to give up your original permissions and you're going to take the permissions assigned to the role.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 94:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: And when you're using, on the contrary, a resource based policy then the principal does not have to give up any permissions.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 95:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So when do we use resource based policy?
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 96:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Well, here is in this complex example, an example.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 97:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So we have user in account A that needs to scan a DynamoDB in account A so it's own account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 98:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But then dump the content of it in an S3 bucket in account B.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 99:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: As you can see the user needs to operate on two accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 100:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies, IAM Roles
- Key Insights: Well, in this case, we need an IAM role in account A to make it happen, and also a resource policy on the S3 bucket and account B to make it happen.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 101:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: So this is a very, very good use case for resource based policies.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 102:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: So resource based policies are supported by so many AWS services and is increasing, so for example, Amazon industry buckets, SNS topics SQS queues, Lambda functions, ECR, Backup, EFS, Glacier, Cloud9.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 103:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I mean, you'll see the list here, is that it's pretty much supported by most of the important resources in AWS.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 104:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, Permission Boundaries
- Key Insights: Now let's talk about, IAM permission boundaries.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 105:
- Concepts: Identity Lifecycle
- Services: Permission Boundaries
- Key Insights: So we know that there are some permission boundaries and they're supported for users and roles, but not groups.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 106:
- Concepts: Authorization Model
- Services: AWS IAM
- Key Insights: This is an advanced features that is going to allow you to set the maximum permissions an IAM entity can get.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 107:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So an example is going to be way easier.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 108:
- Concepts: Access Boundary Controls
- Services: AWS IAM, Permission Boundaries
- Key Insights: So for example, say we attach this IAM permission boundary so saying S3 star, clover star and EC2 star and this IAM permission.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 109:
- Concepts: Authorization Model, Identity Lifecycle
- Services: AWS IAM, IAM Policies
- Key Insights: So through this IAM policy we just allow IAM create user star, okay.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 110:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Well, these two things together will mix up.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 111:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then what will happen is that there will be no permissions.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 112:
- Concepts: Authorization Model, Identity Lifecycle
- Services: AWS IAM, Permission Boundaries
- Key Insights: Well, because even though the action IAM create user is authorized on the right hand side, because the IAM permission boundaries only allow the permissions on S3 CloudWatch, and ec2 then the user zero will have no permissions.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 113:
- Concepts: Organization Governance
- Services: AWS IAM, AWS Organizations, Permission Boundaries, Service Control Policies
- Key Insights: So IAM permission boundaries can also be used with AWS organization SCP.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 114:
- Concepts: Access Boundary Controls, Organization Governance
- Services: IAM Policies, Permission Boundaries, Service Control Policies
- Key Insights: So if you look at the SCP in the middle we have the intersection of the SCP, the permission boundary and the identity based policies.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 115:
- Concepts: Authorization Model, Identity Lifecycle
- Services: AWS IAM, IAM Policies, Permission Boundaries
- Key Insights: So you would use IAM permission boundaries when you want to delegate responsibility to non-administrator within their permission boundaries, for example to create new IAM users or to allow developers to self assign policy to themselves and manage their own permissions while making sure that they can only do these things within their privilege rights.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 116:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So they cannot escalate themselves.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 117:
- Concepts: Identity Lifecycle, Organization Governance
- Services: AWS Organizations, Service Control Policies
- Key Insights: And it's also very useful to restrict one specific user instead of using a whole account restriction with organizations and SCP.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 118:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: So that's it for IAM, hopefully you know most of these things and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/011_IAM Introduction_ Users, Groups, Policies.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: - [Stephane] Welcome to the first deep dive on an iterator service.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: The first one is called IAM.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: So IAM stands for identity and access management.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 4:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: It is a global service because in IAM, we are going to create our users and assign them to group.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: So we've already used IAM without knowing, when we created an account, we created a root accounts, and has been created by default.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: This is the root user of our accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And the only things you should use it for is to set up your account as we'll do it right now.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Multi-account governance signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But then you shouldn't use that account anymore, or even share it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 9:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: What you should be doing instead, is create users.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 10:
- Concepts: Identity Lifecycle, Organization Governance
- Services: AWS IAM, AWS Organizations
- Key Insights: So you will create users in IAM, and one user represents one person within your organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And the users can be grouped together if it makes sense.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So let's take an example we have an organization with six people.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: You have Alice, Bob, Charles, David, Edward and Fred so all these people are in your organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now Alice, Bob, and Charles they work together.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: They're all developers.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 16:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So we're going to create a group called the group developers who regrouping Alice, Bob and Charles.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And it turns out that David and Edward also work together.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So we're going to create an operations group.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: Now we have two groups within IAM.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 20:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Now groups can only contain users, not other groups.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is something very important to understand.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 22:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Groups only contain users.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 23:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Now, some users don't have to belong to a group.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 24:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: For example, Fred right here is alone, he does not correspond to any group.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: That is not best practice.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 26:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But it is something you can do in AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 27:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And also, a user can belong to multiple groups.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 28:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: That means that for example, if you know that Charles and David worked together, and they're part of your audit team, you can create a third group with Charles and David.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 29:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And as you can see, now, in this example, Charles and David are part of two different groups.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 30:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: So this is the possible configurations for IAM.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 31:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So why do we create users and why do we create groups?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 32:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: Well, because we want to allow them to use our AWS accounts and to allow them to do so, we have to give them permissions.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 33:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So users or groups can be assigned what's called a JSON document.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 34:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: I'll show you right now what it means called a policy, an IAM policy.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 35:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it looks just like this.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 36:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you don't have to be a programmer.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 37:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This is not programming.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 38:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: This is just describing in, I think plain English, what a user is allowed to do or what a group and all the users within that group are allowed to do.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 39:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So in this example, we can see that we allow people to use the EC2 to service and do describe on it, to use the elastic load balancing service and to describe on it and to use CloudWatch.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 40:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now we'll see what EC2 elastic load balancing and CloudWatch mean, but through this JSON document that looks just like this.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 41:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: We are allowing our users to use some services in AWS.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 42:
- Concepts: Identity Lifecycle
- Services: IAM Policies
- Key Insights: So these policies will help us define permissions of our users.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 43:
- Concepts: Authorization Model, Identity Lifecycle
- Services: (none explicit)
- Key Insights: And so in AWS, you don't allow everyone to do everything that would be catastrophic, because a new user could basically launch so many services and they will cost you a lot of money or would be valid for security.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 44:
- Concepts: Least Privilege
- Services: (none explicit)
- Key Insights: So in AWS, you apply a principle called the least privilege principle.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 45:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So you don't give more permissions than a user needs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 46:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Okay, so if a user just needs access to three services, just create a permission for that user.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 47:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: So now we have seen an overview IAM.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 48:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Let's go in the next lecture to practice creating users and groups.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/012_IAM Users & Groups Hands On.txt

Line 1:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So let's go ahead and practice using the IAM service to create users in AWS.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: So in the search bar, I just type IAM and I go into the IAM console.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: So upon arriving on the IAM Dashboard, we have some security recommendations that we can for now not care about.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And what I want to draw your attention to is that on the left hand side, we go to users.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So this is where we're creating to create users for IAM, but first, let's notice something.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: If you go to the top right corner and click on Global, you can see that the region selection is not active.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: That means that IAM as an entire service is a global service and therefore there is no region to be selected.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 8:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: When you create a user in IAM, it will be available everywhere, but some other consoles we'll see in this course will be region-specific.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So just something to notice.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 10:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Okay, so now we have users, and why do we create users?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 11:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Well, we create users, because right now, we are using what's called the root user.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So if you click on this, you see there's just the account ID available to you.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So when you have it, that means you're using the root account and it's not best practice to use the root account.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 14:
- Concepts: Authorization Model, Identity Lifecycle
- Services: (none explicit)
- Key Insights: So therefore, we want to create users such as admin users that will allow us to use our accounts more safely.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 15:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So for this, let's go ahead and create a user, and I will provide a username, for example, Stephane.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 16:
- Concepts: Federated Authentication, Identity Lifecycle
- Services: AWS IAM, IAM Identity Center
- Key Insights: So of course I want to provide myself access to the management console, so I'm going to do this, and we have the option to use identity center, which is recommended, or to create an IAM user.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I will choose the second option because it is more simple, and from an exam perspective, this is the one you need to know about.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But don't worry, this does not affect how your course is going to go.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: Okay, so we create an IAM user, and now we have to set the password.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 20:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So if this was a user that was not me, I would leave it as auto-generated password, and I would leave this so that the user must change this password at the next sign-in, but because it is me, I'm just going to enter a custom password and I'm going to untick this because I don't need to change my password at the next login.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's click on next.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 22:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Next, we have to add permissions to this user, so we can add it directly or we can get started with groups.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 23:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So let's create a group, and we're going to create a group.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 24:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies
- Key Insights: The group name is going to be admin and the policy name is going to be administrator access.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 25:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So now that this is done, we can add the user into the admin group.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's click on next, and we can review everything right now.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 27:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So we have the username, the permissions on the group, and we have tags, and tags are everywhere in AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 28:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: They're optional, but they allow you to give metadata to many of your resources.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, I could say that the department of Stephane is engineering.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 30:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This is not something I'm going to do everywhere on the course, but I want show you once how you can add tags to resources in AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 31:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Okay, so now the user is created successfully.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 32:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So now we can email signing instructions or download CSV files and then we can log in with this user.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 33:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: But first, let's return to the user list and have a look at everything.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 34:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So here is my user lists, here is me and we also have groups.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 35:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So if I go to the left hand side, user groups, we have admins.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 36:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's observe admins.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 37:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So admins has one user in it named Stephane.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 38:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And if you look at permissions of admins you see that there is administrator access attached to the admin group.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 39:
- Concepts: Identity Lifecycle
- Services: IAM Policies
- Key Insights: Now if I go to my user, Stephane in here, we can look at permission policies and see it also has administrative access but this one has not been attached directly.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 40:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: It has been attached via the group admin.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 41:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So that means that Stephane inherited any permissions of the group admin it is in.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 42:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And this is why we put users in groups.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 43:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It is a bit more simple to manage permissions this way.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 44:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So now let's go back to our dashboard and we want to sign in with our user, Stephane.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 45:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So first what we can do is look at our AWS accounts and it has an account ID and a Sign-in URL.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 46:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now you can customize this Sign-in URL very easily by creating what's called an account alias.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 47:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it could be aws-stephane-v3 and then Create alias so whatever alias until someone hasn't created it, so it has to be unique.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 48:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, v5 is available.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 49:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So now using this alias can simplify my signing URL.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 50:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now to sign in using my Stephane accounts we could use the same browser or we could create a new browser window in private mode.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 51:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And the benefit of doing this is that we can have two windows side by side using AWS.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 52:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So if you don't do this, that's fine, but if you log in using the Stephane account on the right hand side window then you will be disconnected on the left hand side, this is the only difference.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 53:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So to use two accounts at the same time, the route on the left and my account on the right what I'm doing as a trick is that I'm using a private window on my web browser, and Chrome has this feature, Firefox as this feature, Safari as this feature, and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 54:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So by pasting the signing URL, as you can see, I get the sign in and as an IAM user and to get to this page, we can go back to one.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 55:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: And as you can see, when you do a sign in on AWS, you have the root user sign in or the IAM user sign in.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 56:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So to get back to this, we go to IAM user.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 57:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We enter either the account ID or the account alias that I can copy in here, and then we are taken to this page.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 58:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So the IAM user name is going to be Stephane and the password is going to be whatever you have set from before, then you sign in.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 59:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So now the cool thing is that if I look at the top right hand side, IAM logged in using my IAM user.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 60:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So it says the account ID and the IAM user.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 61:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But if I look on the top right hand side of here it just says the account id which shows me it's the root accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 62:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So here we are, we have the root accounts logged in on the left hand side through a normal window and we have the IAM user logged in on the right hand side through a private window.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 63:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Please make sure not to lose your root account logins and your admin login.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 64:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Otherwise, you will be in deep trouble with your account and you'll have to contact AWS for support.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 65:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And currently I cannot help you with this.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 66:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: Now from a course perspective, I recommend you use your IAM user and not your root user but this is just a normal recommendation.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 67:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: Sometimes you'll see me using root sometimes I'm using IAM user.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 68:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: But when you have to use roots or when you have to use an IAM user, I will let you know in the course.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 69:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Don't worry about that.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 70:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now for the rest of this section, please keep these two windows open and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/013_AWS Console Simultaneous Sign-in.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let me show you something cool now called the multi-session support.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: So you click on it to turn it on, and the idea now is that now I can have in this browser a specific role or account and then I can add a session, and sign into any of your identities using the same browser.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So here I'm going to click on it and I'm going to add a session.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And now you can login again using any account ID or route.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then you go to go.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's go and let me just signing into one of my accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And after being signed in, as you can see here, I have one specific account ID and here I have a different account ID.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And the cool thing is that, for example, let's say I'm going to the EC2 console here, and then I'm going to go into volumes and then I'm going to, for example, create an EBS volume of one gigabyte just to do something very quickly.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's create this volume.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay, as you can see, my volume has been created, so it's just showing you how to do something very quickly on this window.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You don't have to know about EBS and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But now if I go into EBS on this other browser, so I go under EC2, and then I go under EBS.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: As you can see here, I don't see any volumes, because I'm using a different account window, and this other one is using the other account window.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that means I can have two accounts under the same browser.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This was not possible before, which is very helpful, and something you should know about if you want to use AWS at scale.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So a nice welcome edition.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You don't need to go ahead and create an EBS volume.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I just want to show you the fact that you could have two different accounts on two different browser windows.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And for me, that's been using AWS for over 10 years, this is a little revolution.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: All right, so that's it, you can go back to the course.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/014_IAM Policies.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies
- Key Insights: Okay, so now let's discuss, IAM policies in depth.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 2:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies
- Key Insights: So let's imagine we have a group of developers, Alice, Bob and Charles, and we, attach a policy at the group level.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 3:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies
- Key Insights: In that case, the policy will get applied to every single member of the group so both Alice, Bob, and Charles they will all get access and inherit this policy.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 4:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies
- Key Insights: Now, if you have a second group with operations with a different policy, David and Edward will have a different policy than the group of developers.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 5:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: If Fred is a user, it has the possibility not to belong to a group.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies
- Key Insights: And we have the possibility to create what's called an inline policy which has a policy that's only attached to a user.
- Hidden/Implicit Meaning: Constraint or limitation signal; Authorization decision-path signal.

Line 7:
- Concepts: Identity Lifecycle
- Services: IAM Policies
- Key Insights: So that user could or could not belong to a group you can have inline policies for whatever user you want.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: And finally, if Charles and David both belong to the audit team and you attach a policy to the audit team as well, Charles and David will also inherit that policy from the audit team.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 9:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So in this case, Charles has a policy from developers and a policy from audit team.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 10:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: And David has a policy from audit team and a policy from the operations team.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: That should make a lot of sense when we get into the hands-on.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 12:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: Now, in terms of the policy structure, you just need to know at a high level how it works, as well as how it is named.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is something you will see quite a lot in AWS, so get familiar with this structure this is adjacent documents.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 14:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: And so an IAM policy structure, consists of a version number, so usually it's 2012-10-17, this is the policy language version.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Authorization decision-path signal.

Line 15:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: And ID which is how to identify that policy, this is optional.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then more statements, and statements can be one or multiple ones, and a statement has some very important parts.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So the Sid is a statement ID, which is an identifier for the statement, which is optional as well, so on the right hand side is the number one.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 18:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: The effect of the policy itself, so it is whether or not the statement allows or denies access to certain API, so in the right hand side, this says allow, but you can see deny as well.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 19:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies, IAM Roles
- Key Insights: The principle consists of which accounts, user or role which, to which this policy will be applied to.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal; Authorization decision-path signal.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So in this example, it's applied to the root accounts of your AWS accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Action is the list of API calls that will be either denied or allowed based on the effect.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And the resource is a list of resources, to which the actions will be applied to.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So in this example, it is a bucket, but it could be many different things.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 24:
- Concepts: Access Boundary Controls
- Services: (none explicit)
- Key Insights: And finally in, not represented here but there's a condition to which when this statement should be applied or not, and this is not representative here because it is optional.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So going into the exam, you need to make sure that you really understand the effect, the principle, the action and resource, but don't worry, you will see those along the way in the course so you should be confident with them by the end of the course.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 26:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: That's it for this lecture, I hope you liked it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 27:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/015_IAM Policies Hands On.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies
- Key Insights: So now let's have a look at IAM policies in depth.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 2:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So first of all, let's go into users.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 3:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And as you can see, the user Stephane is part of the admin group, and therefore, has administrator access permissions to AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: That means that if I use my user Stephane to go into the IAM console, so now I'm using my user, and then I go to the left-hand side and click on users, as you can see, I can see my user Stephane, which is right here.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So my user Stephane has permission to do anything because it's an administrator.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 6:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: But what I'm going to do is that I'm going to the groups of admins and then I'm going to remove my user Stephane from that group.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So by removing the user, which I've done right now, then Stephane loses its permissions on the right-hand side.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: How do we make sure of this?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Well, let's refresh this page.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 10:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And as you can see, now I see zero users and I get an access denied and it said that I don't have the permission to do iamListUsers.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And so therefore, because I removed my Stephane user from the admin group, then I've lost permissions to look at users on the right-hand side.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's try to fix this.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 13:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So let's go into IAM and we're gonna go under users, find Stephane in here.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: And right now, as you can see, Stephane has zero permission policies but let's add permissions.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So we can add permissions directly or create an inline policy.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's add permissions, and this is going to be easier.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 17:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And so again, we could add the user back to a group.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: That's not what we want.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 19:
- Concepts: Identity Lifecycle
- Services: IAM Policies
- Key Insights: Or we could attach policies directly to my user.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 20:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: And so the policy I'm going to attach is going to be IAMReadOnlyAccess.
- Hidden/Implicit Meaning: Constraint or limitation signal; Authorization decision-path signal.

Line 21:
- Concepts: Authorization Model, Identity Lifecycle
- Services: AWS IAM
- Key Insights: So this will allow my user Stephane to read anything on IAM, which is what we want.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 22:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So let's add this permission and now this policy has been added.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So back in here, let's refresh this page.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 24:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And as you can see now, I can finally do my API call again and look at the Stephane user in my users category.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So I can view users, I can view user groups, such as admin but can I create a group?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Let's try to create the developer group and then create this group.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 27:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And as you can see, I cannot create it because I'm not allowed to actually create a group.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: I'm only given the read-only access on IAM.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 29:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And so therefore, because I have read-only access, I cannot create groups.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 30:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So this shows you that you can only permission users for what they're supposed to do.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 31:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: And of course, if I wanted to give access to create groups on the right-hand side, I will need to attach a bigger permission sets, such as the IAM full access.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 32:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So next, let's do something.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 33:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So next, I'm going to go into the left-hand side under user groups, and I'm going to create a group.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 34:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So this group is going to be called developers.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 35:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies
- Key Insights: And then I'm going to add the user Stephane in this group and I'm going to attach whatever policy I can find, for example, AlexaForBusiness but it doesn't really matter.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 36:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies
- Key Insights: Just attach the first policy you can and let's create this group.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 37:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this has been added.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 38:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And finally, let's go into the admin group.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 39:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And again, we're going to add users and re-add Stephane into this group.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 40:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So now if we go back to the Stephane user, so let's go into IAM and look at the users and look at Stephane, I'm going to shut down this message on right-hand side.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 41:
- Concepts: Identity Lifecycle
- Services: IAM Policies
- Key Insights: So if we look at Stephane as the user, as we can see, we have three permission policies attached to my user.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 42:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: We have the administrator access that has been inherited from the group admin.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 43:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies
- Key Insights: We have this AlexaForBusiness managed policy that has been attached via the group developers.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 44:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And finally, IAMReadOnlyAccess that has been attached directly.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 45:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so as you can see, I inherited different permissions based on how it's been attached.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 46:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: So now let's look at policies in detail.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 47:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: So on the left-hand side, let's look at policies.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 48:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: And first, let's have a look at this AdministratorAccess policy.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 49:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So if we look at it, it's the permission that gave us administrator access to everything.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 50:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: And if you look at the permissions defined in this policy as a summary, as you can see, this allows all the services in AWS.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 51:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And this number can change over time.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 52:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It doesn't matter.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 53:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The course will be up to date.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 54:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So all these services, for example, App Mesh or Alexa for Business or Amplify, they all have full access.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 55:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So how is this permission defined?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 56:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: Well, if you click on JSON, this is the JSON form of this policy, and we can see that here we have allow Action, star and resource, star.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 57:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So star in AWS means anything.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 58:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So it means we allow any action on any resource.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 59:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And of course, allowing any action on any resource is exactly the same thing as giving administrator access to someone.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 60:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is how it's been defined.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 61:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: If we have a look at another policy, for example, the IAMReadOnlyAccess that we saw from before.
- Hidden/Implicit Meaning: Constraint or limitation signal; Authorization decision-path signal.

Line 62:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: So if we look at it, we see that IAM is authorized with Full: List and Limited: Read.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 63:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: And if I click on it, you can actually have a look at all the API calls that has been allowed as part of this policy, which is very handy.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 64:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But if we look at how this has been actually defined, let's click on JSON.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 65:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And here we have the JSON document that shows how this has been defined.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 66:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So the effect is allow, and then we list out the API calls that are being allowed.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 67:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we have this one, this one, and then we have Get*.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 68:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So when you have Get*, it says that anything that starts with Get and then has something after is authorized.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 69:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: For example, get users or get groups.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 70:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Same for list.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 71:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we have a List*.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 72:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So list users or list groups.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 73:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So by using a star, we encompass and group many API calls together.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 74:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So all this is allowed on Resource*.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 75:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: And so therefore, that summarizes what the read-only IAM access policy is made of.
- Hidden/Implicit Meaning: Constraint or limitation signal; Authorization decision-path signal.

Line 76:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is very handy.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 77:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: You can also create your own policy.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 78:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So let's create a policy and we have a visual editor or a JSON editor.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 79:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So if you have JSON, you can just very simply edit this and create your JSON document with this builder, which is very handy.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 80:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Or you can use the visual editor.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 81:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: And for example, let's say IAM, we wanna create stuff for IAM.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 82:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And what action do we wanna authorize?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 83:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Well, we want to authorize ListUsers.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 84:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we're going to take this and GetUser.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 85:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So just two API calls.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 86:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And as we can see, we have selected one out of 38 in list and one out of 32 in read.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 87:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then what do we want to authorize this on?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 88:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So on all resources or only specific resources?
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 89:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is a very simple one but as you can see, this builder is very handy.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 90:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And when you click on next, you can have a look and say MyIAMPermissions.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 91:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: And then we create this policy.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 92:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: And if we have a look at the policy we created, we can have a look at the corresponding JSON and see that indeed through the visual editor, we allowed iam:ListUsers and iam:getUser on Resource*.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 93:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies
- Key Insights: And then this policy, we can attach to groups or to users and so on.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 94:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is how you manage permissions in AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 95:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So now to just wrap up this hands-on, let's go to user groups and we're going to delete the developers group because we don't need it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 96:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And then I'm going to go into my Stephane user and I'm going to just remove this IAMReadOnlyAccess that had attached directly.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 97:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So now Stephane only belongs to the group admin and it has administrator access.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 98:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So of course, if I go back to my IAM console in here and I just look at users, as you can see, yes, everything is showing fine.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 99:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it is working correctly.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 100:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 101:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/016_IAM MFA Overview.txt

Line 1:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Now that we have created users in groups, it is time for us to protect these users in groups from being compromised.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So for this, we have two defense mechanisms.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 3:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: The first one is to define what's called a password policy.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Well, because the stronger the password you use, the more security for your accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So in AWS you can set up a password policy with different options.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The first one is you can set a minimum password length and you can require specific character types.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, you may want to have an uppercase letter, lowercase letter, number, non alphanumeric characters, for example, a question mark and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: Authorization Model, Identity Lifecycle
- Services: AWS IAM
- Key Insights: Then you can allow or not IAM users to change their own passwords, or you can require users to change their password after some time to make your password expired, for example, to say every 90 days, users have to change their passwords.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 10:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Finally, you can also prevent password reuse so that users, when they change their passwords, don't change it to the one that they already have or change it to the one they had before.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is great.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 12:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: A password policy really is helpful against brute force attacks on your account.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But there's a second defense mechanism that you need to know going into the exam.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: And this is the Multi-Factor Authentication or MFA.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It is possible, you already used it on some websites, but on AWS it's a must and it's very recommended to use it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 16:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So users have access to your account and they can possibly do a lot of things, especially if they're administrators.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: They can change configuration, delete resources and other things.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So you absolutely want to protect at least your root account and hopefully, all your IAM users.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So how do we protect them on top of the password?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: Well, you use an MFA device.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: So what is MFA?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: MFA is using the combination of a password that you know and a security device that you own.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And these two things together have a much greater security than just a password.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 24:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So for example, let's take Alice.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: Alice knows her password, but she also has an MFA generating token.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 26:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: And by using these things together while logging in, she's going to be able to do a successful login on MFA.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 27:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: So the benefit of MFA is that even if Alice has lost her password because it's stolen or it's hacked, the account will not be compromised because the hacker will need to also get a hold of the physical device of Alice, that could be her phone, for example, to do a login.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Obviously that is much less likely.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: So what are the MFA devices option in AWS?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 30:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And you need to know them going into the exam, but don't worry, they're quite simple.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 31:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: The first one is a virtual MFA device.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 32:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This is what we'll be using in the hands-on.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 33:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so you can use Google Authenticator, which is just working on one phone at a time, or using Authy.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 34:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So for Authy, you have support for multiple tokens on a single device.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 35:
- Concepts: Identity Lifecycle
- Services: AWS IAM, MFA
- Key Insights: So that means that with the virtual MFA device, you can have your root account, your IAM user, another account, another IAM user.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 36:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It's up to you.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 37:
- Concepts: Identity Lifecycle
- Services: MFA
- Key Insights: You can have as many users and accounts as you want on your virtual MFA device, which make it a very easy solution to use.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 38:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now we have another thing called a Universal 2nd Factor or U2F Security Key, and that is a physical device.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 39:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, a YubiKey by Yubico and Yubico is a third party to AWS.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 40:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This is not AWS that provides it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 41:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This is a third party.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 42:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And we use a physical device because maybe it's super easy, you put it on your key fobs and you're good to go.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 43:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So this YubiKey supports multiple root and IAM users using a single security key.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 44:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So you don't need as many keys as users, otherwise there will be a nightmare.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 45:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Then you have other options.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 46:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: You have a hardware key fob MFA device, for example, this one provided by Gemalto, which is also a third party to AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 47:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And finally, if you are using the cloud of the government in the US, the AWS GovCloud, then you have a special key fob that looks like this that is provided by SurePassID, which is also a third party.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 48:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 49:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We've seen the theory on how to protect your account, but let's go in the next lecture to implement that.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 50:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/017_IAM MFA Hands On.txt

Line 1:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So we are going to first, define a password policy.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For this, click on account settings on the left-hand side.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: You will find password policy and you can edit it.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 4:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: So here, we can use the IAM default password policy, which composes of these kind of requirements, or we can customize the password policy and force a password minimum length.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We can also require uppercase letter, lowercase letter, a number, a non-alphanumeric character.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 6:
- Concepts: Authorization Model, Identity Lifecycle
- Services: (none explicit)
- Key Insights: We can also turn on password expiration to turn on, for example, expire after 90 days, or that a password expiration requires administrative resets, or we can allow the users to change their own password or we can prevent password reuse.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: So this password process can be edited directly from the IAM console, and that's the first part of security.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: The second part is around setting multi-factor authentication for your root account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So if you click on the account name and then click on security credentials, if you are logged in with the root user, you will see my security credentials root user.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: Identity Lifecycle
- Services: MFA
- Key Insights: Now, there is a way for you to actually protect your root user, which is the most important account in your AWS account, and you can protect it by using multi-factor authentication.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: Now, just so you know, I'm going to do it and demonstrate how it works in front of you, but I've had students who locked themselves out of their accounts because they lost access to their multi-factor authentication device.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: As such, if you think you are running the risk of losing your iPhone or whatever, do not do this, okay?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Just keep your phone with you, just watch my video.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It will be good enough if you want to practice along with me, you can as well.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: And you can also delete the MFA device after activating it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: Okay, but let's go ahead and assign an MFA device.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I will call this one my iPhone because this is what I have, but you can name it whatever you want.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: Then you can select the type of MFA device.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it could be an authenticator app, which is something I'm going to use, but also it can be a security key or a hardware TOTP token.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to use an authenticator app because it will be virtual.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And now we go into the setup of the app.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So there's a list of compatible applications right here.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You can find here for Android and for iOS that we know work well with AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 24:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And as such, I'm going to use the Twilio of the Authenticator, which is an app I like.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So what I have to do then is actually launch the app on my phone and then you click on show QR code.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So when you should a QR code, you need to scan this QR code directly on your phone.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 27:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So for this, you add an account, you scan the QR code right here, and once scanned, it will add the account and start naming it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we'll just save this, this looks good.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: And then we get access to MFA code.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 30:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: So there is first, the first MFA code, so 301935.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 31:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is a code generated by my iPhone in real-time.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 32:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And this code is going to change over time.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 33:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: And the reason why these two codes are asked by AWS is that it wants to make sure that the MFA device is set up correctly and that the codes are accurate.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 34:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So the second code is 792843.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 35:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And, of course, there will be difference for your device.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 36:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: And once these two codes are entered, you click on add MFA.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 37:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: And as you can see, we can reach there up to eight MFA devices currently, and you can scroll down and see them right here on the list.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 38:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: So the multi-factor authentication, MFA, one, it's called my iPhone that's been created right now.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 39:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So if you wanted to remove it, you can remove it and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 40:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: But so how do we use MFA?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 41:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Well now, if I log out of AWS and I log back in, so I'm going to use my router account and my password.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 42:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: Now after doing a successful login, I have the MFA code to enter.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 43:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so I open my app and enter the code that I see and press submit.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 44:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: And this way IAM logged in.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 45:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And this is perfect because well, we had an extra level of security on our account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 46:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 47:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/018_AWS Access Keys, CLI and SDK.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we have seen how to access AWS using the Management console, which is the Web interface that we've done so far in this course, but there are, actually, three different options to access AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So the first one is a Management console, as we've seen, and is protected by your username, password, maybe multifactor authentication.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: Authorization Model, Identity Lifecycle
- Services: (none explicit)
- Key Insights: Then there is the CLI, Command Line Interface, and this is something we will set up on our computer, and this is protected by access keys, and access keys our credentials we're going to download in a few seconds that will allow us to access AWS from our terminal.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Then, finally, there is the SDK, the AWS Software Development Kit, which is used whenever you want to call APIs from AWS from within your application code.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And again, these will be protected by the exact same access keys.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So how do we generate access keys?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 7:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Well we will do this through the Management console, and users are responsible for their own access keys, and access keys, from the user perspective, there are secret, just like a password, so if you generate your own access keys do not share them with your colleagues, because they can generate their own access keys as well.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So really make sure that you treat your access key ID just like your username, and your secret access key just like your password, you do not share them with other people.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So when you go into the Management console, you get access key as there's a button to create access keys, and then it gives you the right to download it in the very second.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: And so, for example, here's a fake access key ID and a fake secret access key, and these, when loaded into my Command Line Interface, would allow me to access the AWS API, and we'll do this in the hands-on in a second.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So again, remember, I want to make sure that you don't have any security issues while doing this course or at work, do not share your access keys, they are private to you.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So if you're new to the Cloud, and programming and so on, or IT, then you might not know what's a CLI.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So CLI stands for Command Line Interface, and the AWS CLI is a tool that allows you to interact with the AWS services using commands from your command-line shell.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So whenever you see some code where you type a command line, and then it returns a result, for example, aws, s3, cp, and so on, this is what we call the CLI.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And we are using the AWS CLI because we start every command by the word AWS.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now with this CLI, you get direct access to the public APIs of your AWS services which is going to be very helpful in this course.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And, then, using the CLI you can develop scripts to manage your resources and automate some of your tasks.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The CLI is open-source, you can find all the source code on GitHub, and it is an alternative to using the AWS Management console.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I know that some people, actually, do not even use the Management console, they only use the CLI, for example.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So what's the SDK now?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 21:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: SDK stands for Software Development Kit, and this is a set of library, this is going to be language specific, so you're going to have an SDK for different programming languages, and similarly, it will allow you to access and manage your AWS services and APIs programmatically, but this time the SDK is not something that you use within your terminal, it is something that you embed within your application that you have to code.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So your application will have the AWS SDK from within them.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It supports many different programming languages, such as JavaScript, Python, PHP.NET, Ruby, Java, Go, Node.js, C++, all of that's our programming languages.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 24:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: There's also the mobile SDK, if you're using Android or iOS, and the IoT, so Internet of Things device SDK in case you're using some thermal sensors or backlogs that are connected, all these kinds of things.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So to give you an example of what you can build with the SDK, well the AWS CLI that we're going to be using in this course is actually built on the AWS SDK for Python named Boto.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 27:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now in then the next lecture, we're going to practice setting up the CLI and dealing with access keys, so I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/019_AWS CLI Setup on Windows.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay so we are going to install the aws command line on Windows.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So for this we do aws CLI install windows on Google.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And this will give us the list link and we want to install the aws-cli version 2 on Windows.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay this is the latest and so we'll up to dates.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It doesn't change much versus version 1, it is just some improved performance and capability, but the API's exactly the same and there's also an improved installer.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to scroll down, in here and to Install on Windows where you can just simply install it using the MSI installer, so I just click on this link to download the MSI installer. then I'm going to run the installer so it should very very simple.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now the installer is starting, I click on Next.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I accept the terms of the license, click on Next, Install and then we wait for the installer to be done.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 9:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: Yes, I want to allow whatever this is doing.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay so the installer is now complete.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I click on Finish and now I can go ahead and open a command line, so I'll do command line, Command Prompt here we go on Windows, and to be sure that it's fully installed I just type aws--version and press enter, and if you get a result like this: aws-cli, a version that starts with a 2, then Python, Windows, that means that your aws-cli is now properly installed on Windows and you're good to go.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Finally just note that if you want to upgrade your aws-cli then you just need to re-download that MSI installer and just re-run the install and it will be automatically upgraded.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But as soon as you have this output you're good to go and you can follow me in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/020_AWS CLI Setup on Mac OS X.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's install the AWS CLI on mac and for this we're just going to go on Google and make sure to choose a link installing the AWS CLI version 2 on macOS.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then we're just going to follow the process, so we'll scroll down and see what they say.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And here is how to install it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we can just download a pkg file and this will be a graphical installer.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you download the pkg file.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Then you click on continue, continue, continue and you agree.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Then you say, "Okay, install for all the users "on this computer." Click on continue and then click on install, and this goes ahead and installs the CLI on mac.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we wait for everything to be done, the files are being written.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay, the installation is now successful and we'll move the installer to trash.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And now to fill this out, you open a terminal on mac.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you just go ahead and type, for example, "terminal", and this will give you a terminal app.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Mine is called iterm on mac, which is a free terminal that you can use.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then you just type aws -- version and if everything is going well, then it should give you back the version of the AWS executable.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's wait for a little bit.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And we get the answer, AWS CLI 2.0.10, so that means that everything has been installed correctly.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: In case of issues, please have a look at this guide.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It will have the answer for you.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And that's it for me.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/021_AWS CLI Setup on Linux.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's proceed with installing the AWS CLI on Linux.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So for this I just google it, and I will choose installing the AWS CLI Version 2 on Linux because this is the latest one, and I'm going to scroll down.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And to install the CLI it goes installing.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We just have to run these three commands.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So the first one is to get a Zip file.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I copy this, go into a terminal, and then I will paste it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And here we go.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this has been pasted, and it is downloading currently the installer.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The next thing we have to do is to unzip it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I copy this command and paste it, and this will unzip my installer.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Great.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And the last thing is to run the installer as root, so I'll do sudo and then install.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This should prompt me for my password, which I enter right now, and then the installation proceed.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 14:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Now it says you can run, "user/local/bin/AWS minus minus version," or very simply, "AWS minus minus version" if your user local bin is in your path, and there we go.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The AWS CLI has been installed as you can see.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It says AWS CLI/2. and then you are getting a different version based on when you do this.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then you get Python and Linux and Botocore, so you are good to go.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: When this works we can run any command on the AWS CLI and you can go ahead, with the rest of the lectures.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: If you got ant issues please read this and it will tell you what's going on and that it, I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/022_AWS CLI Hands On.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Let me show you how to create access keys.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So I'm gonna click on my username, Stephane, and I'm gonna go under Security credentials.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I will scroll down and I will create an access key.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: As you can see, there are some selection you need to do, and based on the selection I'm doing, for example, I want access key for the CLI, AWS is going to have an alternative recommended.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, for the CLI, it's better to use CloudShell which I will show you in the next lecture, so don't worry about it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: Or to use the CLI V2 and an authentication through the IAM Identity Center, which I will not show you because it's a bit more complicated.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So based on what you wanna do, if it's local code application running outside of AWS or in AWS and so on, you will have some recommendation in the bottom.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For now, we're going to use the CLI and we'll use these access keys and we'll click here to say "I understand the above recommendation," and I still want to create an access key because it is important for you to understand how they are, how they work, what they are, and so on.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's create this access key.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And now, this is the only time you'll be able to have access to the access key and the secret access key.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I will go back now to a previous version of that lecture where you see the old UI, but don't worry nothing changes from that point on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The first thing I have to do is to configure my AWS CLI.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to type: aws configure.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then I am greeted with entering my access key id.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Very nice, I can just enter this one, and press Enter.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then I'm greeted with entering my secret access key, which I will enter right here as well.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The default region name, so this is a region that is close to you.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I will choose eu-west-1 because I will be doing all my tutorials eu-west-1, but you will choose your own region and you can enter your own region name.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The region name, by the way, you can get directly from this drop down right here.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It shows you the name of the region as well as the region code.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So for me, I'm going to use my eu-west-1.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I'll press Enter, and in the default output format, I'll just press Enter as well.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So now my AWS CLI is configured, and so we can have a look at how it works.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 24:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: We can do: aws iam list-users, and press Enter.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 25:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And this will list all the users in my account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And as we can see, the user I have right now is called Stephane, here is the UserId, here is the ARN, when it was created, and when the password was last used.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 27:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Which is very similar to what I would get if I were to go into this UI right here.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So the Management Console and the CLI do provide similar kind of information.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 29:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Next, I want to show you what happens if we remove permissions from our users.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 30:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So I'm gonna go to admins and I'm going to remove the Stephane user from the group admin.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 31:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And so again, if I go back to my user, Stephane, it doesn't have any permissions.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 32:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And I did this, obviously, with my root account, not the other accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 33:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So now if I go into my UI and obviously refresh this page, I'm going to get an error saying that, yes, I do not have the permissions to do this.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 34:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But let's try to do the same thing with the CLI.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 35:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So we're going to do an "iam list-user" call, and we get no response because actually it was being denied.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 36:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: So, the CLI permissions are obviously going to be the exact same as the permissions you get from the IAM console.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 37:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, the takeaway from this lecture is that you can access AWS using the Management Console or using access key and secret access key that you can configure, and then use into the CLI.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 38:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 39:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And obviously, do not forget to add your user back into the group, otherwise that would be horrible.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 40:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So I'm gonna go into Groups, admins, and I'm going to add my Stephane user back into my group, and now I am an administrator again.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 41:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it, I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/024_AWS CloudShell.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I would like to talk to you about an alternative to using the terminal to issue commands against AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And this is using cloud shell.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So cloud shell is this icon right here on the top right corner of your screen.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And if you don't see it, just make sure you check out the clutch shell availability regions because it's not available everywhere.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so if you go to the clash of FAC, you can see that there are some regions that's not available.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look right now with the regions.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Here we go.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Question three.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Right now that's, I'm recording.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It's only available in one of these regions.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So by the way, I would recommend if you want to follow along to just use one of these regions, then so we can use cloud shell, but if you don't use cloud shell in this hands-on, that is completely fine.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: If the terminal was working for you, do not worry.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You're good to go.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we have cloud shell in here and within cloud shell you could take a minute maybe to launch your environment.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You can issue commands.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, you can issue the AWS commands.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So as you can see is installed, if I do either of us management is version, as we can see I'm on version two.one right now using cloud shell.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So cloud shell is basically a terminal in the cloud of AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: That's free to use.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 23:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So the cool thing about cloud shell is that whenever you are using the CLI, so for example it was am list users.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 24:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: This is going to return for you an API call as if the credentials being used, where the credentials of the accounts of you using the cloud right now which is why the API calls are working.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And by default, you can specify any kind of region you want to do.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The API call using the management is region arguments, but in cloud shell, the default region is going to be the region you're currently in logged in right now in cloud shell.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 27:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is another thing that's good to know.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Other things that you should know about cloud shell is that you have a full repository.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 30:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So for example, right now, as we can see we have zero files within cloud shell.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 31:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But if you just do echo tests into demo dot TXT, this is going to create a text file that contains the word texts tests.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 32:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so it turns out that if you happen to restart your cloud shell then this file will stick.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 33:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So all the files you are creating within your cultural environment, for example this demo that's TXT are going to stay.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 34:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And the other cool thing you can do about cloud shell is that you can configure it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 35:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you can say what font size you want, smallest medium and large.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 36:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so on the tech, the theme you want, so light or dark if he wants safe based or nuts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 37:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So resist like a bigger cloud shell for me right now.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 38:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And also you have the possibility to download and upload files.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 39:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So for example, if I want you to get the full path to my file, so did this demo let's six.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 40:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I can just copy it right now.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 41:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Action and download foul, and then do demo dot TXT.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 42:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And this will go ahead and download the file for me.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 43:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And alternatively, you could upload your own files into your cultural environments.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 44:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I want to show you these handy options because for me, they are lifesavers.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 45:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 46:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And finally, if you wanted more tabs into this environment you could have a new tab.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 47:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You can split into column example, and there you go.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 48:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You have two terminals into cloud shell connected at the same time.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 49:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So really that once show you the power of cloud shell in this hands-on again, you're doing it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 50:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You know, all the commands that data just wants to show you.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 51:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: If you're a power user, then you can do these commands and how they would work with cloud shell.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 52:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So the bottom line for this lecture again, is number one cloud shell is only available in some regions.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 53:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So maybe try to choose one of the regions where cloud shell is available.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 54:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: If you want to use it, if you don't want to use cloud shell or cloud shell is not working for you.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 55:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This is completely fine.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 56:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: As long as you use the terminal, the way we configured it from before, this will work just fine.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 57:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And you'll be fine in the course to either use cloud shell or your terminal to perform the commands with the CLA against AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 58:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 59:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And also remember that I really like the upload and download feature of cloud shell choose to upload files and download files from it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 60:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 61:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 62:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 63:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/025_IAM Roles for AWS Services.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: So we have to talk about the last component of IAM, which is called IAM Roles.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So some AWS services that we'll be launching throughout this course will need to perform actions on our behalf, on our account, okay?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And for this to do these actions, they're just like users, they will need some kind of permissions.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: So we need to assign permissions to AWS services and to do so, we're going to create what's called an IAM Role.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 5:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Roles
- Key Insights: So these IAM role will be just like a user, but they are intended to be used not by physical people, but instead they will be used by AWS services.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So what does that mean?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It's a bit confusing.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So for example, we are going to create throughout this course, an EC2 Instance.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: An EC2 Instance is just like a virtual server, and we'll see this in the next section.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But so this EC2 Instance may want to perform some actions on AWS and to do so, we need to give permissions to our EC2 Instance.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: To do so, we're going to create an IAM Role and together they're going to make one entity.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: And together, once the EC2 Instance is trying to access some information from AWS, then it will use the IAM Role.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: And if the permission assigned to the IAM Role is correct, then we're going to get access to the call we're trying to make.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So some common roles include what I just showed you, EC2 Instance roles, but also other things that perform actions against AWS we'll see in this course.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, Lambda Function Roles or CloudFormation.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I know this is a high level of review.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: In the next lecture we'll be creating a role, but we won't be using it yet until the next section, but let's go ahead and create a role.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/026_IAM Roles Hands On.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's practice using roles.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So on the left hand side, you click on roles, and you can see that some roles may have already been created for your accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Could be two, could be more.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It doesn't matter.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: But what we're going to do is that we're going to create our own role in here.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: So a role is a way to give AWS entities permissions to do stuff on AWS.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: As you can see, you have different kind of roles.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You can create actually five of them right now.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: But the one that you need to know about for this hands-on and for the exam is going to be a role for an AWS service.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: So let's choose this one, and then we need to choose for which service we want this role to apply to.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: So as you can see, if you click on it, you have commonly used services, such as EC2 and Lambda, or a role for pretty much every service on AWS.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it's a very common thing to know in AWS, and that's why we learn about it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: So we are going to create a role for an EC2 instance when we get to the EC2 section.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so we choose EC2, and the use case is just EC2.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We disregard any of these.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 16:
- Concepts: Authorization Model
- Services: IAM Policies, IAM Roles
- Key Insights: So click on next, and now that we create a role for an EC2 instance, we need to attach a policy.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 17:
- Concepts: Authorization Model
- Services: AWS IAM
- Key Insights: So I'm going to attach the IAM read only access to allow my EC2 instance to read whatever is in IAM.
- Hidden/Implicit Meaning: Constraint or limitation signal; Authorization decision-path signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Let's click on next.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: Next do meet to enter a demo, a role name, so DemoRoleForEC2 is going to be my role name, and then we select the trusted entities.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: So this is saying, hey, this role can be assumed by the EC2 service, and this is what defines it as a role for Amazon EC2.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: We are verifying the permissions, yes, it has IAM read only access, and we create this role.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: So now my role is created.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: As you can see, it appears in my role lists.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 24:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: And we can verify that the permissions are correct for this role.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: Now, we cannot use this role just yet because we need to get to the EC2 section, but we will use it when we get to it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 26:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: In the meantime, you've seen how to create a role for Amazon EC2 and how to attach correct permissions to it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 27:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/027_IAM Security Tools.txt

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

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/028_IAM Security Tools Hands On.txt

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

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/029_IAM Best Practices.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: So here are some general guidelines on IAM and best practices, 'cause I don't want you if you go to use AWS to make some mistakes.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So do not use a root account except when you set up your AWS account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So by now you should have two accounts, a root account and your own personal accounts.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 4:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And remember, one AWS user is equal to one physical user.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 5:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So if a friend of yours wants to use AWS, do not give them your credentials, instead, create another user for them.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies
- Key Insights: You can assign user to groups and assign permission to groups to make sure that security is managed at the group level and should create a strong password policy.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: Also, if you can use and enforce the use of multi-factor authentication or MFA to really guarantee that your account is going to be safe or safer from hackers.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Then you should create and use roles whenever you're giving permissions to AWS services, and that includes easy two instances which are virtual servers.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: If you were to use AWS programmatically or using the CLI, so the CLI or some SDK, you must generate access keys, and these access keys are just like passwords, they're very secret.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So just keep them for yourself.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: To edit the permissions of your account, you can use the IAM credentials reports or the IAM Access advisor feature.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: Finally, never, ever, ever share your IAM users and access keys, I am very serious about it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it, we are nearing the end of this section.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: You know everything about IAM.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/04_IAM & AWS CLI/030_IAM Summary.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: So here is a summary for IAM.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 2:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: We've seen IAM users and they should be mapped to an actual physical user within your company.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 3:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And this user will have a password for the AWS console.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 4:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Now we can group these users into groups and therefore users only.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 5:
- Concepts: Identity Lifecycle
- Services: IAM Policies
- Key Insights: We can attach policies or share JSON documents that outline the permission for users or groups.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And we can also create roles and these roles will be identities, but this time for maybe EC2 instances or other AWS services.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 7:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies, MFA
- Key Insights: We assume that for security we can enable multi-factor authentication so MFA and also set a password policy for our users.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We can use the CLI to manage your services using the command line or the SDK to manage your AWS services, using a programming language.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Finally, we can create access keys to access AWS using the CLI or the SDK.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 10:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: And finally, we can audit our IAM usage by creating an IAM credentials report and also using the IAM access advisor service.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/124_IAM Policies in Depth.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies
- Key Insights: So let's get started and really understand what IAM policies are made of.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And we're going to do a deep dive in this section to really understand the structure of identity and access management.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 3:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: So we have an IAM policy and you've seen more than one I hope, in your AWS journey.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 4:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: The first line corresponds to the policy language version and you always include 2012-10-17.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 5:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: Then you have the policy identifier.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 6:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: This is optional just to name your policy.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 7:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: And then you have several statements in your policy, one or more.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Each statement may also have a statement identifier.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This is optional.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then it effects whether the statement is going to be allowed or denied.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 11:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies, IAM Roles
- Key Insights: Then we have the principle and the principle represents the accounts, the user or the role to which this policy applies to.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 12:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: And then we have the list of the action that the policy will allow or deny.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 13:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: Then we have the resources that this policy is being applied to.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 14:
- Concepts: Access Boundary Controls
- Services: (none explicit)
- Key Insights: And finally a condition that applies to the statement itself.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And that's an optional block.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we are going to deconstruct all of this, see the different kind of options we have for pretty much everything in this.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 17:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: And by the end you should be very comfortable with IAM policy because they do come up quite a lot in the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 18:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So first of all, we've seen action and allow but there's something called NotAction.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So when you have a NotAction, you provide access to all the actions in service except for the action specified in NotAction.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 20:
- Concepts: Authorization Model
- Services: AWS IAM
- Key Insights: So if we have this statement right here we have effect allow, NotAction, IAM star.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 21:
- Concepts: Authorization Model
- Services: AWS IAM
- Key Insights: That means that we allow everything but IAM.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 22:
- Concepts: Authorization Model
- Services: AWS IAM
- Key Insights: So we can allow S3, we can allow DynamoDB and so on because that's not IAM but IAM is not explicitly allowed in this.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 23:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: Just so you note, there is no deny statement.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 24:
- Concepts: Authorization Model
- Services: AWS IAM
- Key Insights: So we just allow everything but IAM.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 25:
- Concepts: Authorization Model
- Services: AWS IAM
- Key Insights: But it doesn't mean that we deny IAM.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 26:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: That means that in this one statement we don't authorize IAM.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 27:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: Next we can use also the resource element to provide a scope for the policy, therefore, limiting the actions to specific resources.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 28:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So for example, here we have effect allow, NotAction delete bucket, resource the bucket itself.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that means that here we can do any kind of API calls on this bucket except the S3 delete bucket API.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 30:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it's very important for you to understand this kind of things because the NotAction does come up in the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 31:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: Next we have the NotAction with deny and you use the NotAction with a deny statement to deny access to all the resources except the one that you've listed in the NotAction element.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 32:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So this can be confusing and we'll have a look at this policy in a second.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 33:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: But what you do is that instead of explicitly allowing stuff, you explicitly deny all the actions that are not listed in this policy.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 34:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: But you must still allow explicitly the other actions you want to allow if an explicit allow is needed.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 35:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: So if we look at this policy right here, we have effect deny, NotAction IAM.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 36:
- Concepts: Authorization Model
- Services: AWS IAM
- Key Insights: So we deny everything that is not IAM, resource star when, so we deny everything that is not IAM when the multifactor is not present.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 37:
- Concepts: Authorization Model, Identity Lifecycle
- Services: MFA
- Key Insights: So that means that we don't allow user to do anything on AWS if they're not using MFA.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 38:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, MFA
- Key Insights: Except IAM because well to authenticate with IAM and get the MFA you need to have actually no MFA present because you're about to acquire it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 39:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies, MFA
- Key Insights: So this policy itself is allowing the fact that we only want to allow the users to have MFA present when dealing with AWS.
- Hidden/Implicit Meaning: Constraint or limitation signal; Authorization decision-path signal.

Line 40:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: And if they don't connect with MFA then they cannot use AWS.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 41:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Hopefully that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 42:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now we have NotAction, too, also, for example, restrict to one specific region.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 43:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So here we deny everything outside of EU Central One.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 44:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: The effect is deny and the NotAction is CloudFront.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 45:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: IAM, route53 support where the string is not equals to the requested region being EU central One.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 46:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So that means that we deny anything outside of EU Central one.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 47:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: And the reason why we have CloudFront, IAM, route53, and support in the NotActions is that these services are in US East One because there are global services.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 48:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: Also, for example, we can deny everything outside of EU Central One except Amazon S3 by having effect deny NotAction S3 star.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 49:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So we deny everything but S3 where the requested region is equal to, not equal to, sorry, EU Central one.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 50:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: So this can be confusing, but as you start reading these policies, hopefully that should make a lot more sense.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 51:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's go into these things.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 52:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So action and action allow deny.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 53:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we have this kind of board and it's good to see in the very simple case what's happening.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 54:
- Concepts: Authorization Model
- Services: AWS IAM
- Key Insights: So if we have allow IAM star, we allow IAM, simple.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 55:
- Concepts: Authorization Model
- Services: AWS IAM
- Key Insights: If we have allow NotAction IAM star, then we allow anything but IAM.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 56:
- Concepts: Authorization Model
- Services: AWS IAM
- Key Insights: We have deny IAM star.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 57:
- Concepts: Authorization Model
- Services: AWS IAM
- Key Insights: So that means that we deny IAM and if we have deny IAM star we deny anything that is not IAM.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 58:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: And it's very important for you to understand that an explicit deny and an explicit allow are different.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 59:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies
- Key Insights: So now let's talk about principle options in IAM policies.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 60:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So we have the AWS account and the Root User and they have this form.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 61:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So the principle is AWS this, or the principle is AWS this.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 62:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: They are equivalent, they just represent the account and the Root User.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 63:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: Now for IAM roles, you just have an arn that is equal to a role itself.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 64:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: That's pretty explicit.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 65:
- Concepts: IAM Domain Operational Context
- Services: IAM Roles
- Key Insights: And then you have role sessions.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 66:
- Concepts: Federated Authentication
- Services: AWS IAM, Amazon Cognito, SAML/OIDC Federation
- Key Insights: So this is when you have assumed roles that come from IAM or Cognito identities or SAML providers.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 67:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: You also have IAM users.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 68:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So IAM users represent an arn of a user.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 69:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Federated User Sessions where the user says federated user and specific AWS Services.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 70:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you'll see principle and then service and then you'll have the name of the service.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 71:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies
- Key Insights: You usually see those in the trust policies of IAM, for example.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 72:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: And finally, to allow everything we've seen principle star or principle AWS star, these are equivalent.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 73:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 74:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies
- Key Insights: So that's it for this first part on IAM policies.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 75:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/125_IAM Condition Operators.txt

Line 1:
- Concepts: Access Boundary Controls
- Services: AWS IAM
- Key Insights: So, now let's talk about IAM condition operators.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 2:
- Concepts: Access Boundary Controls, Authorization Model
- Services: (none explicit)
- Key Insights: They're the operators that allow you to construct a condition, and we've seen StringEquals or StringNotEquals which is a case sensitive way of doing exact matching.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 3:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: In this example, we compare the principle tag of type job category to the value IAM user admin.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 4:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: We have StringLike and StringNotLike, and this is very similar to StringEquals, but now we allow partial matching using the star or a question mark.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, for example, in here we look at whether or not the S3 prefix of the object is corresponding to home/*/data.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, star can be replaced by anything we want.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This is extremely helpful, for example, when you compare ARNs and you want to remove the account iID so you just put a star instead, and you've seen this, you must have seen this quite a lot in your experience.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Then, we have DateEquals, DateLessThan, DateGreaterThan.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 9:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So for example, you can compare the token issued time of your credentials to a specific timestamp, and we'll see a use case of this in some future lectures.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Then, we have ArnLike and ArnNotLike.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, this is very similar to StringLike and StringNotLike, but this is used specifically for ARNs because it just works better.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, anytime you must compare ARNs with partial matching then use ArnLike and ArnNotLike.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We have Bool to check for the value of a boolean.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, here we have Bool awsSecureTransport, false.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, we wanna know at runtime if secure transport is false this is how you read it, and so when secure transport is false, that means that you don't use HTTPS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: This is something you'll see when we deal with S3 bucket policies, for example.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We have IpAddress and NotIpAddress.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, this is a CIDR format, and here we are going to have a look whether or not, for example, the source IP of the API call corresponds to the CIDR on the right hand side.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, this is going to resolve to the IP address that the request originates from. and it's only works for public IPs, it does not apply to request made through VPC endpoints, but we'll see the type of conditions we can have for VPC endpoints to compare on private IP addresses.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, that's it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: There was just a short intro around IAM conditions.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/126_IAM Global condition context keys.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: So now let's look at global context keys for the IAM conditions.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The first one is requested region which corresponds to the AWS region of the request itself.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is used to restrict specific actions in specific regions.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 4:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: For example, on the right hand side, we allow to stop or to terminate on anything if you are in eu-west-1, eu-west-2, or eu-west-3.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we effectively restricted these API calls to specific regions.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But there is a catch for requested region and you'll see it right now.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So when using a global AWS service then the region that you make the API call into is always going to be us-east-1.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 8:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So the workaround to denying everything outside regions except these global services is to use deny and not action.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 9:
- Concepts: Authorization Model
- Services: AWS IAM
- Key Insights: So here we deny anything that's not CloudFront, IAM, Route53, and Support which are restricted to us-east-1.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 10:
- Concepts: Access Boundary Controls
- Services: (none explicit)
- Key Insights: And then we keep the same condition as before.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So string, not equals, AWS requested region, and then eu-west-1, 2, 3, and eu-central-1.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 12:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So here, effectively we're saying, "Hey, deny everything outside of these four regions I have right here.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 13:
- Concepts: Authorization Model
- Services: AWS IAM
- Key Insights: But by the way, please don't deny CloudFront, IAM, Route53, and Support." So this can get quite complicated.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 14:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: As you can see we have effect, deny, not action, and then some services.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 15:
- Concepts: Access Boundary Controls
- Services: (none explicit)
- Key Insights: And we have a condition with string not equals and the global context key requested region.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But this is the kind of things you have to be comfortable with going into the exam.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Next we have the PrincipleArn.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 18:
- Concepts: Access Boundary Controls, Authorization Model, Identity Lifecycle
- Services: AWS IAM, IAM Policies, IAM Roles
- Key Insights: So if we have a look at an IAM user doing a list bucket operation on this S3 bucket then we can have a condition saying that, "Hey, this is only allowed if the PrincipleArn, so the user or the role making the request, is equals to the user Alice." So here you're going to compare the ARN of the principle that made the request with ARN specified in the policy.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 19:
- Concepts: Identity Lifecycle
- Services: IAM Roles
- Key Insights: And for roles, you're going to get the ARN of the role but not the ARN of the user that assumed that role.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it's very important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The principle is the thing making the API call.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So there is some following types of principle allowed.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: You have the IAM role.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 24:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: You have the IAM user.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: You have the AWS root user.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS
- Key Insights: And you have also, the AWS STS federated user sessions.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 27:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is for principle ARN.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: That's what makes the request.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now we have also SourceArn.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 30:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So if we have an example in here, we have an S3 bucket and we have created an S3 event notifications.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 31:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's these events are published into an SNS topic.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 32:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So what does that mean?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 33:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Well that means that the thing making a request into SNS is your S3 bucket.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 34:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And this is where we use this source ARN.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 35:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So it's going to compare, in the service to service type of request, the ARN of what the source is to what's in the policy.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 36:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So here we have an example.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 37:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: On the bottom right we see that the source ARN should be a specific bucket.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 38:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this key, AWS SourceArn is only going to be included when you have a service to service type of interaction.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 39:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So for example, as I said, when an S3 bucket triggers an update to an SNS topic with the SNS published out of API you can use the SourceArn to guarantee that the SNS topic can only receive data from that S3 bucket specifically.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 40:
- Concepts: Access Boundary Controls
- Services: AWS IAM
- Key Insights: Now we have the IAM condition called CalledVia.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 41:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is very interesting.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 42:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It's only in some specific use cases, but for example, say you're using Athena to query an S3 buckets.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 43:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Roles
- Key Insights: Here we are going to look at the service that made the request on behalf of the IAM user or role.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 44:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And it's going to contain a list of service in order that made the request on the principal's behalf.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 45:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And it supports only very few services.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 46:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you have Athena, CloudFormation, DynamoDB, and KMS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 47:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that means that when you're using CloudFormation to do an API call on whatever you're going to have AWS CalledVia CloudFormation.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 48:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: When you're using Athena to query the content of S3 bucket you're going to get AWS CalledVia Athena.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 49:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So remember you have Athena, CloudFormation, DynamoDB, and KMS and that's it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 50:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Next we have IP and VPC conditions.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 51:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we've seen aws:SourceIp which is corresponding to the public requester IP.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 52:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And if you're using public APIs on AWS, maybe from an EC2 instance as a public IP, then you will see the public EC2 IP.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 53:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So everything is public.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 54:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And whenever you make requests privately through VPC Endpoints then source IP is not going to be present.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Authentication and trust-chain signal; Multi-account governance signal.

Line 55:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Instead, you will have the VpcSourceIp.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 56:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this isn't the requester IP, the private IP, made through request that are going through the VPC Endpoints.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 57:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You also have the aws:SourceVpce which allows you to identify the VPC Endpoint that the request is made through.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 58:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And finally, aws:SourceVpc which identifies the specific VPC the request is made from, again, through a VPC Endpoints.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 59:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: So it is very common to use this conditions with S3 bucket policies.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 60:
- Concepts: Access Boundary Controls
- Services: (none explicit)
- Key Insights: If your bucket is accessed publicly, or at least accessed through API calls made to the public endpoint of AWS, then use the first source IP condition.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 61:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Otherwise, if you're using VPC Endpoints then remember we have VpcSourceI, SourceVpce, and SourceVpc.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 62:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, here in this example, we are restricting access from public IP addresses.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 63:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So we deny everything except when the IP address is within this range.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 64:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So this is what this policy does.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 65:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Should be very familiar to you.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 66:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And for example, we can also restrict private IP addresses and force access to VPC Endpoints.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 67:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So here we have a denied star where the not IP address is not in this private IP range.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 68:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is a combination of everything we've seen so far.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 69:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Next we have resource tag and principle tag.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 70:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So they allow you to control access to AWS resources using tags.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 71:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so these AWS resource tag represent tags that exist on specified AWS resources.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 72:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So for example, it would be tags on an EC2 instance.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 73:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And sometimes you may see something like EC2 resource tag which is a service specific tag.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 74:
- Concepts: Access Boundary Controls, Identity Lifecycle
- Services: AWS IAM, IAM Roles
- Key Insights: So you're saying, "Hey, I want to restrict the resource tag condition only to the EC2 service." So resource tag is for tags on resources and principle tag are for tags that exist on the IAM user or the IAM role making the request.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 75:
- Concepts: Access Boundary Controls, Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: So if you have a look at this IAM policy right here, we see that in the condition we have EC2 resource tag project data analytics, which means that we want the resource tags or the tag on the EC2 instance of key project to have the value data analytics.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 76:
- Concepts: Identity Lifecycle
- Services: IAM Roles
- Key Insights: And then we want the tag, the principle tag, on the user or the role making the request.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 77:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We want the key department to be equal to the value data.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 78:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So remember you have to distinguish between resource tags and principal tags and you should be good to go.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 79:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 80:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 81:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/127_IAM Permission Boundaries.txt

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

### File: outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/128_IAM Policy Evaluation Logic.txt

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

### File: outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/129_Identity-Based Policies vs. Resource-Based Policies.txt

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

### File: outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/130_ABAC (Attribute based access control).txt

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

### File: outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/131_IAM MFA.txt

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

### File: outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/132_IAM Credentials Report.txt

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

### File: outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/133_IAM Roles and PassRole to Services.txt

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

### File: outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/134_IAM Roles Anywhere.txt

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

### File: outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/135_IAM Trust Policies.txt

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

### File: outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/136_[CCP_SAA_DVA_SOA] IAM Security Tools.txt

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

### File: outputs/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/137_[CCP_SAA_DVA_SOA] IAM Security Tools - Hands On.txt

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

## Step 2 — Consolidation

### 1. Concepts List
- Access Boundary Controls
- Authorization Model
- Directory Integration
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
- IAM Access Analyzer
- IAM Identity Center
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
- mfa
- saml
- scp
- trust policy

### 4. Use Cases
- 004_IAM.txt:9: But this way, your instance can access for example, an S3 Bucket or DynamoDB table and so on.
- 004_IAM.txt:20: So this is when you have an S3 Bucket policy or an SQS queue policy and so on, which would allow us to perform some really interesting patterns and we'll see this in this lecture.
- 004_IAM.txt:25: And then we have some statement, for example allow EC2 attach volume, EC2 detach volume on the resource which is all EC2 instances.
- 004_IAM.txt:35: Okay, another one is going to be Access Analyzer and this is to analyze resources are shared with external entities, for example, S3 Buckets and this will allow you to look at if other accounts have access to your S3 Bucket, maybe there's something you're not expecting here and you want to make sure to lock down that S3 bucket.
- 004_IAM.txt:43: And so in the first one, the "Effect" is "Allow", "Not action" on IAM star organizations and account star for resource stars, so that means that it's not going to allow anything to be done on IAM organizations and accounts.
- 004_IAM.txt:44: And also it's going to allow still a few IAM actions such as create service link role, delete service link role, list roles, describe organization and list regions.
- 004_IAM.txt:47: So here we have a very interesting use case, in case we don't want to deny everything in there because we want to explicitly allow a few things in there, then we can use the "NotAction" instead of "Deny" to allow for these two things to coexist together.
- 004_IAM.txt:52: The first one is going to be a string operator, so for example, you're saying I want my principle tag to be job category: IAM user admin, so this is when you look at tags.
- 004_IAM.txt:53: Or you can look at, for example, on this pre-prefix for this pre-Bucket policy to say that we want the users to only access a specific home directory.
- 004_IAM.txt:55: Dates to look at, compare dates, this is very helpful when you want to provide temporary access to a specific service.
- 004_IAM.txt:56: Booleans which is going to be really helpful for example, if you want to evaluate SSL such as Secure Transport: true, and also when you want to look at MFA using Multifactor Authentication present: true.
- 004_IAM.txt:58: And these conditions will be really helpful for buckets, S3 bucket policies for example or any kind of policy we want to ensure that only a specific kind of source IP can access the service.
- 004_IAM.txt:63: I just want to show you these things exist so that you know you can have very specific IAM policies such as if the exam is asking you to use an IAM policy as an answer to a problem, this would be possible instead of using, for example a custom script okay?
- 004_IAM.txt:66: One we've seen is dollar sign AWS username and this is most commonly used, for example in S3 buckets policy.
- 004_IAM.txt:71: There is some AWS specific Policy Variables and Tags, for example CurrentTime, TokenIssueTime, principal type, secure transport, which is for SSL, source IP, user ID and source instance ARN.
- 004_IAM.txt:73: There's service specific policy roles and tags, for example S3 prefix, max keys, SNS endpoint, SNS protocol.
- 004_IAM.txt:75: For example, if you use resource tag, slash key name or principle tag, slash key name and so on so you can start having some really powerful IAM policies.
- 004_IAM.txt:81: We can attach a policy to resource, for example, in S3 bucket versus attaching of using a role as a proxy.
- 004_IAM.txt:91: It is that when you assume a role, whether it be a user, an application or a service you're going to give up all your original permissions and you're going to take the permissions assigned to the role.
- 004_IAM.txt:92: So that means that before, when we do assume the role and accounts B, the orange situation when the user in account A, gives up all his permissions in account A while it's being assuming a role in account B.
- 004_IAM.txt:93: So the idea is that when you assume a role as a user application or service, then you're going to give up your original permissions and you're going to take the permissions assigned to the role.
- 004_IAM.txt:94: And when you're using, on the contrary, a resource based policy then the principal does not have to give up any permissions.
- 004_IAM.txt:95: So when do we use resource based policy?
- 004_IAM.txt:101: So this is a very, very good use case for resource based policies.
- 004_IAM.txt:102: So resource based policies are supported by so many AWS services and is increasing, so for example, Amazon industry buckets, SNS topics SQS queues, Lambda functions, ECR, Backup, EFS, Glacier, Cloud9.
- 004_IAM.txt:106: This is an advanced features that is going to allow you to set the maximum permissions an IAM entity can get.
- 004_IAM.txt:108: So for example, say we attach this IAM permission boundary so saying S3 star, clover star and EC2 star and this IAM permission.
- 004_IAM.txt:115: So you would use IAM permission boundaries when you want to delegate responsibility to non-administrator within their permission boundaries, for example to create new IAM users or to allow developers to self assign policy to themselves and manage their own permissions while making sure that they can only do these things within their privilege rights.
- 011_IAM Introduction_ Users, Groups, Policies.txt:5: So we've already used IAM without knowing, when we created an account, we created a root accounts, and has been created by default.
- 011_IAM Introduction_ Users, Groups, Policies.txt:24: For example, Fred right here is alone, he does not correspond to any group.
- 011_IAM Introduction_ Users, Groups, Policies.txt:28: That means that for example, if you know that Charles and David worked together, and they're part of your audit team, you can create a third group with Charles and David.
- 011_IAM Introduction_ Users, Groups, Policies.txt:32: Well, because we want to allow them to use our AWS accounts and to allow them to do so, we have to give them permissions.
- 012_IAM Users & Groups Hands On.txt:8: When you create a user in IAM, it will be available everywhere, but some other consoles we'll see in this course will be region-specific.
- 012_IAM Users & Groups Hands On.txt:13: So when you have it, that means you're using the root account and it's not best practice to use the root account.
- 012_IAM Users & Groups Hands On.txt:15: So for this, let's go ahead and create a user, and I will provide a username, for example, Stephane.
- 012_IAM Users & Groups Hands On.txt:29: For example, I could say that the department of Stephane is engineering.
- 012_IAM Users & Groups Hands On.txt:48: For example, v5 is available.
- 012_IAM Users & Groups Hands On.txt:55: And as you can see, when you do a sign in on AWS, you have the root user sign in or the IAM user sign in.
- 012_IAM Users & Groups Hands On.txt:68: But when you have to use roots or when you have to use an IAM user, I will let you know in the course.
- 013_AWS Console Simultaneous Sign-in.txt:8: And the cool thing is that, for example, let's say I'm going to the EC2 console here, and then I'm going to go into volumes and then I'm going to, for example, create an EBS volume of one gigabyte just to do something very quickly.
- 014_IAM Policies.txt:11: That should make a lot of sense when we get into the hands-on.
- 014_IAM Policies.txt:24: And finally in, not represented here but there's a condition to which when this statement should be applied or not, and this is not representative here because it is optional.
- 015_IAM Policies Hands On.txt:35: And then I'm going to add the user Stephane in this group and I'm going to attach whatever policy I can find, for example, AlexaForBusiness but it doesn't really matter.
- 015_IAM Policies Hands On.txt:54: So all these services, for example, App Mesh or Alexa for Business or Amplify, they all have full access.
- 015_IAM Policies Hands On.txt:61: If we have a look at another policy, for example, the IAMReadOnlyAccess that we saw from before.
- 015_IAM Policies Hands On.txt:68: So when you have Get*, it says that anything that starts with Get and then has something after is authorized.
- 015_IAM Policies Hands On.txt:69: For example, get users or get groups.
- 015_IAM Policies Hands On.txt:81: And for example, let's say IAM, we wanna create stuff for IAM.
- 015_IAM Policies Hands On.txt:90: And when you click on next, you can have a look and say MyIAMPermissions.
- 016_IAM MFA Overview.txt:8: For example, you may want to have an uppercase letter, lowercase letter, number, non alphanumeric characters, for example, a question mark and so on.
- 016_IAM MFA Overview.txt:9: Then you can allow or not IAM users to change their own passwords, or you can require users to change their password after some time to make your password expired, for example, to say every 90 days, users have to change their passwords.
- 016_IAM MFA Overview.txt:10: Finally, you can also prevent password reuse so that users, when they change their passwords, don't change it to the one that they already have or change it to the one they had before.
- 016_IAM MFA Overview.txt:24: So for example, let's take Alice.
- 016_IAM MFA Overview.txt:27: So the benefit of MFA is that even if Alice has lost her password because it's stolen or it's hacked, the account will not be compromised because the hacker will need to also get a hold of the physical device of Alice, that could be her phone, for example, to do a login.
- 016_IAM MFA Overview.txt:39: For example, a YubiKey by Yubico and Yubico is a third party to AWS.
- 016_IAM MFA Overview.txt:46: You have a hardware key fob MFA device, for example, this one provided by Gemalto, which is also a third party to AWS.
- 017_IAM MFA Hands On.txt:6: We can also turn on password expiration to turn on, for example, expire after 90 days, or that a password expiration requires administrative resets, or we can allow the users to change their own password or we can prevent password reuse.
- 017_IAM MFA Hands On.txt:26: So when you should a QR code, you need to scan this QR code directly on your phone.
- 018_AWS Access Keys, CLI and SDK.txt:4: Then, finally, there is the SDK, the AWS Software Development Kit, which is used whenever you want to call APIs from AWS from within your application code.
- 018_AWS Access Keys, CLI and SDK.txt:9: So when you go into the Management console, you get access key as there's a button to create access keys, and then it gives you the right to download it in the very second.
- 018_AWS Access Keys, CLI and SDK.txt:10: And so, for example, here's a fake access key ID and a fake secret access key, and these, when loaded into my Command Line Interface, would allow me to access the AWS API, and we'll do this in the hands-on in a second.
- 018_AWS Access Keys, CLI and SDK.txt:14: So whenever you see some code where you type a command line, and then it returns a result, for example, aws, s3, cp, and so on, this is what we call the CLI.
- 018_AWS Access Keys, CLI and SDK.txt:19: I know that some people, actually, do not even use the Management console, they only use the CLI, for example.
- 019_AWS CLI Setup on Windows.txt:9: Yes, I want to allow whatever this is doing.
- 020_AWS CLI Setup on Mac OS X.txt:11: So you just go ahead and type, for example, "terminal", and this will give you a terminal app.
- 021_AWS CLI Setup on Linux.txt:16: It says AWS CLI/2. and then you are getting a different version based on when you do this.
- 021_AWS CLI Setup on Linux.txt:18: When this works we can run any command on the AWS CLI and you can go ahead, with the rest of the lectures.
- 022_AWS CLI Hands On.txt:4: As you can see, there are some selection you need to do, and based on the selection I'm doing, for example, I want access key for the CLI, AWS is going to have an alternative recommended.
- 022_AWS CLI Hands On.txt:5: For example, for the CLI, it's better to use CloudShell which I will show you in the next lecture, so don't worry about it.
- 022_AWS CLI Hands On.txt:26: And as we can see, the user I have right now is called Stephane, here is the UserId, here is the ARN, when it was created, and when the password was last used.
- 024_AWS CloudShell.txt:18: For example, you can issue the AWS commands.
- 024_AWS CloudShell.txt:23: So the cool thing about cloud shell is that whenever you are using the CLI, so for example it was am list users.
- 024_AWS CloudShell.txt:30: So for example, right now, as we can see we have zero files within cloud shell.
- 024_AWS CloudShell.txt:33: So all the files you are creating within your cultural environment, for example this demo that's TXT are going to stay.
- 024_AWS CloudShell.txt:39: So for example, if I want you to get the full path to my file, so did this demo let's six.
- 025_IAM Roles for AWS Services.txt:8: So for example, we are going to create throughout this course, an EC2 Instance.
- 025_IAM Roles for AWS Services.txt:15: For example, Lambda Function Roles or CloudFormation.
- 026_IAM Roles Hands On.txt:13: So we are going to create a role for an EC2 instance when we get to the EC2 section.
- 026_IAM Roles Hands On.txt:14: And so we choose EC2, and the use case is just EC2.
- 026_IAM Roles Hands On.txt:17: So I'm going to attach the IAM read only access to allow my EC2 instance to read whatever is in IAM.
- 026_IAM Roles Hands On.txt:25: Now, we cannot use this role just yet because we need to get to the EC2 section, but we will use it when we get to it.
- 027_IAM Security Tools.txt:6: This one is at the user-level and the Access Advisor is going to show the service permissions granted to a user and when those services were last accessed.
- 028_IAM Security Tools Hands On.txt:5: We can see when the user was created, if the password was enabled, when the password was last used and last changed, when is the next rotation to be expected if we do enable password rotation?
- 028_IAM Security Tools Hands On.txt:9: Yes, they're created for my Stefane account, but not for my root account, and when they were last rotated, last used and so on, you can get more information about other access keys and certificates and so on.
- 028_IAM Security Tools Hands On.txt:13: And Access Advisor is going to show me which services were accessed by my user and when.
- 028_IAM Security Tools Hands On.txt:15: So I use my user to access these things by clicking in the UI, but some services were not accessed, for example, Alexa for Business or AWS App2Container and so on.
- 028_IAM Security Tools Hands On.txt:19: On top of it, if a user accesses a specific service for example Amazon EC2, we are told that this is the administrator access that granted access to this service.
- 028_IAM Security Tools Hands On.txt:20: So to summarize, Access Advisor becomes very helpful when you need to do granular user access permissions on AWS.
- 029_IAM Best Practices.txt:2: So do not use a root account except when you set up your AWS account.
- 029_IAM Best Practices.txt:8: Then you should create and use roles whenever you're giving permissions to AWS services, and that includes easy two instances which are virtual servers.
- 124_IAM Policies in Depth.txt:19: So when you have a NotAction, you provide access to all the actions in service except for the action specified in NotAction.
- 124_IAM Policies in Depth.txt:28: So for example, here we have effect allow, NotAction delete bucket, resource the bucket itself.
- 124_IAM Policies in Depth.txt:31: Next we have the NotAction with deny and you use the NotAction with a deny statement to deny access to all the resources except the one that you've listed in the NotAction element.
- 124_IAM Policies in Depth.txt:34: But you must still allow explicitly the other actions you want to allow if an explicit allow is needed.
- 124_IAM Policies in Depth.txt:36: So we deny everything that is not IAM, resource star when, so we deny everything that is not IAM when the multifactor is not present.
- 124_IAM Policies in Depth.txt:39: So this policy itself is allowing the fact that we only want to allow the users to have MFA present when dealing with AWS.
- 124_IAM Policies in Depth.txt:42: Now we have NotAction, too, also, for example, restrict to one specific region.
- 124_IAM Policies in Depth.txt:48: Also, for example, we can deny everything outside of EU Central One except Amazon S3 by having effect deny NotAction S3 star.
- 124_IAM Policies in Depth.txt:66: So this is when you have assumed roles that come from IAM or Cognito identities or SAML providers.
- 124_IAM Policies in Depth.txt:71: You usually see those in the trust policies of IAM, for example.
- 124_IAM Policies in Depth.txt:72: And finally, to allow everything we've seen principle star or principle AWS star, these are equivalent.
- 125_IAM Condition Operators.txt:5: So, for example, in here we look at whether or not the S3 prefix of the object is corresponding to home/*/data.
- 125_IAM Condition Operators.txt:7: This is extremely helpful, for example, when you compare ARNs and you want to remove the account iID so you just put a star instead, and you've seen this, you must have seen this quite a lot in your experience.
- 125_IAM Condition Operators.txt:9: So for example, you can compare the token issued time of your credentials to a specific timestamp, and we'll see a use case of this in some future lectures.
- 125_IAM Condition Operators.txt:15: So, we wanna know at runtime if secure transport is false this is how you read it, and so when secure transport is false, that means that you don't use HTTPS.
- 125_IAM Condition Operators.txt:16: This is something you'll see when we deal with S3 bucket policies, for example.
- 125_IAM Condition Operators.txt:18: So, this is a CIDR format, and here we are going to have a look whether or not, for example, the source IP of the API call corresponds to the CIDR on the right hand side.
- 126_IAM Global condition context keys.txt:4: For example, on the right hand side, we allow to stop or to terminate on anything if you are in eu-west-1, eu-west-2, or eu-west-3.
- 126_IAM Global condition context keys.txt:7: So when using a global AWS service then the region that you make the API call into is always going to be us-east-1.
- 126_IAM Global condition context keys.txt:8: So the workaround to denying everything outside regions except these global services is to use deny and not action.
- 126_IAM Global condition context keys.txt:38: So this key, AWS SourceArn is only going to be included when you have a service to service type of interaction.
- 126_IAM Global condition context keys.txt:39: So for example, as I said, when an S3 bucket triggers an update to an SNS topic with the SNS published out of API you can use the SourceArn to guarantee that the SNS topic can only receive data from that S3 bucket specifically.
- 126_IAM Global condition context keys.txt:42: It's only in some specific use cases, but for example, say you're using Athena to query an S3 buckets.
- 126_IAM Global condition context keys.txt:47: So that means that when you're using CloudFormation to do an API call on whatever you're going to have AWS CalledVia CloudFormation.
- 126_IAM Global condition context keys.txt:48: When you're using Athena to query the content of S3 bucket you're going to get AWS CalledVia Athena.
- 126_IAM Global condition context keys.txt:54: And whenever you make requests privately through VPC Endpoints then source IP is not going to be present.
- 126_IAM Global condition context keys.txt:63: So we deny everything except when the IP address is within this range.
- 126_IAM Global condition context keys.txt:66: And for example, we can also restrict private IP addresses and force access to VPC Endpoints.
- 126_IAM Global condition context keys.txt:72: So for example, it would be tags on an EC2 instance.
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

### 5. Constraints / Limitations
- 004_IAM.txt:2: So first there's a lot of things you should know about IAM already.
- 004_IAM.txt:8: And you can assign only one role at a time for the instance.
- 004_IAM.txt:18: Or Inline Policies, which are going to be policies assigned to one specific user or one specific role and you can make them evolve over time but you cannot share them across users or across roles.
- 004_IAM.txt:27: That means that only the EC2 instances tagged with this tag can be attached or detached to volume and so on.
- 004_IAM.txt:30: Okay so the best practice we know this already is to use the least privilege for maximum security.
- 004_IAM.txt:38: A few common IAM policies we'll get across is going to be the AdministratorAccess which is meaning that everything should be allowed on any resource.
- 004_IAM.txt:53: Or you can look at, for example, on this pre-prefix for this pre-Bucket policy to say that we want the users to only access a specific home directory.
- 004_IAM.txt:58: And these conditions will be really helpful for buckets, S3 bucket policies for example or any kind of policy we want to ensure that only a specific kind of source IP can access the service.
- 004_IAM.txt:66: One we've seen is dollar sign AWS username and this is most commonly used, for example in S3 buckets policy.
- 004_IAM.txt:78: Okay, more importantly, and more exam focused is going to be the difference of IAM roles and resource based policies.
- 004_IAM.txt:103: I mean, you'll see the list here, is that it's pretty much supported by most of the important resources in AWS.
- 004_IAM.txt:112: Well, because even though the action IAM create user is authorized on the right hand side, because the IAM permission boundaries only allow the permissions on S3 CloudWatch, and ec2 then the user zero will have no permissions.
- 004_IAM.txt:115: So you would use IAM permission boundaries when you want to delegate responsibility to non-administrator within their permission boundaries, for example to create new IAM users or to allow developers to self assign policy to themselves and manage their own permissions while making sure that they can only do these things within their privilege rights.
- 004_IAM.txt:116: So they cannot escalate themselves.
- 011_IAM Introduction_ Users, Groups, Policies.txt:7: And the only things you should use it for is to set up your account as we'll do it right now.
- 011_IAM Introduction_ Users, Groups, Policies.txt:8: But then you shouldn't use that account anymore, or even share it.
- 011_IAM Introduction_ Users, Groups, Policies.txt:9: What you should be doing instead, is create users.
- 011_IAM Introduction_ Users, Groups, Policies.txt:20: Now groups can only contain users, not other groups.
- 011_IAM Introduction_ Users, Groups, Policies.txt:21: So this is something very important to understand.
- 011_IAM Introduction_ Users, Groups, Policies.txt:22: Groups only contain users.
- 011_IAM Introduction_ Users, Groups, Policies.txt:25: That is not best practice.
- 012_IAM Users & Groups Hands On.txt:13: So when you have it, that means you're using the root account and it's not best practice to use the root account.
- 012_IAM Users & Groups Hands On.txt:20: So if this was a user that was not me, I would leave it as auto-generated password, and I would leave this so that the user must change this password at the next sign-in, but because it is me, I'm just going to enter a custom password and I'm going to untick this because I don't need to change my password at the next login.
- 012_IAM Users & Groups Hands On.txt:52: So if you don't do this, that's fine, but if you log in using the Stephane account on the right hand side window then you will be disconnected on the left hand side, this is the only difference.
- 012_IAM Users & Groups Hands On.txt:65: And currently I cannot help you with this.
- 013_AWS Console Simultaneous Sign-in.txt:15: This was not possible before, which is very helpful, and something you should know about if you want to use AWS at scale.
- 014_IAM Policies.txt:6: And we have the possibility to create what's called an inline policy which has a policy that's only attached to a user.
- 014_IAM Policies.txt:11: That should make a lot of sense when we get into the hands-on.
- 014_IAM Policies.txt:16: And then more statements, and statements can be one or multiple ones, and a statement has some very important parts.
- 014_IAM Policies.txt:24: And finally in, not represented here but there's a condition to which when this statement should be applied or not, and this is not representative here because it is optional.
- 014_IAM Policies.txt:25: So going into the exam, you need to make sure that you really understand the effect, the principle, the action and resource, but don't worry, you will see those along the way in the course so you should be confident with them by the end of the course.
- 015_IAM Policies Hands On.txt:20: And so the policy I'm going to attach is going to be IAMReadOnlyAccess.
- 015_IAM Policies Hands On.txt:27: And as you can see, I cannot create it because I'm not allowed to actually create a group.
- 015_IAM Policies Hands On.txt:28: I'm only given the read-only access on IAM.
- 015_IAM Policies Hands On.txt:29: And so therefore, because I have read-only access, I cannot create groups.
- 015_IAM Policies Hands On.txt:30: So this shows you that you can only permission users for what they're supposed to do.
- 015_IAM Policies Hands On.txt:44: And finally, IAMReadOnlyAccess that has been attached directly.
- 015_IAM Policies Hands On.txt:61: If we have a look at another policy, for example, the IAMReadOnlyAccess that we saw from before.
- 015_IAM Policies Hands On.txt:62: So if we look at it, we see that IAM is authorized with Full: List and Limited: Read.
- 015_IAM Policies Hands On.txt:75: And so therefore, that summarizes what the read-only IAM access policy is made of.
- 015_IAM Policies Hands On.txt:88: So on all resources or only specific resources?
- 015_IAM Policies Hands On.txt:96: And then I'm going to go into my Stephane user and I'm going to just remove this IAMReadOnlyAccess that had attached directly.
- 015_IAM Policies Hands On.txt:97: So now Stephane only belongs to the group admin and it has administrator access.
- 016_IAM MFA Overview.txt:15: It is possible, you already used it on some websites, but on AWS it's a must and it's very recommended to use it.
- 017_IAM MFA Hands On.txt:10: Now, there is a way for you to actually protect your root user, which is the most important account in your AWS account, and you can protect it by using multi-factor authentication.
- 017_IAM MFA Hands On.txt:26: So when you should a QR code, you need to scan this QR code directly on your phone.
- 018_AWS Access Keys, CLI and SDK.txt:19: I know that some people, actually, do not even use the Management console, they only use the CLI, for example.
- 019_AWS CLI Setup on Windows.txt:6: So I'm going to scroll down, in here and to Install on Windows where you can just simply install it using the MSI installer, so I just click on this link to download the MSI installer. then I'm going to run the installer so it should very very simple.
- 020_AWS CLI Setup on Mac OS X.txt:13: And then you just type aws -- version and if everything is going well, then it should give you back the version of the AWS executable.
- 021_AWS CLI Setup on Linux.txt:13: This should prompt me for my password, which I enter right now, and then the installation proceed.
- 022_AWS CLI Hands On.txt:8: For now, we're going to use the CLI and we'll use these access keys and we'll click here to say "I understand the above recommendation," and I still want to create an access key because it is important for you to understand how they are, how they work, what they are, and so on.
- 022_AWS CLI Hands On.txt:10: And now, this is the only time you'll be able to have access to the access key and the secret access key.
- 024_AWS CloudShell.txt:11: It's only available in one of these regions.
- 024_AWS CloudShell.txt:29: Other things that you should know about cloud shell is that you have a full repository.
- 024_AWS CloudShell.txt:52: So the bottom line for this lecture again, is number one cloud shell is only available in some regions.
- 026_IAM Roles Hands On.txt:11: So as you can see, if you click on it, you have commonly used services, such as EC2 and Lambda, or a role for pretty much every service on AWS.
- 026_IAM Roles Hands On.txt:17: So I'm going to attach the IAM read only access to allow my EC2 instance to read whatever is in IAM.
- 026_IAM Roles Hands On.txt:21: We are verifying the permissions, yes, it has IAM read only access, and we create this role.
- 026_IAM Roles Hands On.txt:25: Now, we cannot use this role just yet because we need to get to the EC2 section, but we will use it when we get to it.
- 028_IAM Security Tools Hands On.txt:17: And it turns out that maybe based on this access, have 37 pages of this, maybe the user needs access only to a few services but not all of them.
- 029_IAM Best Practices.txt:1: So here are some general guidelines on IAM and best practices, 'cause I don't want you if you go to use AWS to make some mistakes.
- 029_IAM Best Practices.txt:3: So by now you should have two accounts, a root account and your own personal accounts.
- 029_IAM Best Practices.txt:6: You can assign user to groups and assign permission to groups to make sure that security is managed at the group level and should create a strong password policy.
- 029_IAM Best Practices.txt:8: Then you should create and use roles whenever you're giving permissions to AWS services, and that includes easy two instances which are virtual servers.
- 029_IAM Best Practices.txt:9: If you were to use AWS programmatically or using the CLI, so the CLI or some SDK, you must generate access keys, and these access keys are just like passwords, they're very secret.
- 030_IAM Summary.txt:2: We've seen IAM users and they should be mapped to an actual physical user within your company.
- 030_IAM Summary.txt:4: Now we can group these users into groups and therefore users only.
- 124_IAM Policies in Depth.txt:17: And by the end you should be very comfortable with IAM policy because they do come up quite a lot in the exam.
- 124_IAM Policies in Depth.txt:27: Next we can use also the resource element to provide a scope for the policy, therefore, limiting the actions to specific resources.
- 124_IAM Policies in Depth.txt:30: So it's very important for you to understand this kind of things because the NotAction does come up in the exam.
- 124_IAM Policies in Depth.txt:34: But you must still allow explicitly the other actions you want to allow if an explicit allow is needed.
- 124_IAM Policies in Depth.txt:39: So this policy itself is allowing the fact that we only want to allow the users to have MFA present when dealing with AWS.
- 124_IAM Policies in Depth.txt:40: And if they don't connect with MFA then they cannot use AWS.
- 124_IAM Policies in Depth.txt:50: So this can be confusing, but as you start reading these policies, hopefully that should make a lot more sense.
- 124_IAM Policies in Depth.txt:58: And it's very important for you to understand that an explicit deny and an explicit allow are different.
- 125_IAM Condition Operators.txt:7: This is extremely helpful, for example, when you compare ARNs and you want to remove the account iID so you just put a star instead, and you've seen this, you must have seen this quite a lot in your experience.
- 125_IAM Condition Operators.txt:12: So, anytime you must compare ARNs with partial matching then use ArnLike and ArnNotLike.
- 125_IAM Condition Operators.txt:19: So, this is going to resolve to the IP address that the request originates from. and it's only works for public IPs, it does not apply to request made through VPC endpoints, but we'll see the type of conditions we can have for VPC endpoints to compare on private IP addresses.
- 126_IAM Global condition context keys.txt:18: So if we have a look at an IAM user doing a list bucket operation on this S3 bucket then we can have a condition saying that, "Hey, this is only allowed if the PrincipleArn, so the user or the role making the request, is equals to the user Alice." So here you're going to compare the ARN of the principle that made the request with ARN specified in the policy.
- 126_IAM Global condition context keys.txt:20: So it's very important.
- 126_IAM Global condition context keys.txt:37: On the bottom right we see that the source ARN should be a specific bucket.
- 126_IAM Global condition context keys.txt:38: So this key, AWS SourceArn is only going to be included when you have a service to service type of interaction.
- 126_IAM Global condition context keys.txt:39: So for example, as I said, when an S3 bucket triggers an update to an SNS topic with the SNS published out of API you can use the SourceArn to guarantee that the SNS topic can only receive data from that S3 bucket specifically.
- 126_IAM Global condition context keys.txt:42: It's only in some specific use cases, but for example, say you're using Athena to query an S3 buckets.
- 126_IAM Global condition context keys.txt:45: And it supports only very few services.
- 126_IAM Global condition context keys.txt:65: Should be very familiar to you.
- 126_IAM Global condition context keys.txt:74: So you're saying, "Hey, I want to restrict the resource tag condition only to the EC2 service." So resource tag is for tags on resources and principle tag are for tags that exist on the IAM user or the IAM role making the request.
- 126_IAM Global condition context keys.txt:78: So remember you have to distinguish between resource tags and principal tags and you should be good to go.
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

### 6. Patterns / Architectures
- 004_IAM.txt:43: And so in the first one, the "Effect" is "Allow", "Not action" on IAM star organizations and account star for resource stars, so that means that it's not going to allow anything to be done on IAM organizations and accounts.
- 004_IAM.txt:44: And also it's going to allow still a few IAM actions such as create service link role, delete service link role, list roles, describe organization and list regions.
- 004_IAM.txt:113: So IAM permission boundaries can also be used with AWS organization SCP.
- 004_IAM.txt:117: And it's also very useful to restrict one specific user instead of using a whole account restriction with organizations and SCP.
- 011_IAM Introduction_ Users, Groups, Policies.txt:10: So you will create users in IAM, and one user represents one person within your organization.
- 011_IAM Introduction_ Users, Groups, Policies.txt:12: So let's take an example we have an organization with six people.
- 011_IAM Introduction_ Users, Groups, Policies.txt:13: You have Alice, Bob, Charles, David, Edward and Fred so all these people are in your organization.
- 028_IAM Security Tools Hands On.txt:14: So as you can see, organizations, health, identity and access managers with IAM Service, EC2, Resource Explorer, were all accessed by my user.
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

## Step 3 — Deep Expansion (Core Concepts and Services)

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
- For IAM_Core, keep conceptual policy intent portable while implementing cloud-native controls.

## Phase-wise Architect-Level Organization

### Phase 1 — Foundations
- Identity model, principal types, and authentication mechanisms.
- Authorization basics with explicit allow/deny and context-aware policy conditions.

### Phase 2 — Core Services
- Implement IAM roles/policies, STS, and account-level guardrails based on topic focus.
- Use access analysis and reports to detect policy drift and credential risk.

### Phase 3 — Advanced Patterns
- Multi-account delegated administration, federated trust chains, and policy boundary controls.
- Organization-wide standards and targeted exception-handling workflows.

### Phase 4 — System Design
- Enterprise identity architecture: workforce, workload, and external identities with auditable trust flows.
- Scaling considerations: account growth, policy sprawl, permission debt, and federation complexity.
- Cost considerations: primarily operational/governance overhead, tool integration, and identity platform licensing in multi-cloud.

## Deduped Consolidation Snapshot

This additive section keeps original extraction untouched and provides duplicate-clean views for faster review.

### Concepts (Deduped)
- Access Boundary Controls
- Authorization Model
- Directory Integration
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
- IAM Access Analyzer
- IAM Identity Center
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
- mfa
- saml
- scp
- trust policy

### Use Cases (Deduped)
- 004_IAM.txt:9: But this way, your instance can access for example, an S3 Bucket or DynamoDB table and so on.
- 004_IAM.txt:20: So this is when you have an S3 Bucket policy or an SQS queue policy and so on, which would allow us to perform some really interesting patterns and we'll see this in this lecture.
- 004_IAM.txt:25: And then we have some statement, for example allow EC2 attach volume, EC2 detach volume on the resource which is all EC2 instances.
- 004_IAM.txt:35: Okay, another one is going to be Access Analyzer and this is to analyze resources are shared with external entities, for example, S3 Buckets and this will allow you to look at if other accounts have access to your S3 Bucket, maybe there's something you're not expecting here and you want to make sure to lock down that S3 bucket.
- 004_IAM.txt:43: And so in the first one, the "Effect" is "Allow", "Not action" on IAM star organizations and account star for resource stars, so that means that it's not going to allow anything to be done on IAM organizations and accounts.
- 004_IAM.txt:44: And also it's going to allow still a few IAM actions such as create service link role, delete service link role, list roles, describe organization and list regions.
- 004_IAM.txt:47: So here we have a very interesting use case, in case we don't want to deny everything in there because we want to explicitly allow a few things in there, then we can use the "NotAction" instead of "Deny" to allow for these two things to coexist together.
- 004_IAM.txt:52: The first one is going to be a string operator, so for example, you're saying I want my principle tag to be job category: IAM user admin, so this is when you look at tags.
- 004_IAM.txt:53: Or you can look at, for example, on this pre-prefix for this pre-Bucket policy to say that we want the users to only access a specific home directory.
- 004_IAM.txt:55: Dates to look at, compare dates, this is very helpful when you want to provide temporary access to a specific service.
- 004_IAM.txt:56: Booleans which is going to be really helpful for example, if you want to evaluate SSL such as Secure Transport: true, and also when you want to look at MFA using Multifactor Authentication present: true.
- 004_IAM.txt:58: And these conditions will be really helpful for buckets, S3 bucket policies for example or any kind of policy we want to ensure that only a specific kind of source IP can access the service.
- 004_IAM.txt:63: I just want to show you these things exist so that you know you can have very specific IAM policies such as if the exam is asking you to use an IAM policy as an answer to a problem, this would be possible instead of using, for example a custom script okay?
- 004_IAM.txt:66: One we've seen is dollar sign AWS username and this is most commonly used, for example in S3 buckets policy.
- 004_IAM.txt:71: There is some AWS specific Policy Variables and Tags, for example CurrentTime, TokenIssueTime, principal type, secure transport, which is for SSL, source IP, user ID and source instance ARN.
- 004_IAM.txt:73: There's service specific policy roles and tags, for example S3 prefix, max keys, SNS endpoint, SNS protocol.
- 004_IAM.txt:75: For example, if you use resource tag, slash key name or principle tag, slash key name and so on so you can start having some really powerful IAM policies.
- 004_IAM.txt:81: We can attach a policy to resource, for example, in S3 bucket versus attaching of using a role as a proxy.
- 004_IAM.txt:91: It is that when you assume a role, whether it be a user, an application or a service you're going to give up all your original permissions and you're going to take the permissions assigned to the role.
- 004_IAM.txt:92: So that means that before, when we do assume the role and accounts B, the orange situation when the user in account A, gives up all his permissions in account A while it's being assuming a role in account B.
- 004_IAM.txt:93: So the idea is that when you assume a role as a user application or service, then you're going to give up your original permissions and you're going to take the permissions assigned to the role.
- 004_IAM.txt:94: And when you're using, on the contrary, a resource based policy then the principal does not have to give up any permissions.
- 004_IAM.txt:95: So when do we use resource based policy?
- 004_IAM.txt:101: So this is a very, very good use case for resource based policies.
- 004_IAM.txt:102: So resource based policies are supported by so many AWS services and is increasing, so for example, Amazon industry buckets, SNS topics SQS queues, Lambda functions, ECR, Backup, EFS, Glacier, Cloud9.
- 004_IAM.txt:106: This is an advanced features that is going to allow you to set the maximum permissions an IAM entity can get.
- 004_IAM.txt:108: So for example, say we attach this IAM permission boundary so saying S3 star, clover star and EC2 star and this IAM permission.
- 004_IAM.txt:115: So you would use IAM permission boundaries when you want to delegate responsibility to non-administrator within their permission boundaries, for example to create new IAM users or to allow developers to self assign policy to themselves and manage their own permissions while making sure that they can only do these things within their privilege rights.
- 011_IAM Introduction_ Users, Groups, Policies.txt:5: So we've already used IAM without knowing, when we created an account, we created a root accounts, and has been created by default.
- 011_IAM Introduction_ Users, Groups, Policies.txt:24: For example, Fred right here is alone, he does not correspond to any group.
- 011_IAM Introduction_ Users, Groups, Policies.txt:28: That means that for example, if you know that Charles and David worked together, and they're part of your audit team, you can create a third group with Charles and David.
- 011_IAM Introduction_ Users, Groups, Policies.txt:32: Well, because we want to allow them to use our AWS accounts and to allow them to do so, we have to give them permissions.
- 012_IAM Users & Groups Hands On.txt:8: When you create a user in IAM, it will be available everywhere, but some other consoles we'll see in this course will be region-specific.
- 012_IAM Users & Groups Hands On.txt:13: So when you have it, that means you're using the root account and it's not best practice to use the root account.
- 012_IAM Users & Groups Hands On.txt:15: So for this, let's go ahead and create a user, and I will provide a username, for example, Stephane.
- 012_IAM Users & Groups Hands On.txt:29: For example, I could say that the department of Stephane is engineering.
- 012_IAM Users & Groups Hands On.txt:48: For example, v5 is available.
- 012_IAM Users & Groups Hands On.txt:55: And as you can see, when you do a sign in on AWS, you have the root user sign in or the IAM user sign in.
- 012_IAM Users & Groups Hands On.txt:68: But when you have to use roots or when you have to use an IAM user, I will let you know in the course.
- 013_AWS Console Simultaneous Sign-in.txt:8: And the cool thing is that, for example, let's say I'm going to the EC2 console here, and then I'm going to go into volumes and then I'm going to, for example, create an EBS volume of one gigabyte just to do something very quickly.
- 014_IAM Policies.txt:11: That should make a lot of sense when we get into the hands-on.
- 014_IAM Policies.txt:24: And finally in, not represented here but there's a condition to which when this statement should be applied or not, and this is not representative here because it is optional.
- 015_IAM Policies Hands On.txt:35: And then I'm going to add the user Stephane in this group and I'm going to attach whatever policy I can find, for example, AlexaForBusiness but it doesn't really matter.
- 015_IAM Policies Hands On.txt:54: So all these services, for example, App Mesh or Alexa for Business or Amplify, they all have full access.
- 015_IAM Policies Hands On.txt:61: If we have a look at another policy, for example, the IAMReadOnlyAccess that we saw from before.
- 015_IAM Policies Hands On.txt:68: So when you have Get*, it says that anything that starts with Get and then has something after is authorized.
- 015_IAM Policies Hands On.txt:69: For example, get users or get groups.
- 015_IAM Policies Hands On.txt:81: And for example, let's say IAM, we wanna create stuff for IAM.
- 015_IAM Policies Hands On.txt:90: And when you click on next, you can have a look and say MyIAMPermissions.
- 016_IAM MFA Overview.txt:8: For example, you may want to have an uppercase letter, lowercase letter, number, non alphanumeric characters, for example, a question mark and so on.
- 016_IAM MFA Overview.txt:9: Then you can allow or not IAM users to change their own passwords, or you can require users to change their password after some time to make your password expired, for example, to say every 90 days, users have to change their passwords.
- 016_IAM MFA Overview.txt:10: Finally, you can also prevent password reuse so that users, when they change their passwords, don't change it to the one that they already have or change it to the one they had before.
- 016_IAM MFA Overview.txt:24: So for example, let's take Alice.
- 016_IAM MFA Overview.txt:27: So the benefit of MFA is that even if Alice has lost her password because it's stolen or it's hacked, the account will not be compromised because the hacker will need to also get a hold of the physical device of Alice, that could be her phone, for example, to do a login.
- 016_IAM MFA Overview.txt:39: For example, a YubiKey by Yubico and Yubico is a third party to AWS.
- 016_IAM MFA Overview.txt:46: You have a hardware key fob MFA device, for example, this one provided by Gemalto, which is also a third party to AWS.
- 017_IAM MFA Hands On.txt:6: We can also turn on password expiration to turn on, for example, expire after 90 days, or that a password expiration requires administrative resets, or we can allow the users to change their own password or we can prevent password reuse.
- 017_IAM MFA Hands On.txt:26: So when you should a QR code, you need to scan this QR code directly on your phone.
- 018_AWS Access Keys, CLI and SDK.txt:4: Then, finally, there is the SDK, the AWS Software Development Kit, which is used whenever you want to call APIs from AWS from within your application code.
- 018_AWS Access Keys, CLI and SDK.txt:9: So when you go into the Management console, you get access key as there's a button to create access keys, and then it gives you the right to download it in the very second.
- 018_AWS Access Keys, CLI and SDK.txt:10: And so, for example, here's a fake access key ID and a fake secret access key, and these, when loaded into my Command Line Interface, would allow me to access the AWS API, and we'll do this in the hands-on in a second.
- 018_AWS Access Keys, CLI and SDK.txt:14: So whenever you see some code where you type a command line, and then it returns a result, for example, aws, s3, cp, and so on, this is what we call the CLI.
- 018_AWS Access Keys, CLI and SDK.txt:19: I know that some people, actually, do not even use the Management console, they only use the CLI, for example.
- 019_AWS CLI Setup on Windows.txt:9: Yes, I want to allow whatever this is doing.
- 020_AWS CLI Setup on Mac OS X.txt:11: So you just go ahead and type, for example, "terminal", and this will give you a terminal app.
- 021_AWS CLI Setup on Linux.txt:16: It says AWS CLI/2. and then you are getting a different version based on when you do this.
- 021_AWS CLI Setup on Linux.txt:18: When this works we can run any command on the AWS CLI and you can go ahead, with the rest of the lectures.
- 022_AWS CLI Hands On.txt:4: As you can see, there are some selection you need to do, and based on the selection I'm doing, for example, I want access key for the CLI, AWS is going to have an alternative recommended.
- 022_AWS CLI Hands On.txt:5: For example, for the CLI, it's better to use CloudShell which I will show you in the next lecture, so don't worry about it.
- 022_AWS CLI Hands On.txt:26: And as we can see, the user I have right now is called Stephane, here is the UserId, here is the ARN, when it was created, and when the password was last used.
- 024_AWS CloudShell.txt:18: For example, you can issue the AWS commands.
- 024_AWS CloudShell.txt:23: So the cool thing about cloud shell is that whenever you are using the CLI, so for example it was am list users.
- 024_AWS CloudShell.txt:30: So for example, right now, as we can see we have zero files within cloud shell.
- 024_AWS CloudShell.txt:33: So all the files you are creating within your cultural environment, for example this demo that's TXT are going to stay.
- 024_AWS CloudShell.txt:39: So for example, if I want you to get the full path to my file, so did this demo let's six.
- 025_IAM Roles for AWS Services.txt:8: So for example, we are going to create throughout this course, an EC2 Instance.
- 025_IAM Roles for AWS Services.txt:15: For example, Lambda Function Roles or CloudFormation.
- 026_IAM Roles Hands On.txt:13: So we are going to create a role for an EC2 instance when we get to the EC2 section.
- 026_IAM Roles Hands On.txt:14: And so we choose EC2, and the use case is just EC2.
- 026_IAM Roles Hands On.txt:17: So I'm going to attach the IAM read only access to allow my EC2 instance to read whatever is in IAM.
- 026_IAM Roles Hands On.txt:25: Now, we cannot use this role just yet because we need to get to the EC2 section, but we will use it when we get to it.
- 027_IAM Security Tools.txt:6: This one is at the user-level and the Access Advisor is going to show the service permissions granted to a user and when those services were last accessed.
- 028_IAM Security Tools Hands On.txt:5: We can see when the user was created, if the password was enabled, when the password was last used and last changed, when is the next rotation to be expected if we do enable password rotation?
- 028_IAM Security Tools Hands On.txt:9: Yes, they're created for my Stefane account, but not for my root account, and when they were last rotated, last used and so on, you can get more information about other access keys and certificates and so on.
- 028_IAM Security Tools Hands On.txt:13: And Access Advisor is going to show me which services were accessed by my user and when.
- 028_IAM Security Tools Hands On.txt:15: So I use my user to access these things by clicking in the UI, but some services were not accessed, for example, Alexa for Business or AWS App2Container and so on.
- 028_IAM Security Tools Hands On.txt:19: On top of it, if a user accesses a specific service for example Amazon EC2, we are told that this is the administrator access that granted access to this service.
- 028_IAM Security Tools Hands On.txt:20: So to summarize, Access Advisor becomes very helpful when you need to do granular user access permissions on AWS.
- 029_IAM Best Practices.txt:2: So do not use a root account except when you set up your AWS account.
- 029_IAM Best Practices.txt:8: Then you should create and use roles whenever you're giving permissions to AWS services, and that includes easy two instances which are virtual servers.
- 124_IAM Policies in Depth.txt:19: So when you have a NotAction, you provide access to all the actions in service except for the action specified in NotAction.
- 124_IAM Policies in Depth.txt:28: So for example, here we have effect allow, NotAction delete bucket, resource the bucket itself.
- 124_IAM Policies in Depth.txt:31: Next we have the NotAction with deny and you use the NotAction with a deny statement to deny access to all the resources except the one that you've listed in the NotAction element.
- 124_IAM Policies in Depth.txt:34: But you must still allow explicitly the other actions you want to allow if an explicit allow is needed.
- 124_IAM Policies in Depth.txt:36: So we deny everything that is not IAM, resource star when, so we deny everything that is not IAM when the multifactor is not present.
- 124_IAM Policies in Depth.txt:39: So this policy itself is allowing the fact that we only want to allow the users to have MFA present when dealing with AWS.
- 124_IAM Policies in Depth.txt:42: Now we have NotAction, too, also, for example, restrict to one specific region.
- 124_IAM Policies in Depth.txt:48: Also, for example, we can deny everything outside of EU Central One except Amazon S3 by having effect deny NotAction S3 star.
- 124_IAM Policies in Depth.txt:66: So this is when you have assumed roles that come from IAM or Cognito identities or SAML providers.
- 124_IAM Policies in Depth.txt:71: You usually see those in the trust policies of IAM, for example.
- 124_IAM Policies in Depth.txt:72: And finally, to allow everything we've seen principle star or principle AWS star, these are equivalent.
- 125_IAM Condition Operators.txt:5: So, for example, in here we look at whether or not the S3 prefix of the object is corresponding to home/*/data.
- 125_IAM Condition Operators.txt:7: This is extremely helpful, for example, when you compare ARNs and you want to remove the account iID so you just put a star instead, and you've seen this, you must have seen this quite a lot in your experience.
- 125_IAM Condition Operators.txt:9: So for example, you can compare the token issued time of your credentials to a specific timestamp, and we'll see a use case of this in some future lectures.
- 125_IAM Condition Operators.txt:15: So, we wanna know at runtime if secure transport is false this is how you read it, and so when secure transport is false, that means that you don't use HTTPS.
- 125_IAM Condition Operators.txt:16: This is something you'll see when we deal with S3 bucket policies, for example.
- 125_IAM Condition Operators.txt:18: So, this is a CIDR format, and here we are going to have a look whether or not, for example, the source IP of the API call corresponds to the CIDR on the right hand side.
- 126_IAM Global condition context keys.txt:4: For example, on the right hand side, we allow to stop or to terminate on anything if you are in eu-west-1, eu-west-2, or eu-west-3.
- 126_IAM Global condition context keys.txt:7: So when using a global AWS service then the region that you make the API call into is always going to be us-east-1.
- 126_IAM Global condition context keys.txt:8: So the workaround to denying everything outside regions except these global services is to use deny and not action.
- 126_IAM Global condition context keys.txt:38: So this key, AWS SourceArn is only going to be included when you have a service to service type of interaction.
- 126_IAM Global condition context keys.txt:39: So for example, as I said, when an S3 bucket triggers an update to an SNS topic with the SNS published out of API you can use the SourceArn to guarantee that the SNS topic can only receive data from that S3 bucket specifically.
- 126_IAM Global condition context keys.txt:42: It's only in some specific use cases, but for example, say you're using Athena to query an S3 buckets.
- 126_IAM Global condition context keys.txt:47: So that means that when you're using CloudFormation to do an API call on whatever you're going to have AWS CalledVia CloudFormation.
- 126_IAM Global condition context keys.txt:48: When you're using Athena to query the content of S3 bucket you're going to get AWS CalledVia Athena.
- 126_IAM Global condition context keys.txt:54: And whenever you make requests privately through VPC Endpoints then source IP is not going to be present.
- 126_IAM Global condition context keys.txt:63: So we deny everything except when the IP address is within this range.
- 126_IAM Global condition context keys.txt:66: And for example, we can also restrict private IP addresses and force access to VPC Endpoints.
- 126_IAM Global condition context keys.txt:72: So for example, it would be tags on an EC2 instance.
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

### Constraints / Limitations (Deduped)
- 004_IAM.txt:2: So first there's a lot of things you should know about IAM already.
- 004_IAM.txt:8: And you can assign only one role at a time for the instance.
- 004_IAM.txt:18: Or Inline Policies, which are going to be policies assigned to one specific user or one specific role and you can make them evolve over time but you cannot share them across users or across roles.
- 004_IAM.txt:27: That means that only the EC2 instances tagged with this tag can be attached or detached to volume and so on.
- 004_IAM.txt:30: Okay so the best practice we know this already is to use the least privilege for maximum security.
- 004_IAM.txt:38: A few common IAM policies we'll get across is going to be the AdministratorAccess which is meaning that everything should be allowed on any resource.
- 004_IAM.txt:53: Or you can look at, for example, on this pre-prefix for this pre-Bucket policy to say that we want the users to only access a specific home directory.
- 004_IAM.txt:58: And these conditions will be really helpful for buckets, S3 bucket policies for example or any kind of policy we want to ensure that only a specific kind of source IP can access the service.
- 004_IAM.txt:66: One we've seen is dollar sign AWS username and this is most commonly used, for example in S3 buckets policy.
- 004_IAM.txt:78: Okay, more importantly, and more exam focused is going to be the difference of IAM roles and resource based policies.
- 004_IAM.txt:103: I mean, you'll see the list here, is that it's pretty much supported by most of the important resources in AWS.
- 004_IAM.txt:112: Well, because even though the action IAM create user is authorized on the right hand side, because the IAM permission boundaries only allow the permissions on S3 CloudWatch, and ec2 then the user zero will have no permissions.
- 004_IAM.txt:115: So you would use IAM permission boundaries when you want to delegate responsibility to non-administrator within their permission boundaries, for example to create new IAM users or to allow developers to self assign policy to themselves and manage their own permissions while making sure that they can only do these things within their privilege rights.
- 004_IAM.txt:116: So they cannot escalate themselves.
- 011_IAM Introduction_ Users, Groups, Policies.txt:7: And the only things you should use it for is to set up your account as we'll do it right now.
- 011_IAM Introduction_ Users, Groups, Policies.txt:8: But then you shouldn't use that account anymore, or even share it.
- 011_IAM Introduction_ Users, Groups, Policies.txt:9: What you should be doing instead, is create users.
- 011_IAM Introduction_ Users, Groups, Policies.txt:20: Now groups can only contain users, not other groups.
- 011_IAM Introduction_ Users, Groups, Policies.txt:21: So this is something very important to understand.
- 011_IAM Introduction_ Users, Groups, Policies.txt:22: Groups only contain users.
- 011_IAM Introduction_ Users, Groups, Policies.txt:25: That is not best practice.
- 012_IAM Users & Groups Hands On.txt:13: So when you have it, that means you're using the root account and it's not best practice to use the root account.
- 012_IAM Users & Groups Hands On.txt:20: So if this was a user that was not me, I would leave it as auto-generated password, and I would leave this so that the user must change this password at the next sign-in, but because it is me, I'm just going to enter a custom password and I'm going to untick this because I don't need to change my password at the next login.
- 012_IAM Users & Groups Hands On.txt:52: So if you don't do this, that's fine, but if you log in using the Stephane account on the right hand side window then you will be disconnected on the left hand side, this is the only difference.
- 012_IAM Users & Groups Hands On.txt:65: And currently I cannot help you with this.
- 013_AWS Console Simultaneous Sign-in.txt:15: This was not possible before, which is very helpful, and something you should know about if you want to use AWS at scale.
- 014_IAM Policies.txt:6: And we have the possibility to create what's called an inline policy which has a policy that's only attached to a user.
- 014_IAM Policies.txt:11: That should make a lot of sense when we get into the hands-on.
- 014_IAM Policies.txt:16: And then more statements, and statements can be one or multiple ones, and a statement has some very important parts.
- 014_IAM Policies.txt:24: And finally in, not represented here but there's a condition to which when this statement should be applied or not, and this is not representative here because it is optional.
- 014_IAM Policies.txt:25: So going into the exam, you need to make sure that you really understand the effect, the principle, the action and resource, but don't worry, you will see those along the way in the course so you should be confident with them by the end of the course.
- 015_IAM Policies Hands On.txt:20: And so the policy I'm going to attach is going to be IAMReadOnlyAccess.
- 015_IAM Policies Hands On.txt:27: And as you can see, I cannot create it because I'm not allowed to actually create a group.
- 015_IAM Policies Hands On.txt:28: I'm only given the read-only access on IAM.
- 015_IAM Policies Hands On.txt:29: And so therefore, because I have read-only access, I cannot create groups.
- 015_IAM Policies Hands On.txt:30: So this shows you that you can only permission users for what they're supposed to do.
- 015_IAM Policies Hands On.txt:44: And finally, IAMReadOnlyAccess that has been attached directly.
- 015_IAM Policies Hands On.txt:61: If we have a look at another policy, for example, the IAMReadOnlyAccess that we saw from before.
- 015_IAM Policies Hands On.txt:62: So if we look at it, we see that IAM is authorized with Full: List and Limited: Read.
- 015_IAM Policies Hands On.txt:75: And so therefore, that summarizes what the read-only IAM access policy is made of.
- 015_IAM Policies Hands On.txt:88: So on all resources or only specific resources?
- 015_IAM Policies Hands On.txt:96: And then I'm going to go into my Stephane user and I'm going to just remove this IAMReadOnlyAccess that had attached directly.
- 015_IAM Policies Hands On.txt:97: So now Stephane only belongs to the group admin and it has administrator access.
- 016_IAM MFA Overview.txt:15: It is possible, you already used it on some websites, but on AWS it's a must and it's very recommended to use it.
- 017_IAM MFA Hands On.txt:10: Now, there is a way for you to actually protect your root user, which is the most important account in your AWS account, and you can protect it by using multi-factor authentication.
- 017_IAM MFA Hands On.txt:26: So when you should a QR code, you need to scan this QR code directly on your phone.
- 018_AWS Access Keys, CLI and SDK.txt:19: I know that some people, actually, do not even use the Management console, they only use the CLI, for example.
- 019_AWS CLI Setup on Windows.txt:6: So I'm going to scroll down, in here and to Install on Windows where you can just simply install it using the MSI installer, so I just click on this link to download the MSI installer. then I'm going to run the installer so it should very very simple.
- 020_AWS CLI Setup on Mac OS X.txt:13: And then you just type aws -- version and if everything is going well, then it should give you back the version of the AWS executable.
- 021_AWS CLI Setup on Linux.txt:13: This should prompt me for my password, which I enter right now, and then the installation proceed.
- 022_AWS CLI Hands On.txt:8: For now, we're going to use the CLI and we'll use these access keys and we'll click here to say "I understand the above recommendation," and I still want to create an access key because it is important for you to understand how they are, how they work, what they are, and so on.
- 022_AWS CLI Hands On.txt:10: And now, this is the only time you'll be able to have access to the access key and the secret access key.
- 024_AWS CloudShell.txt:11: It's only available in one of these regions.
- 024_AWS CloudShell.txt:29: Other things that you should know about cloud shell is that you have a full repository.
- 024_AWS CloudShell.txt:52: So the bottom line for this lecture again, is number one cloud shell is only available in some regions.
- 026_IAM Roles Hands On.txt:11: So as you can see, if you click on it, you have commonly used services, such as EC2 and Lambda, or a role for pretty much every service on AWS.
- 026_IAM Roles Hands On.txt:17: So I'm going to attach the IAM read only access to allow my EC2 instance to read whatever is in IAM.
- 026_IAM Roles Hands On.txt:21: We are verifying the permissions, yes, it has IAM read only access, and we create this role.
- 026_IAM Roles Hands On.txt:25: Now, we cannot use this role just yet because we need to get to the EC2 section, but we will use it when we get to it.
- 028_IAM Security Tools Hands On.txt:17: And it turns out that maybe based on this access, have 37 pages of this, maybe the user needs access only to a few services but not all of them.
- 029_IAM Best Practices.txt:1: So here are some general guidelines on IAM and best practices, 'cause I don't want you if you go to use AWS to make some mistakes.
- 029_IAM Best Practices.txt:3: So by now you should have two accounts, a root account and your own personal accounts.
- 029_IAM Best Practices.txt:6: You can assign user to groups and assign permission to groups to make sure that security is managed at the group level and should create a strong password policy.
- 029_IAM Best Practices.txt:8: Then you should create and use roles whenever you're giving permissions to AWS services, and that includes easy two instances which are virtual servers.
- 029_IAM Best Practices.txt:9: If you were to use AWS programmatically or using the CLI, so the CLI or some SDK, you must generate access keys, and these access keys are just like passwords, they're very secret.
- 030_IAM Summary.txt:2: We've seen IAM users and they should be mapped to an actual physical user within your company.
- 030_IAM Summary.txt:4: Now we can group these users into groups and therefore users only.
- 124_IAM Policies in Depth.txt:17: And by the end you should be very comfortable with IAM policy because they do come up quite a lot in the exam.
- 124_IAM Policies in Depth.txt:27: Next we can use also the resource element to provide a scope for the policy, therefore, limiting the actions to specific resources.
- 124_IAM Policies in Depth.txt:30: So it's very important for you to understand this kind of things because the NotAction does come up in the exam.
- 124_IAM Policies in Depth.txt:34: But you must still allow explicitly the other actions you want to allow if an explicit allow is needed.
- 124_IAM Policies in Depth.txt:39: So this policy itself is allowing the fact that we only want to allow the users to have MFA present when dealing with AWS.
- 124_IAM Policies in Depth.txt:40: And if they don't connect with MFA then they cannot use AWS.
- 124_IAM Policies in Depth.txt:50: So this can be confusing, but as you start reading these policies, hopefully that should make a lot more sense.
- 124_IAM Policies in Depth.txt:58: And it's very important for you to understand that an explicit deny and an explicit allow are different.
- 125_IAM Condition Operators.txt:7: This is extremely helpful, for example, when you compare ARNs and you want to remove the account iID so you just put a star instead, and you've seen this, you must have seen this quite a lot in your experience.
- 125_IAM Condition Operators.txt:12: So, anytime you must compare ARNs with partial matching then use ArnLike and ArnNotLike.
- 125_IAM Condition Operators.txt:19: So, this is going to resolve to the IP address that the request originates from. and it's only works for public IPs, it does not apply to request made through VPC endpoints, but we'll see the type of conditions we can have for VPC endpoints to compare on private IP addresses.
- 126_IAM Global condition context keys.txt:18: So if we have a look at an IAM user doing a list bucket operation on this S3 bucket then we can have a condition saying that, "Hey, this is only allowed if the PrincipleArn, so the user or the role making the request, is equals to the user Alice." So here you're going to compare the ARN of the principle that made the request with ARN specified in the policy.
- 126_IAM Global condition context keys.txt:20: So it's very important.
- 126_IAM Global condition context keys.txt:37: On the bottom right we see that the source ARN should be a specific bucket.
- 126_IAM Global condition context keys.txt:38: So this key, AWS SourceArn is only going to be included when you have a service to service type of interaction.
- 126_IAM Global condition context keys.txt:39: So for example, as I said, when an S3 bucket triggers an update to an SNS topic with the SNS published out of API you can use the SourceArn to guarantee that the SNS topic can only receive data from that S3 bucket specifically.
- 126_IAM Global condition context keys.txt:42: It's only in some specific use cases, but for example, say you're using Athena to query an S3 buckets.
- 126_IAM Global condition context keys.txt:45: And it supports only very few services.
- 126_IAM Global condition context keys.txt:65: Should be very familiar to you.
- 126_IAM Global condition context keys.txt:74: So you're saying, "Hey, I want to restrict the resource tag condition only to the EC2 service." So resource tag is for tags on resources and principle tag are for tags that exist on the IAM user or the IAM role making the request.
- 126_IAM Global condition context keys.txt:78: So remember you have to distinguish between resource tags and principal tags and you should be good to go.
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

### Patterns / Architectures (Deduped)
- 004_IAM.txt:43: And so in the first one, the "Effect" is "Allow", "Not action" on IAM star organizations and account star for resource stars, so that means that it's not going to allow anything to be done on IAM organizations and accounts.
- 004_IAM.txt:44: And also it's going to allow still a few IAM actions such as create service link role, delete service link role, list roles, describe organization and list regions.
- 004_IAM.txt:113: So IAM permission boundaries can also be used with AWS organization SCP.
- 004_IAM.txt:117: And it's also very useful to restrict one specific user instead of using a whole account restriction with organizations and SCP.
- 011_IAM Introduction_ Users, Groups, Policies.txt:10: So you will create users in IAM, and one user represents one person within your organization.
- 011_IAM Introduction_ Users, Groups, Policies.txt:12: So let's take an example we have an organization with six people.
- 011_IAM Introduction_ Users, Groups, Policies.txt:13: You have Alice, Bob, Charles, David, Edward and Fred so all these people are in your organization.
- 028_IAM Security Tools Hands On.txt:14: So as you can see, organizations, health, identity and access managers with IAM Service, EC2, Resource Explorer, were all accessed by my user.
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

## Deduped Consolidation Snapshot End

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: And also it's going to allow still a few IAM actions such as create service link role, delete service link role, list roles, describe organization and list regions.
- Signal 2: Key Insights: And also it's going to allow still a few IAM actions such as create service link role, delete service link role, list roles, describe organization and list regions.
- Signal 3: Key Insights: So through this IAM policy we just allow IAM create user star, okay.
- Signal 4: Key Insights: Well, because even though the action IAM create user is authorized on the right hand side, because the IAM permission boundaries only allow the permissions on S3 CloudWatch, and ec2 then the user zero will have no permissions.
- Signal 5: Key Insights: So you would use IAM permission boundaries when you want to delegate responsibility to non-administrator within their permission boundaries, for example to create new IAM users or to allow developers to self assign policy to themselves and manage their own permissions while making sure that they can only do these things within their privilege rights.
- Signal 6: Key Insights: It is a global service because in IAM, we are going to create our users and assign them to group.
- Signal 7: Key Insights: What you should be doing instead, is create users.
- Signal 8: Key Insights: So you will create users in IAM, and one user represents one person within your organization.
- Signal 9: Key Insights: So we're going to create a group called the group developers who regrouping Alice, Bob and Charles.
- Signal 10: Key Insights: So we're going to create an operations group.

### Service-Specific Lab Paths
### Activity 1: IAM Lab for IAM users, groups, policies, roles, MFA and operational best practices
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

### Activity 2: Amazon S3 Lab for IAM users, groups, policies, roles, MFA and operational best practices
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

### Activity 3: Amazon VPC Lab for IAM users, groups, policies, roles, MFA and operational best practices
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

### Activity 4: Amazon CloudWatch Lab for IAM users, groups, policies, roles, MFA and operational best practices
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

Use this lens to study IAM users, groups, policies, roles, MFA and operational best practices in a cloud-agnostic way: focus on capability first, provider name second.

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

