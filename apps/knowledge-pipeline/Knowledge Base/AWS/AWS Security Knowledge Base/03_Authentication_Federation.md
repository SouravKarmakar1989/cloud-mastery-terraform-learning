# 03_Authentication_Federation.md

## Scope
- Topic: MFA, STS federation, SAML/OIDC, Cognito, IAM Identity Center
- Files processed: 18
- Extracted non-empty transcript lines: 836
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 4 Topic 3: Authentication and Federation)

This section is the study-first guide to workforce, workload, and application authentication paths with federated identity architecture.

### Phase 1 - Foundations

#### Module 1: Authentication Domains
- Workforce identities: humans accessing consoles and operational tools.
- Workload identities: services and compute resources accessing APIs.
- Application identities: end-user auth flows for customer-facing applications.


##### Source Transcript Details
- Module focus: Authentication Domains
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/007_Identity Federation & Cognito.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/164_Identity Federation & Cognito.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/006_STS.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/011_AWS IAM Identity Center.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/165_SAML 2.0 Metadata File Troubleshooting.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/167_AWS IAM Identity Center - Extras.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/166_[SAA_SOA] AWS IAM Identity Center.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/291_AWS IAM Identity Center.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/161_[DVA_SOA] Cognito User Pools.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/04_IAM & AWS CLI/017_IAM MFA Hands On.txt
- Top concept clusters from transcript metadata:
- Federated Authentication
- IAM Domain Operational Context
- Identity Lifecycle
- Temporary Credential Strategy
- Authorization Model
- Directory Integration
- Organization Governance
- Access Boundary Controls
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 18
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 836
- Key insights inside selected files: 551
- Unique concept tags in selected files: 9

##### Transcript-Enriched Learning Notes
- Okay, so now let's discuss Identity Federation in AWS.
- So this is why we need Identity Federation.
- And so this is where we need Identity Federation.
- So Identity Federation can have multiple flavors.
- It could be SAML 2.0, a custom identity broker, Web Identity Federation with or without Amazon Cognito, and then IAM Identity Center.
- So I'm going to discuss the first three, single sign-on will have its own lecture, and this is the more recent generation of Identity Federation, but still from an example perspective, you need to know about all of them.
- So let's go ahead with SAML 2.0 Federation.
- So as I said, SAML 2.0 Federation is the old way of doing things.
- And now IAM Identity Center is the new managed way and simpler way of doing things, yet we still have to learn about SAML 2.0 Federation.
- Now inside of our corporation, we'll have a portal or identity provider, and the user will make an authentication request to the IDP.
- We have the authentication loop, as I said from before, but this time we post to AWS sign-in in this endpoint with slash SAML.
- So these two flows are very similar because they use the same SAML 2.0 Federation.
- The only difference is that on the left hand side, we have the Microsoft Active Directory Federation Services on the top left, and then on the bottom right, where the user sits, is Active directory itself, okay?
- Then the only way for it to work is to use the AssumeRole or GetFederationToken API from STS directly from the custom identity broker.
- Now with web identity federation, we have two flavors, we have without Cognito and with Cognito.
- So what is Web Identity Federation?
- So it's preferred over Web Identity Federation because here in Cognito, we can create IAM roles with the least privilege needed, and then we just need to build the trust between the OIDC IdP and AWS.
- Okay, so when we have Web Identity Federation, can we restrict IAM policies?

##### Polished Architect Notes
- Transcript signals that so now let's discuss Identity Federation in AWS.
- Transcript signals that this is why we need Identity Federation.
- Transcript signals that so this is where we need Identity Federation.
- Transcript signals that identity Federation can have multiple flavors.
- Transcript signals that it could be SAML 2.0, a custom identity broker, Web Identity Federation with or without Amazon Cognito, and then IAM Identity Center.
- Transcript signals that i'm going to discuss the first three, single sign-on will have its own lecture, and this is the more recent generation of Identity Federation, but still from an example perspective, you need to know about all of t...
- Transcript signals that let's go ahead with SAML 2.0 Federation.
- Transcript signals that as I said, SAML 2.0 Federation is the old way of doing things.
- Transcript signals that now IAM Identity Center is the new managed way and simpler way of doing things, yet we still have to learn about SAML 2.0 Federation.
- Transcript signals that inside of our corporation, we'll have a portal or identity provider, and the user will make an authentication request to the IDP.
- Transcript signals that we have the authentication loop, as I said from before, but this time we post to AWS sign-in in this endpoint with slash SAML.
- Transcript signals that these two flows are very similar because they use the same SAML 2.0 Federation.

##### Architect Synthesis (Transcript-Derived)
- Treat Federated Authentication as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat IAM Domain Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Identity Lifecycle as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Temporary Credential Strategy as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Authorization Model as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so now let's discuss Identity Federation in AWS.
- Design implication: this is why we need Identity Federation.
- Design implication: so this is where we need Identity Federation.
#### Module 2: Federation Basics
- Federation externalizes identity proofing while preserving cloud authorization control.
- SAML and OIDC are protocol choices with different trust and token exchange models.
- STS links federation assertions to temporary cloud credentials.


##### Source Transcript Details
- Module focus: Federation Basics
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/007_Identity Federation & Cognito.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/164_Identity Federation & Cognito.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/006_STS.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/011_AWS IAM Identity Center.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/165_SAML 2.0 Metadata File Troubleshooting.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/167_AWS IAM Identity Center - Extras.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/161_[DVA_SOA] Cognito User Pools.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/166_[SAA_SOA] AWS IAM Identity Center.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/291_AWS IAM Identity Center.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/04_IAM & AWS CLI/017_IAM MFA Hands On.txt
- Top concept clusters from transcript metadata:
- Federated Authentication
- IAM Domain Operational Context
- Identity Lifecycle
- Temporary Credential Strategy
- Authorization Model
- Directory Integration
- Organization Governance
- Access Boundary Controls
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 18
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 836
- Key insights inside selected files: 551
- Unique concept tags in selected files: 9

##### Transcript-Enriched Learning Notes
- Okay, so now let's discuss Identity Federation in AWS.
- So this is why we need Identity Federation.
- And so this is where we need Identity Federation.
- So Identity Federation can have multiple flavors.
- It could be SAML 2.0, a custom identity broker, Web Identity Federation with or without Amazon Cognito, and then IAM Identity Center.
- So I'm going to discuss the first three, single sign-on will have its own lecture, and this is the more recent generation of Identity Federation, but still from an example perspective, you need to know about all of them.
- So let's go ahead with SAML 2.0 Federation.
- So as I said, SAML 2.0 Federation is the old way of doing things.
- And now IAM Identity Center is the new managed way and simpler way of doing things, yet we still have to learn about SAML 2.0 Federation.
- Now inside of our corporation, we'll have a portal or identity provider, and the user will make an authentication request to the IDP.
- We have the authentication loop, as I said from before, but this time we post to AWS sign-in in this endpoint with slash SAML.
- So these two flows are very similar because they use the same SAML 2.0 Federation.
- The only difference is that on the left hand side, we have the Microsoft Active Directory Federation Services on the top left, and then on the bottom right, where the user sits, is Active directory itself, okay?
- Then the only way for it to work is to use the AssumeRole or GetFederationToken API from STS directly from the custom identity broker.
- Now with web identity federation, we have two flavors, we have without Cognito and with Cognito.
- So what is Web Identity Federation?
- So it's preferred over Web Identity Federation because here in Cognito, we can create IAM roles with the least privilege needed, and then we just need to build the trust between the OIDC IdP and AWS.
- Okay, so when we have Web Identity Federation, can we restrict IAM policies?

##### Polished Architect Notes
- Transcript signals that so now let's discuss Identity Federation in AWS.
- Transcript signals that this is why we need Identity Federation.
- Transcript signals that so this is where we need Identity Federation.
- Transcript signals that identity Federation can have multiple flavors.
- Transcript signals that it could be SAML 2.0, a custom identity broker, Web Identity Federation with or without Amazon Cognito, and then IAM Identity Center.
- Transcript signals that i'm going to discuss the first three, single sign-on will have its own lecture, and this is the more recent generation of Identity Federation, but still from an example perspective, you need to know about all of t...
- Transcript signals that let's go ahead with SAML 2.0 Federation.
- Transcript signals that as I said, SAML 2.0 Federation is the old way of doing things.
- Transcript signals that now IAM Identity Center is the new managed way and simpler way of doing things, yet we still have to learn about SAML 2.0 Federation.
- Transcript signals that inside of our corporation, we'll have a portal or identity provider, and the user will make an authentication request to the IDP.
- Transcript signals that we have the authentication loop, as I said from before, but this time we post to AWS sign-in in this endpoint with slash SAML.
- Transcript signals that these two flows are very similar because they use the same SAML 2.0 Federation.

##### Architect Synthesis (Transcript-Derived)
- Treat Federated Authentication as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat IAM Domain Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Identity Lifecycle as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Temporary Credential Strategy as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Authorization Model as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so now let's discuss Identity Federation in AWS.
- Design implication: this is why we need Identity Federation.
- Design implication: so this is where we need Identity Federation.
#### Module 3: MFA and Session Assurance
- MFA strengthens high-value access paths.
- Session controls and short-lived credentials reduce persistence risk after compromise.


##### Source Transcript Details
- Module focus: MFA and Session Assurance
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/006_STS.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/007_Identity Federation & Cognito.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/164_Identity Federation & Cognito.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/04_IAM & AWS CLI/017_IAM MFA Hands On.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/131_IAM MFA.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/011_AWS IAM Identity Center.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/04_IAM & AWS CLI/016_IAM MFA Overview.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/165_SAML 2.0 Metadata File Troubleshooting.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/167_AWS IAM Identity Center - Extras.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/166_[SAA_SOA] AWS IAM Identity Center.txt
- Top concept clusters from transcript metadata:
- IAM Domain Operational Context
- Federated Authentication
- Identity Lifecycle
- Temporary Credential Strategy
- Authorization Model
- Directory Integration
- Organization Governance
- Access Boundary Controls
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 18
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 836
- Key insights inside selected files: 568
- Unique concept tags in selected files: 9

##### Transcript-Enriched Learning Notes
- So now let's talk about STS, which is a service that is so important in AWS, which isn't going to allow us to assume roles across different accounts within the same accounts, and also enable us to do identity federati...
- Maybe you want to also help your AWS services do what they need, so using service roles, and then, maybe we also want to perform identity federation, and we'll have a deep dive onto identity federation in this course...
- Now, for STS, there's this feature which allows you to revoke active sessions and credentials for a role, and so this is very simple.
- You just need to change the policy and add a time statement or use the AWSRevokeOlderSessions manage policy, and that's perfect, and so using this time condition, you're able to say, "Okay, this role cannot be used an...
- We can also add multifactor authentication protection to the role so that only users are assigned using MFA can assume the role, and so what this gives us, as well, is least privilege and auditing using CloudTrail, so...
- You can also use session tags in STS.
- The idea is that when you assume an IAM role, or, for example, you have user federation that leverages STS, it is possible for you to pass a session tag, so how does that work?
- Well, your user is going to, for example, do the STS AssumeRole API call and pass a session tag as part of the API call, for example, for Department=HR, and STS will then return temporary security credentials for that...
- As you can see in the condition, there is a StringEquals PrincipalTag/Department equals HR, and therefore, only a user that has done an AssumeRole with that specific session tag will be able to make an API call into t...
- AssumeRoleWithWebIdentity, which we are using a IdP, and so that includes Amazon Cognito, Login with Amazon, Facebook, Google, or any OpenID Connect-compatible IdP, and so we'll be seeing this in detail in the federat...
- Then we have a GetSessionToken, which is used for MFA, so when we log using MFA to get credentials back, or GetFederationToken, which is usually to get a credentials, temporary credentials, when we have federation usi...
- I will see you in the next lecture for some identity federation.
- Okay, so now let's discuss Identity Federation in AWS.
- So this is why we need Identity Federation.
- And so this is where we need Identity Federation.
- So Identity Federation can have multiple flavors.
- It could be SAML 2.0, a custom identity broker, Web Identity Federation with or without Amazon Cognito, and then IAM Identity Center.
- So I'm going to discuss the first three, single sign-on will have its own lecture, and this is the more recent generation of Identity Federation, but still from an example perspective, you need to know about all of them.

##### Polished Architect Notes
- Transcript signals that now let's talk about STS, which is a service that is so important in AWS, which isn't going to allow us to assume roles across different accounts within the same accounts, and also enable us to do identity federat...
- Transcript signals that maybe you want to also help your AWS services do what they need, so using service roles, and then, maybe we also want to perform identity federation, and we'll have a deep dive onto identity federation in this cou...
- Transcript signals that for STS, there's this feature which allows you to revoke active sessions and credentials for a role, and so this is very simple.
- Transcript signals that you just need to change the policy and add a time statement or use the AWSRevokeOlderSessions manage policy, and that's perfect, and so using this time condition, you're able to say, "Okay, this role cannot be use...
- Transcript signals that we can also add multifactor authentication protection to the role so that only users are assigned using MFA can assume the role, and so what this gives us, as well, is least privilege and auditing using CloudTrail...
- Transcript signals that you can also use session tags in STS.
- Transcript signals that the idea is that when you assume an IAM role, or, for example, you have user federation that leverages STS, it is possible for you to pass a session tag, so how does that work?
- Transcript signals that your user is going to, for example, do the STS AssumeRole API call and pass a session tag as part of the API call, for example, for Department=HR, and STS will then return temporary security credentials for that...
- Transcript signals that as you can see in the condition, there is a StringEquals PrincipalTag/Department equals HR, and therefore, only a user that has done an AssumeRole with that specific session tag will be able to make an API call in...
- Transcript signals that assumeRoleWithWebIdentity, which we are using a IdP, and so that includes Amazon Cognito, Login with Amazon, Facebook, Google, or any OpenID Connect-compatible IdP, and so we'll be seeing this in detail in the fed...
- Transcript signals that we have a GetSessionToken, which is used for MFA, so when we log using MFA to get credentials back, or GetFederationToken, which is usually to get a credentials, temporary credentials, when we have federation usi...
- Transcript signals that i will see you in the next lecture for some identity federation.

##### Architect Synthesis (Transcript-Derived)
- Treat IAM Domain Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Federated Authentication as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Identity Lifecycle as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Temporary Credential Strategy as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Authorization Model as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: now let's talk about STS, which is a service that is so important in AWS, which isn't going to allow us to assume roles across different accounts within the same accounts, and also enable us to do identity federat...
- Design implication: maybe you want to also help your AWS services do what they need, so using service roles, and then, maybe we also want to perform identity federation, and we'll have a deep dive onto identity federation in this cou...
- Design implication: for STS, there's this feature which allows you to revoke active sessions and credentials for a role, and so this is very simple.
### Phase 2 - Core Services

#### IAM Identity Center
- Central workforce SSO and account/application assignment control.
- Design objective: reduce credential sprawl and standardize enterprise access lifecycle.

#### STS Federation Flows
- Role assumption based on trusted identity assertions.
- Short-lived token issuance for cloud access aligned with least-privilege principles.

#### Cognito Patterns
- User Pools for authentication and identity lifecycle.
- Identity Pools for credential brokering into AWS resource access paths.
- Group and claims patterns for app-side authorization context.

### Phase 3 - Advanced Patterns

#### Pattern 1: Workforce SSO with Delegated Permission Sets
- Central assign-once governance model with account-level permission projection.
- Supports cleaner offboarding and reduced orphaned privilege footprint.

#### Pattern 2: App Federation with Token-to-Role Mapping
- External identity provider token claims map to scoped cloud roles.
- Enables dynamic, least-privilege access per user cohort or tenant context.

#### Pattern 3: High-Assurance Admin Access
- Require MFA and strict session duration for privileged operations.
- Pair federated auth with auditable role assumption and alerting.

### Phase 4 - System Design (Production)

#### Reference Identity Federation Architecture
- Enterprise identity provider authenticates users.
- Federation layer issues trust assertions.
- Cloud role assumption provides temporary scoped access.
- Application and workforce tracks stay separated but governed under unified policy.

#### Scaling Considerations
- Mapping complexity between identity groups, claims, and role sets.
- Session and token lifecycle coordination across systems.
- Cross-account assignment governance in expanding organizations.

#### Cost Considerations
- Identity platform licensing and integration operations dominate cost profile.
- Strong federation design lowers downstream incident and audit overhead.

### Cross-Cloud Concept Mapping (Authentication and Federation)

#### Underlying Concept: Workforce SSO
- AWS: IAM Identity Center
- Azure: Entra ID SSO
- GCP: Cloud Identity-based SSO models
- Trade-off: integration depth with enterprise directories varies; governance model should be centralized.

#### Underlying Concept: Federated Temporary Cloud Access
- AWS: STS role assumption from SAML/OIDC
- Azure: token-based role assignment flows
- GCP: workforce/workload federation and impersonation patterns
- Trade-off: all models depend on secure token handling and short session design.

#### Underlying Concept: Application User Identity Platform
- AWS: Cognito
- Azure: External identity/B2C-style services
- GCP: Identity Platform
- Trade-off: feature parity differs by user lifecycle and federation requirements.

### Real-World Use Cases from Transcript Signals
- Centralize enterprise workforce access into a single federated control model.
- Provide temporary scoped cloud access from external identity assertions.
- Secure application user identity flows with managed auth platforms.

### Constraints and Exam-Relevant Traps Captured
- Federation misconfiguration can grant broad unintended account access.
- Long-lived sessions weaken benefits of temporary credential models.
- Mixing workforce and application identity models without boundaries creates governance confusion.
## Step 1 â€” Line-by-Line Extraction

Every non-empty line from every source transcript is preserved below with extraction fields.

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

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/007_Identity Federation & Cognito.txt

