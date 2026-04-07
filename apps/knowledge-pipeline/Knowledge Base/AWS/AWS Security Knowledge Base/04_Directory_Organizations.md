# 04_Directory_Organizations.md

## Scope
- Topic: Directory Services, AWS Organizations, SCPs, Control Tower, RAM
- Files processed: 16
- Extracted non-empty transcript lines: 1006
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 4 Topic 4: Directory and Organizations)

This section is the study-first architecture guide for enterprise account governance, directory integration, and organization-scale security controls.

### Phase 1 - Foundations

#### Module 1: Why Multi-Account Governance Exists
- Account isolation is a stronger boundary than workload-only separation in many cloud threat models.
- Organizational structure enables policy inheritance, billing aggregation, and centralized guardrails.
- Governance architecture should be explicit before account sprawl begins.


##### Source Transcript Details
- Module focus: Why Multi-Account Governance Exists
- Primary transcript files:
- outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/222_[SAA_SOA] Organizations.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/009_AWS Organizations.txt
- outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/223_[CCP_SAA_SOA] Organizations - Hands On.txt
- outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt
- outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/225_AWS Control Tower.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/008_AWS Directory Services.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/168_AWS Directory Services.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/010_AWS Organizations Policies.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/285_Organizations - Overview.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/286_Organizations - Hands On.txt
- Top concept clusters from transcript metadata:
- IAM Domain Operational Context
- Organization Governance
- Directory Integration
- Authorization Model
- Identity Lifecycle
- Access Boundary Controls
- Federated Authentication
- Temporary Credential Strategy
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 16
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1006
- Key insights inside selected files: 802
- Unique concept tags in selected files: 8

##### Transcript-Enriched Learning Notes
- So now let's talk about AWS Organizations.
- So it's a global service and it allows you to manage multiple AWS accounts at the same time.
- So you create an organization and the main account in your organization is called the management account, while the other accounts that join the organization or that are created from the organizations are called membe...
- And remember, accounts can only be part of one organization.
- The cool thing about organization is that the billing is consolidated across all the accounts.
- So you have a single payment method on the management account and then it will be paying for all the organization's cost.
- So if you use a lot EC2 or if you use a lot Amazon S3 across all your accounts, then you will get big discounts, because it will summarize and sum up all the usage across all the accounts.
- You can also share reserved instances and saving plans discounts across accounts.
- So if a reserved instance is unused in one account, another account can benefit from it and therefor the discounts apply across the entire organization, which is really good for cost savings.
- Now, there's also an API to automate the account creation from within the organization.
- So you can create accounts very easily using an organization.
- So we have what's called a root organizational unit, or OU, and this is the outermost OU of your accounts and then within it sits the management account.
- Then you can create sub-OUs, so you can create for example an OU for the dev accounts and then you can create member accounts within the dev OU or you can create OU for a prod account and also add member accounts ther...
- You can create within the prod OU, an OU for your HR member accounts and an OU for your finance member accounts.
- So you can organize by business units, so you have for example, the management account and then the sales, retail and finance OU and then different accounts within each OU.
- Or you can have an OU by environment, so for example, one OU for prod, one OU for test, one OU for dev and within each OU, some accounts.
- Or project-based, so you can have an OU per project within an account, within each project.
- So what are the advantages of using organizations?

##### Polished Architect Notes
- Transcript signals that now let's talk about AWS Organizations.
- Transcript signals that it's a global service and it allows you to manage multiple AWS accounts at the same time.
- Transcript signals that you create an organization and the main account in your organization is called the management account, while the other accounts that join the organization or that are created from the organizations are called memb...
- Transcript signals that remember, accounts can only be part of one organization.
- Transcript signals that the cool thing about organization is that the billing is consolidated across all the accounts.
- Transcript signals that you have a single payment method on the management account and then it will be paying for all the organization's cost.
- Transcript signals that if you use a lot EC2 or if you use a lot Amazon S3 across all your accounts, then you will get big discounts, because it will summarize and sum up all the usage across all the accounts.
- Transcript signals that you can also share reserved instances and saving plans discounts across accounts.
- Transcript signals that if a reserved instance is unused in one account, another account can benefit from it and therefor the discounts apply across the entire organization, which is really good for cost savings.
- Transcript signals that there's also an API to automate the account creation from within the organization.
- Transcript signals that you can create accounts very easily using an organization.
- Transcript signals that we have what's called a root organizational unit, or OU, and this is the outermost OU of your accounts and then within it sits the management account.

##### Architect Synthesis (Transcript-Derived)
- Treat IAM Domain Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Organization Governance as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Directory Integration as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Authorization Model as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Identity Lifecycle as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: now let's talk about AWS Organizations.
- Design implication: it's a global service and it allows you to manage multiple AWS accounts at the same time.
- Design implication: you create an organization and the main account in your organization is called the management account, while the other accounts that join the organization or that are created from the organizations are called memb...
#### Module 2: Organizational Building Blocks
- Management account and member accounts.
- Organizational units as policy segmentation domains.
- SCPs as permission guardrails, not permission grants.
- Delegated admin patterns for operational scale.


##### Source Transcript Details
- Module focus: Organizational Building Blocks
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/008_AWS Directory Services.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/168_AWS Directory Services.txt
- outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/223_[CCP_SAA_SOA] Organizations - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/286_Organizations - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/010_AWS Organizations Policies.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/009_AWS Organizations.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/292_AWS Directory Services.txt
- outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/222_[SAA_SOA] Organizations.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/285_Organizations - Overview.txt
- outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt
- Top concept clusters from transcript metadata:
- IAM Domain Operational Context
- Directory Integration
- Organization Governance
- Authorization Model
- Identity Lifecycle
- Federated Authentication
- Access Boundary Controls
- Temporary Credential Strategy
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 16
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1006
- Key insights inside selected files: 827
- Unique concept tags in selected files: 8

##### Transcript-Enriched Learning Notes
- So the exam as a strong emphasis on Microsoft Active Directory and AWS directory services.
- The beautiful thing is that now one can use John password of on any of these machines to connect and the active directory will check the login itself.
- So remember the user will browse to URL in the Microsoft Active Directory Services which will authenticate the user against a Microsoft Active Directory.
- Okay, so now let's get into AWS Directory Services.
- We have database directory services, AD Connector.
- So we have three kinds of directory services and I think they're quite clear the differences but I really want to go deep dive into each of those to make it very very clear as to how they're different.
- So, with AWS managed Microsoft AD, you're going to be deploying Microsoft active directory within your VPC.
- This directory, so the Managed Microsoft AD can be a standalone repository in AWS, or it can be joined to your on-premise AD and we'll see how to join it in a second.
- And another last feature is that you get Automated Multi-Region replication of your directory, if you need to.
- So your managed Microsoft AA DC is in the middle and it can get integrated with your on-premise active directory using something called two-way Forest trust and we'll see this in a second in the next slide.
- Finally, your traditional active directory applications such as your dot NET Apps, your SharePoint and your SQL server that you deploy on EC2 instances can obviously be integrated with that active directory that's man...
- That is the going to be the most integrated with AWS offering from directory services.
- Now, something I want to highlight is how to connect this to your on-premise active directory because that is going to be extremely important going to the exam to understand this subtlety.
- So that means that their users are living independently on the two different Microsoft active directory.
- So, your traditional active directory app can connect to on-premise.
- But now, because we have set up a two-way forest trust your traditional active directory app in case it is trying to request a domain that belongs to AWS.
- The only way to set up some kind of replication is for you to deploy active directory on an easy two windows instance, and you will have to set up replication.
- So a proxy to redirect your request your on-premise Microsoft Active Directory there's no caching capability.

##### Polished Architect Notes
- Transcript signals that the exam as a strong emphasis on Microsoft Active Directory and AWS directory services.
- Transcript signals that the beautiful thing is that now one can use John password of on any of these machines to connect and the active directory will check the login itself.
- Transcript signals that remember the user will browse to URL in the Microsoft Active Directory Services which will authenticate the user against a Microsoft Active Directory.
- Transcript signals that so now let's get into AWS Directory Services.
- Transcript signals that we have database directory services, AD Connector.
- Transcript signals that we have three kinds of directory services and I think they're quite clear the differences but I really want to go deep dive into each of those to make it very very clear as to how they're different.
- Transcript signals that with AWS managed Microsoft AD, you're going to be deploying Microsoft active directory within your VPC.
- Transcript signals that this directory, so the Managed Microsoft AD can be a standalone repository in AWS, or it can be joined to your on-premise AD and we'll see how to join it in a second.
- Transcript signals that another last feature is that you get Automated Multi-Region replication of your directory, if you need to.
- Transcript signals that your managed Microsoft AA DC is in the middle and it can get integrated with your on-premise active directory using something called two-way Forest trust and we'll see this in a second in the next slide.
- Transcript signals that finally, your traditional active directory applications such as your dot NET Apps, your SharePoint and your SQL server that you deploy on EC2 instances can obviously be integrated with that active directory that's...
- Transcript signals that that is the going to be the most integrated with AWS offering from directory services.

##### Architect Synthesis (Transcript-Derived)
- Treat IAM Domain Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Directory Integration as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Organization Governance as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Authorization Model as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Identity Lifecycle as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: the exam as a strong emphasis on Microsoft Active Directory and AWS directory services.
- Design implication: the beautiful thing is that now one can use John password of on any of these machines to connect and the active directory will check the login itself.
- Design implication: remember the user will browse to URL in the Microsoft Active Directory Services which will authenticate the user against a Microsoft Active Directory.
#### Module 3: Directory Integration Context
- Enterprise identity commonly relies on directory-backed access patterns.
- Directory service choices affect auth flows, migration path, and operational burden.


##### Source Transcript Details
- Module focus: Directory Integration Context
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/008_AWS Directory Services.txt
- outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/168_AWS Directory Services.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/292_AWS Directory Services.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/293_AWS Directory Services - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/012_AWS Control Tower.txt
- outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/225_AWS Control Tower.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/010_AWS Organizations Policies.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/009_AWS Organizations.txt
- outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/223_[CCP_SAA_SOA] Organizations - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/286_Organizations - Hands On.txt
- Top concept clusters from transcript metadata:
- IAM Domain Operational Context
- Directory Integration
- Organization Governance
- Identity Lifecycle
- Authorization Model
- Federated Authentication
- Access Boundary Controls
- Temporary Credential Strategy
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 16
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1006
- Key insights inside selected files: 801
- Unique concept tags in selected files: 8

##### Transcript-Enriched Learning Notes
- So the exam as a strong emphasis on Microsoft Active Directory and AWS directory services.
- The beautiful thing is that now one can use John password of on any of these machines to connect and the active directory will check the login itself.
- So remember the user will browse to URL in the Microsoft Active Directory Services which will authenticate the user against a Microsoft Active Directory.
- Okay, so now let's get into AWS Directory Services.
- We have database directory services, AD Connector.
- So we have three kinds of directory services and I think they're quite clear the differences but I really want to go deep dive into each of those to make it very very clear as to how they're different.
- So, with AWS managed Microsoft AD, you're going to be deploying Microsoft active directory within your VPC.
- And finally we have integrations.
- This directory, so the Managed Microsoft AD can be a standalone repository in AWS, or it can be joined to your on-premise AD and we'll see how to join it in a second.
- And another last feature is that you get Automated Multi-Region replication of your directory, if you need to.
- Now, let's have a look at the integrations in depth.
- So your managed Microsoft AA DC is in the middle and it can get integrated with your on-premise active directory using something called two-way Forest trust and we'll see this in a second in the next slide.
- Finally, your traditional active directory applications such as your dot NET Apps, your SharePoint and your SQL server that you deploy on EC2 instances can obviously be integrated with that active directory that's man...
- That is the going to be the most integrated with AWS offering from directory services.
- Now, something I want to highlight is how to connect this to your on-premise active directory because that is going to be extremely important going to the exam to understand this subtlety.
- So that means that their users are living independently on the two different Microsoft active directory.
- So, your traditional active directory app can connect to on-premise.
- But now, because we have set up a two-way forest trust your traditional active directory app in case it is trying to request a domain that belongs to AWS.

##### Polished Architect Notes
- Transcript signals that the exam as a strong emphasis on Microsoft Active Directory and AWS directory services.
- Transcript signals that the beautiful thing is that now one can use John password of on any of these machines to connect and the active directory will check the login itself.
- Transcript signals that remember the user will browse to URL in the Microsoft Active Directory Services which will authenticate the user against a Microsoft Active Directory.
- Transcript signals that so now let's get into AWS Directory Services.
- Transcript signals that we have database directory services, AD Connector.
- Transcript signals that we have three kinds of directory services and I think they're quite clear the differences but I really want to go deep dive into each of those to make it very very clear as to how they're different.
- Transcript signals that with AWS managed Microsoft AD, you're going to be deploying Microsoft active directory within your VPC.
- Transcript signals that finally we have integrations.
- Transcript signals that this directory, so the Managed Microsoft AD can be a standalone repository in AWS, or it can be joined to your on-premise AD and we'll see how to join it in a second.
- Transcript signals that another last feature is that you get Automated Multi-Region replication of your directory, if you need to.
- Transcript signals that let's have a look at the integrations in depth.
- Transcript signals that your managed Microsoft AA DC is in the middle and it can get integrated with your on-premise active directory using something called two-way Forest trust and we'll see this in a second in the next slide.

##### Architect Synthesis (Transcript-Derived)
- Treat IAM Domain Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Directory Integration as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Organization Governance as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Identity Lifecycle as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Authorization Model as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: the exam as a strong emphasis on Microsoft Active Directory and AWS directory services.
- Design implication: the beautiful thing is that now one can use John password of on any of these machines to connect and the active directory will check the login itself.
- Design implication: remember the user will browse to URL in the Microsoft Active Directory Services which will authenticate the user against a Microsoft Active Directory.
### Phase 2 - Core Services

#### AWS Organizations and SCP Mechanics
- Organizations centralize account lifecycle and policy guardrails.
- SCP logic requires careful explicit-allow path planning and deny analysis.
- Management account exceptions and OU hierarchy behavior are high-impact design factors.

#### AWS Control Tower
- Landing zone acceleration with governance baseline controls.
- Use to standardize account provisioning and initial policy posture.

#### AWS Directory Services
- Directory integration supports enterprise identity and legacy compatibility scenarios.
- Design decisions should account for trust models, operational ownership, and connectivity dependencies.

#### AWS RAM
- Controlled cross-account resource sharing without flattening account boundaries.
- Useful for shared services while preserving governance separation.

### Phase 3 - Advanced Patterns

#### Pattern 1: OU-by-Risk Segmentation
- Organize OUs by risk/compliance boundary, not only by org chart.
- Apply SCP stacks that reflect environment criticality and compliance constraints.

#### Pattern 2: Delegated Governance Operations
- Separate platform governance duties from billing/root authority where operationally appropriate.
- Reduce concentration of operational risk in one account/team.

#### Pattern 3: Shared Services with Controlled Exposure
- Expose common platform components through RAM and policy-scoped sharing.
- Preserve least-privilege and auditable ownership of shared resources.

### Phase 4 - System Design (Production)

#### Reference Enterprise Organization Architecture
- Root OU with policy baseline.
- Segmented OUs for production, non-production, and specialized regulatory domains.
- Central governance and logging accounts with delegated security operations.
- Directory and SSO integration aligned to workforce lifecycle controls.

#### Scaling Considerations
- OU sprawl and policy inheritance complexity.
- SCP conflict debugging in deep account hierarchies.
- Governance exception handling and drift control.

#### Cost Considerations
- Direct service costs are less significant than operational governance complexity.
- Strong OU/SCP design reduces downstream incident and compliance costs.

### Cross-Cloud Concept Mapping (Directory and Organizations)

#### Underlying Concept: Organization-Wide Governance Hierarchy
- AWS: Organizations and OU plus SCP model
- Azure: management groups plus policy model
- GCP: organization, folders, and org-policy model
- Trade-off: policy inheritance semantics differ; design with platform-native hierarchy awareness.

#### Underlying Concept: Landing Zone Governance Baseline
- AWS: Control Tower patterns
- Azure: enterprise landing zone frameworks
- GCP: organization bootstrap plus guardrail baselines
- Trade-off: acceleration frameworks speed setup but still require custom guardrail hardening.

#### Underlying Concept: Directory and Resource Sharing Patterns
- AWS: Directory Service and RAM
- Azure: Entra-backed directory model and resource-sharing controls
- GCP: directory integration and shared VPC/resource sharing patterns
- Trade-off: identity foundation and sharing model must align with governance boundary strategy.

### Real-World Use Cases from Transcript Signals
- Establish multi-account guardrails with explicit OU policy structure.
- Delegate operational security administration while preserving governance authority.
- Share platform resources across accounts safely without broad trust expansion.

### Constraints and Exam-Relevant Traps Captured
- SCPs can silently block expected actions if hierarchy logic is misread.
- Poor OU design creates long-term governance debt.
- Directory integration complexity is often underestimated in architecture timelines.
## Step 1 â€” Line-by-Line Extraction

Every non-empty line from every source transcript is preserved below with extraction fields.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/008_AWS Directory Services.txt