Line 1:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: Okay, so now let's discuss Identity Federation in AWS.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 2:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So the idea is that you want to give users that sit outside of AWS permissions to access your AWS resources in your accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: Directory Integration, Identity Lifecycle
- Services: AWS IAM
- Key Insights: And the idea is that because the users already exist within your corporate directory, then you don't want to create specific IAM users for them because you'd like to do user management outside of AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: So this is why we need Identity Federation.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 5:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So the use cases is, for example, your corporation has its own identity system, for example, Active Directory, or you have a web and mobile application that needs to access AWS resources.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: And so this is where we need Identity Federation.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So at its core, here's what it looks like.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 8:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So the user wants to access AWS, and we have an identity provider.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: First, and this will not be represented on any following graphs, but just on this one, obviously you need to set up a trust relationship between AWS and the identity provider to tell AWS that it's fine to get an identity from this one provider.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS
- Key Insights: Then the user will perform a login onto this identity provider, will receive back credentials for AWS, and will access AWS using these temporary credentials.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 11:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: So Identity Federation can have multiple flavors.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 12:
- Concepts: Federated Authentication
- Services: AWS IAM, Amazon Cognito, IAM Identity Center, SAML/OIDC Federation
- Key Insights: It could be SAML 2.0, a custom identity broker, Web Identity Federation with or without Amazon Cognito, and then IAM Identity Center.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 13:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: So I'm going to discuss the first three, single sign-on will have its own lecture, and this is the more recent generation of Identity Federation, but still from an example perspective, you need to know about all of them.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 14:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: So let's go ahead with SAML 2.0 Federation.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 15:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: So SAML 2.0 stands for Security Assertion Markup Language, and it's an open standard used by many identity providers such as ADFS.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 16:
- Concepts: Directory Integration, Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: It supports integration with Microsoft Active Directory, which is nice, or any SAML 2.0-compatible IDP, which is identity provider with AWS.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 17:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS
- Key Insights: Using this, we can access the console, the CLI, or any API using temporary credentials.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 18:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So we don't need to create IAM users for each of the employees in your ADFS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: Federated Authentication
- Services: AWS IAM, SAML/OIDC Federation
- Key Insights: And you need, for example, of course to set up a trust between IAM and your SAML 2.0 identity providers both ways.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 20:
- Concepts: Federated Authentication, Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS, SAML/OIDC Federation
- Key Insights: So under the hood we'll use an API called AssumeRoleWithSAML, comes from the STS service, and that will give us temporary credentials using SAML assertion.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 21:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: So as I said, SAML 2.0 Federation is the old way of doing things.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 22:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center, SAML/OIDC Federation
- Key Insights: And now IAM Identity Center is the new managed way and simpler way of doing things, yet we still have to learn about SAML 2.0 Federation.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So the best way to understand this is to go through a diagram.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 24:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So we have our corporation where our identity provider sits, and AWS, and our user wants to access an S3 bucket.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Now inside of our corporation, we'll have a portal or identity provider, and the user will make an authentication request to the IDP.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: The IDP will verify the request through an identity store, for example, LDAP-based, and then it will return a SAML assertion if the login is successful.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 27:
- Concepts: Federated Authentication, Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS, SAML/OIDC Federation
- Key Insights: So this SAML assertion is the proof that the user is who they claim to be, and therefore with this SAML assertion, the user can call the STS service with AssumeRoleWithSAML API, and STS will verify the assertion, make sure that yes, it is the one that is trusted, and then say, "Okay, here are some temporary security credentials for you." And the user will be able to access the AWS APIs using that mechanism.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 28:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: It is very similar if the user wants to access the console of AWS.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So very similar setup.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 30:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we still have the IDP and the LDAP identity-based store.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 31:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: We have the authentication loop, as I said from before, but this time we post to AWS sign-in in this endpoint with slash SAML.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 32:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS
- Key Insights: And what this will return is that it will return security credentials through the STS service, and this will return a special URL, the sign-in URL for the AWS console.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 33:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And this URL will be used by the user to be redirected into the AWS management console.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 34:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And from there on, everything is good.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 35:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: So these two flows are very similar because they use the same SAML 2.0 Federation.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 36:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now if we have ADFS, it's something you may have.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 37:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Well, this is the exact same mechanism as before.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 38:
- Concepts: Directory Integration, Federated Authentication, Identity Lifecycle
- Services: SAML/OIDC Federation
- Key Insights: The only difference is that on the left hand side, we have the Microsoft Active Directory Federation Services on the top left, and then on the bottom right, where the user sits, is Active directory itself, okay?
- Hidden/Implicit Meaning: Constraint or limitation signal; Authentication and trust-chain signal.

Line 39:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So this is for you to understand what is the difference between the IDP, so ADFS, and the directory itself, which is Active Directory.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 40:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: Okay, more complicated and definitely older is that if your identity provider is not compatible with SAML 2.0, then you need to use a custom identity broker.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 41:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's say we want to access AWS services and the management console, and we have our corporation identity provider, we'll have a custom identity broker.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 42:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS
- Key Insights: Now the user will login to the identity broker, which will verify the login itself, but then the identity broker will be the one to authenticate and request temporary credentials from AWS.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 43:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this time, there is no AWS API that can be used.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 44:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS
- Key Insights: So therefore the custom identity broker has admin power and can request temporary credentials directly from the STS service, which will be returning these credentials themselves.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 45:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Roles
- Key Insights: Now that means that the identity broker is responsible and must determine the appropriate IAM role for that user.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 46:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So it pushes the management of the users into the identity broker itself.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 47:
- Concepts: Temporary Credential Strategy
- Services: AWS STS
- Key Insights: Then the only way for it to work is to use the AssumeRole or GetFederationToken API from STS directly from the custom identity broker.
- Hidden/Implicit Meaning: Constraint or limitation signal; Authentication and trust-chain signal.

Line 48:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So once the security credentials are retrieved, then they're passed on to the user, and the user can access the APIs of AWS or be redirected to the management console.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 49:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So again, these are the old ways of doing things.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 50:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: SSO will come up later in this course.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 51:
- Concepts: Federated Authentication
- Services: Amazon Cognito, SAML/OIDC Federation
- Key Insights: Now with web identity federation, we have two flavors, we have without Cognito and with Cognito.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 52:
- Concepts: IAM Domain Operational Context
- Services: Amazon Cognito
- Key Insights: So without Cognito is not recommended by AWS anymore.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 53:
- Concepts: IAM Domain Operational Context
- Services: Amazon Cognito
- Key Insights: You're recommended to use Cognito instead, but still you need to know about it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 54:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: So what is Web Identity Federation?
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 55:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this time we have an untrusted environment.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 56:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So before, it was our corporation, so we knew the clients, but in this case, we have AWS Cloud, and we want to access services from our client directly, but we are going to authenticate with a third party identity provider.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 57:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It could be Amazon, Google, Facebook, or any OpenID Connect-compatible IDP.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 58:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this obviously will be set up with AWS as a trust mechanism.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 59:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so the flow is that the client will log in into the IDP, the third party IDP, and then the web identity token is going to be shared back with the clients.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 60:
- Concepts: Temporary Credential Strategy
- Services: AWS STS
- Key Insights: The client will use a special STS API called the AssumeRoleWithWebIdentity API.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 61:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: (none explicit)
- Key Insights: And then by trading that token, it will receive temporary security security credentials for AWS.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 62:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: These credentials will be used to access AWS resources directly.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 63:
- Concepts: IAM Domain Operational Context
- Services: Amazon Cognito
- Key Insights: So this is the old way without Cognito.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 64:
- Concepts: IAM Domain Operational Context
- Services: Amazon Cognito
- Key Insights: With Cognito, it's a little bit more secure and more simple.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 65:
- Concepts: Federated Authentication, Least Privilege
- Services: AWS IAM, Amazon Cognito, IAM Roles, SAML/OIDC Federation
- Key Insights: So it's preferred over Web Identity Federation because here in Cognito, we can create IAM roles with the least privilege needed, and then we just need to build the trust between the OIDC IdP and AWS.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 66:
- Concepts: IAM Domain Operational Context
- Services: Amazon Cognito
- Key Insights: So now we have the Cognito service, the client still authenticates to a third party identity provider, gets a token back, but then the token is exchanged with Amazon Cognito, which will return a Cognito token.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 67:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS, Amazon Cognito
- Key Insights: That Cognito token can be exchanged with STS to receive temporary security credentials for AWS.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 68:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then the client will be able to access the AWS resources directly.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 69:
- Concepts: IAM Domain Operational Context
- Services: Amazon Cognito
- Key Insights: So why should we use this mechanism with Cognito?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 70:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito
- Key Insights: Well, Cognito will support anonymous users, which is a plus.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 71:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: It will support MFA, and it will have data synchronization.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 72:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito
- Key Insights: So in that instance, Amazon Cognito operates at what's called a token vending machine because it exchanges token for credentials.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 73:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Policies, SAML/OIDC Federation
- Key Insights: Okay, so when we have Web Identity Federation, can we restrict IAM policies?
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 74:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: The answer is yes, you can use an IAM policy variable.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 75:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies
- Key Insights: And so here is an example of a policy that allows the user to only list a bucket with a prefix as the user ID, and also to get, update, and put objects in with that specific prefix.
- Hidden/Implicit Meaning: Constraint or limitation signal; Authorization decision-path signal.

Line 76:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: So the idea is that when you have a Web Identity Federation, you can use some special variables.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 77:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Policies
- Key Insights: For example, going to identity.amazon.com:sub or amazon.com:user_id and so on to restrict your IAM policies with conditions and make sure that the users really have the restrictions they need, okay?
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 78:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: So that's it for Identity Federation.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 79:
- Concepts: IAM Domain Operational Context
- Services: Amazon Cognito
- Key Insights: These are the old ways, obviously, except when we're using Cognito.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 80:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And we'll see SSO in the future lecture.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 81:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked this, and I will strongly suggest you revisit this lecture one more time before the exam and it should all make sense, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/011_AWS IAM Identity Center.txt

Line 1:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: So now let's talk about the AWS IAM Identity Center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And this service is the successor to something that you used to know probably, which is called the AWS Single Sign-On Service.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: So the idea is that it's the same service, just been renamed and it gives you one login, therefore it's called single sign-on, for all your AWS accounts in the AWS Organizations, but also your business cloud applications.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you can connect to Salesforce to Box to Microsoft 365 and so on, or any application you want, as long as you have a SAML2.0 integration.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And finally, it gives you also a single login into your EC2 Windows Instances.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So one login, access to everything, which is really, really good.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And the exam most likely will ask you about one login into multiple AWS accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Now, the identity provider, so where your users are stored for this login, can be twofold.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: It could be a built-in identity store in the IAM Identity Center, or you can connect to a third-party identity provider.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: It could be Active Directory, AD, or OneLogin or Okta and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So just to make it very visible and visual for you, we have the login flow, such as this.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: You go onto the login page, you enter your username and your password, and then you go directly into the AWS IAM Identity Center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: Federated Authentication
- Services: IAM Identity Center
- Key Insights: And this is actually a screenshot from my own Identity Center page.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And as you can see from there, I have enabled it for my AWS accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so I can click on the account I want and connect directly, for example, in the management console.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then if I do this, then I'm taken directly from this into the home page of your console.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But I'm logged in in that specific console.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that I don't need to know how to log in into that specific console.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 19:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: I can just log in into my IAM Identity Center portal.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And from there I have SSO.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So no need to enter your password once, it's single sign on, have SSO access to accounts, business applications, and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So if in the real world you have multiple AWS accounts, I would recommend 100% to use this service.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now let's talk about how this works.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 24:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: So the browser interface is going to connect to the login page of your AWS IAM Identity Center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And then you have to integrate it, as I said, with different user stores.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So it could be an Active Directory, it could be on the cloud or on premises.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 27:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: And this is where you would use Active Directory to manage your users and your groups.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 28:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: Or you can use the IAM Identity Center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This is the built-in identity store.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 30:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: And this is where, for example, you would define your users and your groups as you're used to in IAM.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 31:
- Concepts: Federated Authentication, Organization Governance
- Services: AWS Organizations, IAM Identity Center
- Key Insights: Then you integrate Identity Center with SSO for your organization or your Windows EC2 instances, your business cloud applications or your custom SAML2.0-enabled applications.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 32:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Again, the cool thing is that you have one login for all of this, and that simplifies a lot your flow.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 33:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now, of course, when you log in, you don't have access to everything.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 34:
- Concepts: Federated Authentication, Identity Lifecycle
- Services: IAM Identity Center
- Key Insights: You define something called permission sets in the Identity Center to define which users have access to what.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 35:
- Concepts: Federated Authentication, Identity Lifecycle
- Services: AWS IAM, IAM Identity Center
- Key Insights: So how does everything relate in IAM Identity Center for permissions and users and groups?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 36:
- Concepts: Federated Authentication, Organization Governance
- Services: AWS IAM, AWS Organizations, IAM Identity Center
- Key Insights: So we have an organization and we set up IAM Identity Center in the management account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 37:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: We have two OUs, a development and a production OU, each with their own accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 38:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now we have two developers in our company.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 39:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We have Bob and Alice.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 40:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So first of all, we're going to do, just like we do in IAM, we're going to create a group of developers for Bob and Alice.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 41:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: Now we want to make sure that Bob and Alice both have access to full access of the OU for development.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 42:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So we're going to create what's called the permission sets, and we're going to allow admin access on it.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 43:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And then you have to assign this permission set directly into specific accounts, for example, your development accounts, and then you assign this permission set either to your users or to a group of users, for example, your developers.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 44:
- Concepts: Authorization Model
- Services: IAM Roles
- Key Insights: So this would allow Bob and Alice to assume a role with full access on the development account B right now.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 45:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You can also have a permission set, for example, for read-only access and assign this permission set directly into your production account, so account A and account B.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 46:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: And then you assign this permission set again to Bob and Alice, which would allow them to have a read-only access to these accounts.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 47:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about the fine-grained permissions and assignments.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 48:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And the first one is multi-account permissions.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 49:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So, of course, using the service, you can manage access across multiple accounts in your organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 50:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Policies
- Key Insights: And using permission sets, you define one or more IAM policies that you assign to users and to groups to define what they can access in AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 51:
- Concepts: Federated Authentication, Organization Governance
- Services: AWS IAM, AWS Organizations, IAM Identity Center
- Key Insights: So here is the IAM Identity Center, and it's integrated with your organization and you define a permission set for database admins.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 52:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies
- Key Insights: So it's a collection of IAM policies.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 53:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And you say, for example, that you have access to RDS and Aurora in your dev account, as well as RDS and Aurora in the prod account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 54:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Roles
- Key Insights: And this will automatically create a corresponding IAM role for your users.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 55:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And therefore, when you have your database admins, it can be a group, for example, and your users are in this group, you will assign it the permission sets of database admins.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 56:
- Concepts: Federated Authentication, Identity Lifecycle
- Services: AWS IAM, IAM Identity Center, IAM Roles
- Key Insights: And whenever users log in through the IAM Identity Center and access the console of your dev accounts or your prod accounts, they will be automatically assuming an IAM role in that specific account that will give them the permissions they're supposed to get, which is pretty good.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 57:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it works the same way.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 58:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So you have application assignments and you can define which users or groups can access which applications.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 59:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And it gives them the required URLs, the certificates and metadata.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 60:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So all of this is supported out of the box.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 61:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And something that enables is called attribute-based access control.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 62:
- Concepts: Federated Authentication, Identity Lifecycle
- Services: AWS IAM, IAM Identity Center
- Key Insights: So the idea is that you're going to have fine-grained permissions based on the users' attributes stored in the IAM Identity Center store.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 63:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that means that you can have tags and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 64:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And using this, you can, for example, assign a user to a cost center or give them a title, so like junior, senior or a locale, whatever, so they only have access to a specific region.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 65:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: And the use case of this is that you actually define the IAM permission sets once and they leverage these attributes, and you only modify the access to AWS of your users or your groups by just changing these underlying attributes.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 66:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: So this is a use case that is advanced, but that is enabled by using the AWS IAM Identity Center.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 67:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 68:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/04_IAM & AWS CLI/016_IAM MFA Overview.txt

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

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/04_IAM & AWS CLI/017_IAM MFA Hands On.txt

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

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/161_[DVA_SOA] Cognito User Pools.txt

Line 1:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito
- Key Insights: So the first surveys we will see into Cognito is called Cognito User Pools, or CUP.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 2:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And, this is a way to create a serverless database for your web and mobile application users.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, what is a serverless database?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 4:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: That means that your users can use, for example, a simple login, their username or their email, and a password combination, to connect into your applications.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: Federated Authentication, Identity Lifecycle
- Services: Amazon Cognito, MFA, SAML/OIDC Federation
- Key Insights: They can also obviously reset their passwords, we can, thanks to Cognito User Pools, do an email and phone number verification, we can enable multi-factor authentication for our users, and we are able to tell our users they can login with Google, Facebook, or even SAML, so this is called Federated Identities.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 6:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So this is pretty much the thing you see when you go onto any other website, they ask you to register users, either create a username/password, or login Google, Facebook, or some other way.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito
- Key Insights: There is a feature that you can block users if their credentials are compromised elsewhere, so AWS scans the web for compromised credentials, and will let your user knows into Cognito User Pools, and then finally, and then finally, when your users log in with the Cognito User Pool, what they get back from the API is a JWT, so a JSON Web Token.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito
- Key Insights: So, in a diagram, what does our Cognito User Pool look like?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito
- Key Insights: Well, they're a database of users, so CUP will have its own internal database of users that we can see, and then our mobile applications and our web application can login against our Cognito User Pool, and when they are logged in, the CUP will return to our user, our mobile applications and our web applications, a JSON Web Token, JWT.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: Federated Authentication, Identity Lifecycle
- Services: Amazon Cognito, SAML/OIDC Federation
- Key Insights: As I said, we can also provide login with Amazon, or Google, or Facebook, facility into our Cognito User Pools, so we can do Federation through Third Party Identity Providers, and offer a social login through a social identity provider, so login with Google, login with Facebook.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 11:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: We can also integrate more specific identity providers with SAML, or even OpenID Connect, if you're identity provider supports OpenID Connect.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, that's for how CUP works at a high level, then let's talk about the integrations within AWS for CUP.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito
- Key Insights: So CUP integrates with the API Gateway and the Application Load Balancer natively, so for the API Gateway, we've seen how that works already, our users will authenticate with our Cognito User Pool, and retrieve the JSON Web Token from it, then they will pass the web token, the JSON Web Token, to the API Gateway, which will evaluate the Cognito Token and make sure that it is valid, and then, allowing us to access our backend, and this is how we provide authentication onto our API Gateway.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 14:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito
- Key Insights: But, very simply, we can also use an Application Load Balancer, so using Application Load Balancer Listeners and Rules, we are able to authenticate our users against Cognito User Pools, and then once done, we can forward our users to the backend in our Target Group, which could be EC2 instances, Lambda functions, or ECS containers.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito
- Key Insights: So that's it for high level of Cognito User Pools, now let's do a hands on in the next lecture, to practice and see how they work in details.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/162_[DVA] Cognito Identity Pools.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about a service that I wish wasn't named like this, but is named like this.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: Amazon Cognito
- Key Insights: It's the Cognito identity pools, also called Federated Identities.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 3:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito
- Key Insights: And I wish it wasn't named like this because it's so not the same as the Cognito user pool, but it's under the same umbrella of Cognito, which I don't like, but it's just my personal opinion.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: Amazon Cognito
- Key Insights: Let's try to understand what Cognito identity pools are.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 5:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So our users are outside of our AWS environments, and they can be a web application users or mobile users, and they want access to stuff within our AWS environments.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So for example, they want to have access to DynamoDB table or an S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 7:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: (none explicit)
- Key Insights: And so to access these things, they need temporary AWS credentials.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 8:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So we cannot create normal IAM users for these users because there are too many of them, it doesn't scale and we don't trust them.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 9:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito
- Key Insights: So instead, we are going to give these users access to AWS through a Cognito identity pool.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: Authorization Model, Identity Lifecycle
- Services: (none explicit)
- Key Insights: So this identity pool can allow your users to log in through a trusted third-party.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And that could be a public provider, for example, log in with Amazon, Facebook, Google and Apple.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: Authorization Model, Federated Authentication, Identity Lifecycle
- Services: Amazon Cognito, SAML/OIDC Federation
- Key Insights: Or even allow the users that are already logged in with the Amazon Cognito user pool or even allow OpenID Connect providers and SAML providers.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Authorization decision-path signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Or, finally, the developer authenticated identities, which is a custom login server.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: Authorization Model, Identity Lifecycle
- Services: (none explicit)
- Key Insights: So on top of all these login providers to allow to give our users their identity before they trade it for AWS credentials, we can allow unauthenticated guest users access into AWS.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 15:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies
- Key Insights: So it is possible for us to define a guest policy and give our guest users AWS credentials.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 16:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So once the users have obtained these AWS credentials, then they can access the AWS services directly with the API call using an SDK or through the API gateway.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: Authorization Model, Identity Lifecycle
- Services: AWS IAM, Amazon Cognito, IAM Policies
- Key Insights: So these these credentials that the users get, they have an IAM policy that is defined by what we do in Cognito identity pools, and they can be customized based on the value of the user ID for fine grained control and we'll see this in this theory lecture.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, I'll try to make it as simple as possible.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 19:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So we have a web and mobile applications and they want to access our private S3 bucket and a DynamoDB table, but we want to make sure the users first get credentials of AWS, but we don't want to create an IAM user for these applications.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So what do we do?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 21:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito
- Key Insights: We're going to leverage Cognito identity pools, but first we want the users to get a login and obtain a token out of this login.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 22:
- Concepts: Authorization Model, Federated Authentication, Identity Lifecycle
- Services: Amazon Cognito, SAML/OIDC Federation
- Key Insights: So we will allow our users to connect, for example, to a Cognito user pool, or to connect to Google login, Facebook login, so for social identity providers or SAML or Open ID Connect.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal; Authorization decision-path signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So they will log in with any of those.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 24:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: Amazon Cognito
- Key Insights: They will get a token and they will go and talk to the Cognito identity pool service to exchange the token for temporary AWS credentials.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So first, the identity pool will verify the login with whatever provider we have defined.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 26:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS, Amazon Cognito
- Key Insights: And then once it's validated, Cognito identity pool will talk to the STS service to get temporary credentials for our web and mobile application users.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 27:
- Concepts: Authorization Model, Identity Lifecycle
- Services: AWS IAM, IAM Policies
- Key Insights: Once this is done, the credentials are returned to our applications and they can use and directly access AWS thanks to these credentials and the associated IAM policy.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 28:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito
- Key Insights: So this is very simple and a big difference from what Cognito user pools are, but you see there's a lot of common, especially around the identity provider.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 29:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito
- Key Insights: So the question is how does it work if I use Cognito identity pools with Cognito user pools?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 30:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So here's the answer.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 31:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We have the same diagram.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 32:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito
- Key Insights: We want our users to connect to a private S3 bucket or DynamoDB table, but we want their identity to be stored in Cognito user pools.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 33:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito
- Key Insights: Okay, so this is the same diagram as before, but I'm just expanding into Cognito user pools.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 34:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So they're going to log in and get a token.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 35:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And why would you do this?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 36:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito
- Key Insights: Well, maybe because we want all our users to be centralized in the Cognito user pools database.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 37:
- Concepts: Federated Authentication, Identity Lifecycle
- Services: Amazon Cognito, SAML/OIDC Federation
- Key Insights: So it could be an internal database of users, or we can also enable social identity providers SAML and OpenID Connect as federated identity providers for our Cognito user pools.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 38:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito
- Key Insights: But nonetheless, all users are going to show up in my Cognito user pool.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 39:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS, Amazon Cognito
- Key Insights: Then our web and mobile application users can exchange those JSON web tokens obtained from Cognito user pools into the Cognito identity pool for credentials so there will be verification of these tokens and then talking to the STS service to get these credentials that will be returned to our web and mobile applications.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 40:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And then thanks to these credentials, we will have direct access into AWS.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 41:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: If you understood this, I'm so happy and you're good to go for the exam.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 42:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito, IAM Roles
- Key Insights: So how does Cognito identity pools decide which role to apply to which user?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 43:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Roles
- Key Insights: Well, we can define a default IAM role for both authenticated users and guest users.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 44:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Roles
- Key Insights: So that means the guest users will have one IAM role and the other will have another one's IAM role.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 45:
- Concepts: Identity Lifecycle
- Services: IAM Roles
- Key Insights: And we can define rules to choose which role goes to which user based on the user ID.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 46:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: And then we can customize the IAM policy thanks to using policy variables.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 47:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And this will be allowing us to make sure that the users will only get access to what they need in DynamoDB or Amazon S3, for example.
- Hidden/Implicit Meaning: Constraint or limitation signal; Authorization decision-path signal.

Line 48:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS IAM, AWS STS, Amazon Cognito
- Key Insights: These IAM credentials are obtained by Cognito identity pools through the STS service with the API call named AssumeRoleForWebIdentity.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 49:
- Concepts: Authorization Model
- Services: Amazon Cognito, IAM Policies
- Key Insights: And for it to work, the roles must have a trust policy of Cognito identity pools.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Authorization decision-path signal.

Line 50:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I'll make it a bit more concrete.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 51:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Here is an example.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 52:
- Concepts: Authorization Model, Identity Lifecycle
- Services: AWS IAM, IAM Policies
- Key Insights: So we want to give our guest users access to AWS, and so we want to create an IAM policy, for example, that would allow any guest user to do a GetObject on a bucket for my_picture.jpg.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 53:
- Concepts: Authorization Model, Identity Lifecycle
- Services: AWS IAM, IAM Policies
- Key Insights: So this would give us for the guest users access to AWS with a very simple, and obviously restricted, IAM policy.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 54:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies
- Key Insights: Then for the authenticated users, we can define a policy variable on Amazon S3.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 55:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So our users are connected, but we want to make sure that they only have access to a prefix in your S3 bucket that represents what the user identity is.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 56:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies
- Key Insights: And so as such, you can use a policy variable like here in green, and this is allowing a user to only access within the bucket we've defined, anything that starts with the prefix of its user ID.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 57:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So effectively we gave the user access only to what it can access thanks to its user ID.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 58:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And we can define the same on DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 59:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies
- Key Insights: So here is a sample policy in which we allow the user to do anything it wants on DynamoDB for my table, as long as the leading key for DynamoDB is corresponding to the user ID of the user.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 60:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: So effectively we've done row-based security thanks to this IAM policy.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 61:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now these are advanced, but I just wanted to give you a sneak peek into how they worked.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 62:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this theory lecture.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 63:
- Concepts: IAM Domain Operational Context
- Services: Amazon Cognito
- Key Insights: In the next lecture, we're going to practice Cognito identity pools.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/163_Cognito User Pool User Groups.txt

Line 1:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito
- Key Insights: So now let's talk about Cognito User Pool Groups.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito
- Key Insights: So it's a logical collection of users in a Cognito User Pool.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, Amazon Cognito
- Key Insights: So it's similar to what we see in IAM, and the concepts are similar, we just need to know that it exists in Cognito as well.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 4:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Roles
- Key Insights: So we have a group, for example, made of Alice and Bob, and we attach an IAM role to this group.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So the ReadersIAMRole, for example, and then they can read DynamoDB with the correct policy.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 6:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Roles
- Key Insights: And we create another group, the editors, and we attach an IAM role to be able to edit and they can write to DynamoDB.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: Authorization Model, Identity Lifecycle
- Services: AWS IAM, IAM Roles
- Key Insights: So these groups allow us to define permissions for the users in the groups by assigning an IAM role to the group, and the users can be in multiple groups at a time.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 8:
- Concepts: Identity Lifecycle
- Services: AWS IAM, Amazon Cognito
- Key Insights: Now, there is a different concept than IAM with Cognito is that we have a precedent's value for each group.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: So you assign a number, and then the lowest number will be chosen, and then the IAM role will be applied.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So, if Bob is in the readers group and the editors group, then you will have by default the one with the lowest precedence.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Roles
- Key Insights: But you can still choose amongst different IAM roles by specifying the IAM role ARN that you want to assume.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So here we have two groups, one is precedence zero, one is precedence one, but Bob can assume both.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But just by default, it will assume the one of the lowest precedence.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito
- Key Insights: You cannot create nested groups, you cannot have groups of groups, and concept of groups just serve the concept of simplifying security in Cognito.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/164_Identity Federation & Cognito.txt

Line 1:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: Okay, so now let's discuss Identity Federation in AWS.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 2:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So the idea is that you want to give users that sit outside of AWS permissions to access your AWS resources in your accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: Directory Integration, Identity Lifecycle
- Services: AWS IAM
- Key Insights: And the idea is that because the users already exist within your corporate directory, then you don't want to create specific IAM users for them because you'd like to do user management outside of AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: So this is why we need Identity Federation.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 5:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So the use cases is, for example, your corporation has its own identity system, for example, Active Directory, or you have a web and mobile application that needs to access AWS resources.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: And so this is where we need Identity Federation.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So at its core, here's what it looks like.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 8:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So the user wants to access AWS, and we have an identity provider.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: First, and this will not be represented on any following graphs, but just on this one, obviously you need to set up a trust relationship between AWS and the identity provider to tell AWS that it's fine to get an identity from this one provider.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS
- Key Insights: Then the user will perform a login onto this identity provider, will receive back credentials for AWS, and will access AWS using these temporary credentials.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 11:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: So Identity Federation can have multiple flavors.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 12:
- Concepts: Federated Authentication
- Services: AWS IAM, Amazon Cognito, IAM Identity Center, SAML/OIDC Federation
- Key Insights: It could be SAML 2.0, a custom identity broker, Web Identity Federation with or without Amazon Cognito, and then IAM Identity Center.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 13:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: So I'm going to discuss the first three, single sign-on will have its own lecture, and this is the more recent generation of Identity Federation, but still from an example perspective, you need to know about all of them.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 14:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: So let's go ahead with SAML 2.0 Federation.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 15:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: So SAML 2.0 stands for Security Assertion Markup Language, and it's an open standard used by many identity providers such as ADFS.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 16:
- Concepts: Directory Integration, Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: It supports integration with Microsoft Active Directory, which is nice, or any SAML 2.0-compatible IDP, which is identity provider with AWS.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 17:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS
- Key Insights: Using this, we can access the console, the CLI, or any API using temporary credentials.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 18:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So we don't need to create IAM users for each of the employees in your ADFS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: Federated Authentication
- Services: AWS IAM, SAML/OIDC Federation
- Key Insights: And you need, for example, of course to set up a trust between IAM and your SAML 2.0 identity providers both ways.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 20:
- Concepts: Federated Authentication, Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS, SAML/OIDC Federation
- Key Insights: So under the hood we'll use an API called AssumeRoleWithSAML, comes from the STS service, and that will give us temporary credentials using SAML assertion.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 21:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: So as I said, SAML 2.0 Federation is the old way of doing things.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 22:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center, SAML/OIDC Federation
- Key Insights: And now IAM Identity Center is the new managed way and simpler way of doing things, yet we still have to learn about SAML 2.0 Federation.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So the best way to understand this is to go through a diagram.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 24:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So we have our corporation where our identity provider sits, and AWS, and our user wants to access an S3 bucket.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Now inside of our corporation, we'll have a portal or identity provider, and the user will make an authentication request to the IDP.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: The IDP will verify the request through an identity store, for example, LDAP-based, and then it will return a SAML assertion if the login is successful.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 27:
- Concepts: Federated Authentication, Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS, SAML/OIDC Federation
- Key Insights: So this SAML assertion is the proof that the user is who they claim to be, and therefore with this SAML assertion, the user can call the STS service with AssumeRoleWithSAML API, and STS will verify the assertion, make sure that yes, it is the one that is trusted, and then say, "Okay, here are some temporary security credentials for you." And the user will be able to access the AWS APIs using that mechanism.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 28:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: It is very similar if the user wants to access the console of AWS.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So very similar setup.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 30:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we still have the IDP and the LDAP identity-based store.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 31:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: We have the authentication loop, as I said from before, but this time we post to AWS sign-in in this endpoint with slash SAML.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 32:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS
- Key Insights: And what this will return is that it will return security credentials through the STS service, and this will return a special URL, the sign-in URL for the AWS console.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 33:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And this URL will be used by the user to be redirected into the AWS management console.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 34:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And from there on, everything is good.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 35:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: So these two flows are very similar because they use the same SAML 2.0 Federation.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 36:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now if we have ADFS, it's something you may have.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 37:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Well, this is the exact same mechanism as before.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 38:
- Concepts: Directory Integration, Federated Authentication, Identity Lifecycle
- Services: SAML/OIDC Federation
- Key Insights: The only difference is that on the left hand side, we have the Microsoft Active Directory Federation Services on the top left, and then on the bottom right, where the user sits, is Active directory itself, okay?
- Hidden/Implicit Meaning: Constraint or limitation signal; Authentication and trust-chain signal.

Line 39:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So this is for you to understand what is the difference between the IDP, so ADFS, and the directory itself, which is Active Directory.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 40:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: Okay, more complicated and definitely older is that if your identity provider is not compatible with SAML 2.0, then you need to use a custom identity broker.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 41:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's say we want to access AWS services and the management console, and we have our corporation identity provider, we'll have a custom identity broker.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 42:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS
- Key Insights: Now the user will login to the identity broker, which will verify the login itself, but then the identity broker will be the one to authenticate and request temporary credentials from AWS.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 43:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this time, there is no AWS API that can be used.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 44:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS
- Key Insights: So therefore the custom identity broker has admin power and can request temporary credentials directly from the STS service, which will be returning these credentials themselves.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 45:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Roles
- Key Insights: Now that means that the identity broker is responsible and must determine the appropriate IAM role for that user.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 46:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So it pushes the management of the users into the identity broker itself.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 47:
- Concepts: Temporary Credential Strategy
- Services: AWS STS
- Key Insights: Then the only way for it to work is to use the AssumeRole or GetFederationToken API from STS directly from the custom identity broker.
- Hidden/Implicit Meaning: Constraint or limitation signal; Authentication and trust-chain signal.