Line 1:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: So the exam as a strong emphasis on Microsoft Active Directory and AWS directory services.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I really wanna make sure that we both understand what this is 'cause I think it's quite complicated especially if you're not from Microsoft background and I wanna make sure you choose the right answer at the exam when a question or two comes up on this topic.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So, what is Microsoft AD?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 4:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: It's found on any windows server that has something called AD Domain Services.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And it's going to a database of objects would it be user accounts, computers, printers, file shares, security groups and it's gonna be centralized way for security management, creating new accounts, assigning partitions all in your windows, in Microsoft environment.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And the objects, the users, the accounts, the printers everything they're going to be grouped together and organized into something called a tree.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And as the name indicates,(chuckles) a group of trees is called a forest.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So, what do we have Microsoft AD?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, we have a domain controller that knows that John is username and password is the password which is not a very strong password, but anyway and we have other machines Microsoft machines connected to this domain controller.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 10:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: The beautiful thing is that now one can use John password of on any of these machines to connect and the active directory will check the login itself.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that allows us to synchronize sort of all these logins across domain controller.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: That is something very, very simple simplified as well.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 13:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: Don't get at me if I don't do this exactly perfectly for the Microsoft AD but this is at a high level providing you an idea of how Microsoft AD works.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So what is ADFS?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 15:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: Well, ADFS will provide Single-Sign On across applications and it has SAML innovation across third party.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, the Console, Dropbox, Office 365 and so on.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we've seen how ADFS works.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 18:
- Concepts: Directory Integration, Identity Lifecycle
- Services: AWS Directory Service
- Key Insights: So remember the user will browse to URL in the Microsoft Active Directory Services which will authenticate the user against a Microsoft Active Directory.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 19:
- Concepts: Federated Authentication, Identity Lifecycle
- Services: SAML/OIDC Federation
- Key Insights: The SAML Token will be returned to the user and then the we'll exchange it with AWS to get a sign in URL for the console.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we'll see how this will be improved with the SSO service later on.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 21:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: Okay, so now let's get into AWS Directory Services.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We have three flavors and this is a managed service by AWS.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 23:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So the first coin is called AWS Managed Microsoft AD.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 24:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: As you can expect is going to be a Microsoft AD in the Cloud.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: Directory Integration, Identity Lifecycle
- Services: MFA
- Key Insights: So you're going to be able to create your own AD in AWS manage users locally, and it has support for MFA.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: You will have to establish a trust with your on-premise AD and we'll see what that trust looks like.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 27:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: If you want to have some kind of connection between your on-premise AD and your AWS Manage Microsoft AD.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 28:
- Concepts: Directory Integration, Identity Lifecycle
- Services: MFA
- Key Insights: So let's have a look here in this diagram, you can see that the Manage AD is connected to the on-premise AD through a trust and it supports MFA and so the users can authenticate on the right hand side or on the left hand side.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 29:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: Then we have Microsoft AD.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 30:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: We have database directory services, AD Connector.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 31:
- Concepts: Directory Integration
- Services: MFA
- Key Insights: So, I wish they name things differently, but anyway, so this is a proxy to make the link from your Cloud AD to your on-premises AD and it supports MFA.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 32:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: And the users are for the only managed in one place which is the on-premise AD.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 33:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: So in this case, the authentication goes to the AD connector, which is a proxy and it gets proxy back onto the on-premise AD to get the response.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 34:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: So in the first case with Microsoft Manage AD we had two places where the users were defined.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 35:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: There were defined on-premise and in the Cloud and there was some trust between the two but with the AD connector they're only defined on-premise and we've defined a proxy to access that on-premise AD directly from the Cloud.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 36:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: Finally, we have Simple AD, which is not Microsoft AD it's a AD-compatible API.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 37:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: It's called Samba and it's managed in AWS but it's standalone and it cannot be joined with an on-premise AD.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 38:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So in this case with Simple AD, it's a cheaper alternative.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 39:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It doesn't have as much capability.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 40:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: It doesn't support MFA, for example.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 41:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It cannot be joined to AWS such as SQL server and so on but contribute simpler, cheaper and maybe a good solution based on the questions you get.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 42:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: So we have three kinds of directory services and I think they're quite clear the differences but I really want to go deep dive into each of those to make it very very clear as to how they're different.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 43:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So, with AWS managed Microsoft AD, you're going to be deploying Microsoft active directory within your VPC.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 44:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So here's what it looks like.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 45:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: We have two AZs and we'll have two AD Domain Controller or AD DC deployed in two different for high availability.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 46:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And now we're going to be able to create easy two windows instances and we can deploy traditional applications on these instances, for example, SharePoint or we can do something called seamless domain join from your Amazon EC2 instances in Multiple Accounts and VPCs directly onto your domain controllers.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 47:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: This is a feature directly coming out of the managed Microsoft AD.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 48:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And finally we have integrations.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 49:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So if we deploy a Managed Microsoft AD in the Cloud we can use it seamlessly integrated with RDS for SQL Server, workspaces, Quick sites.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 50:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And we can even create SSO to provide access to third party applications and have another diagram showing you this in a second.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 51:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: This directory, so the Managed Microsoft AD can be a standalone repository in AWS, or it can be joined to your on-premise AD and we'll see how to join it in a second.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 52:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The Multi AZ deployment is going to be 2AZ at minimum but in case you want to increase your scaling and your availability you are able to add more Domain Controllers.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 53:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So in this example, I'm adding two more Domain Controllers, that's 4 AD DC and we have increased availability.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 54:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: Finally, this looks like RDS for Microsoft AD.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 55:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you have automated backups if you need to.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 56:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: And another last feature is that you get Automated Multi-Region replication of your directory, if you need to.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 57:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now, let's have a look at the integrations in depth.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 58:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So your managed Microsoft AA DC is in the middle and it can get integrated with your on-premise active directory using something called two-way Forest trust and we'll see this in a second in the next slide.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 59:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It can also integrate with a bunch of database services.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 60:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So most importantly is RDS for SQL server, Amazon Workspaces, Quick sites, Connect, WorkDocs and Single-Sign On.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 61:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: And with Single-Sign On that we'll see in the future lecture we have access to more SAML business applications such as GitHub, Box, Dropbox, Office 365 and so on.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 62:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: Finally, your traditional active directory applications such as your dot NET Apps, your SharePoint and your SQL server that you deploy on EC2 instances can obviously be integrated with that active directory that's managed by AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 63:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, what do you remember out of it?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 64:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: That is the going to be the most integrated with AWS offering from directory services.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 65:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: Now, something I want to highlight is how to connect this to your on-premise active directory because that is going to be extremely important going to the exam to understand this subtlety.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 66:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So you are able to connect your on-premise AD to AWS Manage Microsoft AD.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 67:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And for this, you need to set up a Direct Connect and this will going to be DX in this course or a VPN connection between the two.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 68:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we have your on-premise and your VPC and we have set up a connection between these two.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 69:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: And so we have our on-premise Microsoft AD which manages its own user on-premise, and you have AWS Manage Microsoft AD this going to also be managing its own users on AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 70:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so you can set up three kind of forest trust.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 71:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The first one is one way when we have AWS trust on-premise the second one is the other one way which you have the on-premise trust AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 72:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And finally you have something called two-way forest trust where they both trust each other and means that you can access one from the other and vice versa.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 73:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look we have trust this way and trust that way.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 74:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so that means that we have a two-way forest trust.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 75:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And the important thing to understand here is that this forest trust is going to be different than synchronization.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 76:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So, replication is not something that is supported by AWS management Microsoft AD.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 77:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: So that means that their users are living independently on the two different Microsoft active directory.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 78:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: But thanks to this forest trust, they're able to talk to each other in case one user is missing from one and ask the other DC, Hey do you think you have that user because I trust you so very important to understand the distinction.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 79:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So, your traditional active directory app can connect to on-premise.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 80:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: Your easy to instances can do seamless domain joint onto your Microsoft Manage AD.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 81:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: But now, because we have set up a two-way forest trust your traditional active directory app in case it is trying to request a domain that belongs to AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 82:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Thanks to the trust.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 83:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: It's able to go all the way and check the user on the right hand side.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 84:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is the whole idea behind two-way forest trust.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 85:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: You don't need to know that level of detail in the exam but hopefully that gives you a much better idea of what is a trust between your on-premise and your online on AWS Microsoft AD.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 86:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So, now let's talk about a bit more solution architecture because we have to get into those and they can be quite complicated but say you want to have your Microsoft AD that's on-premise replicated on AWS for minimizing latency.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 87:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: So, for example, we want to say, okay we want to have our replica of the on-premise AD on AWS because if somehow the direct connect or the VPN goes down then we still want our users to have connectivity and function correctly.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 88:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we also need to be establishing trust between these ADs.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 89:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So what does it look like?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 90:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: Well, we have our on-premise Microsoft AD with one domain and we have the VPC AWS Managed Microsoft AD DC with another domain.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 91:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: The only way to set up some kind of replication is for you to deploy active directory on an easy two windows instance, and you will have to set up replication.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 92:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: And by setting up those replication we'll have a replica on-premise Microsoft AD onto our VPC which may help minimize latency and also have a disaster recovery strategy.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 93:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: And finally, we can set up a two-way forest trust between our EC2 instance and our AWS Manage Microsoft AD DC in this own VPC.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 94:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is the kind of solution architecture that will be asked from you at the exam.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 95:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's why it's really important to get the basics done first.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 96:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then talk about these little interesting twists on solution architecture.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 97:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: Okay, so that's all for AWS manage Microsoft AD.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 98:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: Now we have AD Connector, which is much simpler.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 99:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it's going to be a gateway.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 100:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So a proxy to redirect your request your on-premise Microsoft Active Directory there's no caching capability.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 101:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: The users are solely managed on-premise, there is no trust being set up and need to have VPN or Direct Connect.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 102:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so it doesn't have this integration with SQL server.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 103:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: It doesn't do seamless joining it comes share directory.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 104:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is something a bit more basic.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 105:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: And hopefully the example will be very clear if you need AD connector that some kind of directory proxy but AD Connector in case the connection goes down, well, it's basically useless.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 106:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 107:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: Well, we have our corporate office and the Database Cloud and there will be a VPN or Direct Connect connection between these two, and then therefore we can have our active directory directly within our corporate office but our users who wants to again will happen to do the following flow.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 108:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So first they will use the credentials onto a custom signing page.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 109:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: This signing page will be connected to the AD Connector which may be multi AZ.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 110:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: So in one AZ, the AD Connector will be used.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 111:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: This AD Connector then will proxy the request all the way through to the active directory on the corporate office and will perform LDAP authentication.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 112:
- Concepts: Directory Integration, Identity Lifecycle, Temporary Credential Strategy
- Services: AWS Directory Service, AWS IAM, AWS STS
- Key Insights: And if this is good then the AD Connector will perform the STS assumerole IAM which will get back temporary credentials.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 113:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And then our user will be authenticated into AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 114:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: Finally, you have Simple AD which is going to be very inexpensive Active Directory and it's going to have the most common directory features.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 115:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: It will support joining of EC2 instances, managing users and groups, but it won't support multifactor authentication.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 116:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It will not support the integration with RDS SQL server.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 117:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: It will not support SSO and it's only for small amount of users.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 118:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So, 500 users up to maybe 5,000 users depending on the tier you want to use.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 119:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: It's powered by Samba 4, and it's compatible with Microsoft AD in terms of the API but it's a lower cost, low scale.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 120:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: It's only has basic AD capability or LDAP compatibility and you cannot set up a trust with a on-premise Microsoft AD.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 121:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 122:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: Obviously the most important one is going to be the first one described but now you have the three options of directory services and hopefully there's a bit more clear which one to choose based on which circumstances at the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 123:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 124:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/009_AWS Organizations.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: Okay, so let's talk about AWS Organizations, which is a way for you to manage multiple AWS accounts at once.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So within Organizations, we have, at the top, the root organizational unit, or OU, and it will contain our management account, which is the account that will be used for all administration purposes.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: Then within the root OU, you can have different OUs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: You can have an OU for your development environment, and this OU can have multiple member accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: So you have to make a distinction between the management account that you use to manage all the other accounts and organizations.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: And then the member accounts, which are just normal AWS accounts that are part of an organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So we can have an OU for dev, we can have an OU for prod as well with other member accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: And we can have OU within OU.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So it's very possible to have an HR OU within the prod OU, which is, by the way, within the root OU.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you can have HR or finance and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: So once we have all these accounts, how does Organizations perform its administration?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: Organization Governance
- Services: AWS Organizations, IAM Roles
- Key Insights: Well, there is a very special role you need to know about for the exam called the organization account access role.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: Organization Governance
- Services: AWS IAM, AWS Organizations, IAM Roles
- Key Insights: So when we have the organization and the management account, if we happen to create a member account using an API from the Organization service, then, automatically, an IAM role within the member account is going to be created.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 14:
- Concepts: Organization Governance
- Services: AWS IAM, AWS Organizations, IAM Roles
- Key Insights: And that IAM role is called the Organization Account Access Role.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations, IAM Roles
- Key Insights: Now, the management account, when it needs to perform administrative duties onto the member account, will assume that administrative role using the AssumeRole API.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, AWS Organizations, IAM Roles
- Key Insights: So this IAM role grants full administrator permissions in the member account to the management account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: And this is the magic of how AWS Organizations work.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: Identity Lifecycle
- Services: AWS IAM, AWS Organizations, IAM Roles
- Key Insights: Now, this role is going to be used by the management account to perform admin task in the member account, for example, creating IAM users.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: Identity Lifecycle
- Services: AWS IAM, IAM Roles
- Key Insights: This role can also be assumed by IAM users in the management account if they're authorized to do so.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations, IAM Roles
- Key Insights: And, as I said, this role is automatically added to new member accounts created with the API of AWS Organizations.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 21:
- Concepts: Organization Governance
- Services: AWS Organizations, IAM Roles
- Key Insights: But in case you are inviting an account into an organization and that account already exists from out there, then you must manually create this role.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Authentication and trust-chain signal; Multi-account governance signal.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Otherwise, things will not work.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 23:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: Now, we have an OU and multiple accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 24:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we have multiple account strategy.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And you can create accounts per department, per cost center, per environment, physical dev/test/prod.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You can create them based on regulatory restrictions.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 27:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You can get them for better resource isolation, for example, you wanna have one account per VPC, or you want to have separate per-account service limits, or you want to have a separate account for logging and so on.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you have, you know, different strategies to look at.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, do you want multi accounts or one account with a multi VPC in it?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 30:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then of course you can share multiple accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 31:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you need to have tagging standards for billing purposes, as we'll see this.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 32:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then some things we may want to do is to enable CloudTrail on all accounts and then send all the logs of CloudTrail into a central account that will have an Amazon S3 bucket, or also maybe aggregate all the CloudWatch logs within all accounts into a central logging account, or maybe create a central account for security.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 33:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So these are just strategies.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 34:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: There's really no guideline.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 35:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It's up to you and your architecture to decide what you want to do.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 36:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So you have a business unit type of OU.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 37:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So you have management account, then a OU per business unit, and then maybe multiple accounts within each business unit.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 38:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You can also get, for example, a management account and then dev/test/prod types of OUs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 39:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then you can also get project-based type of OUs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 40:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It's really up to you to decide, but this just gives you a few ideas.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 41:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So there are two feature modes you need to know for AWS Organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 42:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The first one is a consolidated billing feature.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 43:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is going to aggregate billing across all accounts and gives you a single payment method directly from the management account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 44:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And the reason you do so is that you're going to get pricing benefits from the aggregated usage.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 45:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You're going to get volume discounts for EC2, for Amazon S3, and so on because you are using more across all accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 46:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: All the features are also going to be another feature mode for Organizations.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 47:
- Concepts: Organization Governance
- Services: Service Control Policies
- Key Insights: So this, of course, includes the consolidated billing feature, but on top of it, it adds the SCP feature that we'll see in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 48:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And in case you invite an account, it needs to approve enabling all features to be part of that mode.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 49:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations, IAM Policies, Service Control Policies
- Key Insights: And then once you have the all features enabled, then we can use an SCP, so a service control policy, to prevent the member account from ever leaving the organization.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 50:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: And this is why the accounts that have been invited into an organization with all features must approve these features beforehand.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 51:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: And once you have enabled all features, you cannot go back to using Organizations only to consolidate billing.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 52:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 53:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: So talking about what is shared and savings, we have reserved instances in Organizations.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 54:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: So for billing purposes, the consolidated billing feature of AWS Organizations will treat all the accounts as one account that we know.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 55:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: That means that all the accounts in the organization will receive the hourly cost benefit of a reserved instance that is purchased by any other account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 56:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that means that it will give you the maximum amount of saving, even if a specific account is not using that reserve instance but another is.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 57:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So the payer accounts of an organization, so the management account, can turn off the RI, reserve instance sharing, or savings plan discount sharing, for any account including VPR accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 58:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it's possible for you to disable it and say, "Well, this RI or this savings plan only belongs to that specific account." That means that in that case, then the reserve instances and savings plan discounts will not be shared across accounts that have this turned off.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 59:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then, on the opposite side, for a reserved instance or a savings plan to be shared across two accounts, then both these accounts must have sharing turned on, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 60:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is a little thing that the exam can test you on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 61:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: You need to also know the process to move accounts between two organizations.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 62:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So let's say we want to move a member account from an old to a new organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 63:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: First, we just send an invite to the member account, and then we're going to accept the invite from the member account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 64:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It's as simple as that.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 65:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: Before, we had to remove the member account from the previous organization, but now we don't.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 66:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: We just send an invite and it can be moved over across two organizations.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 67:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 68:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 69:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/010_AWS Organizations Policies.txt

Line 1:
- Concepts: Organization Governance
- Services: IAM Policies, Service Control Policies
- Key Insights: So now let's talk about service control policies, or SCP.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: Organization Governance
- Services: AWS IAM, AWS Organizations
- Key Insights: So here, you can define allowlist or blocklist for specific IAM actions on your organization for your accounts.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 3:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: And this applies either at the OU level or the Account level.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: Organization Governance
- Services: Service Control Policies
- Key Insights: Any SCP you apply to your management accounts actually is disregarded because you want to keep your management account safe from any kind of lockout.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: The SCPs is going to be applied to all the users and the roles in the account, including the root user.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: Organization Governance
- Services: Service Control Policies
- Key Insights: And the SCP does not affect any service-linked roles.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: Organization Governance
- Services: AWS Organizations, IAM Roles
- Key Insights: That means that these services, those service-linked role, they enable other services on AWS to integrate with organization, and therefore that's why they can't be restricted by SCPs.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, SCPs are special.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations, Service Control Policies
- Key Insights: And for something to be allowed within organizations, you need to make sure that every SCP along the way from the root to each OU down to the specific target account will have an explicit allow.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And I will show you this in the next slide as an example.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: Organization Governance
- Services: Service Control Policies
- Key Insights: So the use cases for SCP is to restrict access to certain services.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, hey, you cannot use EMR, or to enforce PCI compliance by explicitly disabling some services in AWS.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This will be very clear in this example.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So let's take for example, a Root OU, and we apply FullAWSAccess underneath.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So the management account is under the Root OU, and then we have more OU, the Sandbox, the Workload, Test, and Prod, with accounts within the OUs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 16:
- Concepts: Authorization Model, Organization Governance
- Services: Service Control Policies
- Key Insights: So if we apply an SCP, which is Deny Athena on the management account, what is happening to the management account?
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 17:
- Concepts: Organization Governance
- Services: Service Control Policies
- Key Insights: Well, the management account can do anything because there's a rule that says that no SCP ever apply to the management account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This is a safety because of course if you lock yourself out of your management account, this would be terrible.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So remember, the management accounts can do anything no matter what.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 20:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations
- Key Insights: But let's say for example, we apply on the Sandbox OU a FullAWSAccess plus Deny S3.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 21:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations
- Key Insights: So as you can see here, we still need to apply FullAWSAccess to apply to give allow to everything explicitly because if we didn't have full AWS access, then nothing would be allowed within that OU.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So explicit allows are needed every single way.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 23:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: And on account A, say we also do apply FullAWSAccess and Deny EC2.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 24:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: Then account A can do anything because it has full AWS access on the Root OU and on the Sandbox OU and on the account itself.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: But because we have two explicit denies, we have one Deny S3 from the Sandbox and one Deny EC2 from the account itself, then it cannot access Amazon S3 or Amazon EC2.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 26:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations, Service Control Policies
- Key Insights: For Account B and C, because they don't have specific SCP attached to them, then they can do anything except accessing Amazon S3 because you have an explicit deny coming from the Sandbox OU.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 27:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations, Service Control Policies
- Key Insights: Next, if we apply FullAWSAccess to the Workloads OU, and we also apply an Allow EC2 SCP to the Test OU, then Account D can only access EC2.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 28:
- Concepts: Organization Governance
- Services: AWS Organizations, Service Control Policies
- Key Insights: And if we look at the Prod OU and Account E and F within it, well, we must first apply the FullAWSAccess SCP to the Prod OU, and then Account E and F can do anything.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So here are some examples for SCPs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 30:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This is the first one is a blocking of a specific service.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 31:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So first we allow all actions, and then we DenyDynamoDB, or on the allow list here, we allow EC2 and CloudWatch, but we don't allow anything else.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 32:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So those are some examples of SCPs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 33:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: So let's have a look at the IAM policy evaluation logic, because this diagram basically explains to you how you are authorized or not to do actions within AWS.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 34:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And you don't need to know it by heart, but it should make sense to you.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 35:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So we can see there's a whole flow, but at every step there is an evaluation.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 36:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: And so we're going to look at Deny evaluation.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 37:
- Concepts: Access Boundary Controls, Authorization Model, Organization Governance
- Services: AWS IAM, AWS Organizations, IAM Policies, Permission Boundaries, Service Control Policies
- Key Insights: We're going to look at Organizations SCP, Resource-based policy, Identity-based policy, IAM permission boundaries, and then finally, Session policies to allow or deny a specific IAM action.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 38:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look in details to see how that works.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 39:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So, we're going to look at all the possible policies in here, and if there's an explicit deny, then we know that it's going to be denied automatically.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 40:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations, Service Control Policies
- Key Insights: Then we look at the organization's SCP, and is there an allow?
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 41:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: If yes, you go to next step.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 42:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: If not, then it's a deny because it's an implicit deny.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 43:
- Concepts: Access Boundary Controls, Authorization Model
- Services: IAM Policies
- Key Insights: Then we look at resource-based policy, for example, they can be applied to S3 buckets.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 44:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: They can be applied to SQS SQs and so on.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 45:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And again, we have a look.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 46:
- Concepts: Access Boundary Controls, Authorization Model
- Services: IAM Policies
- Key Insights: Is there a resource-based policy?
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 47:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: If so, is there an allow?
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 48:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Yes or no?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 49:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: Then we have identity-based policy.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 50:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So we look again at whether or not there's an identity-based policy, whether or not there's an allow.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 51:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: And then we deny implicitly or go on to the next step.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 52:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, Permission Boundaries
- Key Insights: Then we look at IAM permission boundaries that we just saw.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 53:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: And then finally we look at session policies.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 54:
- Concepts: Temporary Credential Strategy
- Services: AWS STS
- Key Insights: I won't go over them, this is more related to STS.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 55:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM
- Key Insights: But what I want you to remember is that all these things are evaluated when making a specific IAM action, okay?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 56:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: And so only if all these things are allowing and working together or not denying specifically, then you will have a finalization allow, and you'll be able to do your action, okay?
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 57:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it's just to give you a bit more overview, but hopefully you understand better how security works in AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 58:
- Concepts: Organization Governance
- Services: AWS IAM, IAM Policies, Service Control Policies
- Key Insights: So these IAM SCP policies can be used, for example, to restrict tags, okay?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 59:
- Concepts: Access Boundary Controls
- Services: (none explicit)
- Key Insights: So, if you want to restrict specific tags on AWS resources, you can use the AWS TagKeys Condition Key.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 60:
- Concepts: Authorization Model
- Services: AWS IAM, IAM Policies
- Key Insights: Now, this will allow you to validate the tag keys attached to your resource against the tag keys in the IAM policy.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 61:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And this is something that comes up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 62:
- Concepts: Authorization Model, Identity Lifecycle
- Services: AWS IAM, IAM Policies
- Key Insights: So if we want to only allow an IAM user to create an EBS volume if it has the Env and the CostCenter tags, then the policy would look like this.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 63:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we have a match all keys, okay?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 64:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So ForAllValues:StringEquals, TagKeys, Env, and CostCenter, and this means that we want absolutely both the Env and the CostCenter tags to be present in the EBS volume when we create it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 65:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And you have an option to also use the value called ForAnyValue, which means that at a minimum, you must have either of these tags.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 66:
- Concepts: Access Boundary Controls
- Services: (none explicit)
- Key Insights: So, on the second example here in this slide, here, if the EBS volume is created with the Env but not the CostCenter, it's going to work, and vice versa because we have the ForAnyValue condition key, okay?
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 67:
- Concepts: Access Boundary Controls
- Services: (none explicit)
- Key Insights: So this can come up in exam, using the AWS Tag Keys condition key.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 68:
- Concepts: Access Boundary Controls, Authorization Model, Organization Governance
- Services: Service Control Policies
- Key Insights: Another example of SCP you can have is an SCP to deny an entire region using the condition named aws:RequestRegion.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 69:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So the idea is that you would specify a Deny effect, and then you would say that the region where everything is denied could be eu-central-1 and eu-west-1.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 70:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You can specify different AWS services by specifying action, EC2 star, RDS star, and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 71:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And you can also have a bypass.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 72:
- Concepts: Organization Governance
- Services: Service Control Policies
- Key Insights: For example, you can have ArnNotLike, so that two roles, for example, are allowed to bypass this SCP.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 73:
- Concepts: Organization Governance
- Services: AWS Organizations, Service Control Policies
- Key Insights: So it can get quite complex, but the idea out of it is that SCP can be used to restrict member accounts to specific regions or from specific regions.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 74:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay, so there's also a way of using SCPs to restrict creating resources that don't have the appropriate tags, okay?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 75:
- Concepts: Identity Lifecycle
- Services: AWS IAM
- Key Insights: So, this is to prevent IAM users and roles for performing stuff that they can't do.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 76:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, we can restrict launching an EC2 instance if it does not have the Project and CostCenter tags.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 77:
- Concepts: Access Boundary Controls, Organization Governance
- Services: Service Control Policies
- Key Insights: So in this example, where the condition in your SCP is going to be a null for aws:RequestTag/Project, true.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 78:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: Okay, that means that you're going to, and this is a deny, So that means that it's going to deny any request that does not contain the Project tag in our EBS volume.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 79:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then in the second one, it is CostCenter as well, okay?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 80:
- Concepts: IAM Domain Operational Context
- Services: AWS IAM, IAM Policies
- Key Insights: So the first example was using IAM policies directly to say, yes, please use these tags.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 81:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And in the second example that I showed you, this is for SCPs only.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 82:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: Next we have TAG policies.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 83:
- Concepts: Organization Governance
- Services: AWS Organizations, IAM Policies
- Key Insights: So, TAG policies are defined at the organization level, and they help you standardize tags across all resources in an organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 84:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is used to ensure consistent tags, audit tag resources, maintain proper resource categorization, and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 85:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you define tag keys and their allowed values, and this helps with Cost Allocation Tags, or if you wanted to do Attributes Access Control.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 86:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then any non-compliant tagging operations will be prevented, okay, on these specified services and resources.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 87:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And you can also have a report that lists all the tags or non-compliant resources.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 88:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then if you want to look for non-compliant tags, then use Amazon EventBridge.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 89:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So in this example, on the right hand side, for the Secrets Manager service, we can only have the key, CostCenter, to have the value 100 or 200.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 90:
- Concepts: Authorization Model
- Services: AWS Organizations, IAM Policies
- Key Insights: Another type of policy on organizations is called the AI Services Opt-out Policy.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 91:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, the backtrack of the context of this is that while the AI services in AWS may use your content that you're actually giving them to improve the Amazon AI or machine learning services.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 92:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So for example, Amazon Lex, Amazon Comprehend, Amazon Polly, all of these services improve based on the data you give them.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 93:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so your data is used by AWS for improving the services, but you can opt out of having the content stored, used by AI services for improvements.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 94:
- Concepts: Authorization Model
- Services: AWS Organizations, IAM Policies
- Key Insights: And for this, you have to create an Opt-out policy, which will apply to all member accounts and all AWS regions.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 95:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you can opt out of all AI services using this, or you can opt out just for specific AWS services.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 96:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, on the bottom right, I'm opting out of Rekognition and Amazon Lex.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 97:
- Concepts: Organization Governance
- Services: AWS Organizations, IAM Policies
- Key Insights: These policies can be attached to a Organization Root, specific OUs, or directly in individual member accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 98:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: And then we have backup policies.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 99:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: So backup policies help you define backup plans using AWS Backup.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 100:
- Concepts: Organization Governance
- Services: AWS Organizations, IAM Policies
- Key Insights: And so we define these backup policies at the organization level with JSON documents and is going to give you granular control over the backing up the resources, such as the frequency, the time window, the backup region, et cetera, et cetera.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 101:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: These can be attached to the Organization Root OU or specific OU or an individual member account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 102:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: It's an immutable backup plan, so they will appear in the member accounts within AWS Backups, but this is a view-only type of view that can only be managed within the management accounts of your organization.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 103:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations, IAM Policies
- Key Insights: So that's it for all the policies on AWS organizations.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 104:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/012_AWS Control Tower.txt

Line 1:
- Concepts: Organization Governance
- Services: AWS Control Tower
- Key Insights: Now let's look at AWS Control Tower.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it's an easy way for you to set up and govern a secure and compliant multi-account AWS environments based on best practices.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So out of it, you're going to get your environment automated in just a few clicks.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: You're going to have ongoing policy management using guardrails and we see this in this lecture.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 5:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: We're going to detect policy violations and remediate them automatically.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And we can monitor compliance through an interactive dashboard.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: Organization Governance
- Services: AWS Control Tower, AWS Organizations
- Key Insights: So Control Tower is a way for you to really automate best practice multi-accounts and it runs on top of AWS organizations.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 8:
- Concepts: Organization Governance
- Services: AWS Organizations, IAM Policies, Service Control Policies
- Key Insights: So it's going to set up an organization for you and then organize these accounts and implement automatically the service control policies you need.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So out of it there is the account factory and since you automate account provisioning and deployments and it allows you to create pre-approved baseline and configuration options for all the accounts in your organization, such as, for example, configuring the default VPC, configuring the subnets, the regions and so on.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And to do so is going to use the underlying service called the AWS Service Catalog to provision these new accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look in where an account factor will be very helpful.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So we have an cloud computing environments and then we have a data center with an ADFS and an active directory.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And now we are going to establish a VPN or direct connect connection between the cloud and the corporate data center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 14:
- Concepts: Federated Authentication, Organization Governance
- Services: AWS Control Tower, AWS IAM, IAM Identity Center
- Key Insights: And so therefore when we use Control Tower and a lending zone and we create accounts for account factory, then at the center of it is going to be IAM Identity Center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And we can set up in different ways.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 16:
- Concepts: Directory Integration, Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: But if you wanted to integrate with Microsoft Active Directory on your corporate data center then you would create an AWS managed Microsoft AD, which would be the source of notification for your IAM Identity Center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: And then you would create a two-way trust between active directory on your corporate data center and AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: Directory Integration
- Services: AWS IAM
- Key Insights: From there, any accounts created through your landing zone and through account factory will be properly configured to leverage authentication through IAM ID Center and therefore use underlyingly the active directory you have in the cloud and the one you have also on your corporate data center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: Organization Governance
- Services: AWS Control Tower
- Key Insights: Now there's another thing with Control Tower called guardrails.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 20:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: And this is used to detect and remediate policy violations.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it's going to give you ongoing governance.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then you have two kinds of guardrails.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You have preventive guardrails or use SCPs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 24:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And this is, for example, to have an action to disable or disallow the creation of access keys from the root user.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: That's one way.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 26:
- Concepts: Identity Lifecycle
- Services: MFA
- Key Insights: Or detective where you want to give all permissions to your accounts, but then you use config to detect, for example, whether or not MFA is enabled for the root user and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 27:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And config will be very helpful because it gives you compliance or non-compliance of resources.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so here's an example.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We, for example, want to see which resources are untagged.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 30:
- Concepts: Organization Governance
- Services: AWS Control Tower, AWS Organizations
- Key Insights: So we have a detective guardrail in Control Tower using config and it's going to monitor for untagged resources in your member accounts as part of your organization is going to trigger if it's noncompliance and SNS topic, which can notify an admin, maybe invoke Lambda function and that Lambda function itself can remediate to this and add tag where needed.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 31:
- Concepts: Organization Governance
- Services: AWS Control Tower
- Key Insights: So there are a few guardrail levels for Control Tower.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 32:
- Concepts: Organization Governance
- Services: AWS Control Tower
- Key Insights: There is the mandatory guardrail, which is automatically enabled and enforced by AWS Control Tower.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 33:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So for example, you want to disallow public read access to the log archive accounts and this is mandatory.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 34:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Strongly recommended, which is based on AWS practices.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 35:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And for example, you wanna say you want to enable EBS volumes attached to EC2 instances.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 36:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then you have elective guardrails, which is commonly used by enterprises.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 37:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: This is optional as well, for example, to disallow delete actions without MFA in S3 buckets.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 38:
- Concepts: Organization Governance
- Services: AWS Control Tower
- Key Insights: Okay, so that's it for Control Tower.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 39:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 40:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/03_Identity & Federation/013_AWS Resource Access Manager - RAM.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: AWS RAM
- Key Insights: So let's talk about AWS Resource Access Manager or RAM.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you going to share AWS resources that you own with other AWS accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: And with this you can do it from any account or just accounts within your organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This is allowing you to avoid the resource duplication.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: AWS RAM
- Key Insights: So what can you share with RAM?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: AWS RAM
- Key Insights: You can share VPC subnets, for example, which is very helpful and one of the best use case for RAM, which allows you to have all the resources launched within the same subnets.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: And all these things, all these subnets, then must be from the same AWS Organizations.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 8:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: You cannot share Security Groups though and you cannot share the default VPC.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The participants can manage their own resources within the subnets, but the participants cannot view, modify or delete resources that belong to other participants or the owner, so they only share the networking, really.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 10:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: You can also share a Transit Gateway or Route 53 Resolver Rules and DNS Firewall Rule Groups and so on, or License Manager Configurations.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: There's other stuff you can share, I'm just gonna do a list.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: Identity Lifecycle
- Services: IAM Policies
- Key Insights: So, Aurora DB cluster, ACM Private Authority, Certificate Authority CodeBuild projects, E2C Dedicate Hosts, Capacity Reservations, Glue Catalog, Database and Table, Network Firewall Policies, Resource Groups, System Manager, System Incidents, Outpost, and the list goes on and on and on and it will not update it, okay?
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: AWS RAM
- Key Insights: But one of the most important use case from an exam perspective for Resource Access Manager is for the VPC.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So in this example, we have a VPC and there's a VPC owner and it has a private subnet but this VPC is going to be shared with account one and account two.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So each account is going to be responsible for its own resources, okay?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: They cannot view, modify or delete other resources in other accounts.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So for example, if I deploy an EC2 instance, an ALB in account one then, and account two will have an EC2 instance, they can communicate with one another but they cannot view each other, okay?
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Because they are in separate accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then your database may sit in a private segment of the VPC owner, and so network is shared.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: That means that all these things can talk to each other and these applications can access each other using private IPs.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this avoid the needs, for example, to do a VPC peering.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 22:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Now security group can also be referenced across accounts for maximum security, which is very helpful.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now, the use cases for this is that applications within the same trust boundaries can be deployed within the same VPC, and that will simplify your network.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 24:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And if you have applications with a high degree of interconnectivity, yet again, you will have a much simplified network setup because you only have one VPC and so by default, any application deployed within it can talk with each other.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: AWS RAM
- Key Insights: Another example of what can be shared by Resource Access Manager is a Managed Prefix List.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So what is a Managed Prefix List?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 27:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: Well, it is a set of one or more CIDR blocks and it makes it easier to maintain and configure Security Group Rules and Route Tables.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So here's an example, account A has a Prefix List and in it you have the CIDR 1, CIDR 2, CIDR 3 and these are set of rules, for example, that represent your internal network of your company.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 29:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And say you want to apply these rules, these prefixes, to many different Security Groups.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 30:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So instead of having them all in all Security Groups what you do is that you create a Prefix List and then that Prefix List can be referenced by Security Group.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 31:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So on top of it, this can be shared.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 32:
- Concepts: Identity Lifecycle
- Services: AWS RAM
- Key Insights: So if they're shared using RAM to another account then a Security Group Inbound Rules can look as simple as this.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 33:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Or you say, well, SSH is allowed on Port 22 from the source, Prefix List A.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 34:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: And so that if you are using, for example, your own Customer Managed Prefix List, then you define the CIDRs and then you can share it with other accounts, organizations and then you can modify them.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 35:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And if you modify your Prefix List automatically all the Security Groups that were leveraging that Prefix List or all the Route Tables that were leveraging that Prefix List are going to be updated at the same time which gives you a central management of your prefixes, and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 36:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You also have a second kind of Prefix List which is the AWS Managed Prefix List.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 37:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this time the CIDRs are defined by AWS for their own services and you cannot create, modify, share or delete them but I want you to know about them in this slide anyway.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 38:
- Concepts: IAM Domain Operational Context
- Services: AWS RAM
- Key Insights: Something else you can share with Resource Access Manager is the Route 53 Outbound Resolver.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 39:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this allows you to scale your forwarding rules to your DNS in case you have a hybrid setup and you have multiple accounts and multiple VPC.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 40:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that in your main account you will define the Resolver Rule for Route 53, so you have your forwarding rules that have the domain names that you want and the target IPs and then you would share those with other accounts so that after you share it, the other account accepts it then they can be associated with other VPC and any other VPC that have these rules can then resolve the domain names you've specified.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 41:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this allows you to have a centrally managed Resolver Rules for your DNS.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 42:
- Concepts: IAM Domain Operational Context
- Services: AWS RAM
- Key Insights: Okay, so that's it for Resource Access Manager.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 43:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/06_Domain 4 - Identity and Access Management/168_AWS Directory Services.txt

Line 1:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: So the exam as a strong emphasis on Microsoft Active Directory and AWS directory services.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I really wanna make sure that we both understand what this is 'cause I think it's quite complicated especially if you're not from Microsoft background and I wanna make sure you choose the right answer at the exam when a question or two comes up on this topic.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So, what is Microsoft AD?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 4:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: It's found on any windows server that has something called AD Domain Services.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And it's going to a database of objects would it be user accounts, computers, printers, file shares, security groups and it's gonna be centralized way for security management, creating new accounts, assigning partitions all in your windows, in Microsoft environment.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And the objects, the users, the accounts, the printers everything they're going to be grouped together and organized into something called a tree.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And as the name indicates,(chuckles) a group of trees is called a forest.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So, what do we have Microsoft AD?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, we have a domain controller that knows that John is username and password is the password which is not a very strong password, but anyway and we have other machines Microsoft machines connected to this domain controller.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 10:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: The beautiful thing is that now one can use John password of on any of these machines to connect and the active directory will check the login itself.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that allows us to synchronize sort of all these logins across domain controller.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: That is something very, very simple simplified as well.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 13:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: Don't get at me if I don't do this exactly perfectly for the Microsoft AD but this is at a high level providing you an idea of how Microsoft AD works.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So what is ADFS?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 15:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: Well, ADFS will provide Single-Sign On across applications and it has SAML innovation across third party.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, the Console, Dropbox, Office 365 and so on.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we've seen how ADFS works.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 18:
- Concepts: Directory Integration, Identity Lifecycle
- Services: AWS Directory Service
- Key Insights: So remember the user will browse to URL in the Microsoft Active Directory Services which will authenticate the user against a Microsoft Active Directory.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 19:
- Concepts: Federated Authentication, Identity Lifecycle
- Services: SAML/OIDC Federation
- Key Insights: The SAML Token will be returned to the user and then the we'll exchange it with AWS to get a sign in URL for the console.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we'll see how this will be improved with the SSO service later on.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 21:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: Okay, so now let's get into AWS Directory Services.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We have three flavors and this is a managed service by AWS.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 23:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So the first coin is called AWS Managed Microsoft AD.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 24:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: As you can expect is going to be a Microsoft AD in the Cloud.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: Directory Integration, Identity Lifecycle
- Services: MFA
- Key Insights: So you're going to be able to create your own AD in AWS manage users locally, and it has support for MFA.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: You will have to establish a trust with your on-premise AD and we'll see what that trust looks like.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 27:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: If you want to have some kind of connection between your on-premise AD and your AWS Manage Microsoft AD.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 28:
- Concepts: Directory Integration, Identity Lifecycle
- Services: MFA
- Key Insights: So let's have a look here in this diagram, you can see that the Manage AD is connected to the on-premise AD through a trust and it supports MFA and so the users can authenticate on the right hand side or on the left hand side.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 29:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: Then we have Microsoft AD.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 30:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: We have database directory services, AD Connector.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 31:
- Concepts: Directory Integration
- Services: MFA
- Key Insights: So, I wish they name things differently, but anyway, so this is a proxy to make the link from your Cloud AD to your on-premises AD and it supports MFA.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 32:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: And the users are for the only managed in one place which is the on-premise AD.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 33:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: So in this case, the authentication goes to the AD connector, which is a proxy and it gets proxy back onto the on-premise AD to get the response.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 34:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: So in the first case with Microsoft Manage AD we had two places where the users were defined.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 35:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: There were defined on-premise and in the Cloud and there was some trust between the two but with the AD connector they're only defined on-premise and we've defined a proxy to access that on-premise AD directly from the Cloud.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 36:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: Finally, we have Simple AD, which is not Microsoft AD it's a AD-compatible API.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 37:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: It's called Samba and it's managed in AWS but it's standalone and it cannot be joined with an on-premise AD.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 38:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So in this case with Simple AD, it's a cheaper alternative.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 39:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It doesn't have as much capability.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 40:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: It doesn't support MFA, for example.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 41:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It cannot be joined to AWS such as SQL server and so on but contribute simpler, cheaper and maybe a good solution based on the questions you get.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 42:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: So we have three kinds of directory services and I think they're quite clear the differences but I really want to go deep dive into each of those to make it very very clear as to how they're different.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 43:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So, with AWS managed Microsoft AD, you're going to be deploying Microsoft active directory within your VPC.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 44:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So here's what it looks like.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 45:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: We have two AZs and we'll have two AD Domain Controller or AD DC deployed in two different for high availability.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 46:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And now we're going to be able to create easy two windows instances and we can deploy traditional applications on these instances, for example, SharePoint or we can do something called seamless domain join from your Amazon EC2 instances in Multiple Accounts and VPCs directly onto your domain controllers.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 47:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: This is a feature directly coming out of the managed Microsoft AD.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 48:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And finally we have integrations.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 49:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So if we deploy a Managed Microsoft AD in the Cloud we can use it seamlessly integrated with RDS for SQL Server, workspaces, Quick sites.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 50:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And we can even create SSO to provide access to third party applications and have another diagram showing you this in a second.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 51:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: This directory, so the Managed Microsoft AD can be a standalone repository in AWS, or it can be joined to your on-premise AD and we'll see how to join it in a second.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 52:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The Multi AZ deployment is going to be 2AZ at minimum but in case you want to increase your scaling and your availability you are able to add more Domain Controllers.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 53:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So in this example, I'm adding two more Domain Controllers, that's 4 AD DC and we have increased availability.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 54:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: Finally, this looks like RDS for Microsoft AD.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 55:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you have automated backups if you need to.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 56:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: And another last feature is that you get Automated Multi-Region replication of your directory, if you need to.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 57:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now, let's have a look at the integrations in depth.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 58:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So your managed Microsoft AA DC is in the middle and it can get integrated with your on-premise active directory using something called two-way Forest trust and we'll see this in a second in the next slide.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 59:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It can also integrate with a bunch of database services.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 60:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So most importantly is RDS for SQL server, Amazon Workspaces, Quick sites, Connect, WorkDocs and Single-Sign On.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 61:
- Concepts: Federated Authentication
- Services: SAML/OIDC Federation
- Key Insights: And with Single-Sign On that we'll see in the future lecture we have access to more SAML business applications such as GitHub, Box, Dropbox, Office 365 and so on.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 62:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: Finally, your traditional active directory applications such as your dot NET Apps, your SharePoint and your SQL server that you deploy on EC2 instances can obviously be integrated with that active directory that's managed by AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 63:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, what do you remember out of it?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 64:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: That is the going to be the most integrated with AWS offering from directory services.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 65:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: Now, something I want to highlight is how to connect this to your on-premise active directory because that is going to be extremely important going to the exam to understand this subtlety.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 66:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So you are able to connect your on-premise AD to AWS Manage Microsoft AD.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 67:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And for this, you need to set up a Direct Connect and this will going to be DX in this course or a VPN connection between the two.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 68:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we have your on-premise and your VPC and we have set up a connection between these two.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 69:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: And so we have our on-premise Microsoft AD which manages its own user on-premise, and you have AWS Manage Microsoft AD this going to also be managing its own users on AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 70:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so you can set up three kind of forest trust.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 71:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The first one is one way when we have AWS trust on-premise the second one is the other one way which you have the on-premise trust AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 72:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And finally you have something called two-way forest trust where they both trust each other and means that you can access one from the other and vice versa.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 73:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look we have trust this way and trust that way.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 74:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so that means that we have a two-way forest trust.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 75:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And the important thing to understand here is that this forest trust is going to be different than synchronization.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 76:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So, replication is not something that is supported by AWS management Microsoft AD.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 77:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: So that means that their users are living independently on the two different Microsoft active directory.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 78:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: But thanks to this forest trust, they're able to talk to each other in case one user is missing from one and ask the other DC, Hey do you think you have that user because I trust you so very important to understand the distinction.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 79:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So, your traditional active directory app can connect to on-premise.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 80:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: Your easy to instances can do seamless domain joint onto your Microsoft Manage AD.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 81:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: But now, because we have set up a two-way forest trust your traditional active directory app in case it is trying to request a domain that belongs to AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 82:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Thanks to the trust.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 83:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: It's able to go all the way and check the user on the right hand side.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 84:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is the whole idea behind two-way forest trust.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 85:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: You don't need to know that level of detail in the exam but hopefully that gives you a much better idea of what is a trust between your on-premise and your online on AWS Microsoft AD.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 86:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So, now let's talk about a bit more solution architecture because we have to get into those and they can be quite complicated but say you want to have your Microsoft AD that's on-premise replicated on AWS for minimizing latency.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 87:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: So, for example, we want to say, okay we want to have our replica of the on-premise AD on AWS because if somehow the direct connect or the VPN goes down then we still want our users to have connectivity and function correctly.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 88:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we also need to be establishing trust between these ADs.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 89:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So what does it look like?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 90:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: Well, we have our on-premise Microsoft AD with one domain and we have the VPC AWS Managed Microsoft AD DC with another domain.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 91:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: The only way to set up some kind of replication is for you to deploy active directory on an easy two windows instance, and you will have to set up replication.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 92:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: And by setting up those replication we'll have a replica on-premise Microsoft AD onto our VPC which may help minimize latency and also have a disaster recovery strategy.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 93:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: And finally, we can set up a two-way forest trust between our EC2 instance and our AWS Manage Microsoft AD DC in this own VPC.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 94:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is the kind of solution architecture that will be asked from you at the exam.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 95:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's why it's really important to get the basics done first.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 96:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then talk about these little interesting twists on solution architecture.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 97:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: Okay, so that's all for AWS manage Microsoft AD.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 98:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: Now we have AD Connector, which is much simpler.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 99:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it's going to be a gateway.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 100:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So a proxy to redirect your request your on-premise Microsoft Active Directory there's no caching capability.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 101:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: The users are solely managed on-premise, there is no trust being set up and need to have VPN or Direct Connect.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 102:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so it doesn't have this integration with SQL server.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 103:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: It doesn't do seamless joining it comes share directory.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 104:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is something a bit more basic.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 105:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: And hopefully the example will be very clear if you need AD connector that some kind of directory proxy but AD Connector in case the connection goes down, well, it's basically useless.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 106:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 107:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: Well, we have our corporate office and the Database Cloud and there will be a VPN or Direct Connect connection between these two, and then therefore we can have our active directory directly within our corporate office but our users who wants to again will happen to do the following flow.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 108:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So first they will use the credentials onto a custom signing page.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 109:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: This signing page will be connected to the AD Connector which may be multi AZ.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 110:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: So in one AZ, the AD Connector will be used.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 111:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: This AD Connector then will proxy the request all the way through to the active directory on the corporate office and will perform LDAP authentication.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 112:
- Concepts: Directory Integration, Identity Lifecycle, Temporary Credential Strategy
- Services: AWS Directory Service, AWS IAM, AWS STS
- Key Insights: And if this is good then the AD Connector will perform the STS assumerole IAM which will get back temporary credentials.
- Hidden/Implicit Meaning: Authentication and trust-chain signal.

Line 113:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And then our user will be authenticated into AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 114:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: Finally, you have Simple AD which is going to be very inexpensive Active Directory and it's going to have the most common directory features.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 115:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: It will support joining of EC2 instances, managing users and groups, but it won't support multifactor authentication.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 116:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It will not support the integration with RDS SQL server.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 117:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: It will not support SSO and it's only for small amount of users.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 118:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So, 500 users up to maybe 5,000 users depending on the tier you want to use.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 119:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: It's powered by Samba 4, and it's compatible with Microsoft AD in terms of the API but it's a lower cost, low scale.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 120:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: It's only has basic AD capability or LDAP compatibility and you cannot set up a trust with a on-premise Microsoft AD.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 121:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 122:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: Obviously the most important one is going to be the first one described but now you have the three options of directory services and hopefully there's a bit more clear which one to choose based on which circumstances at the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 123:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 124:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/222_[SAA_SOA] Organizations.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: So now let's talk about AWS Organizations.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it's a global service and it allows you to manage multiple AWS accounts at the same time.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 3:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So you create an organization and the main account in your organization is called the management account, while the other accounts that join the organization or that are created from the organizations are called member accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: And remember, accounts can only be part of one organization.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 5:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: The cool thing about organization is that the billing is consolidated across all the accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So you have a single payment method on the management account and then it will be paying for all the organization's cost.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: But because you have an organization and it's all part of one big family, then you get pricing benefits from aggregated usage.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So if you use a lot EC2 or if you use a lot Amazon S3 across all your accounts, then you will get big discounts, because it will summarize and sum up all the usage across all the accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You can also share reserved instances and saving plans discounts across accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So if a reserved instance is unused in one account, another account can benefit from it and therefor the discounts apply across the entire organization, which is really good for cost savings.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: Now, there's also an API to automate the account creation from within the organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So you can create accounts very easily using an organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So we have what's called a root organizational unit, or OU, and this is the outermost OU of your accounts and then within it sits the management account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: Then you can create sub-OUs, so you can create for example an OU for the dev accounts and then you can create member accounts within the dev OU or you can create OU for a prod account and also add member accounts there, but you can be as free as you want.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 16:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: You can create within the prod OU, an OU for your HR member accounts and an OU for your finance member accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you can organize it the way you want.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you have different examples for your OUs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So you can organize by business units, so you have for example, the management account and then the sales, retail and finance OU and then different accounts within each OU.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 20:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: Or you can have an OU by environment, so for example, one OU for prod, one OU for test, one OU for dev and within each OU, some accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 21:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: Or project-based, so you can have an OU per project within an account, within each project.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And you can mix and match.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You're really free to do whatever you want.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 24:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: So what are the advantages of using organizations?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Well, thanks to having multiple accounts, you can have better security versus having one account with multiple VPC, because accounts are more separated than VPCs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You can also enforce tagging standards for billing purposes and you can in one go, enable CloudTrail for all your accounts and send all the logs into a central S3 account, or we can also send CloudWatch logs to a central logging account and we can establish cross account roles for admin purposes automatically.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 27:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we can administer all the other accounts from the management account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So these are big advantages.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Also, there's a big security advantage.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 30:
- Concepts: Authorization Model, Identity Lifecycle, Organization Governance
- Services: AWS IAM, IAM Policies, Service Control Policies
- Key Insights: We can define service control policies, or SCP, and it's an IAM policy applied to specific OUs or accounts and this allows you to restrict what the users and roles all of them can do within the accounts.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 31:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The SCPs apply to everything but to the management account, which will forever have full admin power, otherwise you could do a mistake and never come back from it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 32:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations, Service Control Policies
- Key Insights: So the SCP have the specificity that if you need to compute what is happening on this specific account, you need to make sure that each OU, including the root, has an explicit allow along the way to allow a specific action.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 33:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This will be very clear in this example.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 34:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So let's take for example, a root OU and we apply full AWS access underneath.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 35:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So the management account is under the root OU and then we have more OU, the Sandbox, the workload, test and prod, with accounts within the OUs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 36:
- Concepts: Authorization Model, Organization Governance
- Services: Service Control Policies
- Key Insights: So if we apply an SCP, which is deny Athena on the management account, what is happening to the management account?
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 37:
- Concepts: Organization Governance
- Services: IAM Roles, Service Control Policies
- Key Insights: Well, the management account can do anything, because there's a role that says that no SCP ever apply to the management account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 38:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This is a safety, because of course, if you lock yourself out of your management account, this would be terrible.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 39:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So remember, the management account can do anything, no matter what.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 40:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations
- Key Insights: But let's say for example, we apply on the Sandbox OU a full AWS access plus deny S3.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 41:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations
- Key Insights: So as you can see, here we still need to apply full AWS access to give allow to everything explicitly, because if we didn't have full AWS access, then nothing would be allowed within that OU.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 42:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So explicit allows are needed every single way.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 43:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations
- Key Insights: And on account A, say, we will also do apply full AWS access and deny EC2, then account A can do anything, because it has full AWS access on the root OU and on the Sandbox OU and on the account itself, but because we have two explicit denies, we have one deny S3 from the Sandbox and one deny EC2 from the account itself, then it cannot access Amazon S3 or Amazon EC2.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 44:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations, Service Control Policies
- Key Insights: For accounts B and C, because it don't have a specific SCP attached to them, then they can do anything except accessing Amazon S3, because you have an explicit deny coming from the Sandbox OU.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 45:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations, Service Control Policies
- Key Insights: Next, if we apply full AWS access to the workloads OU and we also apply an allow EC2 SCP to the test OU then account D can only access EC2 and if we look at the prod OU and accounts E and F within it, well, we must first apply the full AWS access SCP to the prod OU and then accounts E and F can do anything.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 46:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So here are some examples for SCPs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 47:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This is the first one is a blocking of a specific service.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 48:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So first, we allow all actions and then we deny DynamoDB or on the allow list, here, we allow EC2 and CloudWatch, but we don't allow anything else.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 49:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So those are some examples of SCPs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 50:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/223_[CCP_SAA_SOA] Organizations - Hands On.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: So we're going to practice using the organizations.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: For this I'm just going to go into the organization service and get started.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: So as we can see in this example Organizations is a global service because it has to do with accounts and regrouping them together, okay?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The other thing I did is that I created my own new account for this.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I created AWS course master account and on the other window I have AWS course child account because I don't wanna use my main accounts for this and I wanted to do a demo with two separate accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So if you wanna follow along I would suggest creating two new accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: Call them as you want so that you can have one master and one child account within your organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So from the master account I'm going to go ahead and create an organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: Now within the organization we have to define the accounts within it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So as we can see right now, this is very quick, the organization is created and we have the root organizational units.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And within it, we have the AWS course master account which is the master account or also called the management account, okay?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we're going to do that.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: And the organization is created.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: Now we want to add a second AWS as account into this organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And to do so I'm going to add an account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: Organization Governance
- Services: AWS IAM, AWS Organizations, IAM Roles
- Key Insights: And we have two options, either we want to create an account and you specify the account name, the email address of the account owner as well as an IAM role that will be created in the target account to be allowed to be managed by the organization.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Or you can invite an existing AWS account, in which case you need to provide the email address associated with that account or the account ID of the account to invite.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And for this, I will just do the name of my account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I would just add the email which is aws-child-account@stephanemaarek.com.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And this is good to go.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We can include the message if you wanted to and add some tags but I will just go ahead and send my invitation.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So now my invitation has been sent to my other account and we can view all pending invitations through this UI and it hasn't expired yet, so if in two weeks it doesn't get accepted, then this will expire.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 24:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So what I can do next is go to my organization on my child account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And on the left hand side, there is Invitations.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 26:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I click on Invitations.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 27:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I'm going to refresh this page.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And now we see my invitation from the master account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 29:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So as we can see in this organization right now we'll get full control as this organization has full features enabled and can assume full control of your account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 30:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So as soon as you're part of an organization, you accept to be controlled by whoever is the master of that organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 31:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we'll accept the invitation.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 32:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And here we go.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 33:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: Now my account, the child account is enrolled into my AWS organization and we can only see the organization ID as well as the feature set.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 34:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: And an account may have the ability to leave the organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 35:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So back into my AWS organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 36:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now, if I go to my accounts, I click on AWS accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 37:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: As we can see now within my organization we have roots and within roots, we have two accounts now, the master and the child accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 38:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we can do is now organize our accounts using organizational units or OUs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 39:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So for this, we'll just do action and we can create a new OU.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 40:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So to do so we'll go on the roots, okay?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 41:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: And action creates new OU and I can have one, for example, for my Dev accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 42:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: And I create the OU.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 43:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: I can also go again in here and create the OU, And this time I will say tests and maybe less time we'll have a product, so I'll just do a prod OU.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 44:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: And maybe within the prod OU we have different departments.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 45:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I can again create OUs within OUs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 46:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I can have HR, if we have an HR department that has production applications, or maybe we have a finance department that has analytics applications within it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 47:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So as you can see here you can create as many nested OUs as you want.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 48:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: And if you go all the way to your organization and then you look at the OU, now we can see we have roots, dev, and right now, no accounts within dev, prod and we have finance and HR within prod and then we have test.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 49:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So as we can see, we can start organizing the accounts and we have many accounts in organization within specific OUs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 50:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies, Service Control Policies
- Key Insights: And the reason we do so is to have service control policies.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 51:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So what we're going to do is first take our child account and we want to move it in to, for example, the finance department within prod.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 52:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So I take this account and I can say move and then I can have it into my finance department within my prod OU.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 53:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I move the account there.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 54:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And now if we have a look we can see that the finance department contains the course child.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 55:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: It's best practice as well to leave the management account under the root OU but you could move it if you wanted to.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 56:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 57:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies, Service Control Policies
- Key Insights: So now we want to enable service control policies to restrict what my course child account can do.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 58:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: So to do so we go into Policies and as we can see we have four different kinds of policies available to us right now, and they're currently disabled.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 59:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So what we can do is take the important policy types that we want and enable them.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Authorization decision-path signal.