Line 48:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So once the security credentials are retrieved, then they're passed on to the user, and the user can access the APIs of AWS or be redirected to the management console.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 49:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So again, these are the old ways of doing things.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 50:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: SSO will come up later in this course.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 51:
- Concepts: Federated Authentication
- Services: Amazon Cognito, SAML/OIDC Federation
- Key Insights: Now with web identity federation, we have two flavors, we have without Cognito and with Cognito.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 52:
- Concepts: IAM Domain Operational Context
- Services: Amazon Cognito
- Key Insights: So without Cognito is not recommended by AWS anymore.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 53:
- Concepts: IAM Domain Operational Context
- Services: Amazon Cognito
- Key Insights: You're recommended to use Cognito instead, but still you need to know about it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 54:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: So what is Web Identity Federation?
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 55:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this time we have an untrusted environment.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 56:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So before, it was our corporation, so we knew the clients, but in this case, we have AWS Cloud, and we want to access services from our client directly, but we are going to authenticate with a third party identity provider.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 57:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It could be Amazon, Google, Facebook, or any OpenID Connect-compatible IDP.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 58:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this obviously will be set up with AWS as a trust mechanism.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 59:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so the flow is that the client will log in into the IDP, the third party IDP, and then the web identity token is going to be shared back with the clients.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 60:
- Concepts: Temporary Credential Strategy
- Services: AWS STS
- Key Insights: The client will use a special STS API called the AssumeRoleWithWebIdentity API.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 61:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: (none explicit)
- Key Insights: And then by trading that token, it will receive temporary security security credentials for AWS.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 62:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: These credentials will be used to access AWS resources directly.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 63:
- Concepts: IAM Domain Operational Context
- Services: Amazon Cognito
- Key Insights: So this is the old way without Cognito.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 64:
- Concepts: IAM Domain Operational Context
- Services: Amazon Cognito
- Key Insights: With Cognito, it's a little bit more secure and more simple.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 65:
- Concepts: Federated Authentication, Least Privilege
- Services: AWS IAM, Amazon Cognito, IAM Roles, SAML/OIDC Federation
- Key Insights: So it's preferred over Web Identity Federation because here in Cognito, we can create IAM roles with the least privilege needed, and then we just need to build the trust between the OIDC IdP and AWS.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 66:
- Concepts: IAM Domain Operational Context
- Services: Amazon Cognito
- Key Insights: So now we have the Cognito service, the client still authenticates to a third party identity provider, gets a token back, but then the token is exchanged with Amazon Cognito, which will return a Cognito token.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 67:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS, Amazon Cognito
- Key Insights: That Cognito token can be exchanged with STS to receive temporary security credentials for AWS.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 68:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then the client will be able to access the AWS resources directly.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 69:
- Concepts: IAM Domain Operational Context
- Services: Amazon Cognito
- Key Insights: So why should we use this mechanism with Cognito?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 70:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito
- Key Insights: Well, Cognito will support anonymous users, which is a plus.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 71:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: It will support MFA, and it will have data synchronization.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 72:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito
- Key Insights: So in that instance, Amazon Cognito operates at what's called a token vending machine because it exchanges token for credentials.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 73:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Policies, SAML/OIDC Federation
- Key Insights: Okay, so when we have Web Identity Federation, can we restrict IAM policies?
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 74:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: The answer is yes, you can use an IAM policy variable.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 75:
- Concepts: Authorization Model, Identity Lifecycle
- Services: IAM Policies
- Key Insights: And so here is an example of a policy that allows the user to only list a bucket with a prefix as the user ID, and also to get, update, and put objects in with that specific prefix.
- Hidden/Implicit Meaning: Constraint or limitation signal; Authorization decision-path signal.

Line 76:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: So the idea is that when you have a Web Identity Federation, you can use some special variables.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 77:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Policies
- Key Insights: For example, going to identity.amazon.com:sub or amazon.com:user_id and so on to restrict your IAM policies with conditions and make sure that the users really have the restrictions they need, okay?
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 78:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: So that's it for Identity Federation.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 79:
- Concepts: IAM Domain Operational Context
- Services: Amazon Cognito
- Key Insights: These are the old ways, obviously, except when we're using Cognito.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 80:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And we'll see SSO in the future lecture.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 81:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked this, and I will strongly suggest you revisit this lecture one more time before the exam and it should all make sense, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/165_SAML 2.0 Metadata File Troubleshooting.txt

Line 1:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: So let's talk about how SAML 2.0 federation is configured in AWS, and an issue that can arise and how to troubleshoot it.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So say you have your corporate data center and your identity provider is in your corporate data center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: So we want to enable SAML 2.0-based identity federation.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So first we download a metadata file from AWS and we register AWS as a service provider with our IdP on our corporate data center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: Federated Authentication
- Services: AWS IAM, SAML/OIDC Federation
- Key Insights: From there, we're going to generate from our IdP a metadata XML file, I will show you what that file looks like in a second, and that file should be created and sent to AWS in the IAM service to create a SAML identity provider.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Authentication and trust-chain signal; Multi-account governance signal.

Line 6:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Roles, SAML/OIDC Federation
- Key Insights: From there, we can create the IAM roles that will be used for authentication for the SAML provider and we have therefore established SAML 2.0-based federation in AWS.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 7:
- Concepts: Federated Authentication
- Services: AWS IAM, SAML/OIDC Federation
- Key Insights: So the important part here is the SAML file that we generate from the IdP and register in IAM.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Authentication and trust-chain signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So here is what the file looks like and let me show you a couple parts of it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The first one is that we have an expiration in it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So each of these XML files does expire and so therefore at some point we will have to renew it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And that's very important because I will show it in the next slide what happens if you don't renew it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So there's an expiration and then there's issuers.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 13:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So which organization actually issued that XML file, that metadata file.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 14:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: And finally there is a key that is used to validate the SAML assertion received from the IdP to make sure they are signed correctly.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you don't need to know the details of that file of course but here is the idea behind it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And as you know, it expires.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: Federated Authentication
- Services: AWS IAM, SAML/OIDC Federation
- Key Insights: So in case you are getting this error on AWS, response signature invalid from the AWS security token service with a status code 400 and the error code is invalid identity token, then the reason is that the federation metadata file of the identity provider does not match the metadata of the IAM identity provider.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it might have changed due to an updated certificate or it might have expired.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 19:
- Concepts: Federated Authentication
- Services: AWS IAM, SAML/OIDC Federation
- Key Insights: And so therefore what we need to do to fix that error is to redownload the updated SAML 2.0 metadata file from the identity provider, and then we send it again to IAM using the CLI.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: Now, because we are sending it to the IAM service, we do AWS IAM in the first part of the CLI command.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 21:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: And then because we are updating the SAML file, we run the update SAML provider command line.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so that's it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It's what you should know and that's an exam question.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 24:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And this is why I spent a little bit of time explaining you the how and the why.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 26:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/166_[SAA_SOA] AWS IAM Identity Center.txt

Line 1:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: So now let's talk about the AWS IAM Identity Center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And this service is the successor to something that you used to know probably, which is called the AWS Single Sign-On Service.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: So the idea is that it's the same service, just been renamed and it gives you one login, therefore it's called single sign-on, for all your AWS accounts in the AWS Organizations, but also your business cloud applications.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you can connect to Salesforce to Box to Microsoft 365 and so on, or any application you want, as long as you have a SAML2.0 integration.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And finally, it gives you also a single login into your EC2 Windows Instances.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So one login, access to everything, which is really, really good.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And the exam most likely will ask you about one login into multiple AWS accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Now, the identity provider, so where your users are stored for this login, can be twofold.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: It could be a built-in identity store in the IAM Identity Center, or you can connect to a third-party identity provider.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: It could be Active Directory, AD, or OneLogin or Okta and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So just to make it very visible and visual for you, we have the login flow, such as this.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: You go onto the login page, you enter your username and your password, and then you go directly into the AWS IAM Identity Center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: Federated Authentication
- Services: IAM Identity Center
- Key Insights: And this is actually a screenshot from my own Identity Center page.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And as you can see from there, I have enabled it for my AWS accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so I can click on the account I want and connect directly, for example, in the management console.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then if I do this, then I'm taken directly from this into the home page of your console.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But I'm logged in in that specific console.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that I don't need to know how to log in into that specific console.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 19:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: I can just log in into my IAM Identity Center portal.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And from there I have SSO.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So no need to enter your password once, it's single sign on, have SSO access to accounts, business applications, and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So if in the real world you have multiple AWS accounts, I would recommend 100% to use this service.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now let's talk about how this works.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 24:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: So the browser interface is going to connect to the login page of your AWS IAM Identity Center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And then you have to integrate it, as I said, with different user stores.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So it could be an Active Directory, it could be on the cloud or on premises.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 27:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: And this is where you would use Active Directory to manage your users and your groups.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 28:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: Or you can use the IAM Identity Center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This is the built-in identity store.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 30:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: And this is where, for example, you would define your users and your groups as you're used to in IAM.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 31:
- Concepts: Federated Authentication, Organization Governance
- Services: AWS Organizations, IAM Identity Center
- Key Insights: Then you integrate Identity Center with SSO for your organization or your Windows EC2 instances, your business cloud applications or your custom SAML2.0-enabled applications.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 32:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Again, the cool thing is that you have one login for all of this, and that simplifies a lot your flow.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 33:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now, of course, when you log in, you don't have access to everything.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 34:
- Concepts: Federated Authentication, Identity Lifecycle
- Services: IAM Identity Center
- Key Insights: You define something called permission sets in the Identity Center to define which users have access to what.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 35:
- Concepts: Federated Authentication, Identity Lifecycle
- Services: AWS IAM, IAM Identity Center
- Key Insights: So how does everything relate in IAM Identity Center for permissions and users and groups?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 36:
- Concepts: Federated Authentication, Organization Governance
- Services: AWS IAM, AWS Organizations, IAM Identity Center
- Key Insights: So we have an organization and we set up IAM Identity Center in the management account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 37:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: We have two OUs, a development and a production OU, each with their own accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 38:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now we have two developers in our company.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 39:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We have Bob and Alice.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 40:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So first of all, we're going to do, just like we do in IAM, we're going to create a group of developers for Bob and Alice.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 41:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: Now we want to make sure that Bob and Alice both have access to full access of the OU for development.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 42:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So we're going to create what's called the permission sets, and we're going to allow admin access on it.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 43:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And then you have to assign this permission set directly into specific accounts, for example, your development accounts, and then you assign this permission set either to your users or to a group of users, for example, your developers.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 44:
- Concepts: Authorization Model
- Services: IAM Roles
- Key Insights: So this would allow Bob and Alice to assume a role with full access on the development account B right now.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 45:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You can also have a permission set, for example, for read-only access and assign this permission set directly into your production account, so account A and account B.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 46:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: And then you assign this permission set again to Bob and Alice, which would allow them to have a read-only access to these accounts.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 47:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about the fine-grained permissions and assignments.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 48:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And the first one is multi-account permissions.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 49:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So, of course, using the service, you can manage access across multiple accounts in your organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 50:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Policies
- Key Insights: And using permission sets, you define one or more IAM policies that you assign to users and to groups to define what they can access in AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 51:
- Concepts: Federated Authentication, Organization Governance
- Services: AWS IAM, AWS Organizations, IAM Identity Center
- Key Insights: So here is the IAM Identity Center, and it's integrated with your organization and you define a permission set for database admins.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 52:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies
- Key Insights: So it's a collection of IAM policies.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 53:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And you say, for example, that you have access to RDS and Aurora in your dev account, as well as RDS and Aurora in the prod account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 54:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Roles
- Key Insights: And this will automatically create a corresponding IAM role for your users.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 55:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And therefore, when you have your database admins, it can be a group, for example, and your users are in this group, you will assign it the permission sets of database admins.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 56:
- Concepts: Federated Authentication, Identity Lifecycle
- Services: AWS IAM, IAM Identity Center, IAM Roles
- Key Insights: And whenever users log in through the IAM Identity Center and access the console of your dev accounts or your prod accounts, they will be automatically assuming an IAM role in that specific account that will give them the permissions they're supposed to get, which is pretty good.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 57:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it works the same way.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 58:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So you have application assignments and you can define which users or groups can access which applications.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 59:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And it gives them the required URLs, the certificates and metadata.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 60:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So all of this is supported out of the box.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 61:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And something that enables is called attribute-based access control.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 62:
- Concepts: Federated Authentication, Identity Lifecycle
- Services: AWS IAM, IAM Identity Center
- Key Insights: So the idea is that you're going to have fine-grained permissions based on the users' attributes stored in the IAM Identity Center store.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 63:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that means that you can have tags and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 64:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And using this, you can, for example, assign a user to a cost center or give them a title, so like junior, senior or a locale, whatever, so they only have access to a specific region.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 65:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: And the use case of this is that you actually define the IAM permission sets once and they leverage these attributes, and you only modify the access to AWS of your users or your groups by just changing these underlying attributes.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 66:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: So this is a use case that is advanced, but that is enabled by using the AWS IAM Identity Center.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 67:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 68:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/167_AWS IAM Identity Center - Extras.txt

Line 1:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: Okay, so let's see a few more details about IAM Identity Center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: First one is on permission sets.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 3:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Policies
- Key Insights: So permission sets is a collection of one or more IAM policies that define access for users and groups to within your AWS accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: Identity Lifecycle
- Services: IAM Policies
- Key Insights: So for example, the permission sets can contain either AWS-managed policies, such as administrator access or power user access, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: And these policies, because they're managed by AWS, they're available in all your accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: Or inline policy.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: So these are policies you attach directly into your permission sets and you write them.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: Or you can also have customer-managed policies.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies
- Key Insights: And these are IAM policies that you create and maintain in your accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But there is something.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: If you are using customer managed policies, you should know that you should create these policies in each of the accounts, where we assign this permission sets.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 12:
- Concepts: Authorization Model, Federated Authentication
- Services: AWS IAM, IAM Identity Center, IAM Policies
- Key Insights: So that means that if we create a developer access policy in IAM Identity Center, it should be present in all the target accounts, where we plan to use that permission set and that it can be an exam question.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 13:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So once you have all this in place, then your users in the group developers can access all your accounts because they can see these permissions in the target accounts as well.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it's super important that you do so.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: And to manage these policies across multiple accounts and make sure they're consistent, you should be always thinking about CloudFormation stack sets, for example.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 16:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: There's a way also for you to do delegated administration in IAM Identity Center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: Federated Authentication, Organization Governance
- Services: AWS IAM, AWS Organizations, IAM Identity Center
- Key Insights: The idea is that you create in the management of accounts the entity of IAM Identity Center, but then you're going to delegate the administration of this to one of the member accounts in the organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: To do so, you must first create the permission sets in the management accounts to enable the delegation, and then you must first create a first user assignment in the delegated accounts.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then you have the setup correct.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 20:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: What the delegated account cannot do is delete any IAM Identity Center configurations or manage any permission sets provision in the management accounts, but they can recreate and manage permission sets within the delegated scope in all the other accounts.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 21:
- Concepts: Identity Lifecycle
- Services: AWS Organizations
- Key Insights: Delegated administrators cannot add or remove other member accounts, and they cannot enable or disable user access in the management account.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So the idea behind all these restriction is that you cannot elevate your rights as a delegated administrator and you can only do just the administration.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So here is what it looks like.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 24:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: Again, we have IAM Identity Center in our management accounts, and then we have a security accounts that will be the delegated administrator that will have admin access to manage everything within IAM Identity Center, except, of course, promote itself to higher privileges.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: So the exam may ask you, how do I enable the integration between a service and IAM Identity Center?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And most of the time, the answer is that it's just one click because there is an out-of-the-box app integration.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 27:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: For example, for Amazon Q Developer, now called Kiro, or for Amazon Q Business, all you have to do is just click on Enable it and then enable IAM Identity Center and you're good to go.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is also the case for Amazon OpenSearch Service, Amazon Redshift, Amazon Athena, SageMaker, Kendra, Managed Grafana, Workspaces.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And for a list of all the supported services, you can go to this link.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 30:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But if you just remember the list I gave you, you should be good to go for the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 31:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center, SAML/OIDC Federation
- Key Insights: So let me just remind you how SAML 2.0 Federation works with IAM Identity Center.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 32:
- Concepts: Directory Integration, Federated Authentication, Organization Governance, Temporary Credential Strategy
- Services: AWS Organizations, AWS STS, IAM Identity Center
- Key Insights: So we have the Identity Center, the Identity Store, for example, Microsoft Active Directory, we have the STS service, and our accounts within the organization.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 33:
- Concepts: Federated Authentication, Identity Lifecycle
- Services: AWS IAM, IAM Identity Center
- Key Insights: So we first browse to the IAM Identity Center portal, which is going to authenticate the user against the Identity Store.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 34:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you see all the authentication happens at the Identity Store level, and that's important to remember.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 35:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: Next, we're gonna get back a SAML assertion.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 36:
- Concepts: Identity Lifecycle, Temporary Credential Strategy
- Services: AWS STS
- Key Insights: And behind the scenes is going to be swapped with the STS service to get temporary AWS credentials.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 37:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And these credentials are going to be used to access our AWS accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 38:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is the flow.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 39:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: What's important to remember here is that the authentication happens now within the Identity Store, which brings us to attribute mapping.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 40:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So here, what's going to happen is that we're going to get attributes directly out of the Active Directory, and they're going to have different names.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 41:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, you have the userprincipalname, the objectsid, the mail, displayname, objectguid, givenname, and memberOf on the right hand side.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 42:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: But these are not the exact fields that are expected by IAM Identity Center.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 43:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: And so on the right hand side, the list of fields may change based on what you use for versions of Active Directory or versions of a backend.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 44:
- Concepts: Federated Authentication, Identity Lifecycle
- Services: AWS IAM, IAM Identity Center
- Key Insights: And so we should be doing is tell IAM Identity Center how to map these attributes to the attributes that IAM Identity Centers expects, which are username, sid, email, displayname, externalid, name.givenname, and Groups.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 45:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that once you've done this mapping, then the integration is good to go.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 46:
- Concepts: Authorization Model, Directory Integration
- Services: IAM Policies
- Key Insights: And also, because I showed you that the authentication happens at the backend level, for example, within Microsoft Active Directory and not directly with AWS, if you want to set a password policy and you wanted to enforce it, this has to be done within your Active Directory, not in AWS.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 47:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center, SAML/OIDC Federation
- Key Insights: The IAM Identity Center service only acts as a federation broker.
- Hidden/Implicit Meaning: Constraint or limitation signal; Authentication and trust-chain signal.

Line 48:
- Concepts: Directory Integration, Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: That means it's going to connect things and it relies instead on the AD for authentication and password management, as well as expect making sure that the attributes are mapped correctly back to IAM Identity Center.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 49:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 50:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/291_AWS IAM Identity Center.txt