Line 60:
- Concepts: Authorization Model
- Services: IAM Policies, Service Control Policies
- Key Insights: So one we definitely want to enable is the service control policy, because this will allow you to restrict what our children account can do.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 61:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: So this is enabled and I go back to Policies.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 62:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations, IAM Policies
- Key Insights: We have other ones that could be of interest, for example, backup policy allows you to deploy organization-wide backup plans, to ensure that all your accounts are compliant and have backups enabled or tag policies also to help standardize how you use tags within all the different accounts in your organization.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 63:
- Concepts: Authorization Model
- Services: IAM Policies, Service Control Policies
- Key Insights: But for the sake of this hands-on and from an exam perspective I believe only service control policies will be used, but still good to know that you can apply a backup policy across all the accounts and a tag policy across all the accounts as well.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 64:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 65:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies, Service Control Policies
- Key Insights: So service control policies are enabled.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 66:
- Concepts: Authorization Model
- Services: IAM Policies, Service Control Policies
- Key Insights: And so now what we'd like to do is to have service control policy defined.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 67:
- Concepts: Authorization Model
- Services: IAM Policies, Service Control Policies
- Key Insights: So I'm going to click on service control policy and this is the documentation, excuse me.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 68:
- Concepts: Authorization Model
- Services: IAM Policies, Service Control Policies
- Key Insights: And here we have one service control policy that has been created so far, which is the full AWS access.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 69:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 70:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And the full AWS access allows all the accounts to access all the services.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 71:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: But we can create a new policy and attach it.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 72:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations, IAM Policies
- Key Insights: So we can created a policy called oops- We can create a policy called DenyAccess to S3 and this will deny access to the S3 service to whichever OU or account this is attached to.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 73:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So in terms of the policy, we could find a statement.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 74:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, we can find the S3 service in here and within S3, we can say all actions and the resource is going to be star as well.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 75:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to have a star in here.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 76:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So we're denied anything on this (murmurs), a very simple policy and I'll call it deny S3 as an Sid.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 77:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: And then I will click on Create policy.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 78:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So this, when attached to my accounts, should deny access to S3.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 79:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we can have a look.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 80:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's go into our accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 81:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 82:
- Concepts: Authorization Model
- Services: IAM Policies, Service Control Policies
- Key Insights: So if we look at the root to you and click on root, as we can see, there is enabled policy types which is service control policies.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 83:
- Concepts: Organization Governance
- Services: AWS Organizations, IAM Policies
- Key Insights: And if I click on Policies there is one applied policies that is attached directly to the root OU, which is the full access to AWS, which allows everything on root and all its children to access all the services within AWS.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 84:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So if you look at the children of the root OU, we have, for example, the prod OU.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 85:
- Concepts: Organization Governance
- Services: AWS Organizations, IAM Policies
- Key Insights: And if we look at the prod OU, in terms of policies there are two policies, one that is attached directly which is the full AWS access, but also one that is inherited from root, which is the full AWS access.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 86:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it has duplicated this one for some reason.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 87:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: And then if I go into children in a go into finance and click on policies, we have three attached policies.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 88:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So one inherited from prod, one inherited from root and one attached directly.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 89:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies, Service Control Policies
- Key Insights: And this is probably because I've enabled service control policies after creating the OUs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 90:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this full AWS access was attached to every single element within my account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 91:
- Concepts: Organization Governance
- Services: AWS Organizations, IAM Policies
- Key Insights: And if we look at the children of the course of the finance OU within the prod OU, and you click on the course itself, the account itself and go to policies, now we have four.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 92:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we have full AWS access four times.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 93:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you understand at least the concept of inheritance, which makes sense.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 94:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And you can just inherit things from Root that are clear.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 95:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You inherit things from the topmost layer, but what we can do is if we go back one up.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 96:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations, IAM Policies
- Key Insights: So if we go to my prod and finance OU, for example, we can attach a new policy.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 97:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So I'm going to attach a new policy and this one will be the DenyAccessS3.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 98:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: I will attach it and now that means that anything within my finance OU should also have this inherited.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 99:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: So if I click on my course child and then policies, as we can see the DenyAccessS3 has been inherited from finance.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 100:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So how do we make sure that this is working?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 101:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Well, if I go to my account now my child account, and open the S3 console in a new tab.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 102:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We are in S3 and the buckets are being loaded but as we can see, we don't have permission to list buckets and therefore we can not use Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 103:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations, IAM Policies
- Key Insights: And this was due to the policy we have attached to the OU.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 104:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So it's quite powerful because we are able to restrict what an account can do overall, even though I am logged in right now with my root user, okay, with my root user of my account, I still don't have the access to Amazon S3.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 105:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is very powerful and this is how STPs work.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 106:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And hopefully that makes sense for you.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 107:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this hands-on.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 108:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 109:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: So just a little bit of extra information regarding organizations for the SysOps exam.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: The first of all, you can enable what's called Reserved Instances sharing in your organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: That means that all the accounts of your organizations will have access to all the Reserved Instances.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so, that means that any account can use any other's accounts' RI's, and this is obviously for cost saving.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But, you may want to disable that for any specific account, including the payer accounts, in which case, the Reserved Instances or even your savings plans will not be shared across accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is something to know.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: It's a setting you have to turn on and off, but for having the RI or the Savings Plan discounts enabled between two accounts, they must both have sharing turned on.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 8:
- Concepts: Access Boundary Controls, Authorization Model, Organization Governance
- Services: AWS IAM, AWS Organizations, IAM Policies
- Key Insights: The second thing is that using organizations, you can use a specific condition in your IAM policies called the aws:PrincipalOrgID to allow access from any, IAM principles from all the accounts in your organization.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 9:
- Concepts: Identity Lifecycle, Organization Governance
- Services: AWS IAM, AWS Organizations
- Key Insights: So, say you have an organization with a management account and two member accounts with different IAM users.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: Access Boundary Controls, Authorization Model, Identity Lifecycle, Organization Governance
- Services: AWS Organizations, IAM Policies
- Key Insights: If you set up an extra bucket and you're using the bucket policy, the aws:PrincipalOrgID condition, then you're giving access automatically to any user or any roles within your organization to this extra buckets.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 11:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So, it's a good way for you to not have to specify every individual accounts, but instead reference only the leading organization of your accounts.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: Finally, you can implement tag policies for your accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: So, this is a different way to do some policies.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies, Service Control Policies
- Key Insights: So, we've seen that there are service control policies, but also tag policies.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And this is your enforce tagging in your accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, this is your standardize, all the tags and the goal is to maybe audit tagged resources, maintain proper resource categorization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So they find the tag keys in their lab values.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And obviously if you have cost allocation tags enabled, or if you do attribute-based access controls, then this can be very, very helpful.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then regarding the non-compliance of your tags.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it's possible for you to generate a list that will show you all the non-compliant resources and you can use CloudWatch Events as well to monitor non-compliant tags if you needed to.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: So, that's it for organizations.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/225_AWS Control Tower.txt

Line 1:
- Concepts: Organization Governance
- Services: AWS Control Tower
- Key Insights: Now let's look at AWS Control Tower.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it's an easy way for you to set up and govern a secure and compliant multi-account AWS environments based on best practices.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So out of it, you're going to get your environment automated in just a few clicks.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: You're going to have ongoing policy management using guardrails and we see this in this lecture.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 5:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: We're going to detect policy violations and remediate them automatically.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And we can monitor compliance through an interactive dashboard.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: Organization Governance
- Services: AWS Control Tower, AWS Organizations
- Key Insights: So Control Tower is a way for you to really automate best practice multi-accounts and it runs on top of AWS organizations.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 8:
- Concepts: Organization Governance
- Services: AWS Organizations, IAM Policies, Service Control Policies
- Key Insights: So it's going to set up an organization for you and then organize these accounts and implement automatically the service control policies you need.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So out of it there is the account factory and since you automate account provisioning and deployments and it allows you to create pre-approved baseline and configuration options for all the accounts in your organization, such as, for example, configuring the default VPC, configuring the subnets, the regions and so on.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And to do so is going to use the underlying service called the AWS Service Catalog to provision these new accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look in where an account factor will be very helpful.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So we have an cloud computing environments and then we have a data center with an ADFS and an active directory.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And now we are going to establish a VPN or direct connect connection between the cloud and the corporate data center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 14:
- Concepts: Federated Authentication, Organization Governance
- Services: AWS Control Tower, AWS IAM, IAM Identity Center
- Key Insights: And so therefore when we use Control Tower and a lending zone and we create accounts for account factory, then at the center of it is going to be IAM Identity Center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And we can set up in different ways.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 16:
- Concepts: Directory Integration, Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: But if you wanted to integrate with Microsoft Active Directory on your corporate data center then you would create an AWS managed Microsoft AD, which would be the source of notification for your IAM Identity Center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: And then you would create a two-way trust between active directory on your corporate data center and AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: Directory Integration
- Services: AWS IAM
- Key Insights: From there, any accounts created through your landing zone and through account factory will be properly configured to leverage authentication through IAM ID Center and therefore use underlyingly the active directory you have in the cloud and the one you have also on your corporate data center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: Organization Governance
- Services: AWS Control Tower
- Key Insights: Now there's another thing with Control Tower called guardrails.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 20:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: And this is used to detect and remediate policy violations.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it's going to give you ongoing governance.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then you have two kinds of guardrails.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You have preventive guardrails or use SCPs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 24:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And this is, for example, to have an action to disable or disallow the creation of access keys from the root user.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: That's one way.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 26:
- Concepts: Identity Lifecycle
- Services: MFA
- Key Insights: Or detective where you want to give all permissions to your accounts, but then you use config to detect, for example, whether or not MFA is enabled for the root user and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 27:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And config will be very helpful because it gives you compliance or non-compliance of resources.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so here's an example.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We, for example, want to see which resources are untagged.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 30:
- Concepts: Organization Governance
- Services: AWS Control Tower, AWS Organizations
- Key Insights: So we have a detective guardrail in Control Tower using config and it's going to monitor for untagged resources in your member accounts as part of your organization is going to trigger if it's noncompliance and SNS topic, which can notify an admin, maybe invoke Lambda function and that Lambda function itself can remediate to this and add tag where needed.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 31:
- Concepts: Organization Governance
- Services: AWS Control Tower
- Key Insights: So there are a few guardrail levels for Control Tower.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 32:
- Concepts: Organization Governance
- Services: AWS Control Tower
- Key Insights: There is the mandatory guardrail, which is automatically enabled and enforced by AWS Control Tower.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 33:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So for example, you want to disallow public read access to the log archive accounts and this is mandatory.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 34:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Strongly recommended, which is based on AWS practices.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 35:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And for example, you wanna say you want to enable EBS volumes attached to EC2 instances.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 36:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then you have elective guardrails, which is commonly used by enterprises.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 37:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: This is optional as well, for example, to disallow delete actions without MFA in S3 buckets.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 38:
- Concepts: Organization Governance
- Services: AWS Control Tower
- Key Insights: Okay, so that's it for Control Tower.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 39:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 40:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/285_Organizations - Overview.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: So now let's talk about AWS Organizations.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it's a global service and it allows you to manage multiple AWS accounts at the same time.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 3:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So you create an organization and the main account in your organization is called the management account, while the other accounts that join the organization or that are created from the organizations are called member accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: And remember, accounts can only be part of one organization.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 5:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: The cool thing about organization is that the billing is consolidated across all the accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So you have a single payment method on the management account and then it will be paying for all the organization's cost.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: But because you have an organization and it's all part of one big family, then you get pricing benefits from aggregated usage.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So if you use a lot EC2 or if you use a lot Amazon S3 across all your accounts, then you will get big discounts, because it will summarize and sum up all the usage across all the accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You can also share reserved instances and saving plans discounts across accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So if a reserved instance is unused in one account, another account can benefit from it and therefor the discounts apply across the entire organization, which is really good for cost savings.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: Now, there's also an API to automate the account creation from within the organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So you can create accounts very easily using an organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So we have what's called a root organizational unit, or OU, and this is the outermost OU of your accounts and then within it sits the management account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: Then you can create sub-OUs, so you can create for example an OU for the dev accounts and then you can create member accounts within the dev OU or you can create OU for a prod account and also add member accounts there, but you can be as free as you want.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 16:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: You can create within the prod OU, an OU for your HR member accounts and an OU for your finance member accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you can organize it the way you want.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you have different examples for your OUs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So you can organize by business units, so you have for example, the management account and then the sales, retail and finance OU and then different accounts within each OU.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 20:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: Or you can have an OU by environment, so for example, one OU for prod, one OU for test, one OU for dev and within each OU, some accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 21:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: Or project-based, so you can have an OU per project within an account, within each project.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And you can mix and match.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You're really free to do whatever you want.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 24:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: So what are the advantages of using organizations?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Well, thanks to having multiple accounts, you can have better security versus having one account with multiple VPC, because accounts are more separated than VPCs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You can also enforce tagging standards for billing purposes and you can in one go, enable CloudTrail for all your accounts and send all the logs into a central S3 account, or we can also send CloudWatch logs to a central logging account and we can establish cross account roles for admin purposes automatically.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 27:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we can administer all the other accounts from the management account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So these are big advantages.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 29:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Also, there's a big security advantage.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 30:
- Concepts: Authorization Model, Identity Lifecycle, Organization Governance
- Services: AWS IAM, IAM Policies, Service Control Policies
- Key Insights: We can define service control policies, or SCP, and it's an IAM policy applied to specific OUs or accounts and this allows you to restrict what the users and roles all of them can do within the accounts.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 31:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The SCPs apply to everything but to the management account, which will forever have full admin power, otherwise you could do a mistake and never come back from it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 32:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations, Service Control Policies
- Key Insights: So the SCP have the specificity that if you need to compute what is happening on this specific account, you need to make sure that each OU, including the root, has an explicit allow along the way to allow a specific action.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 33:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This will be very clear in this example.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 34:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So let's take for example, a root OU and we apply full AWS access underneath.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 35:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So the management account is under the root OU and then we have more OU, the Sandbox, the workload, test and prod, with accounts within the OUs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 36:
- Concepts: Authorization Model, Organization Governance
- Services: Service Control Policies
- Key Insights: So if we apply an SCP, which is deny Athena on the management account, what is happening to the management account?
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 37:
- Concepts: Organization Governance
- Services: IAM Roles, Service Control Policies
- Key Insights: Well, the management account can do anything, because there's a role that says that no SCP ever apply to the management account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 38:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This is a safety, because of course, if you lock yourself out of your management account, this would be terrible.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 39:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So remember, the management account can do anything, no matter what.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 40:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations
- Key Insights: But let's say for example, we apply on the Sandbox OU a full AWS access plus deny S3.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 41:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations
- Key Insights: So as you can see, here we still need to apply full AWS access to give allow to everything explicitly, because if we didn't have full AWS access, then nothing would be allowed within that OU.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 42:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So explicit allows are needed every single way.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 43:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations
- Key Insights: And on account A, say, we will also do apply full AWS access and deny EC2, then account A can do anything, because it has full AWS access on the root OU and on the Sandbox OU and on the account itself, but because we have two explicit denies, we have one deny S3 from the Sandbox and one deny EC2 from the account itself, then it cannot access Amazon S3 or Amazon EC2.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 44:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations, Service Control Policies
- Key Insights: For accounts B and C, because it don't have a specific SCP attached to them, then they can do anything except accessing Amazon S3, because you have an explicit deny coming from the Sandbox OU.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 45:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations, Service Control Policies
- Key Insights: Next, if we apply full AWS access to the workloads OU and we also apply an allow EC2 SCP to the test OU then account D can only access EC2 and if we look at the prod OU and accounts E and F within it, well, we must first apply the full AWS access SCP to the prod OU and then accounts E and F can do anything.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 46:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So here are some examples for SCPs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 47:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: This is the first one is a blocking of a specific service.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 48:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So first, we allow all actions and then we deny DynamoDB or on the allow list, here, we allow EC2 and CloudWatch, but we don't allow anything else.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 49:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So those are some examples of SCPs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 50:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/286_Organizations - Hands On.txt

Line 1:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: So we're going to practice using the organizations.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: For this I'm just going to go into the organization service and get started.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: So as we can see in this example Organizations is a global service because it has to do with accounts and regrouping them together, okay?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The other thing I did is that I created my own new account for this.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I created AWS course master account and on the other window I have AWS course child account because I don't wanna use my main accounts for this and I wanted to do a demo with two separate accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So if you wanna follow along I would suggest creating two new accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: Call them as you want so that you can have one master and one child account within your organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So from the master account I'm going to go ahead and create an organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: Now within the organization we have to define the accounts within it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So as we can see right now, this is very quick, the organization is created and we have the root organizational units.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And within it, we have the AWS course master account which is the master account or also called the management account, okay?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we're going to do that.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: And the organization is created.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: Now we want to add a second AWS as account into this organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And to do so I'm going to add an account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 17:
- Concepts: Organization Governance
- Services: AWS IAM, AWS Organizations, IAM Roles
- Key Insights: And we have two options, either we want to create an account and you specify the account name, the email address of the account owner as well as an IAM role that will be created in the target account to be allowed to be managed by the organization.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Or you can invite an existing AWS account, in which case you need to provide the email address associated with that account or the account ID of the account to invite.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And for this, I will just do the name of my account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I would just add the email which is aws-child-account@stephanemaarek.com.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And this is good to go.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 22:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We can include the message if you wanted to and add some tags but I will just go ahead and send my invitation.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So now my invitation has been sent to my other account and we can view all pending invitations through this UI and it hasn't expired yet, so if in two weeks it doesn't get accepted, then this will expire.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 24:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So what I can do next is go to my organization on my child account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And on the left hand side, there is Invitations.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 26:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I click on Invitations.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 27:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I'm going to refresh this page.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And now we see my invitation from the master account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 29:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So as we can see in this organization right now we'll get full control as this organization has full features enabled and can assume full control of your account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 30:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So as soon as you're part of an organization, you accept to be controlled by whoever is the master of that organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 31:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we'll accept the invitation.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 32:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And here we go.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 33:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: Now my account, the child account is enrolled into my AWS organization and we can only see the organization ID as well as the feature set.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 34:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: And an account may have the ability to leave the organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 35:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So back into my AWS organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 36:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Now, if I go to my accounts, I click on AWS accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 37:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: As we can see now within my organization we have roots and within roots, we have two accounts now, the master and the child accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 38:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we can do is now organize our accounts using organizational units or OUs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 39:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So for this, we'll just do action and we can create a new OU.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 40:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So to do so we'll go on the roots, okay?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 41:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: And action creates new OU and I can have one, for example, for my Dev accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 42:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: And I create the OU.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 43:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: I can also go again in here and create the OU, And this time I will say tests and maybe less time we'll have a product, so I'll just do a prod OU.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 44:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: And maybe within the prod OU we have different departments.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 45:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I can again create OUs within OUs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 46:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I can have HR, if we have an HR department that has production applications, or maybe we have a finance department that has analytics applications within it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 47:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So as you can see here you can create as many nested OUs as you want.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 48:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: And if you go all the way to your organization and then you look at the OU, now we can see we have roots, dev, and right now, no accounts within dev, prod and we have finance and HR within prod and then we have test.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 49:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So as we can see, we can start organizing the accounts and we have many accounts in organization within specific OUs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 50:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies, Service Control Policies
- Key Insights: And the reason we do so is to have service control policies.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 51:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So what we're going to do is first take our child account and we want to move it in to, for example, the finance department within prod.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 52:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So I take this account and I can say move and then I can have it into my finance department within my prod OU.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 53:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I move the account there.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 54:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And now if we have a look we can see that the finance department contains the course child.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 55:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: It's best practice as well to leave the management account under the root OU but you could move it if you wanted to.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 56:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 57:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies, Service Control Policies
- Key Insights: So now we want to enable service control policies to restrict what my course child account can do.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 58:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: So to do so we go into Policies and as we can see we have four different kinds of policies available to us right now, and they're currently disabled.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 59:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So what we can do is take the important policy types that we want and enable them.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Authorization decision-path signal.

Line 60:
- Concepts: Authorization Model
- Services: IAM Policies, Service Control Policies
- Key Insights: So one we definitely want to enable is the service control policy, because this will allow you to restrict what our children account can do.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 61:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: So this is enabled and I go back to Policies.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 62:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations, IAM Policies
- Key Insights: We have other ones that could be of interest, for example, backup policy allows you to deploy organization-wide backup plans, to ensure that all your accounts are compliant and have backups enabled or tag policies also to help standardize how you use tags within all the different accounts in your organization.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 63:
- Concepts: Authorization Model
- Services: IAM Policies, Service Control Policies
- Key Insights: But for the sake of this hands-on and from an exam perspective I believe only service control policies will be used, but still good to know that you can apply a backup policy across all the accounts and a tag policy across all the accounts as well.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal; Authorization decision-path signal.

Line 64:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 65:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies, Service Control Policies
- Key Insights: So service control policies are enabled.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 66:
- Concepts: Authorization Model
- Services: IAM Policies, Service Control Policies
- Key Insights: And so now what we'd like to do is to have service control policy defined.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 67:
- Concepts: Authorization Model
- Services: IAM Policies, Service Control Policies
- Key Insights: So I'm going to click on service control policy and this is the documentation, excuse me.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 68:
- Concepts: Authorization Model
- Services: IAM Policies, Service Control Policies
- Key Insights: And here we have one service control policy that has been created so far, which is the full AWS access.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 69:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 70:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And the full AWS access allows all the accounts to access all the services.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 71:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: But we can create a new policy and attach it.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 72:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations, IAM Policies
- Key Insights: So we can created a policy called oops- We can create a policy called DenyAccess to S3 and this will deny access to the S3 service to whichever OU or account this is attached to.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 73:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So in terms of the policy, we could find a statement.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 74:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, we can find the S3 service in here and within S3, we can say all actions and the resource is going to be star as well.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 75:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to have a star in here.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 76:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So we're denied anything on this (murmurs), a very simple policy and I'll call it deny S3 as an Sid.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 77:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: And then I will click on Create policy.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 78:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: So this, when attached to my accounts, should deny access to S3.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal; Authorization decision-path signal.

Line 79:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we can have a look.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 80:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's go into our accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 81:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 82:
- Concepts: Authorization Model
- Services: IAM Policies, Service Control Policies
- Key Insights: So if we look at the root to you and click on root, as we can see, there is enabled policy types which is service control policies.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 83:
- Concepts: Organization Governance
- Services: AWS Organizations, IAM Policies
- Key Insights: And if I click on Policies there is one applied policies that is attached directly to the root OU, which is the full access to AWS, which allows everything on root and all its children to access all the services within AWS.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 84:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So if you look at the children of the root OU, we have, for example, the prod OU.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 85:
- Concepts: Organization Governance
- Services: AWS Organizations, IAM Policies
- Key Insights: And if we look at the prod OU, in terms of policies there are two policies, one that is attached directly which is the full AWS access, but also one that is inherited from root, which is the full AWS access.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 86:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it has duplicated this one for some reason.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 87:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: And then if I go into children in a go into finance and click on policies, we have three attached policies.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 88:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So one inherited from prod, one inherited from root and one attached directly.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 89:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies, Service Control Policies
- Key Insights: And this is probably because I've enabled service control policies after creating the OUs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 90:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this full AWS access was attached to every single element within my account.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 91:
- Concepts: Organization Governance
- Services: AWS Organizations, IAM Policies
- Key Insights: And if we look at the children of the course of the finance OU within the prod OU, and you click on the course itself, the account itself and go to policies, now we have four.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 92:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we have full AWS access four times.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 93:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you understand at least the concept of inheritance, which makes sense.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 94:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And you can just inherit things from Root that are clear.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 95:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You inherit things from the topmost layer, but what we can do is if we go back one up.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 96:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations, IAM Policies
- Key Insights: So if we go to my prod and finance OU, for example, we can attach a new policy.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 97:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: So I'm going to attach a new policy and this one will be the DenyAccessS3.
- Hidden/Implicit Meaning: Authorization decision-path signal.

Line 98:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: I will attach it and now that means that anything within my finance OU should also have this inherited.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 99:
- Concepts: IAM Domain Operational Context
- Services: IAM Policies
- Key Insights: So if I click on my course child and then policies, as we can see the DenyAccessS3 has been inherited from finance.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 100:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So how do we make sure that this is working?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 101:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Well, if I go to my account now my child account, and open the S3 console in a new tab.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 102:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We are in S3 and the buckets are being loaded but as we can see, we don't have permission to list buckets and therefore we can not use Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 103:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations, IAM Policies
- Key Insights: And this was due to the policy we have attached to the OU.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 104:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So it's quite powerful because we are able to restrict what an account can do overall, even though I am logged in right now with my root user, okay, with my root user of my account, I still don't have the access to Amazon S3.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 105:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this is very powerful and this is how STPs work.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 106:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And hopefully that makes sense for you.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 107:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this hands-on.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 108:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 109:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/287_Organizations - Tag Policies.txt

Line 1:
- Concepts: Authorization Model, Organization Governance
- Services: AWS Organizations, IAM Policies
- Key Insights: So now let's talk about another kind of policy you can have on your organization, called a tag policy.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 2:
- Concepts: Organization Governance
- Services: AWS Organizations
- Key Insights: So it looks like this and the idea is to standardize the tags across the resources in a specific AWS organization.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it is used to ensure consistent tagging, to audit tagged resources, to maintain proper resources categorization, and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you define the tag keys and their allowed values, and then you're going to be able to ascend them directly to resources or have restrictions on how they're assigned to resources across all your accounts.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So really to maintain consistency.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Of course, when you want to do cost allocation tags and attributes-based access control, this is a great combination because you restrict what the accounts can do and so you maintain your consistency across your account, and so therefore, you can do cost accounting based on tags and also access control based on tags.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You can also prevent any non-compliant tagging operations on specified services and resources, but it doesn't have an effect on resources without tags.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And you can generate a list and a report that lists all the tagged and non-tagged or non-compliant resources.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations, IAM Policies
- Key Insights: In case you also want to look for non-compliant tags, you can use EventBridge, okay? so if you get a question at the exam around how to maintain tags consistent across accounts, think about tag policies in AWS organizations.
- Hidden/Implicit Meaning: Multi-account governance signal.

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

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/292_AWS Directory Services.txt

Line 1:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: Hey, so now let's talk about Microsoft Active Directory and AWS Directory Services.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So in case you don't know what Microsoft AD is, it is a software that is found on any Windows Server with AD Domain Services.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And it's a database of objects, and the objects can be user accounts, computers, printers, file shares, security groups.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: So all your users manage within your entire Microsoft ecosystem on premise is going to be managed by Microsoft Active Directory.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And there's going to be a centralized security management.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: You can create account, assign permissions, and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And all the objects will be organized into a tree.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 8:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And a group of tree is called a forest.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: That's just for some terminology.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example, we have a domain controller and we're going to create an account on it.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We're create an account username is John, and the password is Password.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that all the other Windows machines we have within our network are going to be connected to the domain controller.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's if we're using the John password on the first machine, it's going to look it up in the controller and say, yes, we have that login.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: Authorization Model
- Services: (none explicit)
- Key Insights: And then, allow you to log in from that machine.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 15:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: So all these machines are going to be connected to your domain controller and that allows you to have the users accessible on any single machine.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 16:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So that's the whole idea behind Active Directory in a very, very high level.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 17:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: Now we have AWS Directory Services, which is to provide you a way to create an Active Directory on AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And we have three flavors on it.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: We don't have to do a deep dive on them, but you have to understand the differences between these three flavors.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 20:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: The first one is AWS Manage Microsoft AD to create your own Active Directory in AWS.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 21:
- Concepts: Identity Lifecycle
- Services: MFA
- Key Insights: And you can manage users locally and it supports multi-factor authentication.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 22:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: The idea is that with this standalone Active Directory, you can also create a trust connection with your on-premise AD where you have your own users there as well.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 23:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: And what that means is that your AD in here, for example, can be trusted with the on-premise AD.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 24:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So AWS trust the on-premise AD and on-premise AD trust AWS.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 25:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: And so that means that if your users authenticated to the right, and used an account that is not managed by AWS, it can go and look up the accounts into the on-premise Active Directory.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: And similarly, if an on-premise directory user goes and authentic to your on-premise AD using the AWS accounts, it can be trusted to go and look it up.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 27:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: So here our users are going to be shared between our on-premise Active Directory and AWS, okay?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: A little bit complicated, I know if you're new to this, but hopefully it makes sense.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 29:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: The AD Connector is a little bit different.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 30:
- Concepts: Directory Integration, Identity Lifecycle
- Services: MFA
- Key Insights: This is a direct gateway proxy to redirect to on-premise AD and it supports MFA if you need multi-factor authentication and the users are solely managed into the on-premise AD.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 31:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So here is the example.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 32:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: In this example, our AD Connector is just acting as a proxy.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 33:
- Concepts: Directory Integration, Identity Lifecycle
- Services: AWS Directory Service
- Key Insights: So if the users try to authenticate with our AD Connector it's going to proxy the request back to our on-premise AD and look it up.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 34:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: So the idea here is that in the first case with Microsoft Managed Microsoft AD, we have users sitting in AWS Managed AD and users sitting in on-premise AD.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 35:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: Whereas with Ad Connector, as the name indicates, it connects, it proxies the queries, the connection requests back to our on-premise Active Directory.
- Hidden/Implicit Meaning: Authentication and trust-chain signal; Multi-account governance signal.

Line 36:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: And the only place where we can manage users is going to be on the on-premise AD.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 37:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: Finally, you have Simple AD.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 38:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: And it's an AD-compatible managed directory on AWS.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 39:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: It doesn't use Microsoft Directory.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 40:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: And it cannot be joined with a non-premise Active Directory.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 41:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So the idea is that if you don't have an on-premise AD and you need an Active Directory for your AWS Cloud, then you can have just a Simple AD as a standalone thing.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 42:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: And the idea here is that using Active Directory you can create EC2 instances that are going to be running Windows.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 43:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: And these Windows instances can join the domain controllers for your network and share all the logins, and the credentials, and so on.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 44:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So this is why we want to have a directory in AWS to have a directory closer to your EC2 instances running Windows.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 45:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And hopefully that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 46:
- Concepts: Directory Integration, Identity Lifecycle
- Services: AWS Directory Service, MFA
- Key Insights: Now, the exam should has queue some very, very high level question, saying we want to proxy our users to on-premise and therefore you need AD Connector, or we want to manage our users on the cloud in AWS and have MFA and therefore you need AWS Managed AD, or we just want a Simple AD and we don't have any on-premise stuff.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 47:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: In this case, you want a Simple AD.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 48:
- Concepts: Directory Integration, Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: So now something that you know is how to integrate the IAM Identity Center with Active Directory.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 49:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: So if you connect to an Active Directory that is managed on your AWS using the directory service then the integration is out of the box.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 50:
- Concepts: Directory Integration, Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: You just tell IAM Identity Center to integrate and connect to your AWS Managed Microsoft AD.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 51:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: Very simple.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 52:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: But what if you don't manage your Active Directory users on the cloud?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 53:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: What if you have a self-managed directory for example, on premises?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 54:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: In that case, you have two ways of connecting to your self-managed directory.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 55:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: The first one is what we should call a two-way trust relationship using the AWS Managed Microsoft AD.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 56:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: So you would create a Managed Microsoft AD from the directory service, and then you would set up a two-way trust relationship between your Active Directory, for example on premises and your Managed AD.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 57:
- Concepts: Federated Authentication
- Services: AWS IAM, IAM Identity Center
- Key Insights: And then you would use the out of the box integration coming from the IAM Identity Center for single sign-up.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 58:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: The other option would be to use an AD Connector.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 59:
- Concepts: Directory Integration, Federated Authentication
- Services: AWS Directory Service, AWS IAM, IAM Identity Center, IAM Roles
- Key Insights: So an AD Connector here would have the role to of course integrate with IAM Identity Center.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 60:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: And then you would connect to it and then it would automatically proxy any kind of request onto your self-managed directory.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 61:
- Concepts: Directory Integration, Identity Lifecycle
- Services: (none explicit)
- Key Insights: So if you had to choose one or the other, it will depends on if you want to also be able to manage users from within the cloud on Active Directory in the cloud.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 62:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And then the first solution may better.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 63:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: But if you just wanted to proxy API calls then the second solution could be a fit, although with a bit more latency.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 64:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 65:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/293_AWS Directory Services - Hands On.txt

Line 1:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: So, if you go to the console and type directory service, we can see the different options offered to us.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I'll just go through them at a high level because they can be complicated to set up individually.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 3:
- Concepts: Identity Lifecycle
- Services: Amazon Cognito
- Key Insights: But so we have four options and actually the fourth one is Amazon Cognito User Pool, which is redirecting you to the Cognito service.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: So, don't count this into directory services.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: So we have AWS managed Microsoft ID where we can have an active directory that's going to be integrated with AWS Cloud and can have a trust relationship with your on-premise directory.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And to set it up, you can see it's two additions.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The Standard Edition up to 30,000 objects or the Enterprise Edition up to 500,000 objects.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So, a lot more.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 9:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: And then you need to set it up and I won't go over the setup because this is more AD specific and you don't need to know this for the exam.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 10:
- Concepts: Directory Integration
- Services: (none explicit)
- Key Insights: This next one is Simple AD which is going to be a standalone managed directory that has a active directory compatible API but it cannot be connected to your on-premise active directory.
- Hidden/Implicit Meaning: Constraint or limitation signal; Multi-account governance signal.

Line 11:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: Or AD Connector which is a proxy for redirecting directory request to your existing Microsoft Active Directory on-premise.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And it's designed for, you have two levels.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: Identity Lifecycle
- Services: (none explicit)
- Key Insights: You have a connector for up to 500 users or you have a connector for up to 5,000 users, okay?
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: MFA
- Key Insights: So remember the first one supports MFA.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 15:
- Concepts: Directory Integration
- Services: AWS Directory Service
- Key Insights: The second one is just standalone and AD Connector is a proxy.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 17:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/25_Identity and Access Management (IAM) - Advanced/294_AWS Control Tower.txt

Line 1:
- Concepts: Organization Governance
- Services: AWS Control Tower
- Key Insights: So now let's talk about the AWS Control Tower service.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 2:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So it's a very easy way for you to set up and govern a secure and compliant multi-account AWS environment based on best practices.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Multi-account governance signal.

Line 3:
- Concepts: Organization Governance
- Services: AWS Control Tower, AWS Organizations
- Key Insights: So actually to create these accounts, well, the Control Tower service is going to use the AWS Organization service and then the accounts are automatically being created and we'll see in the next slide how to make them secure and compliant.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 4:
- Concepts: Organization Governance
- Services: AWS Control Tower
- Key Insights: And so the benefits of using a Control Tower is that you automate the set up of your environments in a few clicks and you have all your configs you want in advance.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 5:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: Then you can automate ongoing policy management using guardrails.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 6:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: I will show you this in the next slide.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 7:
- Concepts: Authorization Model
- Services: IAM Policies
- Key Insights: You can detect policy violations and remediate them automatically, and you can monitor the overall compliance of all your accounts through an interactive dashboard.
- Hidden/Implicit Meaning: Multi-account governance signal; Authorization decision-path signal.

Line 8:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: So it's yet another service on top of organizations.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 9:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So what are these guardrails?
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 10:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So say you set up multiple accounts on AWS, but you want to restrict all of them at once for certain kind of things, or you want to monitor the compliance for certain kind of things.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 11:
- Concepts: Organization Governance
- Services: AWS Control Tower
- Key Insights: So using these guardrails, you're going to get ongoing governance for all your accounts within your Control Tower environments.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 12:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So you have two kinds of guardrails.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 13:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The first one is called a preventive guardrail.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 14:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And so it's to prevent accounts from doing something and therefore they're restrictive.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 15:
- Concepts: Organization Governance
- Services: AWS Organizations, IAM Policies, Service Control Policies
- Key Insights: And so we're going to use SCP, so Service Control Policies, from the AWS Organization service to apply them to all our accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 16:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, we could create a preventive guardrail to restrict regions across all your accounts to say, hey, you should only operate in the us-east-1 in the eu-west-2 regions.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Multi-account governance signal.

Line 17:
- Concepts: Organization Governance
- Services: AWS Control Tower, AWS Organizations
- Key Insights: And so therefore behind the scenes, Control Tower is going to tell organizations to use SCPs.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 18:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: The second kind of guardrail we have is a detective guardrail.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 19:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So this time, we want to just detect non-compliance.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 20:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And because I talk to you about compliance, of course, it's using the AWS Config service.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 21:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: For example, we want to identify untagged resources in our accounts.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 22:
- Concepts: Organization Governance
- Services: AWS Control Tower
- Key Insights: So we have Control Tower and we set up a detective guardrail.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 23:
- Concepts: IAM Domain Operational Context
- Services: AWS Organizations
- Key Insights: And so it's going to use Config and Config is going to be deployed on all your member accounts and is going through the rules, monitor any untagged resources.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 24:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: In case anything is non-compliant, it's going to trigger an SNS topic.
- Hidden/Implicit Meaning: Implicitly contributes IAM/domain behavior detail.

Line 25:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So we could be notified as an administrator or the SNS topic can also invoke a Lambda function.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 26:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: And the Lambda function can automatically remediate the action and add tags to your untagged resources.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 27:
- Concepts: Organization Governance
- Services: AWS Control Tower
- Key Insights: So we've seen Control Tower, we've seen how it can generate new accounts and how we can have guardrails, either preventive or detective, to control the security and the compliance of our environments.
- Hidden/Implicit Meaning: Multi-account governance signal.

Line 28:
- Concepts: IAM Domain Operational Context
- Services: (none explicit)
- Key Insights: So I hope you like this lecture and I will see you in the next lecture.
- Hidden/Implicit Meaning: Multi-account governance signal.

## Step 2 â€” Consolidation

### 1. Concepts List
- Access Boundary Controls
- Authorization Model
- Directory Integration
- Federated Authentication
- IAM Domain Operational Context
- Identity Lifecycle
- Organization Governance
- Temporary Credential Strategy

### 2. Services List
- AWS Control Tower
- AWS Directory Service
- AWS IAM
- AWS Organizations
- AWS RAM
- AWS STS
- Amazon Cognito
- IAM Identity Center
- IAM Policies
- IAM Roles
- MFA
- Permission Boundaries
- SAML/OIDC Federation
- Service Control Policies

### 3. Features List
- boundaries
- evaluation
- mfa
- saml
- scp
- tag policy

### 4. Use Cases
- 008_AWS Directory Services.txt:2: So I really wanna make sure that we both understand what this is 'cause I think it's quite complicated especially if you're not from Microsoft background and I wanna make sure you choose the right answer at the exam when a question or two comes up on this topic.
- 008_AWS Directory Services.txt:9: For example, we have a domain controller that knows that John is username and password is the password which is not a very strong password, but anyway and we have other machines Microsoft machines connected to this domain controller.
- 008_AWS Directory Services.txt:16: For example, the Console, Dropbox, Office 365 and so on.
- 008_AWS Directory Services.txt:40: It doesn't support MFA, for example.
- 008_AWS Directory Services.txt:46: And now we're going to be able to create easy two windows instances and we can deploy traditional applications on these instances, for example, SharePoint or we can do something called seamless domain join from your Amazon EC2 instances in Multiple Accounts and VPCs directly onto your domain controllers.
- 008_AWS Directory Services.txt:71: The first one is one way when we have AWS trust on-premise the second one is the other one way which you have the on-premise trust AWS.
- 008_AWS Directory Services.txt:87: So, for example, we want to say, okay we want to have our replica of the on-premise AD on AWS because if somehow the direct connect or the VPN goes down then we still want our users to have connectivity and function correctly.
- 009_AWS Organizations.txt:13: So when we have the organization and the management account, if we happen to create a member account using an API from the Organization service, then, automatically, an IAM role within the member account is going to be created.
- 009_AWS Organizations.txt:15: Now, the management account, when it needs to perform administrative duties onto the member account, will assume that administrative role using the AssumeRole API.
- 009_AWS Organizations.txt:18: Now, this role is going to be used by the management account to perform admin task in the member account, for example, creating IAM users.
- 009_AWS Organizations.txt:27: You can get them for better resource isolation, for example, you wanna have one account per VPC, or you want to have separate per-account service limits, or you want to have a separate account for logging and so on.
- 009_AWS Organizations.txt:29: For example, do you want multi accounts or one account with a multi VPC in it?
- 009_AWS Organizations.txt:38: You can also get, for example, a management account and then dev/test/prod types of OUs.
- 010_AWS Organizations Policies.txt:11: So the use cases for SCP is to restrict access to certain services.
- 010_AWS Organizations Policies.txt:12: For example, hey, you cannot use EMR, or to enforce PCI compliance by explicitly disabling some services in AWS.
- 010_AWS Organizations Policies.txt:14: So let's take for example, a Root OU, and we apply FullAWSAccess underneath.
- 010_AWS Organizations Policies.txt:20: But let's say for example, we apply on the Sandbox OU a FullAWSAccess plus Deny S3.
- 010_AWS Organizations Policies.txt:37: We're going to look at Organizations SCP, Resource-based policy, Identity-based policy, IAM permission boundaries, and then finally, Session policies to allow or deny a specific IAM action.
- 010_AWS Organizations Policies.txt:43: Then we look at resource-based policy, for example, they can be applied to S3 buckets.
- 010_AWS Organizations Policies.txt:55: But what I want you to remember is that all these things are evaluated when making a specific IAM action, okay?
- 010_AWS Organizations Policies.txt:58: So these IAM SCP policies can be used, for example, to restrict tags, okay?
- 010_AWS Organizations Policies.txt:64: So ForAllValues:StringEquals, TagKeys, Env, and CostCenter, and this means that we want absolutely both the Env and the CostCenter tags to be present in the EBS volume when we create it.
- 010_AWS Organizations Policies.txt:68: Another example of SCP you can have is an SCP to deny an entire region using the condition named aws:RequestRegion.
- 010_AWS Organizations Policies.txt:72: For example, you can have ArnNotLike, so that two roles, for example, are allowed to bypass this SCP.
- 010_AWS Organizations Policies.txt:76: For example, we can restrict launching an EC2 instance if it does not have the Project and CostCenter tags.
- 010_AWS Organizations Policies.txt:78: Okay, that means that you're going to, and this is a deny, So that means that it's going to deny any request that does not contain the Project tag in our EBS volume.
- 010_AWS Organizations Policies.txt:92: So for example, Amazon Lex, Amazon Comprehend, Amazon Polly, all of these services improve based on the data you give them.
- 010_AWS Organizations Policies.txt:96: For example, on the bottom right, I'm opting out of Rekognition and Amazon Lex.
- 012_AWS Control Tower.txt:9: So out of it there is the account factory and since you automate account provisioning and deployments and it allows you to create pre-approved baseline and configuration options for all the accounts in your organization, such as, for example, configuring the default VPC, configuring the subnets, the regions and so on.
- 012_AWS Control Tower.txt:14: And so therefore when we use Control Tower and a lending zone and we create accounts for account factory, then at the center of it is going to be IAM Identity Center.
- 012_AWS Control Tower.txt:24: And this is, for example, to have an action to disable or disallow the creation of access keys from the root user.
- 012_AWS Control Tower.txt:26: Or detective where you want to give all permissions to your accounts, but then you use config to detect, for example, whether or not MFA is enabled for the root user and so on.
- 012_AWS Control Tower.txt:29: We, for example, want to see which resources are untagged.
- 012_AWS Control Tower.txt:33: So for example, you want to disallow public read access to the log archive accounts and this is mandatory.
- 012_AWS Control Tower.txt:35: And for example, you wanna say you want to enable EBS volumes attached to EC2 instances.
- 012_AWS Control Tower.txt:37: This is optional as well, for example, to disallow delete actions without MFA in S3 buckets.
- 013_AWS Resource Access Manager - RAM.txt:6: You can share VPC subnets, for example, which is very helpful and one of the best use case for RAM, which allows you to have all the resources launched within the same subnets.
- 013_AWS Resource Access Manager - RAM.txt:13: But one of the most important use case from an exam perspective for Resource Access Manager is for the VPC.
- 013_AWS Resource Access Manager - RAM.txt:17: So for example, if I deploy an EC2 instance, an ALB in account one then, and account two will have an EC2 instance, they can communicate with one another but they cannot view each other, okay?
- 013_AWS Resource Access Manager - RAM.txt:21: So this avoid the needs, for example, to do a VPC peering.
- 013_AWS Resource Access Manager - RAM.txt:23: Now, the use cases for this is that applications within the same trust boundaries can be deployed within the same VPC, and that will simplify your network.
- 013_AWS Resource Access Manager - RAM.txt:28: So here's an example, account A has a Prefix List and in it you have the CIDR 1, CIDR 2, CIDR 3 and these are set of rules, for example, that represent your internal network of your company.
- 013_AWS Resource Access Manager - RAM.txt:34: And so that if you are using, for example, your own Customer Managed Prefix List, then you define the CIDRs and then you can share it with other accounts, organizations and then you can modify them.
- 168_AWS Directory Services.txt:2: So I really wanna make sure that we both understand what this is 'cause I think it's quite complicated especially if you're not from Microsoft background and I wanna make sure you choose the right answer at the exam when a question or two comes up on this topic.
- 168_AWS Directory Services.txt:9: For example, we have a domain controller that knows that John is username and password is the password which is not a very strong password, but anyway and we have other machines Microsoft machines connected to this domain controller.
- 168_AWS Directory Services.txt:16: For example, the Console, Dropbox, Office 365 and so on.
- 168_AWS Directory Services.txt:40: It doesn't support MFA, for example.
- 168_AWS Directory Services.txt:46: And now we're going to be able to create easy two windows instances and we can deploy traditional applications on these instances, for example, SharePoint or we can do something called seamless domain join from your Amazon EC2 instances in Multiple Accounts and VPCs directly onto your domain controllers.
- 168_AWS Directory Services.txt:71: The first one is one way when we have AWS trust on-premise the second one is the other one way which you have the on-premise trust AWS.
- 168_AWS Directory Services.txt:87: So, for example, we want to say, okay we want to have our replica of the on-premise AD on AWS because if somehow the direct connect or the VPN goes down then we still want our users to have connectivity and function correctly.
- 222_[SAA_SOA] Organizations.txt:15: Then you can create sub-OUs, so you can create for example an OU for the dev accounts and then you can create member accounts within the dev OU or you can create OU for a prod account and also add member accounts there, but you can be as free as you want.
- 222_[SAA_SOA] Organizations.txt:19: So you can organize by business units, so you have for example, the management account and then the sales, retail and finance OU and then different accounts within each OU.
- 222_[SAA_SOA] Organizations.txt:20: Or you can have an OU by environment, so for example, one OU for prod, one OU for test, one OU for dev and within each OU, some accounts.
- 222_[SAA_SOA] Organizations.txt:32: So the SCP have the specificity that if you need to compute what is happening on this specific account, you need to make sure that each OU, including the root, has an explicit allow along the way to allow a specific action.
- 222_[SAA_SOA] Organizations.txt:34: So let's take for example, a root OU and we apply full AWS access underneath.
- 222_[SAA_SOA] Organizations.txt:40: But let's say for example, we apply on the Sandbox OU a full AWS access plus deny S3.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:41: And action creates new OU and I can have one, for example, for my Dev accounts.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:51: So what we're going to do is first take our child account and we want to move it in to, for example, the finance department within prod.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:62: We have other ones that could be of interest, for example, backup policy allows you to deploy organization-wide backup plans, to ensure that all your accounts are compliant and have backups enabled or tag policies also to help standardize how you use tags within all the different accounts in your organization.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:74: For example, we can find the S3 service in here and within S3, we can say all actions and the resource is going to be star as well.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:78: So this, when attached to my accounts, should deny access to S3.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:84: So if you look at the children of the root OU, we have, for example, the prod OU.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:96: So if we go to my prod and finance OU, for example, we can attach a new policy.
- 224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt:8: The second thing is that using organizations, you can use a specific condition in your IAM policies called the aws:PrincipalOrgID to allow access from any, IAM principles from all the accounts in your organization.
- 225_AWS Control Tower.txt:9: So out of it there is the account factory and since you automate account provisioning and deployments and it allows you to create pre-approved baseline and configuration options for all the accounts in your organization, such as, for example, configuring the default VPC, configuring the subnets, the regions and so on.
- 225_AWS Control Tower.txt:14: And so therefore when we use Control Tower and a lending zone and we create accounts for account factory, then at the center of it is going to be IAM Identity Center.
- 225_AWS Control Tower.txt:24: And this is, for example, to have an action to disable or disallow the creation of access keys from the root user.
- 225_AWS Control Tower.txt:26: Or detective where you want to give all permissions to your accounts, but then you use config to detect, for example, whether or not MFA is enabled for the root user and so on.
- 225_AWS Control Tower.txt:29: We, for example, want to see which resources are untagged.
- 225_AWS Control Tower.txt:33: So for example, you want to disallow public read access to the log archive accounts and this is mandatory.
- 225_AWS Control Tower.txt:35: And for example, you wanna say you want to enable EBS volumes attached to EC2 instances.
- 225_AWS Control Tower.txt:37: This is optional as well, for example, to disallow delete actions without MFA in S3 buckets.
- 285_Organizations - Overview.txt:15: Then you can create sub-OUs, so you can create for example an OU for the dev accounts and then you can create member accounts within the dev OU or you can create OU for a prod account and also add member accounts there, but you can be as free as you want.
- 285_Organizations - Overview.txt:19: So you can organize by business units, so you have for example, the management account and then the sales, retail and finance OU and then different accounts within each OU.
- 285_Organizations - Overview.txt:20: Or you can have an OU by environment, so for example, one OU for prod, one OU for test, one OU for dev and within each OU, some accounts.
- 285_Organizations - Overview.txt:32: So the SCP have the specificity that if you need to compute what is happening on this specific account, you need to make sure that each OU, including the root, has an explicit allow along the way to allow a specific action.
- 285_Organizations - Overview.txt:34: So let's take for example, a root OU and we apply full AWS access underneath.
- 285_Organizations - Overview.txt:40: But let's say for example, we apply on the Sandbox OU a full AWS access plus deny S3.
- 286_Organizations - Hands On.txt:41: And action creates new OU and I can have one, for example, for my Dev accounts.
- 286_Organizations - Hands On.txt:51: So what we're going to do is first take our child account and we want to move it in to, for example, the finance department within prod.
- 286_Organizations - Hands On.txt:62: We have other ones that could be of interest, for example, backup policy allows you to deploy organization-wide backup plans, to ensure that all your accounts are compliant and have backups enabled or tag policies also to help standardize how you use tags within all the different accounts in your organization.
- 286_Organizations - Hands On.txt:74: For example, we can find the S3 service in here and within S3, we can say all actions and the resource is going to be star as well.
- 286_Organizations - Hands On.txt:78: So this, when attached to my accounts, should deny access to S3.
- 286_Organizations - Hands On.txt:84: So if you look at the children of the root OU, we have, for example, the prod OU.
- 286_Organizations - Hands On.txt:96: So if we go to my prod and finance OU, for example, we can attach a new policy.
- 287_Organizations - Tag Policies.txt:6: Of course, when you want to do cost allocation tags and attributes-based access control, this is a great combination because you restrict what the accounts can do and so you maintain your consistency across your account, and so therefore, you can do cost accounting based on tags and also access control based on tags.
- 292_AWS Directory Services.txt:23: And what that means is that your AD in here, for example, can be trusted with the on-premise AD.
- 292_AWS Directory Services.txt:53: What if you have a self-managed directory for example, on premises?
- 292_AWS Directory Services.txt:56: So you would create a Managed Microsoft AD from the directory service, and then you would set up a two-way trust relationship between your Active Directory, for example on premises and your Managed AD.
- 294_AWS Control Tower.txt:16: For example, we could create a preventive guardrail to restrict regions across all your accounts to say, hey, you should only operate in the us-east-1 in the eu-west-2 regions.
- 294_AWS Control Tower.txt:21: For example, we want to identify untagged resources in our accounts.