Line 1:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: So now let's talk about the AWS IAM Identity Center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And this service is the successor to something that you used to know probably, which is called the AWS Single Sign-On Service.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: So the idea is that it's the same service, just been renamed and it gives you one login, therefore it's called single sign-on, for all your AWS accounts in the AWS Organizations, but also your business cloud applications.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you can connect to Salesforce to Box to Microsoft 365 and so on, or any application you want, as long as you have a SAML2.0 integration.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And finally, it gives you also a single login into your EC2 Windows Instances.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So one login, access to everything, which is really, really good.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And the exam most likely will ask you about one login into multiple AWS accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Now, the identity provider, so where your users are stored for this login, can be twofold.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: It could be a built-in identity store in the IAM Identity Center, or you can connect to a third-party identity provider.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: It could be Active Directory, AD, or OneLogin or Okta and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So just to make it very visible and visual for you, we have the login flow, such as this.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: You go onto the login page, you enter your username and your password, and then you go directly into the AWS IAM Identity Center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: Federated Authentication
- Services: IAM Identity Center
- Key Insights: And this is actually a screenshot from my own Identity Center page.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And as you can see from there, I have enabled it for my AWS accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so I can click on the account I want and connect directly, for example, in the management console.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then if I do this, then I'm taken directly from this into the home page of your console.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But I'm logged in in that specific console.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that I don't need to know how to log in into that specific console.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 19:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: I can just log in into my IAM Identity Center portal.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And from there I have SSO.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So no need to enter your password once, it's single sign on, have SSO access to accounts, business applications, and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So if in the real world you have multiple AWS accounts, I would recommend 100% to use this service.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay, so now let's talk about how this works.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 24:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: So the browser interface is going to connect to the login page of your AWS IAM Identity Center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And then you have to integrate it, as I said, with different user stores.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So it could be an Active Directory, it could be on the cloud or on premises.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 27:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: And this is where you would use Active Directory to manage your users and your groups.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 28:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: Or you can use the IAM Identity Center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This is the built-in identity store.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 30:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: And this is where, for example, you would define your users and your groups as you're used to in IAM.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 31:
- Concepts: Federated Authentication, Organization Governance
- Services: AWS Organizations, IAM Identity Center
- Key Insights: Then you integrate Identity Center with SSO for your organization or your Windows EC2 instances, your business cloud applications or your custom SAML2.0-enabled applications.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 32:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Again, the cool thing is that you have one login for all of this, and that simplifies a lot your flow.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 33:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now, of course, when you log in, you don't have access to everything.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 34:
- Concepts: Federated Authentication, Identity Lifecycle
- Services: IAM Identity Center
- Key Insights: You define something called permission sets in the Identity Center to define which users have access to what.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 35:
- Concepts: Federated Authentication, Identity Lifecycle
- Services: AWS IAM, IAM Identity Center
- Key Insights: So how does everything relate in IAM Identity Center for permissions and users and groups?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 36:
- Concepts: Federated Authentication, Organization Governance
- Services: AWS IAM, AWS Organizations, IAM Identity Center
- Key Insights: So we have an organization and we set up IAM Identity Center in the management account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 37:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: We have two OUs, a development and a production OU, each with their own accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 38:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now we have two developers in our company.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 39:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We have Bob and Alice.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 40:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So first of all, we're going to do, just like we do in IAM, we're going to create a group of developers for Bob and Alice.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 41:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: Now we want to make sure that Bob and Alice both have access to full access of the OU for development.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 42:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So we're going to create what's called the permission sets, and we're going to allow admin access on it.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 43:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And then you have to assign this permission set directly into specific accounts, for example, your development accounts, and then you assign this permission set either to your users or to a group of users, for example, your developers.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 44:
- Concepts: Authorization Model
- Services: IAM Roles
- Key Insights: So this would allow Bob and Alice to assume a role with full access on the development account B right now.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 45:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You can also have a permission set, for example, for read-only access and assign this permission set directly into your production account, so account A and account B.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 46:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: And then you assign this permission set again to Bob and Alice, which would allow them to have a read-only access to these accounts.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 47:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about the fine-grained permissions and assignments.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 48:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And the first one is multi-account permissions.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 49:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So, of course, using the service, you can manage access across multiple accounts in your organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 50:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Policies
- Key Insights: And using permission sets, you define one or more IAM policies that you assign to users and to groups to define what they can access in AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 51:
- Concepts: Federated Authentication, Organization Governance
- Services: AWS IAM, AWS Organizations, IAM Identity Center
- Key Insights: So here is the IAM Identity Center, and it's integrated with your organization and you define a permission set for database admins.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 52:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies
- Key Insights: So it's a collection of IAM policies.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 53:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And you say, for example, that you have access to RDS and Aurora in your dev account, as well as RDS and Aurora in the prod account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 54:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Roles
- Key Insights: And this will automatically create a corresponding IAM role for your users.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 55:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And therefore, when you have your database admins, it can be a group, for example, and your users are in this group, you will assign it the permission sets of database admins.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 56:
- Concepts: Federated Authentication, Identity Lifecycle
- Services: AWS IAM, IAM Identity Center, IAM Roles
- Key Insights: And whenever users log in through the IAM Identity Center and access the console of your dev accounts or your prod accounts, they will be automatically assuming an IAM role in that specific account that will give them the permissions they're supposed to get, which is pretty good.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 57:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it works the same way.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 58:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So you have application assignments and you can define which users or groups can access which applications.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 59:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And it gives them the required URLs, the certificates and metadata.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 60:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So all of this is supported out of the box.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 61:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And something that enables is called attribute-based access control.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 62:
- Concepts: Federated Authentication, Identity Lifecycle
- Services: AWS IAM, IAM Identity Center
- Key Insights: So the idea is that you're going to have fine-grained permissions based on the users' attributes stored in the IAM Identity Center store.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 63:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that means that you can have tags and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 64:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And using this, you can, for example, assign a user to a cost center or give them a title, so like junior, senior or a locale, whatever, so they only have access to a specific region.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 65:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: And the use case of this is that you actually define the IAM permission sets once and they leverage these attributes, and you only modify the access to AWS of your users or your groups by just changing these underlying attributes.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 66:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: So this is a use case that is advanced, but that is enabled by using the AWS IAM Identity Center.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 67:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 68:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

## Step 2 â€” Consolidation

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
- AWS IAM
- AWS Organizations
- AWS STS
- Amazon Cognito
- IAM Access Analyzer
- IAM Identity Center
- IAM Policies
- IAM Roles
- MFA
- SAML/OIDC Federation

### 3. Features List
- access analyzer
- conditions
- delegated admin
- federation
- mfa
- oidc
- saml
- trust policy

### 4. Use Cases
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
- 007_Identity Federation & Cognito.txt:5: So the use cases is, for example, your corporation has its own identity system, for example, Active Directory, or you have a web and mobile application that needs to access AWS resources.
- 007_Identity Federation & Cognito.txt:19: And you need, for example, of course to set up a trust between IAM and your SAML 2.0 identity providers both ways.
- 007_Identity Federation & Cognito.txt:26: The IDP will verify the request through an identity store, for example, LDAP-based, and then it will return a SAML assertion if the login is successful.
- 007_Identity Federation & Cognito.txt:73: Okay, so when we have Web Identity Federation, can we restrict IAM policies?
- 007_Identity Federation & Cognito.txt:76: So the idea is that when you have a Web Identity Federation, you can use some special variables.
- 007_Identity Federation & Cognito.txt:77: For example, going to identity.amazon.com:sub or amazon.com:user_id and so on to restrict your IAM policies with conditions and make sure that the users really have the restrictions they need, okay?
- 007_Identity Federation & Cognito.txt:79: These are the old ways, obviously, except when we're using Cognito.
- 011_AWS IAM Identity Center.txt:15: And so I can click on the account I want and connect directly, for example, in the management console.
- 011_AWS IAM Identity Center.txt:30: And this is where, for example, you would define your users and your groups as you're used to in IAM.
- 011_AWS IAM Identity Center.txt:33: Now, of course, when you log in, you don't have access to everything.
- 011_AWS IAM Identity Center.txt:42: So we're going to create what's called the permission sets, and we're going to allow admin access on it.
- 011_AWS IAM Identity Center.txt:43: And then you have to assign this permission set directly into specific accounts, for example, your development accounts, and then you assign this permission set either to your users or to a group of users, for example, your developers.
- 011_AWS IAM Identity Center.txt:45: You can also have a permission set, for example, for read-only access and assign this permission set directly into your production account, so account A and account B.
- 011_AWS IAM Identity Center.txt:53: And you say, for example, that you have access to RDS and Aurora in your dev account, as well as RDS and Aurora in the prod account.
- 011_AWS IAM Identity Center.txt:55: And therefore, when you have your database admins, it can be a group, for example, and your users are in this group, you will assign it the permission sets of database admins.
- 011_AWS IAM Identity Center.txt:56: And whenever users log in through the IAM Identity Center and access the console of your dev accounts or your prod accounts, they will be automatically assuming an IAM role in that specific account that will give them the permissions they're supposed to get, which is pretty good.
- 011_AWS IAM Identity Center.txt:64: And using this, you can, for example, assign a user to a cost center or give them a title, so like junior, senior or a locale, whatever, so they only have access to a specific region.
- 011_AWS IAM Identity Center.txt:65: And the use case of this is that you actually define the IAM permission sets once and they leverage these attributes, and you only modify the access to AWS of your users or your groups by just changing these underlying attributes.
- 011_AWS IAM Identity Center.txt:66: So this is a use case that is advanced, but that is enabled by using the AWS IAM Identity Center.
- 016_IAM MFA Overview.txt:8: For example, you may want to have an uppercase letter, lowercase letter, number, non alphanumeric characters, for example, a question mark and so on.
- 016_IAM MFA Overview.txt:9: Then you can allow or not IAM users to change their own passwords, or you can require users to change their password after some time to make your password expired, for example, to say every 90 days, users have to change their passwords.
- 016_IAM MFA Overview.txt:10: Finally, you can also prevent password reuse so that users, when they change their passwords, don't change it to the one that they already have or change it to the one they had before.
- 016_IAM MFA Overview.txt:24: So for example, let's take Alice.
- 016_IAM MFA Overview.txt:27: So the benefit of MFA is that even if Alice has lost her password because it's stolen or it's hacked, the account will not be compromised because the hacker will need to also get a hold of the physical device of Alice, that could be her phone, for example, to do a login.
- 016_IAM MFA Overview.txt:39: For example, a YubiKey by Yubico and Yubico is a third party to AWS.
- 016_IAM MFA Overview.txt:46: You have a hardware key fob MFA device, for example, this one provided by Gemalto, which is also a third party to AWS.
- 017_IAM MFA Hands On.txt:6: We can also turn on password expiration to turn on, for example, expire after 90 days, or that a password expiration requires administrative resets, or we can allow the users to change their own password or we can prevent password reuse.
- 017_IAM MFA Hands On.txt:26: So when you should a QR code, you need to scan this QR code directly on your phone.
- 131_IAM MFA.txt:5: So, Alice has a password and then thanks to the device you own, for example, your phone or a security key or whatever, then you're going to get a successful login.
- 131_IAM MFA.txt:12: Or you can use, for example, a security key such as a YubiKey, which supports for multiple root and IAM users using a single security key.
- 131_IAM MFA.txt:14: So for example, one by Gemalto which gives you a code or you have the hardware Key Fob MFA device for AWS GovCloud which is provided by SurePassID and again gives you a code that you just enter while logging in.
- 131_IAM MFA.txt:18: So MFA can be required, for example, to permanently delete an object version because this is a destructive type of operation or suspend versioning on the bucket.
- 131_IAM MFA.txt:41: So for example, you created an MFA device for a user but you never activated it.
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
- 161_[DVA_SOA] Cognito User Pools.txt:4: That means that your users can use, for example, a simple login, their username or their email, and a password combination, to connect into your applications.
- 161_[DVA_SOA] Cognito User Pools.txt:6: So this is pretty much the thing you see when you go onto any other website, they ask you to register users, either create a username/password, or login Google, Facebook, or some other way.
- 161_[DVA_SOA] Cognito User Pools.txt:7: There is a feature that you can block users if their credentials are compromised elsewhere, so AWS scans the web for compromised credentials, and will let your user knows into Cognito User Pools, and then finally, and then finally, when your users log in with the Cognito User Pool, what they get back from the API is a JWT, so a JSON Web Token.
- 161_[DVA_SOA] Cognito User Pools.txt:9: Well, they're a database of users, so CUP will have its own internal database of users that we can see, and then our mobile applications and our web application can login against our Cognito User Pool, and when they are logged in, the CUP will return to our user, our mobile applications and our web applications, a JSON Web Token, JWT.
- 162_[DVA] Cognito Identity Pools.txt:6: So for example, they want to have access to DynamoDB table or an S3 bucket.
- 162_[DVA] Cognito Identity Pools.txt:11: And that could be a public provider, for example, log in with Amazon, Facebook, Google and Apple.
- 162_[DVA] Cognito Identity Pools.txt:14: So on top of all these login providers to allow to give our users their identity before they trade it for AWS credentials, we can allow unauthenticated guest users access into AWS.
- 162_[DVA] Cognito Identity Pools.txt:22: So we will allow our users to connect, for example, to a Cognito user pool, or to connect to Google login, Facebook login, so for social identity providers or SAML or Open ID Connect.
- 162_[DVA] Cognito Identity Pools.txt:47: And this will be allowing us to make sure that the users will only get access to what they need in DynamoDB or Amazon S3, for example.
- 162_[DVA] Cognito Identity Pools.txt:52: So we want to give our guest users access to AWS, and so we want to create an IAM policy, for example, that would allow any guest user to do a GetObject on a bucket for my_picture.jpg.
- 163_Cognito User Pool User Groups.txt:4: So we have a group, for example, made of Alice and Bob, and we attach an IAM role to this group.
- 163_Cognito User Pool User Groups.txt:5: So the ReadersIAMRole, for example, and then they can read DynamoDB with the correct policy.
- 164_Identity Federation & Cognito.txt:5: So the use cases is, for example, your corporation has its own identity system, for example, Active Directory, or you have a web and mobile application that needs to access AWS resources.
- 164_Identity Federation & Cognito.txt:19: And you need, for example, of course to set up a trust between IAM and your SAML 2.0 identity providers both ways.
- 164_Identity Federation & Cognito.txt:26: The IDP will verify the request through an identity store, for example, LDAP-based, and then it will return a SAML assertion if the login is successful.
- 164_Identity Federation & Cognito.txt:73: Okay, so when we have Web Identity Federation, can we restrict IAM policies?
- 164_Identity Federation & Cognito.txt:76: So the idea is that when you have a Web Identity Federation, you can use some special variables.
- 164_Identity Federation & Cognito.txt:77: For example, going to identity.amazon.com:sub or amazon.com:user_id and so on to restrict your IAM policies with conditions and make sure that the users really have the restrictions they need, okay?
- 164_Identity Federation & Cognito.txt:79: These are the old ways, obviously, except when we're using Cognito.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:15: And so I can click on the account I want and connect directly, for example, in the management console.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:30: And this is where, for example, you would define your users and your groups as you're used to in IAM.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:33: Now, of course, when you log in, you don't have access to everything.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:42: So we're going to create what's called the permission sets, and we're going to allow admin access on it.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:43: And then you have to assign this permission set directly into specific accounts, for example, your development accounts, and then you assign this permission set either to your users or to a group of users, for example, your developers.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:45: You can also have a permission set, for example, for read-only access and assign this permission set directly into your production account, so account A and account B.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:53: And you say, for example, that you have access to RDS and Aurora in your dev account, as well as RDS and Aurora in the prod account.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:55: And therefore, when you have your database admins, it can be a group, for example, and your users are in this group, you will assign it the permission sets of database admins.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:56: And whenever users log in through the IAM Identity Center and access the console of your dev accounts or your prod accounts, they will be automatically assuming an IAM role in that specific account that will give them the permissions they're supposed to get, which is pretty good.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:64: And using this, you can, for example, assign a user to a cost center or give them a title, so like junior, senior or a locale, whatever, so they only have access to a specific region.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:65: And the use case of this is that you actually define the IAM permission sets once and they leverage these attributes, and you only modify the access to AWS of your users or your groups by just changing these underlying attributes.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:66: So this is a use case that is advanced, but that is enabled by using the AWS IAM Identity Center.
- 167_AWS IAM Identity Center - Extras.txt:4: So for example, the permission sets can contain either AWS-managed policies, such as administrator access or power user access, et cetera.
- 167_AWS IAM Identity Center - Extras.txt:15: And to manage these policies across multiple accounts and make sure they're consistent, you should be always thinking about CloudFormation stack sets, for example.
- 167_AWS IAM Identity Center - Extras.txt:27: For example, for Amazon Q Developer, now called Kiro, or for Amazon Q Business, all you have to do is just click on Enable it and then enable IAM Identity Center and you're good to go.
- 167_AWS IAM Identity Center - Extras.txt:32: So we have the Identity Center, the Identity Store, for example, Microsoft Active Directory, we have the STS service, and our accounts within the organization.
- 167_AWS IAM Identity Center - Extras.txt:41: For example, you have the userprincipalname, the objectsid, the mail, displayname, objectguid, givenname, and memberOf on the right hand side.
- 167_AWS IAM Identity Center - Extras.txt:46: And also, because I showed you that the authentication happens at the backend level, for example, within Microsoft Active Directory and not directly with AWS, if you want to set a password policy and you wanted to enforce it, this has to be done within your Active Directory, not in AWS.
- 291_AWS IAM Identity Center.txt:15: And so I can click on the account I want and connect directly, for example, in the management console.
- 291_AWS IAM Identity Center.txt:30: And this is where, for example, you would define your users and your groups as you're used to in IAM.
- 291_AWS IAM Identity Center.txt:33: Now, of course, when you log in, you don't have access to everything.
- 291_AWS IAM Identity Center.txt:42: So we're going to create what's called the permission sets, and we're going to allow admin access on it.
- 291_AWS IAM Identity Center.txt:43: And then you have to assign this permission set directly into specific accounts, for example, your development accounts, and then you assign this permission set either to your users or to a group of users, for example, your developers.
- 291_AWS IAM Identity Center.txt:45: You can also have a permission set, for example, for read-only access and assign this permission set directly into your production account, so account A and account B.
- 291_AWS IAM Identity Center.txt:53: And you say, for example, that you have access to RDS and Aurora in your dev account, as well as RDS and Aurora in the prod account.
- 291_AWS IAM Identity Center.txt:55: And therefore, when you have your database admins, it can be a group, for example, and your users are in this group, you will assign it the permission sets of database admins.
- 291_AWS IAM Identity Center.txt:56: And whenever users log in through the IAM Identity Center and access the console of your dev accounts or your prod accounts, they will be automatically assuming an IAM role in that specific account that will give them the permissions they're supposed to get, which is pretty good.
- 291_AWS IAM Identity Center.txt:64: And using this, you can, for example, assign a user to a cost center or give them a title, so like junior, senior or a locale, whatever, so they only have access to a specific region.
- 291_AWS IAM Identity Center.txt:65: And the use case of this is that you actually define the IAM permission sets once and they leverage these attributes, and you only modify the access to AWS of your users or your groups by just changing these underlying attributes.
- 291_AWS IAM Identity Center.txt:66: So this is a use case that is advanced, but that is enabled by using the AWS IAM Identity Center.