### 5. Constraints / Limitations
- 008_AWS Directory Services.txt:32: And the users are for the only managed in one place which is the on-premise AD.
- 008_AWS Directory Services.txt:35: There were defined on-premise and in the Cloud and there was some trust between the two but with the AD connector they're only defined on-premise and we've defined a proxy to access that on-premise AD directly from the Cloud.
- 008_AWS Directory Services.txt:37: It's called Samba and it's managed in AWS but it's standalone and it cannot be joined with an on-premise AD.
- 008_AWS Directory Services.txt:41: It cannot be joined to AWS such as SQL server and so on but contribute simpler, cheaper and maybe a good solution based on the questions you get.
- 008_AWS Directory Services.txt:60: So most importantly is RDS for SQL server, Amazon Workspaces, Quick sites, Connect, WorkDocs and Single-Sign On.
- 008_AWS Directory Services.txt:65: Now, something I want to highlight is how to connect this to your on-premise active directory because that is going to be extremely important going to the exam to understand this subtlety.
- 008_AWS Directory Services.txt:75: And the important thing to understand here is that this forest trust is going to be different than synchronization.
- 008_AWS Directory Services.txt:78: But thanks to this forest trust, they're able to talk to each other in case one user is missing from one and ask the other DC, Hey do you think you have that user because I trust you so very important to understand the distinction.
- 008_AWS Directory Services.txt:91: The only way to set up some kind of replication is for you to deploy active directory on an easy two windows instance, and you will have to set up replication.
- 008_AWS Directory Services.txt:95: So that's why it's really important to get the basics done first.
- 008_AWS Directory Services.txt:117: It will not support SSO and it's only for small amount of users.
- 008_AWS Directory Services.txt:120: It's only has basic AD capability or LDAP compatibility and you cannot set up a trust with a on-premise Microsoft AD.
- 008_AWS Directory Services.txt:122: Obviously the most important one is going to be the first one described but now you have the three options of directory services and hopefully there's a bit more clear which one to choose based on which circumstances at the exam.
- 009_AWS Organizations.txt:21: But in case you are inviting an account into an organization and that account already exists from out there, then you must manually create this role.
- 009_AWS Organizations.txt:27: You can get them for better resource isolation, for example, you wanna have one account per VPC, or you want to have separate per-account service limits, or you want to have a separate account for logging and so on.
- 009_AWS Organizations.txt:50: And this is why the accounts that have been invited into an organization with all features must approve these features beforehand.
- 009_AWS Organizations.txt:51: And once you have enabled all features, you cannot go back to using Organizations only to consolidate billing.
- 009_AWS Organizations.txt:58: So it's possible for you to disable it and say, "Well, this RI or this savings plan only belongs to that specific account." That means that in that case, then the reserve instances and savings plan discounts will not be shared across accounts that have this turned off.
- 009_AWS Organizations.txt:59: And then, on the opposite side, for a reserved instance or a savings plan to be shared across two accounts, then both these accounts must have sharing turned on, okay?
- 010_AWS Organizations Policies.txt:7: That means that these services, those service-linked role, they enable other services on AWS to integrate with organization, and therefore that's why they can't be restricted by SCPs.
- 010_AWS Organizations Policies.txt:12: For example, hey, you cannot use EMR, or to enforce PCI compliance by explicitly disabling some services in AWS.
- 010_AWS Organizations Policies.txt:25: But because we have two explicit denies, we have one Deny S3 from the Sandbox and one Deny EC2 from the account itself, then it cannot access Amazon S3 or Amazon EC2.
- 010_AWS Organizations Policies.txt:27: Next, if we apply FullAWSAccess to the Workloads OU, and we also apply an Allow EC2 SCP to the Test OU, then Account D can only access EC2.
- 010_AWS Organizations Policies.txt:28: And if we look at the Prod OU and Account E and F within it, well, we must first apply the FullAWSAccess SCP to the Prod OU, and then Account E and F can do anything.
- 010_AWS Organizations Policies.txt:34: And you don't need to know it by heart, but it should make sense to you.
- 010_AWS Organizations Policies.txt:56: And so only if all these things are allowing and working together or not denying specifically, then you will have a finalization allow, and you'll be able to do your action, okay?
- 010_AWS Organizations Policies.txt:62: So if we want to only allow an IAM user to create an EBS volume if it has the Env and the CostCenter tags, then the policy would look like this.
- 010_AWS Organizations Policies.txt:65: And you have an option to also use the value called ForAnyValue, which means that at a minimum, you must have either of these tags.
- 010_AWS Organizations Policies.txt:75: So, this is to prevent IAM users and roles for performing stuff that they can't do.
- 010_AWS Organizations Policies.txt:81: And in the second example that I showed you, this is for SCPs only.
- 010_AWS Organizations Policies.txt:89: So in this example, on the right hand side, for the Secrets Manager service, we can only have the key, CostCenter, to have the value 100 or 200.
- 010_AWS Organizations Policies.txt:102: It's an immutable backup plan, so they will appear in the member accounts within AWS Backups, but this is a view-only type of view that can only be managed within the management accounts of your organization.
- 012_AWS Control Tower.txt:2: So it's an easy way for you to set up and govern a secure and compliant multi-account AWS environments based on best practices.
- 012_AWS Control Tower.txt:7: So Control Tower is a way for you to really automate best practice multi-accounts and it runs on top of AWS organizations.
- 012_AWS Control Tower.txt:36: And then you have elective guardrails, which is commonly used by enterprises.
- 013_AWS Resource Access Manager - RAM.txt:7: And all these things, all these subnets, then must be from the same AWS Organizations.
- 013_AWS Resource Access Manager - RAM.txt:8: You cannot share Security Groups though and you cannot share the default VPC.
- 013_AWS Resource Access Manager - RAM.txt:9: The participants can manage their own resources within the subnets, but the participants cannot view, modify or delete resources that belong to other participants or the owner, so they only share the networking, really.
- 013_AWS Resource Access Manager - RAM.txt:13: But one of the most important use case from an exam perspective for Resource Access Manager is for the VPC.
- 013_AWS Resource Access Manager - RAM.txt:16: They cannot view, modify or delete other resources in other accounts.
- 013_AWS Resource Access Manager - RAM.txt:17: So for example, if I deploy an EC2 instance, an ALB in account one then, and account two will have an EC2 instance, they can communicate with one another but they cannot view each other, okay?
- 013_AWS Resource Access Manager - RAM.txt:24: And if you have applications with a high degree of interconnectivity, yet again, you will have a much simplified network setup because you only have one VPC and so by default, any application deployed within it can talk with each other.
- 013_AWS Resource Access Manager - RAM.txt:37: So this time the CIDRs are defined by AWS for their own services and you cannot create, modify, share or delete them but I want you to know about them in this slide anyway.
- 168_AWS Directory Services.txt:32: And the users are for the only managed in one place which is the on-premise AD.
- 168_AWS Directory Services.txt:35: There were defined on-premise and in the Cloud and there was some trust between the two but with the AD connector they're only defined on-premise and we've defined a proxy to access that on-premise AD directly from the Cloud.
- 168_AWS Directory Services.txt:37: It's called Samba and it's managed in AWS but it's standalone and it cannot be joined with an on-premise AD.
- 168_AWS Directory Services.txt:41: It cannot be joined to AWS such as SQL server and so on but contribute simpler, cheaper and maybe a good solution based on the questions you get.
- 168_AWS Directory Services.txt:60: So most importantly is RDS for SQL server, Amazon Workspaces, Quick sites, Connect, WorkDocs and Single-Sign On.
- 168_AWS Directory Services.txt:65: Now, something I want to highlight is how to connect this to your on-premise active directory because that is going to be extremely important going to the exam to understand this subtlety.
- 168_AWS Directory Services.txt:75: And the important thing to understand here is that this forest trust is going to be different than synchronization.
- 168_AWS Directory Services.txt:78: But thanks to this forest trust, they're able to talk to each other in case one user is missing from one and ask the other DC, Hey do you think you have that user because I trust you so very important to understand the distinction.
- 168_AWS Directory Services.txt:91: The only way to set up some kind of replication is for you to deploy active directory on an easy two windows instance, and you will have to set up replication.
- 168_AWS Directory Services.txt:95: So that's why it's really important to get the basics done first.
- 168_AWS Directory Services.txt:117: It will not support SSO and it's only for small amount of users.
- 168_AWS Directory Services.txt:120: It's only has basic AD capability or LDAP compatibility and you cannot set up a trust with a on-premise Microsoft AD.
- 168_AWS Directory Services.txt:122: Obviously the most important one is going to be the first one described but now you have the three options of directory services and hopefully there's a bit more clear which one to choose based on which circumstances at the exam.
- 222_[SAA_SOA] Organizations.txt:4: And remember, accounts can only be part of one organization.
- 222_[SAA_SOA] Organizations.txt:43: And on account A, say, we will also do apply full AWS access and deny EC2, then account A can do anything, because it has full AWS access on the root OU and on the Sandbox OU and on the account itself, but because we have two explicit denies, we have one deny S3 from the Sandbox and one deny EC2 from the account itself, then it cannot access Amazon S3 or Amazon EC2.
- 222_[SAA_SOA] Organizations.txt:45: Next, if we apply full AWS access to the workloads OU and we also apply an allow EC2 SCP to the test OU then account D can only access EC2 and if we look at the prod OU and accounts E and F within it, well, we must first apply the full AWS access SCP to the prod OU and then accounts E and F can do anything.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:33: Now my account, the child account is enrolled into my AWS organization and we can only see the organization ID as well as the feature set.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:55: It's best practice as well to leave the management account under the root OU but you could move it if you wanted to.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:59: So what we can do is take the important policy types that we want and enable them.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:63: But for the sake of this hands-on and from an exam perspective I believe only service control policies will be used, but still good to know that you can apply a backup policy across all the accounts and a tag policy across all the accounts as well.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:78: So this, when attached to my accounts, should deny access to S3.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:98: I will attach it and now that means that anything within my finance OU should also have this inherited.
- 224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt:7: It's a setting you have to turn on and off, but for having the RI or the Savings Plan discounts enabled between two accounts, they must both have sharing turned on.
- 224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt:11: So, it's a good way for you to not have to specify every individual accounts, but instead reference only the leading organization of your accounts.
- 225_AWS Control Tower.txt:2: So it's an easy way for you to set up and govern a secure and compliant multi-account AWS environments based on best practices.
- 225_AWS Control Tower.txt:7: So Control Tower is a way for you to really automate best practice multi-accounts and it runs on top of AWS organizations.
- 225_AWS Control Tower.txt:36: And then you have elective guardrails, which is commonly used by enterprises.
- 285_Organizations - Overview.txt:4: And remember, accounts can only be part of one organization.
- 285_Organizations - Overview.txt:43: And on account A, say, we will also do apply full AWS access and deny EC2, then account A can do anything, because it has full AWS access on the root OU and on the Sandbox OU and on the account itself, but because we have two explicit denies, we have one deny S3 from the Sandbox and one deny EC2 from the account itself, then it cannot access Amazon S3 or Amazon EC2.
- 285_Organizations - Overview.txt:45: Next, if we apply full AWS access to the workloads OU and we also apply an allow EC2 SCP to the test OU then account D can only access EC2 and if we look at the prod OU and accounts E and F within it, well, we must first apply the full AWS access SCP to the prod OU and then accounts E and F can do anything.
- 286_Organizations - Hands On.txt:33: Now my account, the child account is enrolled into my AWS organization and we can only see the organization ID as well as the feature set.
- 286_Organizations - Hands On.txt:55: It's best practice as well to leave the management account under the root OU but you could move it if you wanted to.
- 286_Organizations - Hands On.txt:59: So what we can do is take the important policy types that we want and enable them.
- 286_Organizations - Hands On.txt:63: But for the sake of this hands-on and from an exam perspective I believe only service control policies will be used, but still good to know that you can apply a backup policy across all the accounts and a tag policy across all the accounts as well.
- 286_Organizations - Hands On.txt:78: So this, when attached to my accounts, should deny access to S3.
- 286_Organizations - Hands On.txt:98: I will attach it and now that means that anything within my finance OU should also have this inherited.
- 292_AWS Directory Services.txt:36: And the only place where we can manage users is going to be on the on-premise AD.
- 292_AWS Directory Services.txt:40: And it cannot be joined with a non-premise Active Directory.
- 292_AWS Directory Services.txt:46: Now, the exam should has queue some very, very high level question, saying we want to proxy our users to on-premise and therefore you need AD Connector, or we want to manage our users on the cloud in AWS and have MFA and therefore you need AWS Managed AD, or we just want a Simple AD and we don't have any on-premise stuff.
- 292_AWS Directory Services.txt:55: The first one is what we should call a two-way trust relationship using the AWS Managed Microsoft AD.
- 293_AWS Directory Services - Hands On.txt:10: This next one is Simple AD which is going to be a standalone managed directory that has a active directory compatible API but it cannot be connected to your on-premise active directory.
- 294_AWS Control Tower.txt:2: So it's a very easy way for you to set up and govern a secure and compliant multi-account AWS environment based on best practices.
- 294_AWS Control Tower.txt:16: For example, we could create a preventive guardrail to restrict regions across all your accounts to say, hey, you should only operate in the us-east-1 in the eu-west-2 regions.

### 6. Patterns / Architectures
- 008_AWS Directory Services.txt:86: So, now let's talk about a bit more solution architecture because we have to get into those and they can be quite complicated but say you want to have your Microsoft AD that's on-premise replicated on AWS for minimizing latency.
- 008_AWS Directory Services.txt:94: So this is the kind of solution architecture that will be asked from you at the exam.
- 008_AWS Directory Services.txt:96: And then talk about these little interesting twists on solution architecture.
- 009_AWS Organizations.txt:1: Okay, so let's talk about AWS Organizations, which is a way for you to manage multiple AWS accounts at once.
- 009_AWS Organizations.txt:2: So within Organizations, we have, at the top, the root organizational unit, or OU, and it will contain our management account, which is the account that will be used for all administration purposes.
- 009_AWS Organizations.txt:5: So you have to make a distinction between the management account that you use to manage all the other accounts and organizations.
- 009_AWS Organizations.txt:6: And then the member accounts, which are just normal AWS accounts that are part of an organization.
- 009_AWS Organizations.txt:11: So once we have all these accounts, how does Organizations perform its administration?
- 009_AWS Organizations.txt:12: Well, there is a very special role you need to know about for the exam called the organization account access role.
- 009_AWS Organizations.txt:13: So when we have the organization and the management account, if we happen to create a member account using an API from the Organization service, then, automatically, an IAM role within the member account is going to be created.
- 009_AWS Organizations.txt:14: And that IAM role is called the Organization Account Access Role.
- 009_AWS Organizations.txt:17: And this is the magic of how AWS Organizations work.
- 009_AWS Organizations.txt:20: And, as I said, this role is automatically added to new member accounts created with the API of AWS Organizations.
- 009_AWS Organizations.txt:21: But in case you are inviting an account into an organization and that account already exists from out there, then you must manually create this role.
- 009_AWS Organizations.txt:35: It's up to you and your architecture to decide what you want to do.
- 009_AWS Organizations.txt:41: So there are two feature modes you need to know for AWS Organization.
- 009_AWS Organizations.txt:46: All the features are also going to be another feature mode for Organizations.
- 009_AWS Organizations.txt:49: And then once you have the all features enabled, then we can use an SCP, so a service control policy, to prevent the member account from ever leaving the organization.
- 009_AWS Organizations.txt:50: And this is why the accounts that have been invited into an organization with all features must approve these features beforehand.
- 009_AWS Organizations.txt:51: And once you have enabled all features, you cannot go back to using Organizations only to consolidate billing.
- 009_AWS Organizations.txt:53: So talking about what is shared and savings, we have reserved instances in Organizations.
- 009_AWS Organizations.txt:54: So for billing purposes, the consolidated billing feature of AWS Organizations will treat all the accounts as one account that we know.
- 009_AWS Organizations.txt:55: That means that all the accounts in the organization will receive the hourly cost benefit of a reserved instance that is purchased by any other account.
- 009_AWS Organizations.txt:57: So the payer accounts of an organization, so the management account, can turn off the RI, reserve instance sharing, or savings plan discount sharing, for any account including VPR accounts.
- 009_AWS Organizations.txt:61: You need to also know the process to move accounts between two organizations.
- 009_AWS Organizations.txt:62: So let's say we want to move a member account from an old to a new organization.
- 009_AWS Organizations.txt:65: Before, we had to remove the member account from the previous organization, but now we don't.
- 009_AWS Organizations.txt:66: We just send an invite and it can be moved over across two organizations.
- 010_AWS Organizations Policies.txt:2: So here, you can define allowlist or blocklist for specific IAM actions on your organization for your accounts.
- 010_AWS Organizations Policies.txt:7: That means that these services, those service-linked role, they enable other services on AWS to integrate with organization, and therefore that's why they can't be restricted by SCPs.
- 010_AWS Organizations Policies.txt:9: And for something to be allowed within organizations, you need to make sure that every SCP along the way from the root to each OU down to the specific target account will have an explicit allow.
- 010_AWS Organizations Policies.txt:37: We're going to look at Organizations SCP, Resource-based policy, Identity-based policy, IAM permission boundaries, and then finally, Session policies to allow or deny a specific IAM action.
- 010_AWS Organizations Policies.txt:40: Then we look at the organization's SCP, and is there an allow?
- 010_AWS Organizations Policies.txt:83: So, TAG policies are defined at the organization level, and they help you standardize tags across all resources in an organization.
- 010_AWS Organizations Policies.txt:90: Another type of policy on organizations is called the AI Services Opt-out Policy.
- 010_AWS Organizations Policies.txt:97: These policies can be attached to a Organization Root, specific OUs, or directly in individual member accounts.
- 010_AWS Organizations Policies.txt:100: And so we define these backup policies at the organization level with JSON documents and is going to give you granular control over the backing up the resources, such as the frequency, the time window, the backup region, et cetera, et cetera.
- 010_AWS Organizations Policies.txt:101: These can be attached to the Organization Root OU or specific OU or an individual member account.
- 010_AWS Organizations Policies.txt:102: It's an immutable backup plan, so they will appear in the member accounts within AWS Backups, but this is a view-only type of view that can only be managed within the management accounts of your organization.
- 010_AWS Organizations Policies.txt:103: So that's it for all the policies on AWS organizations.
- 012_AWS Control Tower.txt:2: So it's an easy way for you to set up and govern a secure and compliant multi-account AWS environments based on best practices.
- 012_AWS Control Tower.txt:7: So Control Tower is a way for you to really automate best practice multi-accounts and it runs on top of AWS organizations.
- 012_AWS Control Tower.txt:8: So it's going to set up an organization for you and then organize these accounts and implement automatically the service control policies you need.
- 012_AWS Control Tower.txt:9: So out of it there is the account factory and since you automate account provisioning and deployments and it allows you to create pre-approved baseline and configuration options for all the accounts in your organization, such as, for example, configuring the default VPC, configuring the subnets, the regions and so on.
- 012_AWS Control Tower.txt:30: So we have a detective guardrail in Control Tower using config and it's going to monitor for untagged resources in your member accounts as part of your organization is going to trigger if it's noncompliance and SNS topic, which can notify an admin, maybe invoke Lambda function and that Lambda function itself can remediate to this and add tag where needed.
- 013_AWS Resource Access Manager - RAM.txt:3: And with this you can do it from any account or just accounts within your organization.
- 013_AWS Resource Access Manager - RAM.txt:7: And all these things, all these subnets, then must be from the same AWS Organizations.
- 013_AWS Resource Access Manager - RAM.txt:34: And so that if you are using, for example, your own Customer Managed Prefix List, then you define the CIDRs and then you can share it with other accounts, organizations and then you can modify them.
- 168_AWS Directory Services.txt:86: So, now let's talk about a bit more solution architecture because we have to get into those and they can be quite complicated but say you want to have your Microsoft AD that's on-premise replicated on AWS for minimizing latency.
- 168_AWS Directory Services.txt:94: So this is the kind of solution architecture that will be asked from you at the exam.
- 168_AWS Directory Services.txt:96: And then talk about these little interesting twists on solution architecture.
- 222_[SAA_SOA] Organizations.txt:1: So now let's talk about AWS Organizations.
- 222_[SAA_SOA] Organizations.txt:3: So you create an organization and the main account in your organization is called the management account, while the other accounts that join the organization or that are created from the organizations are called member accounts.
- 222_[SAA_SOA] Organizations.txt:4: And remember, accounts can only be part of one organization.
- 222_[SAA_SOA] Organizations.txt:5: The cool thing about organization is that the billing is consolidated across all the accounts.
- 222_[SAA_SOA] Organizations.txt:6: So you have a single payment method on the management account and then it will be paying for all the organization's cost.
- 222_[SAA_SOA] Organizations.txt:7: But because you have an organization and it's all part of one big family, then you get pricing benefits from aggregated usage.
- 222_[SAA_SOA] Organizations.txt:10: So if a reserved instance is unused in one account, another account can benefit from it and therefor the discounts apply across the entire organization, which is really good for cost savings.
- 222_[SAA_SOA] Organizations.txt:11: Now, there's also an API to automate the account creation from within the organization.
- 222_[SAA_SOA] Organizations.txt:12: So you can create accounts very easily using an organization.
- 222_[SAA_SOA] Organizations.txt:14: So we have what's called a root organizational unit, or OU, and this is the outermost OU of your accounts and then within it sits the management account.
- 222_[SAA_SOA] Organizations.txt:24: So what are the advantages of using organizations?
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:2: So we're going to practice using the organizations.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:3: For this I'm just going to go into the organization service and get started.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:4: So as we can see in this example Organizations is a global service because it has to do with accounts and regrouping them together, okay?
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:8: Call them as you want so that you can have one master and one child account within your organization.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:9: So from the master account I'm going to go ahead and create an organization.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:10: Now within the organization we have to define the accounts within it.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:11: So as we can see right now, this is very quick, the organization is created and we have the root organizational units.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:14: And the organization is created.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:15: Now we want to add a second AWS as account into this organization.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:17: And we have two options, either we want to create an account and you specify the account name, the email address of the account owner as well as an IAM role that will be created in the target account to be allowed to be managed by the organization.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:24: So what I can do next is go to my organization on my child account.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:29: So as we can see in this organization right now we'll get full control as this organization has full features enabled and can assume full control of your account.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:30: So as soon as you're part of an organization, you accept to be controlled by whoever is the master of that organization.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:33: Now my account, the child account is enrolled into my AWS organization and we can only see the organization ID as well as the feature set.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:34: And an account may have the ability to leave the organization.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:35: So back into my AWS organization.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:37: As we can see now within my organization we have roots and within roots, we have two accounts now, the master and the child accounts.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:38: So we can do is now organize our accounts using organizational units or OUs.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:48: And if you go all the way to your organization and then you look at the OU, now we can see we have roots, dev, and right now, no accounts within dev, prod and we have finance and HR within prod and then we have test.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:49: So as we can see, we can start organizing the accounts and we have many accounts in organization within specific OUs.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:62: We have other ones that could be of interest, for example, backup policy allows you to deploy organization-wide backup plans, to ensure that all your accounts are compliant and have backups enabled or tag policies also to help standardize how you use tags within all the different accounts in your organization.
- 224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt:1: So just a little bit of extra information regarding organizations for the SysOps exam.
- 224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt:2: The first of all, you can enable what's called Reserved Instances sharing in your organization.
- 224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt:3: That means that all the accounts of your organizations will have access to all the Reserved Instances.
- 224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt:8: The second thing is that using organizations, you can use a specific condition in your IAM policies called the aws:PrincipalOrgID to allow access from any, IAM principles from all the accounts in your organization.
- 224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt:9: So, say you have an organization with a management account and two member accounts with different IAM users.
- 224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt:10: If you set up an extra bucket and you're using the bucket policy, the aws:PrincipalOrgID condition, then you're giving access automatically to any user or any roles within your organization to this extra buckets.
- 224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt:11: So, it's a good way for you to not have to specify every individual accounts, but instead reference only the leading organization of your accounts.
- 224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt:21: So, that's it for organizations.
- 225_AWS Control Tower.txt:2: So it's an easy way for you to set up and govern a secure and compliant multi-account AWS environments based on best practices.
- 225_AWS Control Tower.txt:7: So Control Tower is a way for you to really automate best practice multi-accounts and it runs on top of AWS organizations.
- 225_AWS Control Tower.txt:8: So it's going to set up an organization for you and then organize these accounts and implement automatically the service control policies you need.
- 225_AWS Control Tower.txt:9: So out of it there is the account factory and since you automate account provisioning and deployments and it allows you to create pre-approved baseline and configuration options for all the accounts in your organization, such as, for example, configuring the default VPC, configuring the subnets, the regions and so on.
- 225_AWS Control Tower.txt:30: So we have a detective guardrail in Control Tower using config and it's going to monitor for untagged resources in your member accounts as part of your organization is going to trigger if it's noncompliance and SNS topic, which can notify an admin, maybe invoke Lambda function and that Lambda function itself can remediate to this and add tag where needed.
- 285_Organizations - Overview.txt:1: So now let's talk about AWS Organizations.
- 285_Organizations - Overview.txt:3: So you create an organization and the main account in your organization is called the management account, while the other accounts that join the organization or that are created from the organizations are called member accounts.
- 285_Organizations - Overview.txt:4: And remember, accounts can only be part of one organization.
- 285_Organizations - Overview.txt:5: The cool thing about organization is that the billing is consolidated across all the accounts.
- 285_Organizations - Overview.txt:6: So you have a single payment method on the management account and then it will be paying for all the organization's cost.
- 285_Organizations - Overview.txt:7: But because you have an organization and it's all part of one big family, then you get pricing benefits from aggregated usage.
- 285_Organizations - Overview.txt:10: So if a reserved instance is unused in one account, another account can benefit from it and therefor the discounts apply across the entire organization, which is really good for cost savings.
- 285_Organizations - Overview.txt:11: Now, there's also an API to automate the account creation from within the organization.
- 285_Organizations - Overview.txt:12: So you can create accounts very easily using an organization.
- 285_Organizations - Overview.txt:14: So we have what's called a root organizational unit, or OU, and this is the outermost OU of your accounts and then within it sits the management account.
- 285_Organizations - Overview.txt:24: So what are the advantages of using organizations?
- 286_Organizations - Hands On.txt:2: So we're going to practice using the organizations.
- 286_Organizations - Hands On.txt:3: For this I'm just going to go into the organization service and get started.
- 286_Organizations - Hands On.txt:4: So as we can see in this example Organizations is a global service because it has to do with accounts and regrouping them together, okay?
- 286_Organizations - Hands On.txt:8: Call them as you want so that you can have one master and one child account within your organization.
- 286_Organizations - Hands On.txt:9: So from the master account I'm going to go ahead and create an organization.
- 286_Organizations - Hands On.txt:10: Now within the organization we have to define the accounts within it.
- 286_Organizations - Hands On.txt:11: So as we can see right now, this is very quick, the organization is created and we have the root organizational units.
- 286_Organizations - Hands On.txt:14: And the organization is created.
- 286_Organizations - Hands On.txt:15: Now we want to add a second AWS as account into this organization.
- 286_Organizations - Hands On.txt:17: And we have two options, either we want to create an account and you specify the account name, the email address of the account owner as well as an IAM role that will be created in the target account to be allowed to be managed by the organization.
- 286_Organizations - Hands On.txt:24: So what I can do next is go to my organization on my child account.
- 286_Organizations - Hands On.txt:29: So as we can see in this organization right now we'll get full control as this organization has full features enabled and can assume full control of your account.
- 286_Organizations - Hands On.txt:30: So as soon as you're part of an organization, you accept to be controlled by whoever is the master of that organization.
- 286_Organizations - Hands On.txt:33: Now my account, the child account is enrolled into my AWS organization and we can only see the organization ID as well as the feature set.
- 286_Organizations - Hands On.txt:34: And an account may have the ability to leave the organization.
- 286_Organizations - Hands On.txt:35: So back into my AWS organization.
- 286_Organizations - Hands On.txt:37: As we can see now within my organization we have roots and within roots, we have two accounts now, the master and the child accounts.
- 286_Organizations - Hands On.txt:38: So we can do is now organize our accounts using organizational units or OUs.
- 286_Organizations - Hands On.txt:48: And if you go all the way to your organization and then you look at the OU, now we can see we have roots, dev, and right now, no accounts within dev, prod and we have finance and HR within prod and then we have test.
- 286_Organizations - Hands On.txt:49: So as we can see, we can start organizing the accounts and we have many accounts in organization within specific OUs.
- 286_Organizations - Hands On.txt:62: We have other ones that could be of interest, for example, backup policy allows you to deploy organization-wide backup plans, to ensure that all your accounts are compliant and have backups enabled or tag policies also to help standardize how you use tags within all the different accounts in your organization.
- 287_Organizations - Tag Policies.txt:1: So now let's talk about another kind of policy you can have on your organization, called a tag policy.
- 287_Organizations - Tag Policies.txt:2: So it looks like this and the idea is to standardize the tags across the resources in a specific AWS organization.
- 287_Organizations - Tag Policies.txt:9: In case you also want to look for non-compliant tags, you can use EventBridge, okay? so if you get a question at the exam around how to maintain tags consistent across accounts, think about tag policies in AWS organizations.
- 294_AWS Control Tower.txt:2: So it's a very easy way for you to set up and govern a secure and compliant multi-account AWS environment based on best practices.
- 294_AWS Control Tower.txt:3: So actually to create these accounts, well, the Control Tower service is going to use the AWS Organization service and then the accounts are automatically being created and we'll see in the next slide how to make them secure and compliant.
- 294_AWS Control Tower.txt:8: So it's yet another service on top of organizations.
- 294_AWS Control Tower.txt:15: And so we're going to use SCP, so Service Control Policies, from the AWS Organization service to apply them to all our accounts.
- 294_AWS Control Tower.txt:17: And so therefore behind the scenes, Control Tower is going to tell organizations to use SCPs.

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
- For Directory_Organizations, keep conceptual policy intent portable while implementing cloud-native controls.

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
- Organization Governance
- Temporary Credential Strategy