### 5. Constraints / Limitations
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
- 007_Identity Federation & Cognito.txt:38: The only difference is that on the left hand side, we have the Microsoft Active Directory Federation Services on the top left, and then on the bottom right, where the user sits, is Active directory itself, okay?
- 007_Identity Federation & Cognito.txt:45: Now that means that the identity broker is responsible and must determine the appropriate IAM role for that user.
- 007_Identity Federation & Cognito.txt:47: Then the only way for it to work is to use the AssumeRole or GetFederationToken API from STS directly from the custom identity broker.
- 007_Identity Federation & Cognito.txt:69: So why should we use this mechanism with Cognito?
- 007_Identity Federation & Cognito.txt:75: And so here is an example of a policy that allows the user to only list a bucket with a prefix as the user ID, and also to get, update, and put objects in with that specific prefix.
- 007_Identity Federation & Cognito.txt:81: So I hope you liked this, and I will strongly suggest you revisit this lecture one more time before the exam and it should all make sense, and I will see you in the next lecture.
- 011_AWS IAM Identity Center.txt:45: You can also have a permission set, for example, for read-only access and assign this permission set directly into your production account, so account A and account B.
- 011_AWS IAM Identity Center.txt:46: And then you assign this permission set again to Bob and Alice, which would allow them to have a read-only access to these accounts.
- 011_AWS IAM Identity Center.txt:59: And it gives them the required URLs, the certificates and metadata.
- 011_AWS IAM Identity Center.txt:64: And using this, you can, for example, assign a user to a cost center or give them a title, so like junior, senior or a locale, whatever, so they only have access to a specific region.
- 011_AWS IAM Identity Center.txt:65: And the use case of this is that you actually define the IAM permission sets once and they leverage these attributes, and you only modify the access to AWS of your users or your groups by just changing these underlying attributes.
- 016_IAM MFA Overview.txt:15: It is possible, you already used it on some websites, but on AWS it's a must and it's very recommended to use it.
- 017_IAM MFA Hands On.txt:10: Now, there is a way for you to actually protect your root user, which is the most important account in your AWS account, and you can protect it by using multi-factor authentication.
- 017_IAM MFA Hands On.txt:26: So when you should a QR code, you need to scan this QR code directly on your phone.
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
- 162_[DVA] Cognito Identity Pools.txt:8: So we cannot create normal IAM users for these users because there are too many of them, it doesn't scale and we don't trust them.
- 162_[DVA] Cognito Identity Pools.txt:47: And this will be allowing us to make sure that the users will only get access to what they need in DynamoDB or Amazon S3, for example.
- 162_[DVA] Cognito Identity Pools.txt:49: And for it to work, the roles must have a trust policy of Cognito identity pools.
- 162_[DVA] Cognito Identity Pools.txt:55: So our users are connected, but we want to make sure that they only have access to a prefix in your S3 bucket that represents what the user identity is.
- 162_[DVA] Cognito Identity Pools.txt:56: And so as such, you can use a policy variable like here in green, and this is allowing a user to only access within the bucket we've defined, anything that starts with the prefix of its user ID.
- 162_[DVA] Cognito Identity Pools.txt:57: So effectively we gave the user access only to what it can access thanks to its user ID.
- 163_Cognito User Pool User Groups.txt:14: You cannot create nested groups, you cannot have groups of groups, and concept of groups just serve the concept of simplifying security in Cognito.
- 164_Identity Federation & Cognito.txt:38: The only difference is that on the left hand side, we have the Microsoft Active Directory Federation Services on the top left, and then on the bottom right, where the user sits, is Active directory itself, okay?
- 164_Identity Federation & Cognito.txt:45: Now that means that the identity broker is responsible and must determine the appropriate IAM role for that user.
- 164_Identity Federation & Cognito.txt:47: Then the only way for it to work is to use the AssumeRole or GetFederationToken API from STS directly from the custom identity broker.
- 164_Identity Federation & Cognito.txt:69: So why should we use this mechanism with Cognito?
- 164_Identity Federation & Cognito.txt:75: And so here is an example of a policy that allows the user to only list a bucket with a prefix as the user ID, and also to get, update, and put objects in with that specific prefix.
- 164_Identity Federation & Cognito.txt:81: So I hope you liked this, and I will strongly suggest you revisit this lecture one more time before the exam and it should all make sense, and I will see you in the next lecture.
- 165_SAML 2.0 Metadata File Troubleshooting.txt:5: From there, we're going to generate from our IdP a metadata XML file, I will show you what that file looks like in a second, and that file should be created and sent to AWS in the IAM service to create a SAML identity provider.
- 165_SAML 2.0 Metadata File Troubleshooting.txt:7: So the important part here is the SAML file that we generate from the IdP and register in IAM.
- 165_SAML 2.0 Metadata File Troubleshooting.txt:11: And that's very important because I will show it in the next slide what happens if you don't renew it.
- 165_SAML 2.0 Metadata File Troubleshooting.txt:23: It's what you should know and that's an exam question.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:45: You can also have a permission set, for example, for read-only access and assign this permission set directly into your production account, so account A and account B.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:46: And then you assign this permission set again to Bob and Alice, which would allow them to have a read-only access to these accounts.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:59: And it gives them the required URLs, the certificates and metadata.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:64: And using this, you can, for example, assign a user to a cost center or give them a title, so like junior, senior or a locale, whatever, so they only have access to a specific region.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:65: And the use case of this is that you actually define the IAM permission sets once and they leverage these attributes, and you only modify the access to AWS of your users or your groups by just changing these underlying attributes.
- 167_AWS IAM Identity Center - Extras.txt:11: If you are using customer managed policies, you should know that you should create these policies in each of the accounts, where we assign this permission sets.
- 167_AWS IAM Identity Center - Extras.txt:12: So that means that if we create a developer access policy in IAM Identity Center, it should be present in all the target accounts, where we plan to use that permission set and that it can be an exam question.
- 167_AWS IAM Identity Center - Extras.txt:14: So it's super important that you do so.
- 167_AWS IAM Identity Center - Extras.txt:15: And to manage these policies across multiple accounts and make sure they're consistent, you should be always thinking about CloudFormation stack sets, for example.
- 167_AWS IAM Identity Center - Extras.txt:18: To do so, you must first create the permission sets in the management accounts to enable the delegation, and then you must first create a first user assignment in the delegated accounts.
- 167_AWS IAM Identity Center - Extras.txt:20: What the delegated account cannot do is delete any IAM Identity Center configurations or manage any permission sets provision in the management accounts, but they can recreate and manage permission sets within the delegated scope in all the other accounts.
- 167_AWS IAM Identity Center - Extras.txt:21: Delegated administrators cannot add or remove other member accounts, and they cannot enable or disable user access in the management account.
- 167_AWS IAM Identity Center - Extras.txt:22: So the idea behind all these restriction is that you cannot elevate your rights as a delegated administrator and you can only do just the administration.
- 167_AWS IAM Identity Center - Extras.txt:30: But if you just remember the list I gave you, you should be good to go for the exam.
- 167_AWS IAM Identity Center - Extras.txt:34: So you see all the authentication happens at the Identity Store level, and that's important to remember.
- 167_AWS IAM Identity Center - Extras.txt:39: What's important to remember here is that the authentication happens now within the Identity Store, which brings us to attribute mapping.
- 167_AWS IAM Identity Center - Extras.txt:44: And so we should be doing is tell IAM Identity Center how to map these attributes to the attributes that IAM Identity Centers expects, which are username, sid, email, displayname, externalid, name.givenname, and Groups.
- 167_AWS IAM Identity Center - Extras.txt:47: The IAM Identity Center service only acts as a federation broker.
- 291_AWS IAM Identity Center.txt:45: You can also have a permission set, for example, for read-only access and assign this permission set directly into your production account, so account A and account B.
- 291_AWS IAM Identity Center.txt:46: And then you assign this permission set again to Bob and Alice, which would allow them to have a read-only access to these accounts.
- 291_AWS IAM Identity Center.txt:59: And it gives them the required URLs, the certificates and metadata.
- 291_AWS IAM Identity Center.txt:64: And using this, you can, for example, assign a user to a cost center or give them a title, so like junior, senior or a locale, whatever, so they only have access to a specific region.
- 291_AWS IAM Identity Center.txt:65: And the use case of this is that you actually define the IAM permission sets once and they leverage these attributes, and you only modify the access to AWS of your users or your groups by just changing these underlying attributes.

### 6. Patterns / Architectures
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
- 007_Identity Federation & Cognito.txt:1: Okay, so now let's discuss Identity Federation in AWS.
- 007_Identity Federation & Cognito.txt:4: So this is why we need Identity Federation.
- 007_Identity Federation & Cognito.txt:6: And so this is where we need Identity Federation.
- 007_Identity Federation & Cognito.txt:11: So Identity Federation can have multiple flavors.
- 007_Identity Federation & Cognito.txt:12: It could be SAML 2.0, a custom identity broker, Web Identity Federation with or without Amazon Cognito, and then IAM Identity Center.
- 007_Identity Federation & Cognito.txt:13: So I'm going to discuss the first three, single sign-on will have its own lecture, and this is the more recent generation of Identity Federation, but still from an example perspective, you need to know about all of them.
- 007_Identity Federation & Cognito.txt:14: So let's go ahead with SAML 2.0 Federation.
- 007_Identity Federation & Cognito.txt:21: So as I said, SAML 2.0 Federation is the old way of doing things.
- 007_Identity Federation & Cognito.txt:22: And now IAM Identity Center is the new managed way and simpler way of doing things, yet we still have to learn about SAML 2.0 Federation.
- 007_Identity Federation & Cognito.txt:35: So these two flows are very similar because they use the same SAML 2.0 Federation.
- 007_Identity Federation & Cognito.txt:38: The only difference is that on the left hand side, we have the Microsoft Active Directory Federation Services on the top left, and then on the bottom right, where the user sits, is Active directory itself, okay?
- 007_Identity Federation & Cognito.txt:47: Then the only way for it to work is to use the AssumeRole or GetFederationToken API from STS directly from the custom identity broker.
- 007_Identity Federation & Cognito.txt:51: Now with web identity federation, we have two flavors, we have without Cognito and with Cognito.
- 007_Identity Federation & Cognito.txt:54: So what is Web Identity Federation?
- 007_Identity Federation & Cognito.txt:65: So it's preferred over Web Identity Federation because here in Cognito, we can create IAM roles with the least privilege needed, and then we just need to build the trust between the OIDC IdP and AWS.
- 007_Identity Federation & Cognito.txt:73: Okay, so when we have Web Identity Federation, can we restrict IAM policies?
- 007_Identity Federation & Cognito.txt:76: So the idea is that when you have a Web Identity Federation, you can use some special variables.
- 007_Identity Federation & Cognito.txt:78: So that's it for Identity Federation.
- 011_AWS IAM Identity Center.txt:3: So the idea is that it's the same service, just been renamed and it gives you one login, therefore it's called single sign-on, for all your AWS accounts in the AWS Organizations, but also your business cloud applications.
- 011_AWS IAM Identity Center.txt:31: Then you integrate Identity Center with SSO for your organization or your Windows EC2 instances, your business cloud applications or your custom SAML2.0-enabled applications.
- 011_AWS IAM Identity Center.txt:36: So we have an organization and we set up IAM Identity Center in the management account.
- 011_AWS IAM Identity Center.txt:48: And the first one is multi-account permissions.
- 011_AWS IAM Identity Center.txt:49: So, of course, using the service, you can manage access across multiple accounts in your organization.
- 011_AWS IAM Identity Center.txt:51: So here is the IAM Identity Center, and it's integrated with your organization and you define a permission set for database admins.
- 139_[SOA] STS Overview.txt:23: So if we have a look at Cross-Account Access with STS, let's say we have a Dev account and a Prod account and we have an S3 bucket in Prod that we want to access from IAM users in a group in Dev.
- 161_[DVA_SOA] Cognito User Pools.txt:10: As I said, we can also provide login with Amazon, or Google, or Facebook, facility into our Cognito User Pools, so we can do Federation through Third Party Identity Providers, and offer a social login through a social identity provider, so login with Google, login with Facebook.
- 164_Identity Federation & Cognito.txt:1: Okay, so now let's discuss Identity Federation in AWS.
- 164_Identity Federation & Cognito.txt:4: So this is why we need Identity Federation.
- 164_Identity Federation & Cognito.txt:6: And so this is where we need Identity Federation.
- 164_Identity Federation & Cognito.txt:11: So Identity Federation can have multiple flavors.
- 164_Identity Federation & Cognito.txt:12: It could be SAML 2.0, a custom identity broker, Web Identity Federation with or without Amazon Cognito, and then IAM Identity Center.
- 164_Identity Federation & Cognito.txt:13: So I'm going to discuss the first three, single sign-on will have its own lecture, and this is the more recent generation of Identity Federation, but still from an example perspective, you need to know about all of them.
- 164_Identity Federation & Cognito.txt:14: So let's go ahead with SAML 2.0 Federation.
- 164_Identity Federation & Cognito.txt:21: So as I said, SAML 2.0 Federation is the old way of doing things.
- 164_Identity Federation & Cognito.txt:22: And now IAM Identity Center is the new managed way and simpler way of doing things, yet we still have to learn about SAML 2.0 Federation.
- 164_Identity Federation & Cognito.txt:35: So these two flows are very similar because they use the same SAML 2.0 Federation.
- 164_Identity Federation & Cognito.txt:38: The only difference is that on the left hand side, we have the Microsoft Active Directory Federation Services on the top left, and then on the bottom right, where the user sits, is Active directory itself, okay?
- 164_Identity Federation & Cognito.txt:47: Then the only way for it to work is to use the AssumeRole or GetFederationToken API from STS directly from the custom identity broker.
- 164_Identity Federation & Cognito.txt:51: Now with web identity federation, we have two flavors, we have without Cognito and with Cognito.
- 164_Identity Federation & Cognito.txt:54: So what is Web Identity Federation?
- 164_Identity Federation & Cognito.txt:65: So it's preferred over Web Identity Federation because here in Cognito, we can create IAM roles with the least privilege needed, and then we just need to build the trust between the OIDC IdP and AWS.
- 164_Identity Federation & Cognito.txt:73: Okay, so when we have Web Identity Federation, can we restrict IAM policies?
- 164_Identity Federation & Cognito.txt:76: So the idea is that when you have a Web Identity Federation, you can use some special variables.
- 164_Identity Federation & Cognito.txt:78: So that's it for Identity Federation.
- 165_SAML 2.0 Metadata File Troubleshooting.txt:1: So let's talk about how SAML 2.0 federation is configured in AWS, and an issue that can arise and how to troubleshoot it.
- 165_SAML 2.0 Metadata File Troubleshooting.txt:3: So we want to enable SAML 2.0-based identity federation.
- 165_SAML 2.0 Metadata File Troubleshooting.txt:6: From there, we can create the IAM roles that will be used for authentication for the SAML provider and we have therefore established SAML 2.0-based federation in AWS.
- 165_SAML 2.0 Metadata File Troubleshooting.txt:13: So which organization actually issued that XML file, that metadata file.
- 165_SAML 2.0 Metadata File Troubleshooting.txt:17: So in case you are getting this error on AWS, response signature invalid from the AWS security token service with a status code 400 and the error code is invalid identity token, then the reason is that the federation metadata file of the identity provider does not match the metadata of the IAM identity provider.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:3: So the idea is that it's the same service, just been renamed and it gives you one login, therefore it's called single sign-on, for all your AWS accounts in the AWS Organizations, but also your business cloud applications.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:31: Then you integrate Identity Center with SSO for your organization or your Windows EC2 instances, your business cloud applications or your custom SAML2.0-enabled applications.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:36: So we have an organization and we set up IAM Identity Center in the management account.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:48: And the first one is multi-account permissions.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:49: So, of course, using the service, you can manage access across multiple accounts in your organization.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:51: So here is the IAM Identity Center, and it's integrated with your organization and you define a permission set for database admins.
- 167_AWS IAM Identity Center - Extras.txt:16: There's a way also for you to do delegated administration in IAM Identity Center.
- 167_AWS IAM Identity Center - Extras.txt:17: The idea is that you create in the management of accounts the entity of IAM Identity Center, but then you're going to delegate the administration of this to one of the member accounts in the organization.
- 167_AWS IAM Identity Center - Extras.txt:18: To do so, you must first create the permission sets in the management accounts to enable the delegation, and then you must first create a first user assignment in the delegated accounts.
- 167_AWS IAM Identity Center - Extras.txt:20: What the delegated account cannot do is delete any IAM Identity Center configurations or manage any permission sets provision in the management accounts, but they can recreate and manage permission sets within the delegated scope in all the other accounts.
- 167_AWS IAM Identity Center - Extras.txt:21: Delegated administrators cannot add or remove other member accounts, and they cannot enable or disable user access in the management account.
- 167_AWS IAM Identity Center - Extras.txt:22: So the idea behind all these restriction is that you cannot elevate your rights as a delegated administrator and you can only do just the administration.
- 167_AWS IAM Identity Center - Extras.txt:24: Again, we have IAM Identity Center in our management accounts, and then we have a security accounts that will be the delegated administrator that will have admin access to manage everything within IAM Identity Center, except, of course, promote itself to higher privileges.
- 167_AWS IAM Identity Center - Extras.txt:31: So let me just remind you how SAML 2.0 Federation works with IAM Identity Center.
- 167_AWS IAM Identity Center - Extras.txt:32: So we have the Identity Center, the Identity Store, for example, Microsoft Active Directory, we have the STS service, and our accounts within the organization.
- 167_AWS IAM Identity Center - Extras.txt:47: The IAM Identity Center service only acts as a federation broker.
- 291_AWS IAM Identity Center.txt:3: So the idea is that it's the same service, just been renamed and it gives you one login, therefore it's called single sign-on, for all your AWS accounts in the AWS Organizations, but also your business cloud applications.
- 291_AWS IAM Identity Center.txt:31: Then you integrate Identity Center with SSO for your organization or your Windows EC2 instances, your business cloud applications or your custom SAML2.0-enabled applications.
- 291_AWS IAM Identity Center.txt:36: So we have an organization and we set up IAM Identity Center in the management account.
- 291_AWS IAM Identity Center.txt:48: And the first one is multi-account permissions.
- 291_AWS IAM Identity Center.txt:49: So, of course, using the service, you can manage access across multiple accounts in your organization.
- 291_AWS IAM Identity Center.txt:51: So here is the IAM Identity Center, and it's integrated with your organization and you define a permission set for database admins.

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
- For Authentication_Federation, keep conceptual policy intent portable while implementing cloud-native controls.

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
- Directory Integration
- Federated Authentication
- IAM Domain Operational Context
- Identity Lifecycle
- Least Privilege
- Organization Governance
- Temporary Credential Strategy