### Services (Deduped)
- AWS Control Tower
- AWS Directory Service
- AWS IAM
- AWS Organizations
- AWS RAM
- AWS STS
- Amazon Cognito
- IAM Identity Center
- IAM Policies
- IAM Roles
- MFA
- Permission Boundaries
- SAML/OIDC Federation
- Service Control Policies

### Features (Deduped)
- boundaries
- evaluation
- mfa
- saml
- scp
- tag policy

### Use Cases (Deduped)
- 008_AWS Directory Services.txt:2: So I really wanna make sure that we both understand what this is 'cause I think it's quite complicated especially if you're not from Microsoft background and I wanna make sure you choose the right answer at the exam when a question or two comes up on this topic.
- 008_AWS Directory Services.txt:9: For example, we have a domain controller that knows that John is username and password is the password which is not a very strong password, but anyway and we have other machines Microsoft machines connected to this domain controller.
- 008_AWS Directory Services.txt:16: For example, the Console, Dropbox, Office 365 and so on.
- 008_AWS Directory Services.txt:40: It doesn't support MFA, for example.
- 008_AWS Directory Services.txt:46: And now we're going to be able to create easy two windows instances and we can deploy traditional applications on these instances, for example, SharePoint or we can do something called seamless domain join from your Amazon EC2 instances in Multiple Accounts and VPCs directly onto your domain controllers.
- 008_AWS Directory Services.txt:71: The first one is one way when we have AWS trust on-premise the second one is the other one way which you have the on-premise trust AWS.
- 008_AWS Directory Services.txt:87: So, for example, we want to say, okay we want to have our replica of the on-premise AD on AWS because if somehow the direct connect or the VPN goes down then we still want our users to have connectivity and function correctly.
- 009_AWS Organizations.txt:13: So when we have the organization and the management account, if we happen to create a member account using an API from the Organization service, then, automatically, an IAM role within the member account is going to be created.
- 009_AWS Organizations.txt:15: Now, the management account, when it needs to perform administrative duties onto the member account, will assume that administrative role using the AssumeRole API.
- 009_AWS Organizations.txt:18: Now, this role is going to be used by the management account to perform admin task in the member account, for example, creating IAM users.
- 009_AWS Organizations.txt:27: You can get them for better resource isolation, for example, you wanna have one account per VPC, or you want to have separate per-account service limits, or you want to have a separate account for logging and so on.
- 009_AWS Organizations.txt:29: For example, do you want multi accounts or one account with a multi VPC in it?
- 009_AWS Organizations.txt:38: You can also get, for example, a management account and then dev/test/prod types of OUs.
- 010_AWS Organizations Policies.txt:11: So the use cases for SCP is to restrict access to certain services.
- 010_AWS Organizations Policies.txt:12: For example, hey, you cannot use EMR, or to enforce PCI compliance by explicitly disabling some services in AWS.
- 010_AWS Organizations Policies.txt:14: So let's take for example, a Root OU, and we apply FullAWSAccess underneath.
- 010_AWS Organizations Policies.txt:20: But let's say for example, we apply on the Sandbox OU a FullAWSAccess plus Deny S3.
- 010_AWS Organizations Policies.txt:37: We're going to look at Organizations SCP, Resource-based policy, Identity-based policy, IAM permission boundaries, and then finally, Session policies to allow or deny a specific IAM action.
- 010_AWS Organizations Policies.txt:43: Then we look at resource-based policy, for example, they can be applied to S3 buckets.
- 010_AWS Organizations Policies.txt:55: But what I want you to remember is that all these things are evaluated when making a specific IAM action, okay?
- 010_AWS Organizations Policies.txt:58: So these IAM SCP policies can be used, for example, to restrict tags, okay?
- 010_AWS Organizations Policies.txt:64: So ForAllValues:StringEquals, TagKeys, Env, and CostCenter, and this means that we want absolutely both the Env and the CostCenter tags to be present in the EBS volume when we create it.
- 010_AWS Organizations Policies.txt:68: Another example of SCP you can have is an SCP to deny an entire region using the condition named aws:RequestRegion.
- 010_AWS Organizations Policies.txt:72: For example, you can have ArnNotLike, so that two roles, for example, are allowed to bypass this SCP.
- 010_AWS Organizations Policies.txt:76: For example, we can restrict launching an EC2 instance if it does not have the Project and CostCenter tags.
- 010_AWS Organizations Policies.txt:78: Okay, that means that you're going to, and this is a deny, So that means that it's going to deny any request that does not contain the Project tag in our EBS volume.
- 010_AWS Organizations Policies.txt:92: So for example, Amazon Lex, Amazon Comprehend, Amazon Polly, all of these services improve based on the data you give them.
- 010_AWS Organizations Policies.txt:96: For example, on the bottom right, I'm opting out of Rekognition and Amazon Lex.
- 012_AWS Control Tower.txt:9: So out of it there is the account factory and since you automate account provisioning and deployments and it allows you to create pre-approved baseline and configuration options for all the accounts in your organization, such as, for example, configuring the default VPC, configuring the subnets, the regions and so on.
- 012_AWS Control Tower.txt:14: And so therefore when we use Control Tower and a lending zone and we create accounts for account factory, then at the center of it is going to be IAM Identity Center.
- 012_AWS Control Tower.txt:24: And this is, for example, to have an action to disable or disallow the creation of access keys from the root user.
- 012_AWS Control Tower.txt:26: Or detective where you want to give all permissions to your accounts, but then you use config to detect, for example, whether or not MFA is enabled for the root user and so on.
- 012_AWS Control Tower.txt:29: We, for example, want to see which resources are untagged.
- 012_AWS Control Tower.txt:33: So for example, you want to disallow public read access to the log archive accounts and this is mandatory.
- 012_AWS Control Tower.txt:35: And for example, you wanna say you want to enable EBS volumes attached to EC2 instances.
- 012_AWS Control Tower.txt:37: This is optional as well, for example, to disallow delete actions without MFA in S3 buckets.
- 013_AWS Resource Access Manager - RAM.txt:6: You can share VPC subnets, for example, which is very helpful and one of the best use case for RAM, which allows you to have all the resources launched within the same subnets.
- 013_AWS Resource Access Manager - RAM.txt:13: But one of the most important use case from an exam perspective for Resource Access Manager is for the VPC.
- 013_AWS Resource Access Manager - RAM.txt:17: So for example, if I deploy an EC2 instance, an ALB in account one then, and account two will have an EC2 instance, they can communicate with one another but they cannot view each other, okay?
- 013_AWS Resource Access Manager - RAM.txt:21: So this avoid the needs, for example, to do a VPC peering.
- 013_AWS Resource Access Manager - RAM.txt:23: Now, the use cases for this is that applications within the same trust boundaries can be deployed within the same VPC, and that will simplify your network.
- 013_AWS Resource Access Manager - RAM.txt:28: So here's an example, account A has a Prefix List and in it you have the CIDR 1, CIDR 2, CIDR 3 and these are set of rules, for example, that represent your internal network of your company.
- 013_AWS Resource Access Manager - RAM.txt:34: And so that if you are using, for example, your own Customer Managed Prefix List, then you define the CIDRs and then you can share it with other accounts, organizations and then you can modify them.
- 168_AWS Directory Services.txt:2: So I really wanna make sure that we both understand what this is 'cause I think it's quite complicated especially if you're not from Microsoft background and I wanna make sure you choose the right answer at the exam when a question or two comes up on this topic.
- 168_AWS Directory Services.txt:9: For example, we have a domain controller that knows that John is username and password is the password which is not a very strong password, but anyway and we have other machines Microsoft machines connected to this domain controller.
- 168_AWS Directory Services.txt:16: For example, the Console, Dropbox, Office 365 and so on.
- 168_AWS Directory Services.txt:40: It doesn't support MFA, for example.
- 168_AWS Directory Services.txt:46: And now we're going to be able to create easy two windows instances and we can deploy traditional applications on these instances, for example, SharePoint or we can do something called seamless domain join from your Amazon EC2 instances in Multiple Accounts and VPCs directly onto your domain controllers.
- 168_AWS Directory Services.txt:71: The first one is one way when we have AWS trust on-premise the second one is the other one way which you have the on-premise trust AWS.
- 168_AWS Directory Services.txt:87: So, for example, we want to say, okay we want to have our replica of the on-premise AD on AWS because if somehow the direct connect or the VPN goes down then we still want our users to have connectivity and function correctly.
- 222_[SAA_SOA] Organizations.txt:15: Then you can create sub-OUs, so you can create for example an OU for the dev accounts and then you can create member accounts within the dev OU or you can create OU for a prod account and also add member accounts there, but you can be as free as you want.
- 222_[SAA_SOA] Organizations.txt:19: So you can organize by business units, so you have for example, the management account and then the sales, retail and finance OU and then different accounts within each OU.
- 222_[SAA_SOA] Organizations.txt:20: Or you can have an OU by environment, so for example, one OU for prod, one OU for test, one OU for dev and within each OU, some accounts.
- 222_[SAA_SOA] Organizations.txt:32: So the SCP have the specificity that if you need to compute what is happening on this specific account, you need to make sure that each OU, including the root, has an explicit allow along the way to allow a specific action.
- 222_[SAA_SOA] Organizations.txt:34: So let's take for example, a root OU and we apply full AWS access underneath.
- 222_[SAA_SOA] Organizations.txt:40: But let's say for example, we apply on the Sandbox OU a full AWS access plus deny S3.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:41: And action creates new OU and I can have one, for example, for my Dev accounts.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:51: So what we're going to do is first take our child account and we want to move it in to, for example, the finance department within prod.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:62: We have other ones that could be of interest, for example, backup policy allows you to deploy organization-wide backup plans, to ensure that all your accounts are compliant and have backups enabled or tag policies also to help standardize how you use tags within all the different accounts in your organization.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:74: For example, we can find the S3 service in here and within S3, we can say all actions and the resource is going to be star as well.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:78: So this, when attached to my accounts, should deny access to S3.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:84: So if you look at the children of the root OU, we have, for example, the prod OU.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:96: So if we go to my prod and finance OU, for example, we can attach a new policy.
- 224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt:8: The second thing is that using organizations, you can use a specific condition in your IAM policies called the aws:PrincipalOrgID to allow access from any, IAM principles from all the accounts in your organization.
- 225_AWS Control Tower.txt:9: So out of it there is the account factory and since you automate account provisioning and deployments and it allows you to create pre-approved baseline and configuration options for all the accounts in your organization, such as, for example, configuring the default VPC, configuring the subnets, the regions and so on.
- 225_AWS Control Tower.txt:14: And so therefore when we use Control Tower and a lending zone and we create accounts for account factory, then at the center of it is going to be IAM Identity Center.
- 225_AWS Control Tower.txt:24: And this is, for example, to have an action to disable or disallow the creation of access keys from the root user.
- 225_AWS Control Tower.txt:26: Or detective where you want to give all permissions to your accounts, but then you use config to detect, for example, whether or not MFA is enabled for the root user and so on.
- 225_AWS Control Tower.txt:29: We, for example, want to see which resources are untagged.
- 225_AWS Control Tower.txt:33: So for example, you want to disallow public read access to the log archive accounts and this is mandatory.
- 225_AWS Control Tower.txt:35: And for example, you wanna say you want to enable EBS volumes attached to EC2 instances.
- 225_AWS Control Tower.txt:37: This is optional as well, for example, to disallow delete actions without MFA in S3 buckets.
- 285_Organizations - Overview.txt:15: Then you can create sub-OUs, so you can create for example an OU for the dev accounts and then you can create member accounts within the dev OU or you can create OU for a prod account and also add member accounts there, but you can be as free as you want.
- 285_Organizations - Overview.txt:19: So you can organize by business units, so you have for example, the management account and then the sales, retail and finance OU and then different accounts within each OU.
- 285_Organizations - Overview.txt:20: Or you can have an OU by environment, so for example, one OU for prod, one OU for test, one OU for dev and within each OU, some accounts.
- 285_Organizations - Overview.txt:32: So the SCP have the specificity that if you need to compute what is happening on this specific account, you need to make sure that each OU, including the root, has an explicit allow along the way to allow a specific action.
- 285_Organizations - Overview.txt:34: So let's take for example, a root OU and we apply full AWS access underneath.
- 285_Organizations - Overview.txt:40: But let's say for example, we apply on the Sandbox OU a full AWS access plus deny S3.
- 286_Organizations - Hands On.txt:41: And action creates new OU and I can have one, for example, for my Dev accounts.
- 286_Organizations - Hands On.txt:51: So what we're going to do is first take our child account and we want to move it in to, for example, the finance department within prod.
- 286_Organizations - Hands On.txt:62: We have other ones that could be of interest, for example, backup policy allows you to deploy organization-wide backup plans, to ensure that all your accounts are compliant and have backups enabled or tag policies also to help standardize how you use tags within all the different accounts in your organization.
- 286_Organizations - Hands On.txt:74: For example, we can find the S3 service in here and within S3, we can say all actions and the resource is going to be star as well.
- 286_Organizations - Hands On.txt:78: So this, when attached to my accounts, should deny access to S3.
- 286_Organizations - Hands On.txt:84: So if you look at the children of the root OU, we have, for example, the prod OU.
- 286_Organizations - Hands On.txt:96: So if we go to my prod and finance OU, for example, we can attach a new policy.
- 287_Organizations - Tag Policies.txt:6: Of course, when you want to do cost allocation tags and attributes-based access control, this is a great combination because you restrict what the accounts can do and so you maintain your consistency across your account, and so therefore, you can do cost accounting based on tags and also access control based on tags.
- 292_AWS Directory Services.txt:23: And what that means is that your AD in here, for example, can be trusted with the on-premise AD.
- 292_AWS Directory Services.txt:53: What if you have a self-managed directory for example, on premises?
- 292_AWS Directory Services.txt:56: So you would create a Managed Microsoft AD from the directory service, and then you would set up a two-way trust relationship between your Active Directory, for example on premises and your Managed AD.
- 294_AWS Control Tower.txt:16: For example, we could create a preventive guardrail to restrict regions across all your accounts to say, hey, you should only operate in the us-east-1 in the eu-west-2 regions.
- 294_AWS Control Tower.txt:21: For example, we want to identify untagged resources in our accounts.

### Constraints / Limitations (Deduped)
- 008_AWS Directory Services.txt:32: And the users are for the only managed in one place which is the on-premise AD.
- 008_AWS Directory Services.txt:35: There were defined on-premise and in the Cloud and there was some trust between the two but with the AD connector they're only defined on-premise and we've defined a proxy to access that on-premise AD directly from the Cloud.
- 008_AWS Directory Services.txt:37: It's called Samba and it's managed in AWS but it's standalone and it cannot be joined with an on-premise AD.
- 008_AWS Directory Services.txt:41: It cannot be joined to AWS such as SQL server and so on but contribute simpler, cheaper and maybe a good solution based on the questions you get.
- 008_AWS Directory Services.txt:60: So most importantly is RDS for SQL server, Amazon Workspaces, Quick sites, Connect, WorkDocs and Single-Sign On.
- 008_AWS Directory Services.txt:65: Now, something I want to highlight is how to connect this to your on-premise active directory because that is going to be extremely important going to the exam to understand this subtlety.
- 008_AWS Directory Services.txt:75: And the important thing to understand here is that this forest trust is going to be different than synchronization.
- 008_AWS Directory Services.txt:78: But thanks to this forest trust, they're able to talk to each other in case one user is missing from one and ask the other DC, Hey do you think you have that user because I trust you so very important to understand the distinction.
- 008_AWS Directory Services.txt:91: The only way to set up some kind of replication is for you to deploy active directory on an easy two windows instance, and you will have to set up replication.
- 008_AWS Directory Services.txt:95: So that's why it's really important to get the basics done first.
- 008_AWS Directory Services.txt:117: It will not support SSO and it's only for small amount of users.
- 008_AWS Directory Services.txt:120: It's only has basic AD capability or LDAP compatibility and you cannot set up a trust with a on-premise Microsoft AD.
- 008_AWS Directory Services.txt:122: Obviously the most important one is going to be the first one described but now you have the three options of directory services and hopefully there's a bit more clear which one to choose based on which circumstances at the exam.
- 009_AWS Organizations.txt:21: But in case you are inviting an account into an organization and that account already exists from out there, then you must manually create this role.
- 009_AWS Organizations.txt:27: You can get them for better resource isolation, for example, you wanna have one account per VPC, or you want to have separate per-account service limits, or you want to have a separate account for logging and so on.
- 009_AWS Organizations.txt:50: And this is why the accounts that have been invited into an organization with all features must approve these features beforehand.
- 009_AWS Organizations.txt:51: And once you have enabled all features, you cannot go back to using Organizations only to consolidate billing.
- 009_AWS Organizations.txt:58: So it's possible for you to disable it and say, "Well, this RI or this savings plan only belongs to that specific account." That means that in that case, then the reserve instances and savings plan discounts will not be shared across accounts that have this turned off.
- 009_AWS Organizations.txt:59: And then, on the opposite side, for a reserved instance or a savings plan to be shared across two accounts, then both these accounts must have sharing turned on, okay?
- 010_AWS Organizations Policies.txt:7: That means that these services, those service-linked role, they enable other services on AWS to integrate with organization, and therefore that's why they can't be restricted by SCPs.
- 010_AWS Organizations Policies.txt:12: For example, hey, you cannot use EMR, or to enforce PCI compliance by explicitly disabling some services in AWS.
- 010_AWS Organizations Policies.txt:25: But because we have two explicit denies, we have one Deny S3 from the Sandbox and one Deny EC2 from the account itself, then it cannot access Amazon S3 or Amazon EC2.
- 010_AWS Organizations Policies.txt:27: Next, if we apply FullAWSAccess to the Workloads OU, and we also apply an Allow EC2 SCP to the Test OU, then Account D can only access EC2.
- 010_AWS Organizations Policies.txt:28: And if we look at the Prod OU and Account E and F within it, well, we must first apply the FullAWSAccess SCP to the Prod OU, and then Account E and F can do anything.
- 010_AWS Organizations Policies.txt:34: And you don't need to know it by heart, but it should make sense to you.
- 010_AWS Organizations Policies.txt:56: And so only if all these things are allowing and working together or not denying specifically, then you will have a finalization allow, and you'll be able to do your action, okay?
- 010_AWS Organizations Policies.txt:62: So if we want to only allow an IAM user to create an EBS volume if it has the Env and the CostCenter tags, then the policy would look like this.
- 010_AWS Organizations Policies.txt:65: And you have an option to also use the value called ForAnyValue, which means that at a minimum, you must have either of these tags.
- 010_AWS Organizations Policies.txt:75: So, this is to prevent IAM users and roles for performing stuff that they can't do.
- 010_AWS Organizations Policies.txt:81: And in the second example that I showed you, this is for SCPs only.
- 010_AWS Organizations Policies.txt:89: So in this example, on the right hand side, for the Secrets Manager service, we can only have the key, CostCenter, to have the value 100 or 200.
- 010_AWS Organizations Policies.txt:102: It's an immutable backup plan, so they will appear in the member accounts within AWS Backups, but this is a view-only type of view that can only be managed within the management accounts of your organization.
- 012_AWS Control Tower.txt:2: So it's an easy way for you to set up and govern a secure and compliant multi-account AWS environments based on best practices.
- 012_AWS Control Tower.txt:7: So Control Tower is a way for you to really automate best practice multi-accounts and it runs on top of AWS organizations.
- 012_AWS Control Tower.txt:36: And then you have elective guardrails, which is commonly used by enterprises.
- 013_AWS Resource Access Manager - RAM.txt:7: And all these things, all these subnets, then must be from the same AWS Organizations.
- 013_AWS Resource Access Manager - RAM.txt:8: You cannot share Security Groups though and you cannot share the default VPC.
- 013_AWS Resource Access Manager - RAM.txt:9: The participants can manage their own resources within the subnets, but the participants cannot view, modify or delete resources that belong to other participants or the owner, so they only share the networking, really.
- 013_AWS Resource Access Manager - RAM.txt:13: But one of the most important use case from an exam perspective for Resource Access Manager is for the VPC.
- 013_AWS Resource Access Manager - RAM.txt:16: They cannot view, modify or delete other resources in other accounts.
- 013_AWS Resource Access Manager - RAM.txt:17: So for example, if I deploy an EC2 instance, an ALB in account one then, and account two will have an EC2 instance, they can communicate with one another but they cannot view each other, okay?
- 013_AWS Resource Access Manager - RAM.txt:24: And if you have applications with a high degree of interconnectivity, yet again, you will have a much simplified network setup because you only have one VPC and so by default, any application deployed within it can talk with each other.
- 013_AWS Resource Access Manager - RAM.txt:37: So this time the CIDRs are defined by AWS for their own services and you cannot create, modify, share or delete them but I want you to know about them in this slide anyway.
- 168_AWS Directory Services.txt:32: And the users are for the only managed in one place which is the on-premise AD.
- 168_AWS Directory Services.txt:35: There were defined on-premise and in the Cloud and there was some trust between the two but with the AD connector they're only defined on-premise and we've defined a proxy to access that on-premise AD directly from the Cloud.
- 168_AWS Directory Services.txt:37: It's called Samba and it's managed in AWS but it's standalone and it cannot be joined with an on-premise AD.
- 168_AWS Directory Services.txt:41: It cannot be joined to AWS such as SQL server and so on but contribute simpler, cheaper and maybe a good solution based on the questions you get.
- 168_AWS Directory Services.txt:60: So most importantly is RDS for SQL server, Amazon Workspaces, Quick sites, Connect, WorkDocs and Single-Sign On.
- 168_AWS Directory Services.txt:65: Now, something I want to highlight is how to connect this to your on-premise active directory because that is going to be extremely important going to the exam to understand this subtlety.
- 168_AWS Directory Services.txt:75: And the important thing to understand here is that this forest trust is going to be different than synchronization.
- 168_AWS Directory Services.txt:78: But thanks to this forest trust, they're able to talk to each other in case one user is missing from one and ask the other DC, Hey do you think you have that user because I trust you so very important to understand the distinction.
- 168_AWS Directory Services.txt:91: The only way to set up some kind of replication is for you to deploy active directory on an easy two windows instance, and you will have to set up replication.
- 168_AWS Directory Services.txt:95: So that's why it's really important to get the basics done first.
- 168_AWS Directory Services.txt:117: It will not support SSO and it's only for small amount of users.
- 168_AWS Directory Services.txt:120: It's only has basic AD capability or LDAP compatibility and you cannot set up a trust with a on-premise Microsoft AD.
- 168_AWS Directory Services.txt:122: Obviously the most important one is going to be the first one described but now you have the three options of directory services and hopefully there's a bit more clear which one to choose based on which circumstances at the exam.
- 222_[SAA_SOA] Organizations.txt:4: And remember, accounts can only be part of one organization.
- 222_[SAA_SOA] Organizations.txt:43: And on account A, say, we will also do apply full AWS access and deny EC2, then account A can do anything, because it has full AWS access on the root OU and on the Sandbox OU and on the account itself, but because we have two explicit denies, we have one deny S3 from the Sandbox and one deny EC2 from the account itself, then it cannot access Amazon S3 or Amazon EC2.
- 222_[SAA_SOA] Organizations.txt:45: Next, if we apply full AWS access to the workloads OU and we also apply an allow EC2 SCP to the test OU then account D can only access EC2 and if we look at the prod OU and accounts E and F within it, well, we must first apply the full AWS access SCP to the prod OU and then accounts E and F can do anything.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:33: Now my account, the child account is enrolled into my AWS organization and we can only see the organization ID as well as the feature set.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:55: It's best practice as well to leave the management account under the root OU but you could move it if you wanted to.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:59: So what we can do is take the important policy types that we want and enable them.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:63: But for the sake of this hands-on and from an exam perspective I believe only service control policies will be used, but still good to know that you can apply a backup policy across all the accounts and a tag policy across all the accounts as well.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:78: So this, when attached to my accounts, should deny access to S3.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:98: I will attach it and now that means that anything within my finance OU should also have this inherited.
- 224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt:7: It's a setting you have to turn on and off, but for having the RI or the Savings Plan discounts enabled between two accounts, they must both have sharing turned on.
- 224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt:11: So, it's a good way for you to not have to specify every individual accounts, but instead reference only the leading organization of your accounts.
- 225_AWS Control Tower.txt:2: So it's an easy way for you to set up and govern a secure and compliant multi-account AWS environments based on best practices.
- 225_AWS Control Tower.txt:7: So Control Tower is a way for you to really automate best practice multi-accounts and it runs on top of AWS organizations.
- 225_AWS Control Tower.txt:36: And then you have elective guardrails, which is commonly used by enterprises.
- 285_Organizations - Overview.txt:4: And remember, accounts can only be part of one organization.
- 285_Organizations - Overview.txt:43: And on account A, say, we will also do apply full AWS access and deny EC2, then account A can do anything, because it has full AWS access on the root OU and on the Sandbox OU and on the account itself, but because we have two explicit denies, we have one deny S3 from the Sandbox and one deny EC2 from the account itself, then it cannot access Amazon S3 or Amazon EC2.
- 285_Organizations - Overview.txt:45: Next, if we apply full AWS access to the workloads OU and we also apply an allow EC2 SCP to the test OU then account D can only access EC2 and if we look at the prod OU and accounts E and F within it, well, we must first apply the full AWS access SCP to the prod OU and then accounts E and F can do anything.
- 286_Organizations - Hands On.txt:33: Now my account, the child account is enrolled into my AWS organization and we can only see the organization ID as well as the feature set.
- 286_Organizations - Hands On.txt:55: It's best practice as well to leave the management account under the root OU but you could move it if you wanted to.
- 286_Organizations - Hands On.txt:59: So what we can do is take the important policy types that we want and enable them.
- 286_Organizations - Hands On.txt:63: But for the sake of this hands-on and from an exam perspective I believe only service control policies will be used, but still good to know that you can apply a backup policy across all the accounts and a tag policy across all the accounts as well.
- 286_Organizations - Hands On.txt:78: So this, when attached to my accounts, should deny access to S3.
- 286_Organizations - Hands On.txt:98: I will attach it and now that means that anything within my finance OU should also have this inherited.
- 292_AWS Directory Services.txt:36: And the only place where we can manage users is going to be on the on-premise AD.
- 292_AWS Directory Services.txt:40: And it cannot be joined with a non-premise Active Directory.
- 292_AWS Directory Services.txt:46: Now, the exam should has queue some very, very high level question, saying we want to proxy our users to on-premise and therefore you need AD Connector, or we want to manage our users on the cloud in AWS and have MFA and therefore you need AWS Managed AD, or we just want a Simple AD and we don't have any on-premise stuff.
- 292_AWS Directory Services.txt:55: The first one is what we should call a two-way trust relationship using the AWS Managed Microsoft AD.
- 293_AWS Directory Services - Hands On.txt:10: This next one is Simple AD which is going to be a standalone managed directory that has a active directory compatible API but it cannot be connected to your on-premise active directory.
- 294_AWS Control Tower.txt:2: So it's a very easy way for you to set up and govern a secure and compliant multi-account AWS environment based on best practices.
- 294_AWS Control Tower.txt:16: For example, we could create a preventive guardrail to restrict regions across all your accounts to say, hey, you should only operate in the us-east-1 in the eu-west-2 regions.

### Patterns / Architectures (Deduped)
- 008_AWS Directory Services.txt:86: So, now let's talk about a bit more solution architecture because we have to get into those and they can be quite complicated but say you want to have your Microsoft AD that's on-premise replicated on AWS for minimizing latency.
- 008_AWS Directory Services.txt:94: So this is the kind of solution architecture that will be asked from you at the exam.
- 008_AWS Directory Services.txt:96: And then talk about these little interesting twists on solution architecture.
- 009_AWS Organizations.txt:1: Okay, so let's talk about AWS Organizations, which is a way for you to manage multiple AWS accounts at once.
- 009_AWS Organizations.txt:2: So within Organizations, we have, at the top, the root organizational unit, or OU, and it will contain our management account, which is the account that will be used for all administration purposes.
- 009_AWS Organizations.txt:5: So you have to make a distinction between the management account that you use to manage all the other accounts and organizations.
- 009_AWS Organizations.txt:6: And then the member accounts, which are just normal AWS accounts that are part of an organization.
- 009_AWS Organizations.txt:11: So once we have all these accounts, how does Organizations perform its administration?
- 009_AWS Organizations.txt:12: Well, there is a very special role you need to know about for the exam called the organization account access role.
- 009_AWS Organizations.txt:13: So when we have the organization and the management account, if we happen to create a member account using an API from the Organization service, then, automatically, an IAM role within the member account is going to be created.
- 009_AWS Organizations.txt:14: And that IAM role is called the Organization Account Access Role.
- 009_AWS Organizations.txt:17: And this is the magic of how AWS Organizations work.
- 009_AWS Organizations.txt:20: And, as I said, this role is automatically added to new member accounts created with the API of AWS Organizations.
- 009_AWS Organizations.txt:21: But in case you are inviting an account into an organization and that account already exists from out there, then you must manually create this role.
- 009_AWS Organizations.txt:35: It's up to you and your architecture to decide what you want to do.
- 009_AWS Organizations.txt:41: So there are two feature modes you need to know for AWS Organization.
- 009_AWS Organizations.txt:46: All the features are also going to be another feature mode for Organizations.
- 009_AWS Organizations.txt:49: And then once you have the all features enabled, then we can use an SCP, so a service control policy, to prevent the member account from ever leaving the organization.
- 009_AWS Organizations.txt:50: And this is why the accounts that have been invited into an organization with all features must approve these features beforehand.
- 009_AWS Organizations.txt:51: And once you have enabled all features, you cannot go back to using Organizations only to consolidate billing.
- 009_AWS Organizations.txt:53: So talking about what is shared and savings, we have reserved instances in Organizations.
- 009_AWS Organizations.txt:54: So for billing purposes, the consolidated billing feature of AWS Organizations will treat all the accounts as one account that we know.
- 009_AWS Organizations.txt:55: That means that all the accounts in the organization will receive the hourly cost benefit of a reserved instance that is purchased by any other account.
- 009_AWS Organizations.txt:57: So the payer accounts of an organization, so the management account, can turn off the RI, reserve instance sharing, or savings plan discount sharing, for any account including VPR accounts.
- 009_AWS Organizations.txt:61: You need to also know the process to move accounts between two organizations.
- 009_AWS Organizations.txt:62: So let's say we want to move a member account from an old to a new organization.
- 009_AWS Organizations.txt:65: Before, we had to remove the member account from the previous organization, but now we don't.
- 009_AWS Organizations.txt:66: We just send an invite and it can be moved over across two organizations.
- 010_AWS Organizations Policies.txt:2: So here, you can define allowlist or blocklist for specific IAM actions on your organization for your accounts.
- 010_AWS Organizations Policies.txt:7: That means that these services, those service-linked role, they enable other services on AWS to integrate with organization, and therefore that's why they can't be restricted by SCPs.
- 010_AWS Organizations Policies.txt:9: And for something to be allowed within organizations, you need to make sure that every SCP along the way from the root to each OU down to the specific target account will have an explicit allow.
- 010_AWS Organizations Policies.txt:37: We're going to look at Organizations SCP, Resource-based policy, Identity-based policy, IAM permission boundaries, and then finally, Session policies to allow or deny a specific IAM action.
- 010_AWS Organizations Policies.txt:40: Then we look at the organization's SCP, and is there an allow?
- 010_AWS Organizations Policies.txt:83: So, TAG policies are defined at the organization level, and they help you standardize tags across all resources in an organization.
- 010_AWS Organizations Policies.txt:90: Another type of policy on organizations is called the AI Services Opt-out Policy.
- 010_AWS Organizations Policies.txt:97: These policies can be attached to a Organization Root, specific OUs, or directly in individual member accounts.
- 010_AWS Organizations Policies.txt:100: And so we define these backup policies at the organization level with JSON documents and is going to give you granular control over the backing up the resources, such as the frequency, the time window, the backup region, et cetera, et cetera.
- 010_AWS Organizations Policies.txt:101: These can be attached to the Organization Root OU or specific OU or an individual member account.
- 010_AWS Organizations Policies.txt:102: It's an immutable backup plan, so they will appear in the member accounts within AWS Backups, but this is a view-only type of view that can only be managed within the management accounts of your organization.
- 010_AWS Organizations Policies.txt:103: So that's it for all the policies on AWS organizations.
- 012_AWS Control Tower.txt:2: So it's an easy way for you to set up and govern a secure and compliant multi-account AWS environments based on best practices.
- 012_AWS Control Tower.txt:7: So Control Tower is a way for you to really automate best practice multi-accounts and it runs on top of AWS organizations.
- 012_AWS Control Tower.txt:8: So it's going to set up an organization for you and then organize these accounts and implement automatically the service control policies you need.
- 012_AWS Control Tower.txt:9: So out of it there is the account factory and since you automate account provisioning and deployments and it allows you to create pre-approved baseline and configuration options for all the accounts in your organization, such as, for example, configuring the default VPC, configuring the subnets, the regions and so on.
- 012_AWS Control Tower.txt:30: So we have a detective guardrail in Control Tower using config and it's going to monitor for untagged resources in your member accounts as part of your organization is going to trigger if it's noncompliance and SNS topic, which can notify an admin, maybe invoke Lambda function and that Lambda function itself can remediate to this and add tag where needed.
- 013_AWS Resource Access Manager - RAM.txt:3: And with this you can do it from any account or just accounts within your organization.
- 013_AWS Resource Access Manager - RAM.txt:7: And all these things, all these subnets, then must be from the same AWS Organizations.
- 013_AWS Resource Access Manager - RAM.txt:34: And so that if you are using, for example, your own Customer Managed Prefix List, then you define the CIDRs and then you can share it with other accounts, organizations and then you can modify them.
- 168_AWS Directory Services.txt:86: So, now let's talk about a bit more solution architecture because we have to get into those and they can be quite complicated but say you want to have your Microsoft AD that's on-premise replicated on AWS for minimizing latency.
- 168_AWS Directory Services.txt:94: So this is the kind of solution architecture that will be asked from you at the exam.
- 168_AWS Directory Services.txt:96: And then talk about these little interesting twists on solution architecture.
- 222_[SAA_SOA] Organizations.txt:1: So now let's talk about AWS Organizations.
- 222_[SAA_SOA] Organizations.txt:3: So you create an organization and the main account in your organization is called the management account, while the other accounts that join the organization or that are created from the organizations are called member accounts.
- 222_[SAA_SOA] Organizations.txt:4: And remember, accounts can only be part of one organization.
- 222_[SAA_SOA] Organizations.txt:5: The cool thing about organization is that the billing is consolidated across all the accounts.
- 222_[SAA_SOA] Organizations.txt:6: So you have a single payment method on the management account and then it will be paying for all the organization's cost.
- 222_[SAA_SOA] Organizations.txt:7: But because you have an organization and it's all part of one big family, then you get pricing benefits from aggregated usage.
- 222_[SAA_SOA] Organizations.txt:10: So if a reserved instance is unused in one account, another account can benefit from it and therefor the discounts apply across the entire organization, which is really good for cost savings.
- 222_[SAA_SOA] Organizations.txt:11: Now, there's also an API to automate the account creation from within the organization.
- 222_[SAA_SOA] Organizations.txt:12: So you can create accounts very easily using an organization.
- 222_[SAA_SOA] Organizations.txt:14: So we have what's called a root organizational unit, or OU, and this is the outermost OU of your accounts and then within it sits the management account.
- 222_[SAA_SOA] Organizations.txt:24: So what are the advantages of using organizations?
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:2: So we're going to practice using the organizations.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:3: For this I'm just going to go into the organization service and get started.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:4: So as we can see in this example Organizations is a global service because it has to do with accounts and regrouping them together, okay?
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:8: Call them as you want so that you can have one master and one child account within your organization.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:9: So from the master account I'm going to go ahead and create an organization.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:10: Now within the organization we have to define the accounts within it.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:11: So as we can see right now, this is very quick, the organization is created and we have the root organizational units.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:14: And the organization is created.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:15: Now we want to add a second AWS as account into this organization.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:17: And we have two options, either we want to create an account and you specify the account name, the email address of the account owner as well as an IAM role that will be created in the target account to be allowed to be managed by the organization.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:24: So what I can do next is go to my organization on my child account.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:29: So as we can see in this organization right now we'll get full control as this organization has full features enabled and can assume full control of your account.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:30: So as soon as you're part of an organization, you accept to be controlled by whoever is the master of that organization.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:33: Now my account, the child account is enrolled into my AWS organization and we can only see the organization ID as well as the feature set.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:34: And an account may have the ability to leave the organization.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:35: So back into my AWS organization.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:37: As we can see now within my organization we have roots and within roots, we have two accounts now, the master and the child accounts.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:38: So we can do is now organize our accounts using organizational units or OUs.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:48: And if you go all the way to your organization and then you look at the OU, now we can see we have roots, dev, and right now, no accounts within dev, prod and we have finance and HR within prod and then we have test.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:49: So as we can see, we can start organizing the accounts and we have many accounts in organization within specific OUs.
- 223_[CCP_SAA_SOA] Organizations - Hands On.txt:62: We have other ones that could be of interest, for example, backup policy allows you to deploy organization-wide backup plans, to ensure that all your accounts are compliant and have backups enabled or tag policies also to help standardize how you use tags within all the different accounts in your organization.
- 224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt:1: So just a little bit of extra information regarding organizations for the SysOps exam.
- 224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt:2: The first of all, you can enable what's called Reserved Instances sharing in your organization.
- 224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt:3: That means that all the accounts of your organizations will have access to all the Reserved Instances.
- 224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt:8: The second thing is that using organizations, you can use a specific condition in your IAM policies called the aws:PrincipalOrgID to allow access from any, IAM principles from all the accounts in your organization.
- 224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt:9: So, say you have an organization with a management account and two member accounts with different IAM users.
- 224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt:10: If you set up an extra bucket and you're using the bucket policy, the aws:PrincipalOrgID condition, then you're giving access automatically to any user or any roles within your organization to this extra buckets.
- 224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt:11: So, it's a good way for you to not have to specify every individual accounts, but instead reference only the leading organization of your accounts.
- 224_[SOA] AWS Organizations - IAM Policies & Tag Policies.txt:21: So, that's it for organizations.
- 225_AWS Control Tower.txt:2: So it's an easy way for you to set up and govern a secure and compliant multi-account AWS environments based on best practices.
- 225_AWS Control Tower.txt:7: So Control Tower is a way for you to really automate best practice multi-accounts and it runs on top of AWS organizations.
- 225_AWS Control Tower.txt:8: So it's going to set up an organization for you and then organize these accounts and implement automatically the service control policies you need.
- 225_AWS Control Tower.txt:9: So out of it there is the account factory and since you automate account provisioning and deployments and it allows you to create pre-approved baseline and configuration options for all the accounts in your organization, such as, for example, configuring the default VPC, configuring the subnets, the regions and so on.
- 225_AWS Control Tower.txt:30: So we have a detective guardrail in Control Tower using config and it's going to monitor for untagged resources in your member accounts as part of your organization is going to trigger if it's noncompliance and SNS topic, which can notify an admin, maybe invoke Lambda function and that Lambda function itself can remediate to this and add tag where needed.
- 285_Organizations - Overview.txt:1: So now let's talk about AWS Organizations.
- 285_Organizations - Overview.txt:3: So you create an organization and the main account in your organization is called the management account, while the other accounts that join the organization or that are created from the organizations are called member accounts.
- 285_Organizations - Overview.txt:4: And remember, accounts can only be part of one organization.
- 285_Organizations - Overview.txt:5: The cool thing about organization is that the billing is consolidated across all the accounts.
- 285_Organizations - Overview.txt:6: So you have a single payment method on the management account and then it will be paying for all the organization's cost.
- 285_Organizations - Overview.txt:7: But because you have an organization and it's all part of one big family, then you get pricing benefits from aggregated usage.
- 285_Organizations - Overview.txt:10: So if a reserved instance is unused in one account, another account can benefit from it and therefor the discounts apply across the entire organization, which is really good for cost savings.
- 285_Organizations - Overview.txt:11: Now, there's also an API to automate the account creation from within the organization.
- 285_Organizations - Overview.txt:12: So you can create accounts very easily using an organization.
- 285_Organizations - Overview.txt:14: So we have what's called a root organizational unit, or OU, and this is the outermost OU of your accounts and then within it sits the management account.
- 285_Organizations - Overview.txt:24: So what are the advantages of using organizations?
- 286_Organizations - Hands On.txt:2: So we're going to practice using the organizations.
- 286_Organizations - Hands On.txt:3: For this I'm just going to go into the organization service and get started.
- 286_Organizations - Hands On.txt:4: So as we can see in this example Organizations is a global service because it has to do with accounts and regrouping them together, okay?
- 286_Organizations - Hands On.txt:8: Call them as you want so that you can have one master and one child account within your organization.
- 286_Organizations - Hands On.txt:9: So from the master account I'm going to go ahead and create an organization.
- 286_Organizations - Hands On.txt:10: Now within the organization we have to define the accounts within it.
- 286_Organizations - Hands On.txt:11: So as we can see right now, this is very quick, the organization is created and we have the root organizational units.
- 286_Organizations - Hands On.txt:14: And the organization is created.
- 286_Organizations - Hands On.txt:15: Now we want to add a second AWS as account into this organization.
- 286_Organizations - Hands On.txt:17: And we have two options, either we want to create an account and you specify the account name, the email address of the account owner as well as an IAM role that will be created in the target account to be allowed to be managed by the organization.
- 286_Organizations - Hands On.txt:24: So what I can do next is go to my organization on my child account.
- 286_Organizations - Hands On.txt:29: So as we can see in this organization right now we'll get full control as this organization has full features enabled and can assume full control of your account.
- 286_Organizations - Hands On.txt:30: So as soon as you're part of an organization, you accept to be controlled by whoever is the master of that organization.
- 286_Organizations - Hands On.txt:33: Now my account, the child account is enrolled into my AWS organization and we can only see the organization ID as well as the feature set.
- 286_Organizations - Hands On.txt:34: And an account may have the ability to leave the organization.
- 286_Organizations - Hands On.txt:35: So back into my AWS organization.
- 286_Organizations - Hands On.txt:37: As we can see now within my organization we have roots and within roots, we have two accounts now, the master and the child accounts.
- 286_Organizations - Hands On.txt:38: So we can do is now organize our accounts using organizational units or OUs.
- 286_Organizations - Hands On.txt:48: And if you go all the way to your organization and then you look at the OU, now we can see we have roots, dev, and right now, no accounts within dev, prod and we have finance and HR within prod and then we have test.
- 286_Organizations - Hands On.txt:49: So as we can see, we can start organizing the accounts and we have many accounts in organization within specific OUs.
- 286_Organizations - Hands On.txt:62: We have other ones that could be of interest, for example, backup policy allows you to deploy organization-wide backup plans, to ensure that all your accounts are compliant and have backups enabled or tag policies also to help standardize how you use tags within all the different accounts in your organization.
- 287_Organizations - Tag Policies.txt:1: So now let's talk about another kind of policy you can have on your organization, called a tag policy.
- 287_Organizations - Tag Policies.txt:2: So it looks like this and the idea is to standardize the tags across the resources in a specific AWS organization.
- 287_Organizations - Tag Policies.txt:9: In case you also want to look for non-compliant tags, you can use EventBridge, okay? so if you get a question at the exam around how to maintain tags consistent across accounts, think about tag policies in AWS organizations.
- 294_AWS Control Tower.txt:2: So it's a very easy way for you to set up and govern a secure and compliant multi-account AWS environment based on best practices.
- 294_AWS Control Tower.txt:3: So actually to create these accounts, well, the Control Tower service is going to use the AWS Organization service and then the accounts are automatically being created and we'll see in the next slide how to make them secure and compliant.
- 294_AWS Control Tower.txt:8: So it's yet another service on top of organizations.
- 294_AWS Control Tower.txt:15: And so we're going to use SCP, so Service Control Policies, from the AWS Organization service to apply them to all our accounts.
- 294_AWS Control Tower.txt:17: And so therefore behind the scenes, Control Tower is going to tell organizations to use SCPs.

## Deduped Consolidation Snapshot End

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: So you create an organization and the main account in your organization is called the management account, while the other accounts that join the organization or that are created from the organizations are called membe...
- Signal 2: So you can create accounts very easily using an organization.
- Signal 3: Then you can create sub-OUs, so you can create for example an OU for the dev accounts and then you can create member accounts within the dev OU or you can create OU for a prod account and also add member accounts ther...
- Signal 4: You can create within the prod OU, an OU for your HR member accounts and an OU for your finance member accounts.
- Signal 5: Transcript signals that you create an organization and the main account in your organization is called the management account, while the other accounts that join the organization or that are created from the organizations are called memb...
- Signal 6: Transcript signals that you can create accounts very easily using an organization.
- Signal 7: Design implication: you create an organization and the main account in your organization is called the management account, while the other accounts that join the organization or that are created from the organizations are called memb...
- Signal 8: Finally, your traditional active directory applications such as your dot NET Apps, your SharePoint and your SQL server that you deploy on EC2 instances can obviously be integrated with that active directory that's man...
- Signal 9: The only way to set up some kind of replication is for you to deploy active directory on an easy two windows instance, and you will have to set up replication.
- Signal 10: Transcript signals that finally, your traditional active directory applications such as your dot NET Apps, your SharePoint and your SQL server that you deploy on EC2 instances can obviously be integrated with that active directory that's...

### Service-Specific Lab Paths
### Activity 1: IAM Lab for Directory Services, AWS Organizations, SCPs, Control Tower, RAM
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

### Activity 2: Amazon S3 Lab for Directory Services, AWS Organizations, SCPs, Control Tower, RAM
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

### Activity 3: Amazon VPC Lab for Directory Services, AWS Organizations, SCPs, Control Tower, RAM
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

### Activity 4: Amazon CloudWatch Lab for Directory Services, AWS Organizations, SCPs, Control Tower, RAM
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

Use this lens to study Directory Services, AWS Organizations, SCPs, Control Tower, RAM in a cloud-agnostic way: focus on capability first, provider name second.

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