### Services (Deduped)
- AWS IAM
- AWS Organizations
- AWS STS
- Amazon Cognito
- IAM Access Analyzer
- IAM Identity Center
- IAM Policies
- IAM Roles
- MFA
- SAML/OIDC Federation

### Features (Deduped)
- access analyzer
- conditions
- delegated admin
- federation
- mfa
- oidc
- saml
- trust policy

### Use Cases (Deduped)
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
- 007_Identity Federation & Cognito.txt:5: So the use cases is, for example, your corporation has its own identity system, for example, Active Directory, or you have a web and mobile application that needs to access AWS resources.
- 007_Identity Federation & Cognito.txt:19: And you need, for example, of course to set up a trust between IAM and your SAML 2.0 identity providers both ways.
- 007_Identity Federation & Cognito.txt:26: The IDP will verify the request through an identity store, for example, LDAP-based, and then it will return a SAML assertion if the login is successful.
- 007_Identity Federation & Cognito.txt:73: Okay, so when we have Web Identity Federation, can we restrict IAM policies?
- 007_Identity Federation & Cognito.txt:76: So the idea is that when you have a Web Identity Federation, you can use some special variables.
- 007_Identity Federation & Cognito.txt:77: For example, going to identity.amazon.com:sub or amazon.com:user_id and so on to restrict your IAM policies with conditions and make sure that the users really have the restrictions they need, okay?
- 007_Identity Federation & Cognito.txt:79: These are the old ways, obviously, except when we're using Cognito.
- 011_AWS IAM Identity Center.txt:15: And so I can click on the account I want and connect directly, for example, in the management console.
- 011_AWS IAM Identity Center.txt:30: And this is where, for example, you would define your users and your groups as you're used to in IAM.
- 011_AWS IAM Identity Center.txt:33: Now, of course, when you log in, you don't have access to everything.
- 011_AWS IAM Identity Center.txt:42: So we're going to create what's called the permission sets, and we're going to allow admin access on it.
- 011_AWS IAM Identity Center.txt:43: And then you have to assign this permission set directly into specific accounts, for example, your development accounts, and then you assign this permission set either to your users or to a group of users, for example, your developers.
- 011_AWS IAM Identity Center.txt:45: You can also have a permission set, for example, for read-only access and assign this permission set directly into your production account, so account A and account B.
- 011_AWS IAM Identity Center.txt:53: And you say, for example, that you have access to RDS and Aurora in your dev account, as well as RDS and Aurora in the prod account.
- 011_AWS IAM Identity Center.txt:55: And therefore, when you have your database admins, it can be a group, for example, and your users are in this group, you will assign it the permission sets of database admins.
- 011_AWS IAM Identity Center.txt:56: And whenever users log in through the IAM Identity Center and access the console of your dev accounts or your prod accounts, they will be automatically assuming an IAM role in that specific account that will give them the permissions they're supposed to get, which is pretty good.
- 011_AWS IAM Identity Center.txt:64: And using this, you can, for example, assign a user to a cost center or give them a title, so like junior, senior or a locale, whatever, so they only have access to a specific region.
- 011_AWS IAM Identity Center.txt:65: And the use case of this is that you actually define the IAM permission sets once and they leverage these attributes, and you only modify the access to AWS of your users or your groups by just changing these underlying attributes.
- 011_AWS IAM Identity Center.txt:66: So this is a use case that is advanced, but that is enabled by using the AWS IAM Identity Center.
- 016_IAM MFA Overview.txt:8: For example, you may want to have an uppercase letter, lowercase letter, number, non alphanumeric characters, for example, a question mark and so on.
- 016_IAM MFA Overview.txt:9: Then you can allow or not IAM users to change their own passwords, or you can require users to change their password after some time to make your password expired, for example, to say every 90 days, users have to change their passwords.
- 016_IAM MFA Overview.txt:10: Finally, you can also prevent password reuse so that users, when they change their passwords, don't change it to the one that they already have or change it to the one they had before.
- 016_IAM MFA Overview.txt:24: So for example, let's take Alice.
- 016_IAM MFA Overview.txt:27: So the benefit of MFA is that even if Alice has lost her password because it's stolen or it's hacked, the account will not be compromised because the hacker will need to also get a hold of the physical device of Alice, that could be her phone, for example, to do a login.
- 016_IAM MFA Overview.txt:39: For example, a YubiKey by Yubico and Yubico is a third party to AWS.
- 016_IAM MFA Overview.txt:46: You have a hardware key fob MFA device, for example, this one provided by Gemalto, which is also a third party to AWS.
- 017_IAM MFA Hands On.txt:6: We can also turn on password expiration to turn on, for example, expire after 90 days, or that a password expiration requires administrative resets, or we can allow the users to change their own password or we can prevent password reuse.
- 017_IAM MFA Hands On.txt:26: So when you should a QR code, you need to scan this QR code directly on your phone.
- 131_IAM MFA.txt:5: So, Alice has a password and then thanks to the device you own, for example, your phone or a security key or whatever, then you're going to get a successful login.
- 131_IAM MFA.txt:12: Or you can use, for example, a security key such as a YubiKey, which supports for multiple root and IAM users using a single security key.
- 131_IAM MFA.txt:14: So for example, one by Gemalto which gives you a code or you have the hardware Key Fob MFA device for AWS GovCloud which is provided by SurePassID and again gives you a code that you just enter while logging in.
- 131_IAM MFA.txt:18: So MFA can be required, for example, to permanently delete an object version because this is a destructive type of operation or suspend versioning on the bucket.
- 131_IAM MFA.txt:41: So for example, you created an MFA device for a user but you never activated it.
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
- 161_[DVA_SOA] Cognito User Pools.txt:4: That means that your users can use, for example, a simple login, their username or their email, and a password combination, to connect into your applications.
- 161_[DVA_SOA] Cognito User Pools.txt:6: So this is pretty much the thing you see when you go onto any other website, they ask you to register users, either create a username/password, or login Google, Facebook, or some other way.
- 161_[DVA_SOA] Cognito User Pools.txt:7: There is a feature that you can block users if their credentials are compromised elsewhere, so AWS scans the web for compromised credentials, and will let your user knows into Cognito User Pools, and then finally, and then finally, when your users log in with the Cognito User Pool, what they get back from the API is a JWT, so a JSON Web Token.
- 161_[DVA_SOA] Cognito User Pools.txt:9: Well, they're a database of users, so CUP will have its own internal database of users that we can see, and then our mobile applications and our web application can login against our Cognito User Pool, and when they are logged in, the CUP will return to our user, our mobile applications and our web applications, a JSON Web Token, JWT.
- 162_[DVA] Cognito Identity Pools.txt:6: So for example, they want to have access to DynamoDB table or an S3 bucket.
- 162_[DVA] Cognito Identity Pools.txt:11: And that could be a public provider, for example, log in with Amazon, Facebook, Google and Apple.
- 162_[DVA] Cognito Identity Pools.txt:14: So on top of all these login providers to allow to give our users their identity before they trade it for AWS credentials, we can allow unauthenticated guest users access into AWS.
- 162_[DVA] Cognito Identity Pools.txt:22: So we will allow our users to connect, for example, to a Cognito user pool, or to connect to Google login, Facebook login, so for social identity providers or SAML or Open ID Connect.
- 162_[DVA] Cognito Identity Pools.txt:47: And this will be allowing us to make sure that the users will only get access to what they need in DynamoDB or Amazon S3, for example.
- 162_[DVA] Cognito Identity Pools.txt:52: So we want to give our guest users access to AWS, and so we want to create an IAM policy, for example, that would allow any guest user to do a GetObject on a bucket for my_picture.jpg.
- 163_Cognito User Pool User Groups.txt:4: So we have a group, for example, made of Alice and Bob, and we attach an IAM role to this group.
- 163_Cognito User Pool User Groups.txt:5: So the ReadersIAMRole, for example, and then they can read DynamoDB with the correct policy.
- 164_Identity Federation & Cognito.txt:5: So the use cases is, for example, your corporation has its own identity system, for example, Active Directory, or you have a web and mobile application that needs to access AWS resources.
- 164_Identity Federation & Cognito.txt:19: And you need, for example, of course to set up a trust between IAM and your SAML 2.0 identity providers both ways.
- 164_Identity Federation & Cognito.txt:26: The IDP will verify the request through an identity store, for example, LDAP-based, and then it will return a SAML assertion if the login is successful.
- 164_Identity Federation & Cognito.txt:73: Okay, so when we have Web Identity Federation, can we restrict IAM policies?
- 164_Identity Federation & Cognito.txt:76: So the idea is that when you have a Web Identity Federation, you can use some special variables.
- 164_Identity Federation & Cognito.txt:77: For example, going to identity.amazon.com:sub or amazon.com:user_id and so on to restrict your IAM policies with conditions and make sure that the users really have the restrictions they need, okay?
- 164_Identity Federation & Cognito.txt:79: These are the old ways, obviously, except when we're using Cognito.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:15: And so I can click on the account I want and connect directly, for example, in the management console.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:30: And this is where, for example, you would define your users and your groups as you're used to in IAM.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:33: Now, of course, when you log in, you don't have access to everything.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:42: So we're going to create what's called the permission sets, and we're going to allow admin access on it.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:43: And then you have to assign this permission set directly into specific accounts, for example, your development accounts, and then you assign this permission set either to your users or to a group of users, for example, your developers.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:45: You can also have a permission set, for example, for read-only access and assign this permission set directly into your production account, so account A and account B.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:53: And you say, for example, that you have access to RDS and Aurora in your dev account, as well as RDS and Aurora in the prod account.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:55: And therefore, when you have your database admins, it can be a group, for example, and your users are in this group, you will assign it the permission sets of database admins.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:56: And whenever users log in through the IAM Identity Center and access the console of your dev accounts or your prod accounts, they will be automatically assuming an IAM role in that specific account that will give them the permissions they're supposed to get, which is pretty good.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:64: And using this, you can, for example, assign a user to a cost center or give them a title, so like junior, senior or a locale, whatever, so they only have access to a specific region.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:65: And the use case of this is that you actually define the IAM permission sets once and they leverage these attributes, and you only modify the access to AWS of your users or your groups by just changing these underlying attributes.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:66: So this is a use case that is advanced, but that is enabled by using the AWS IAM Identity Center.
- 167_AWS IAM Identity Center - Extras.txt:4: So for example, the permission sets can contain either AWS-managed policies, such as administrator access or power user access, et cetera.
- 167_AWS IAM Identity Center - Extras.txt:15: And to manage these policies across multiple accounts and make sure they're consistent, you should be always thinking about CloudFormation stack sets, for example.
- 167_AWS IAM Identity Center - Extras.txt:27: For example, for Amazon Q Developer, now called Kiro, or for Amazon Q Business, all you have to do is just click on Enable it and then enable IAM Identity Center and you're good to go.
- 167_AWS IAM Identity Center - Extras.txt:32: So we have the Identity Center, the Identity Store, for example, Microsoft Active Directory, we have the STS service, and our accounts within the organization.
- 167_AWS IAM Identity Center - Extras.txt:41: For example, you have the userprincipalname, the objectsid, the mail, displayname, objectguid, givenname, and memberOf on the right hand side.
- 167_AWS IAM Identity Center - Extras.txt:46: And also, because I showed you that the authentication happens at the backend level, for example, within Microsoft Active Directory and not directly with AWS, if you want to set a password policy and you wanted to enforce it, this has to be done within your Active Directory, not in AWS.
- 291_AWS IAM Identity Center.txt:15: And so I can click on the account I want and connect directly, for example, in the management console.
- 291_AWS IAM Identity Center.txt:30: And this is where, for example, you would define your users and your groups as you're used to in IAM.
- 291_AWS IAM Identity Center.txt:33: Now, of course, when you log in, you don't have access to everything.
- 291_AWS IAM Identity Center.txt:42: So we're going to create what's called the permission sets, and we're going to allow admin access on it.
- 291_AWS IAM Identity Center.txt:43: And then you have to assign this permission set directly into specific accounts, for example, your development accounts, and then you assign this permission set either to your users or to a group of users, for example, your developers.
- 291_AWS IAM Identity Center.txt:45: You can also have a permission set, for example, for read-only access and assign this permission set directly into your production account, so account A and account B.
- 291_AWS IAM Identity Center.txt:53: And you say, for example, that you have access to RDS and Aurora in your dev account, as well as RDS and Aurora in the prod account.
- 291_AWS IAM Identity Center.txt:55: And therefore, when you have your database admins, it can be a group, for example, and your users are in this group, you will assign it the permission sets of database admins.
- 291_AWS IAM Identity Center.txt:56: And whenever users log in through the IAM Identity Center and access the console of your dev accounts or your prod accounts, they will be automatically assuming an IAM role in that specific account that will give them the permissions they're supposed to get, which is pretty good.
- 291_AWS IAM Identity Center.txt:64: And using this, you can, for example, assign a user to a cost center or give them a title, so like junior, senior or a locale, whatever, so they only have access to a specific region.
- 291_AWS IAM Identity Center.txt:65: And the use case of this is that you actually define the IAM permission sets once and they leverage these attributes, and you only modify the access to AWS of your users or your groups by just changing these underlying attributes.
- 291_AWS IAM Identity Center.txt:66: So this is a use case that is advanced, but that is enabled by using the AWS IAM Identity Center.

### Constraints / Limitations (Deduped)
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
- 007_Identity Federation & Cognito.txt:38: The only difference is that on the left hand side, we have the Microsoft Active Directory Federation Services on the top left, and then on the bottom right, where the user sits, is Active directory itself, okay?
- 007_Identity Federation & Cognito.txt:45: Now that means that the identity broker is responsible and must determine the appropriate IAM role for that user.
- 007_Identity Federation & Cognito.txt:47: Then the only way for it to work is to use the AssumeRole or GetFederationToken API from STS directly from the custom identity broker.
- 007_Identity Federation & Cognito.txt:69: So why should we use this mechanism with Cognito?
- 007_Identity Federation & Cognito.txt:75: And so here is an example of a policy that allows the user to only list a bucket with a prefix as the user ID, and also to get, update, and put objects in with that specific prefix.
- 007_Identity Federation & Cognito.txt:81: So I hope you liked this, and I will strongly suggest you revisit this lecture one more time before the exam and it should all make sense, and I will see you in the next lecture.
- 011_AWS IAM Identity Center.txt:45: You can also have a permission set, for example, for read-only access and assign this permission set directly into your production account, so account A and account B.
- 011_AWS IAM Identity Center.txt:46: And then you assign this permission set again to Bob and Alice, which would allow them to have a read-only access to these accounts.
- 011_AWS IAM Identity Center.txt:59: And it gives them the required URLs, the certificates and metadata.
- 011_AWS IAM Identity Center.txt:64: And using this, you can, for example, assign a user to a cost center or give them a title, so like junior, senior or a locale, whatever, so they only have access to a specific region.
- 011_AWS IAM Identity Center.txt:65: And the use case of this is that you actually define the IAM permission sets once and they leverage these attributes, and you only modify the access to AWS of your users or your groups by just changing these underlying attributes.
- 016_IAM MFA Overview.txt:15: It is possible, you already used it on some websites, but on AWS it's a must and it's very recommended to use it.
- 017_IAM MFA Hands On.txt:10: Now, there is a way for you to actually protect your root user, which is the most important account in your AWS account, and you can protect it by using multi-factor authentication.
- 017_IAM MFA Hands On.txt:26: So when you should a QR code, you need to scan this QR code directly on your phone.
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
- 162_[DVA] Cognito Identity Pools.txt:8: So we cannot create normal IAM users for these users because there are too many of them, it doesn't scale and we don't trust them.
- 162_[DVA] Cognito Identity Pools.txt:47: And this will be allowing us to make sure that the users will only get access to what they need in DynamoDB or Amazon S3, for example.
- 162_[DVA] Cognito Identity Pools.txt:49: And for it to work, the roles must have a trust policy of Cognito identity pools.
- 162_[DVA] Cognito Identity Pools.txt:55: So our users are connected, but we want to make sure that they only have access to a prefix in your S3 bucket that represents what the user identity is.
- 162_[DVA] Cognito Identity Pools.txt:56: And so as such, you can use a policy variable like here in green, and this is allowing a user to only access within the bucket we've defined, anything that starts with the prefix of its user ID.
- 162_[DVA] Cognito Identity Pools.txt:57: So effectively we gave the user access only to what it can access thanks to its user ID.
- 163_Cognito User Pool User Groups.txt:14: You cannot create nested groups, you cannot have groups of groups, and concept of groups just serve the concept of simplifying security in Cognito.
- 164_Identity Federation & Cognito.txt:38: The only difference is that on the left hand side, we have the Microsoft Active Directory Federation Services on the top left, and then on the bottom right, where the user sits, is Active directory itself, okay?
- 164_Identity Federation & Cognito.txt:45: Now that means that the identity broker is responsible and must determine the appropriate IAM role for that user.
- 164_Identity Federation & Cognito.txt:47: Then the only way for it to work is to use the AssumeRole or GetFederationToken API from STS directly from the custom identity broker.
- 164_Identity Federation & Cognito.txt:69: So why should we use this mechanism with Cognito?
- 164_Identity Federation & Cognito.txt:75: And so here is an example of a policy that allows the user to only list a bucket with a prefix as the user ID, and also to get, update, and put objects in with that specific prefix.
- 164_Identity Federation & Cognito.txt:81: So I hope you liked this, and I will strongly suggest you revisit this lecture one more time before the exam and it should all make sense, and I will see you in the next lecture.
- 165_SAML 2.0 Metadata File Troubleshooting.txt:5: From there, we're going to generate from our IdP a metadata XML file, I will show you what that file looks like in a second, and that file should be created and sent to AWS in the IAM service to create a SAML identity provider.
- 165_SAML 2.0 Metadata File Troubleshooting.txt:7: So the important part here is the SAML file that we generate from the IdP and register in IAM.
- 165_SAML 2.0 Metadata File Troubleshooting.txt:11: And that's very important because I will show it in the next slide what happens if you don't renew it.
- 165_SAML 2.0 Metadata File Troubleshooting.txt:23: It's what you should know and that's an exam question.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:45: You can also have a permission set, for example, for read-only access and assign this permission set directly into your production account, so account A and account B.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:46: And then you assign this permission set again to Bob and Alice, which would allow them to have a read-only access to these accounts.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:59: And it gives them the required URLs, the certificates and metadata.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:64: And using this, you can, for example, assign a user to a cost center or give them a title, so like junior, senior or a locale, whatever, so they only have access to a specific region.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:65: And the use case of this is that you actually define the IAM permission sets once and they leverage these attributes, and you only modify the access to AWS of your users or your groups by just changing these underlying attributes.
- 167_AWS IAM Identity Center - Extras.txt:11: If you are using customer managed policies, you should know that you should create these policies in each of the accounts, where we assign this permission sets.
- 167_AWS IAM Identity Center - Extras.txt:12: So that means that if we create a developer access policy in IAM Identity Center, it should be present in all the target accounts, where we plan to use that permission set and that it can be an exam question.
- 167_AWS IAM Identity Center - Extras.txt:14: So it's super important that you do so.
- 167_AWS IAM Identity Center - Extras.txt:15: And to manage these policies across multiple accounts and make sure they're consistent, you should be always thinking about CloudFormation stack sets, for example.
- 167_AWS IAM Identity Center - Extras.txt:18: To do so, you must first create the permission sets in the management accounts to enable the delegation, and then you must first create a first user assignment in the delegated accounts.
- 167_AWS IAM Identity Center - Extras.txt:20: What the delegated account cannot do is delete any IAM Identity Center configurations or manage any permission sets provision in the management accounts, but they can recreate and manage permission sets within the delegated scope in all the other accounts.
- 167_AWS IAM Identity Center - Extras.txt:21: Delegated administrators cannot add or remove other member accounts, and they cannot enable or disable user access in the management account.
- 167_AWS IAM Identity Center - Extras.txt:22: So the idea behind all these restriction is that you cannot elevate your rights as a delegated administrator and you can only do just the administration.
- 167_AWS IAM Identity Center - Extras.txt:30: But if you just remember the list I gave you, you should be good to go for the exam.
- 167_AWS IAM Identity Center - Extras.txt:34: So you see all the authentication happens at the Identity Store level, and that's important to remember.
- 167_AWS IAM Identity Center - Extras.txt:39: What's important to remember here is that the authentication happens now within the Identity Store, which brings us to attribute mapping.
- 167_AWS IAM Identity Center - Extras.txt:44: And so we should be doing is tell IAM Identity Center how to map these attributes to the attributes that IAM Identity Centers expects, which are username, sid, email, displayname, externalid, name.givenname, and Groups.
- 167_AWS IAM Identity Center - Extras.txt:47: The IAM Identity Center service only acts as a federation broker.
- 291_AWS IAM Identity Center.txt:45: You can also have a permission set, for example, for read-only access and assign this permission set directly into your production account, so account A and account B.
- 291_AWS IAM Identity Center.txt:46: And then you assign this permission set again to Bob and Alice, which would allow them to have a read-only access to these accounts.
- 291_AWS IAM Identity Center.txt:59: And it gives them the required URLs, the certificates and metadata.
- 291_AWS IAM Identity Center.txt:64: And using this, you can, for example, assign a user to a cost center or give them a title, so like junior, senior or a locale, whatever, so they only have access to a specific region.
- 291_AWS IAM Identity Center.txt:65: And the use case of this is that you actually define the IAM permission sets once and they leverage these attributes, and you only modify the access to AWS of your users or your groups by just changing these underlying attributes.

### Patterns / Architectures (Deduped)
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
- 007_Identity Federation & Cognito.txt:1: Okay, so now let's discuss Identity Federation in AWS.
- 007_Identity Federation & Cognito.txt:4: So this is why we need Identity Federation.
- 007_Identity Federation & Cognito.txt:6: And so this is where we need Identity Federation.
- 007_Identity Federation & Cognito.txt:11: So Identity Federation can have multiple flavors.
- 007_Identity Federation & Cognito.txt:12: It could be SAML 2.0, a custom identity broker, Web Identity Federation with or without Amazon Cognito, and then IAM Identity Center.
- 007_Identity Federation & Cognito.txt:13: So I'm going to discuss the first three, single sign-on will have its own lecture, and this is the more recent generation of Identity Federation, but still from an example perspective, you need to know about all of them.
- 007_Identity Federation & Cognito.txt:14: So let's go ahead with SAML 2.0 Federation.
- 007_Identity Federation & Cognito.txt:21: So as I said, SAML 2.0 Federation is the old way of doing things.
- 007_Identity Federation & Cognito.txt:22: And now IAM Identity Center is the new managed way and simpler way of doing things, yet we still have to learn about SAML 2.0 Federation.
- 007_Identity Federation & Cognito.txt:35: So these two flows are very similar because they use the same SAML 2.0 Federation.
- 007_Identity Federation & Cognito.txt:38: The only difference is that on the left hand side, we have the Microsoft Active Directory Federation Services on the top left, and then on the bottom right, where the user sits, is Active directory itself, okay?
- 007_Identity Federation & Cognito.txt:47: Then the only way for it to work is to use the AssumeRole or GetFederationToken API from STS directly from the custom identity broker.
- 007_Identity Federation & Cognito.txt:51: Now with web identity federation, we have two flavors, we have without Cognito and with Cognito.
- 007_Identity Federation & Cognito.txt:54: So what is Web Identity Federation?
- 007_Identity Federation & Cognito.txt:65: So it's preferred over Web Identity Federation because here in Cognito, we can create IAM roles with the least privilege needed, and then we just need to build the trust between the OIDC IdP and AWS.
- 007_Identity Federation & Cognito.txt:73: Okay, so when we have Web Identity Federation, can we restrict IAM policies?
- 007_Identity Federation & Cognito.txt:76: So the idea is that when you have a Web Identity Federation, you can use some special variables.
- 007_Identity Federation & Cognito.txt:78: So that's it for Identity Federation.
- 011_AWS IAM Identity Center.txt:3: So the idea is that it's the same service, just been renamed and it gives you one login, therefore it's called single sign-on, for all your AWS accounts in the AWS Organizations, but also your business cloud applications.
- 011_AWS IAM Identity Center.txt:31: Then you integrate Identity Center with SSO for your organization or your Windows EC2 instances, your business cloud applications or your custom SAML2.0-enabled applications.
- 011_AWS IAM Identity Center.txt:36: So we have an organization and we set up IAM Identity Center in the management account.
- 011_AWS IAM Identity Center.txt:48: And the first one is multi-account permissions.
- 011_AWS IAM Identity Center.txt:49: So, of course, using the service, you can manage access across multiple accounts in your organization.
- 011_AWS IAM Identity Center.txt:51: So here is the IAM Identity Center, and it's integrated with your organization and you define a permission set for database admins.
- 139_[SOA] STS Overview.txt:23: So if we have a look at Cross-Account Access with STS, let's say we have a Dev account and a Prod account and we have an S3 bucket in Prod that we want to access from IAM users in a group in Dev.
- 161_[DVA_SOA] Cognito User Pools.txt:10: As I said, we can also provide login with Amazon, or Google, or Facebook, facility into our Cognito User Pools, so we can do Federation through Third Party Identity Providers, and offer a social login through a social identity provider, so login with Google, login with Facebook.
- 164_Identity Federation & Cognito.txt:1: Okay, so now let's discuss Identity Federation in AWS.
- 164_Identity Federation & Cognito.txt:4: So this is why we need Identity Federation.
- 164_Identity Federation & Cognito.txt:6: And so this is where we need Identity Federation.
- 164_Identity Federation & Cognito.txt:11: So Identity Federation can have multiple flavors.
- 164_Identity Federation & Cognito.txt:12: It could be SAML 2.0, a custom identity broker, Web Identity Federation with or without Amazon Cognito, and then IAM Identity Center.
- 164_Identity Federation & Cognito.txt:13: So I'm going to discuss the first three, single sign-on will have its own lecture, and this is the more recent generation of Identity Federation, but still from an example perspective, you need to know about all of them.
- 164_Identity Federation & Cognito.txt:14: So let's go ahead with SAML 2.0 Federation.
- 164_Identity Federation & Cognito.txt:21: So as I said, SAML 2.0 Federation is the old way of doing things.
- 164_Identity Federation & Cognito.txt:22: And now IAM Identity Center is the new managed way and simpler way of doing things, yet we still have to learn about SAML 2.0 Federation.
- 164_Identity Federation & Cognito.txt:35: So these two flows are very similar because they use the same SAML 2.0 Federation.
- 164_Identity Federation & Cognito.txt:38: The only difference is that on the left hand side, we have the Microsoft Active Directory Federation Services on the top left, and then on the bottom right, where the user sits, is Active directory itself, okay?
- 164_Identity Federation & Cognito.txt:47: Then the only way for it to work is to use the AssumeRole or GetFederationToken API from STS directly from the custom identity broker.
- 164_Identity Federation & Cognito.txt:51: Now with web identity federation, we have two flavors, we have without Cognito and with Cognito.
- 164_Identity Federation & Cognito.txt:54: So what is Web Identity Federation?
- 164_Identity Federation & Cognito.txt:65: So it's preferred over Web Identity Federation because here in Cognito, we can create IAM roles with the least privilege needed, and then we just need to build the trust between the OIDC IdP and AWS.
- 164_Identity Federation & Cognito.txt:73: Okay, so when we have Web Identity Federation, can we restrict IAM policies?
- 164_Identity Federation & Cognito.txt:76: So the idea is that when you have a Web Identity Federation, you can use some special variables.
- 164_Identity Federation & Cognito.txt:78: So that's it for Identity Federation.
- 165_SAML 2.0 Metadata File Troubleshooting.txt:1: So let's talk about how SAML 2.0 federation is configured in AWS, and an issue that can arise and how to troubleshoot it.
- 165_SAML 2.0 Metadata File Troubleshooting.txt:3: So we want to enable SAML 2.0-based identity federation.
- 165_SAML 2.0 Metadata File Troubleshooting.txt:6: From there, we can create the IAM roles that will be used for authentication for the SAML provider and we have therefore established SAML 2.0-based federation in AWS.
- 165_SAML 2.0 Metadata File Troubleshooting.txt:13: So which organization actually issued that XML file, that metadata file.
- 165_SAML 2.0 Metadata File Troubleshooting.txt:17: So in case you are getting this error on AWS, response signature invalid from the AWS security token service with a status code 400 and the error code is invalid identity token, then the reason is that the federation metadata file of the identity provider does not match the metadata of the IAM identity provider.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:3: So the idea is that it's the same service, just been renamed and it gives you one login, therefore it's called single sign-on, for all your AWS accounts in the AWS Organizations, but also your business cloud applications.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:31: Then you integrate Identity Center with SSO for your organization or your Windows EC2 instances, your business cloud applications or your custom SAML2.0-enabled applications.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:36: So we have an organization and we set up IAM Identity Center in the management account.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:48: And the first one is multi-account permissions.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:49: So, of course, using the service, you can manage access across multiple accounts in your organization.
- 166_[SAA_SOA] AWS IAM Identity Center.txt:51: So here is the IAM Identity Center, and it's integrated with your organization and you define a permission set for database admins.
- 167_AWS IAM Identity Center - Extras.txt:16: There's a way also for you to do delegated administration in IAM Identity Center.
- 167_AWS IAM Identity Center - Extras.txt:17: The idea is that you create in the management of accounts the entity of IAM Identity Center, but then you're going to delegate the administration of this to one of the member accounts in the organization.
- 167_AWS IAM Identity Center - Extras.txt:18: To do so, you must first create the permission sets in the management accounts to enable the delegation, and then you must first create a first user assignment in the delegated accounts.
- 167_AWS IAM Identity Center - Extras.txt:20: What the delegated account cannot do is delete any IAM Identity Center configurations or manage any permission sets provision in the management accounts, but they can recreate and manage permission sets within the delegated scope in all the other accounts.
- 167_AWS IAM Identity Center - Extras.txt:21: Delegated administrators cannot add or remove other member accounts, and they cannot enable or disable user access in the management account.
- 167_AWS IAM Identity Center - Extras.txt:22: So the idea behind all these restriction is that you cannot elevate your rights as a delegated administrator and you can only do just the administration.
- 167_AWS IAM Identity Center - Extras.txt:24: Again, we have IAM Identity Center in our management accounts, and then we have a security accounts that will be the delegated administrator that will have admin access to manage everything within IAM Identity Center, except, of course, promote itself to higher privileges.
- 167_AWS IAM Identity Center - Extras.txt:31: So let me just remind you how SAML 2.0 Federation works with IAM Identity Center.
- 167_AWS IAM Identity Center - Extras.txt:32: So we have the Identity Center, the Identity Store, for example, Microsoft Active Directory, we have the STS service, and our accounts within the organization.
- 167_AWS IAM Identity Center - Extras.txt:47: The IAM Identity Center service only acts as a federation broker.
- 291_AWS IAM Identity Center.txt:3: So the idea is that it's the same service, just been renamed and it gives you one login, therefore it's called single sign-on, for all your AWS accounts in the AWS Organizations, but also your business cloud applications.
- 291_AWS IAM Identity Center.txt:31: Then you integrate Identity Center with SSO for your organization or your Windows EC2 instances, your business cloud applications or your custom SAML2.0-enabled applications.
- 291_AWS IAM Identity Center.txt:36: So we have an organization and we set up IAM Identity Center in the management account.
- 291_AWS IAM Identity Center.txt:48: And the first one is multi-account permissions.
- 291_AWS IAM Identity Center.txt:49: So, of course, using the service, you can manage access across multiple accounts in your organization.
- 291_AWS IAM Identity Center.txt:51: So here is the IAM Identity Center, and it's integrated with your organization and you define a permission set for database admins.

## Deduped Consolidation Snapshot End

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: Now inside of our corporation, we'll have a portal or identity provider, and the user will make an authentication request to the IDP.
- Signal 2: So it's preferred over Web Identity Federation because here in Cognito, we can create IAM roles with the least privilege needed, and then we just need to build the trust between the OIDC IdP and AWS.
- Signal 3: Transcript signals that inside of our corporation, we'll have a portal or identity provider, and the user will make an authentication request to the IDP.
- Signal 4: Key Insights: STS will check the permissions and make sure the setup is correct, and we'll go into details on how that look likes, and then, we'll get security credentials back.
- Signal 5: Key Insights: Okay, so here is the deep dive a little bit on providing access to an IAM user in your or another AWS accounts that you own, so this is within your circle of trust, in which case, we can, for example, create a role in Account A or A*.
- Signal 6: Key Insights: We can also force the users to switch to that role using the Management Console or the CLI and the AssumeRole API, and so the idea is that we have an extra level of security here.
- Signal 7: Key Insights: Okay, so the first thing we do is that in the production accounts, the admin will create a role that grants the development account read/write access to the productionapp bucket, so this role will allow us to access the S3 buckets.
- Signal 8: Key Insights: It thinks it's going to operate on the right-hand side accounts, but it actually operates on the left-hand side accounts, and so this is why AWS defined this external ID thing, and let's see how this protects against this attack, and this is an exam question, so this is why I'm going go deep into this, so we have now the same setup, but this time, we also define an external ID to assume this role, and this external ID is something secret that is shared between your accounts and the account in the middle, so we're saying, "Okay, here is the ARN of the account you should assume, but when you do assume this ARN, you need to pass in the external ID that we have defined together, and so, as such, okay, it's able to access this role because we know we both know the secrets, okay?
- Signal 9: Key Insights: And the idea is that because the users already exist within your corporate directory, then you don't want to create specific IAM users for them because you'd like to do user management outside of AWS.
- Signal 10: Key Insights: Using this, we can access the console, the CLI, or any API using temporary credentials.

### Service-Specific Lab Paths
### Activity 1: IAM Lab for MFA, STS federation, SAML/OIDC, Cognito, IAM Identity Center
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

### Activity 2: Amazon S3 Lab for MFA, STS federation, SAML/OIDC, Cognito, IAM Identity Center
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

### Activity 3: Amazon VPC Lab for MFA, STS federation, SAML/OIDC, Cognito, IAM Identity Center
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

### Activity 4: Amazon CloudWatch Lab for MFA, STS federation, SAML/OIDC, Cognito, IAM Identity Center
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

Use this lens to study MFA, STS federation, SAML/OIDC, Cognito, IAM Identity Center in a cloud-agnostic way: focus on capability first, provider name second.

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

