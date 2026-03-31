# 05_KMS_Cryptography.md

## Scope
- Topic: KMS, key lifecycle, key policy model, asymmetric/symmetric, CloudHSM, encryption fundamentals
- Files processed: 29
- Extracted non-empty transcript lines: 1337
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 5 Topic 1: KMS and Cryptography)

This section is the study-first deep dive into cryptographic architecture, key governance, and service-integrated encryption.

### Phase 1 - Foundations

#### Module 1: Cryptography in Cloud Security Architecture
- Encryption at rest protects stored data persistence.
- Encryption in transit protects data movement across boundaries.
- Key lifecycle governance determines long-term cryptographic trust quality.


##### Source Transcript Details
- Module focus: Cryptography in Cloud Security Architecture
- Primary transcript files:
- outputs/aws-solutions-architect-professional/04_Security/018_KMS.txt
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/172_KMS.txt
- outputs/aws-solutions-architect-professional/04_Security/024_CloudHSM.txt
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/170_CloudHSM.txt
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/176_KMS Key Deletion.txt
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/171_CloudHSM - Advanced.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/298_KMS Hands On w_ CLI.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/297_KMS Overview.txt
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/180_KMS Key Policies Evaluation Process.txt
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/174_[DVA] KMS Envelope Encryption.txt
- Top concept clusters from transcript metadata:
- Data Security Operational Context
- Encryption Fundamentals
- Key Management Lifecycle
- Access Control Enforcement
- Storage Data Protection
- Cross-Account and Multi-Region Security
- Certificate and TLS Security
- Secrets Management
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 29
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1337
- Key insights inside selected files: 714
- Unique concept tags in selected files: 8

##### Transcript-Enriched Learning Notes
- Okay, so now let's talk about AWS KMS, which is the Key Management Service.
- So, anytime you hear encryption in AWS, you have to think about KMS, obviously.
- You should know and remember that KMS keys are regional and they can only be used in the region they're created in.
- So, in KMS you have two types of key.
- So, the symmetric keys were the first offering of KMS.
- And then all the services that are integrated with AWS KMS use symmetric KMS keys.
- And you never actually get access to the KMS key itself unencrypted.
- You must just send data into KMS with a KMS API call to use it.
- You have to use the KMS API calls.
- So the use case for an asymmetric key is to have encryptions outside of AWS by users who cannot directly call the KMS API for whatever reason.
- Now, you have different types of KMS keys.
- The first type is a customer managed key, and this is a key you create directly in KMS.
- And you can add a key policy, which is a resource policy for KMS keys.
- And you can audit the key usage in CloudTrail.
- You can view the key policy and you can audit in CloudTrail, but you cannot leverage them for your own encryption operations.
- Okay, so now if we want to have a summary of the different types of KMS keys, for the customer managed keys, you can manage metadata, you can view metadata, and you can manage it, and you can also use for your account...
- Okay, now how do you create a KMS key?
- So, you have the KMS, which is the AWS_KMS key material, which means that you are going to have KMS automatically create, generate, and manage the key in its own key store to see what happens when you go into KMS and...

##### Polished Architect Notes
- Transcript signals that so now let's talk about AWS KMS, which is the Key Management Service.
- Transcript signals that anytime you hear encryption in AWS, you have to think about KMS, obviously.
- Transcript signals that you should know and remember that KMS keys are regional and they can only be used in the region they're created in.
- Transcript signals that in KMS you have two types of key.
- Transcript signals that the symmetric keys were the first offering of KMS.
- Transcript signals that then all the services that are integrated with AWS KMS use symmetric KMS keys.
- Transcript signals that you never actually get access to the KMS key itself unencrypted.
- Transcript signals that you must just send data into KMS with a KMS API call to use it.
- Transcript signals that you have to use the KMS API calls.
- Transcript signals that the use case for an asymmetric key is to have encryptions outside of AWS by users who cannot directly call the KMS API for whatever reason.
- Transcript signals that you have different types of KMS keys.
- Transcript signals that the first type is a customer managed key, and this is a key you create directly in KMS.

##### Architect Synthesis (Transcript-Derived)
- Treat Data Security Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Encryption Fundamentals as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Key Management Lifecycle as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Access Control Enforcement as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Storage Data Protection as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so now let's talk about AWS KMS, which is the Key Management Service.
- Design implication: anytime you hear encryption in AWS, you have to think about KMS, obviously.
- Design implication: you should know and remember that KMS keys are regional and they can only be used in the region they're created in.
#### Module 2: KMS Core Concepts
- Symmetric keys for most service encryption use cases.
- Asymmetric keys for specialized signing/encryption models.
- Key policies and IAM together govern key usage authorization.


##### Source Transcript Details
- Module focus: KMS Core Concepts
- Primary transcript files:
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/180_KMS Key Policies Evaluation Process.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/298_KMS Hands On w_ CLI.txt
- outputs/aws-solutions-architect-professional/04_Security/018_KMS.txt
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/172_KMS.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/297_KMS Overview.txt
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/174_[DVA] KMS Envelope Encryption.txt
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/173_[SAA] KMS Multi Region Key.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/299_KMS - Multi-Region Keys.txt
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/182_KMS Asymmetric Encryption.txt
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/175_[SOA] KMS Key Rotation.txt
- Top concept clusters from transcript metadata:
- Data Security Operational Context
- Encryption Fundamentals
- Key Management Lifecycle
- Cross-Account and Multi-Region Security
- Access Control Enforcement
- Storage Data Protection
- Secrets Management
- Certificate and TLS Security
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 29
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1337
- Key insights inside selected files: 774
- Unique concept tags in selected files: 8

##### Transcript-Enriched Learning Notes
- But I want to show you the KMS Key Authorization Process, how is a KMS Key usage evaluated for yes or no.
- So we start and we look at whether or not there's a DENY statement in the KMS Key Policy or anywhere.
- Then is there a VPC Endpoint Policy that allows access to KMS?
- So if you're accessing the KMS service privately.
- Next, we are go into the KMS specific stuff.
- But then we look at the Key Policy and we say, "Well, do we allow the accounts to use IAM policies to control Key access?" which is the default KMS Key Policy that we saw before.
- But if we do have the default KMS Policy, for example, then we look at IAM.
- So this is a complicated schema, but hopefully, because I've covered all the concepts of these before, you should feel somewhat familiar with it.
- Again, just remember the concepts of Grants, Key Policies, Default Key Policies that would delegate actions to IAM.
- We have the default KMS Key Policy to grant access to an accounts.
- No, because we use the default KMS Key Policy.
- So we have a KMS Key Policy in Account 2 that allows for all the Principals in Accounts 1.
- So let's have a look at the KMS service.
- You can see if I've been using KMS encryption throughout this course, then these keys will appear right here.
- If I looked for example, at another AWS managed key, for example, the SQS one, and look at the key policy, here the Via Service as a condition to my KMS key policy is the SQS service, therefore allowing only access fr...
- We can also look at the cryptographic configuration, which show that this key is symmetric of origin KMS and it's used to encrypt and decrypt data.
- So that's for the KMS managed key by AWS, but then we have other kinds.
- So this is when we want to create our own keys within KMS and not use the ones managed by AWS.

##### Polished Architect Notes
- Transcript signals that i want to show you the KMS Key Authorization Process, how is a KMS Key usage evaluated for yes or no.
- Transcript signals that we start and we look at whether or not there's a DENY statement in the KMS Key Policy or anywhere.
- Transcript signals that is there a VPC Endpoint Policy that allows access to KMS?
- Transcript signals that if you're accessing the KMS service privately.
- Transcript signals that next, we are go into the KMS specific stuff.
- Transcript signals that then we look at the Key Policy and we say, "Well, do we allow the accounts to use IAM policies to control Key access?" which is the default KMS Key Policy that we saw before.
- Transcript signals that if we do have the default KMS Policy, for example, then we look at IAM.
- Transcript signals that this is a complicated schema, but hopefully, because I've covered all the concepts of these before, you should feel somewhat familiar with it.
- Transcript signals that again, just remember the concepts of Grants, Key Policies, Default Key Policies that would delegate actions to IAM.
- Transcript signals that we have the default KMS Key Policy to grant access to an accounts.
- Transcript signals that no, because we use the default KMS Key Policy.
- Transcript signals that we have a KMS Key Policy in Account 2 that allows for all the Principals in Accounts 1.

##### Architect Synthesis (Transcript-Derived)
- Treat Data Security Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Encryption Fundamentals as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Key Management Lifecycle as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Cross-Account and Multi-Region Security as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Access Control Enforcement as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: i want to show you the KMS Key Authorization Process, how is a KMS Key usage evaluated for yes or no.
- Design implication: we start and we look at whether or not there's a DENY statement in the KMS Key Policy or anywhere.
- Design implication: is there a VPC Endpoint Policy that allows access to KMS?
#### Module 3: Why Key Management Is a Control Plane
- Key compromise impact is systemic, not local.
- Key rotation, deletion, and grant management are governance-critical operations.


##### Source Transcript Details
- Module focus: Why Key Management Is a Control Plane
- Primary transcript files:
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/180_KMS Key Policies Evaluation Process.txt
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/181_KMS Key Cross-Account Access.txt
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/175_[SOA] KMS Key Rotation.txt
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/177_KMS Key Policies Deep Dive.txt
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/176_KMS Key Deletion.txt
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/173_[SAA] KMS Multi Region Key.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/299_KMS - Multi-Region Keys.txt
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/179_KMS Condition Keys.txt
- outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/178_KMS Grants.txt
- outputs/aws-solutions-architect-professional/04_Security/018_KMS.txt
- Top concept clusters from transcript metadata:
- Data Security Operational Context
- Key Management Lifecycle
- Access Control Enforcement
- Encryption Fundamentals
- Cross-Account and Multi-Region Security
- Storage Data Protection
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 29
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1337
- Key insights inside selected files: 546
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- But I want to show you the KMS Key Authorization Process, how is a KMS Key usage evaluated for yes or no.
- So we start and we look at whether or not there's a DENY statement in the KMS Key Policy or anywhere.
- Then is there a VPC Endpoint Policy that allows access to KMS?
- So if you're accessing the KMS service privately.
- Next, we are go into the KMS specific stuff.
- So is the Key Policy allowing the caller to perform the action?
- So remember, we have the Key Policy.
- But even if the Key Policy doesn't contain things, a Grant may still allow the caller to perform the action.
- And then we look at the Key Policy.
- But then we look at the Key Policy and we say, "Well, do we allow the accounts to use IAM policies to control Key access?" which is the default KMS Key Policy that we saw before.
- If it doesn't exist, we look at whether there's a Grant that allows the caller's accounts to use IAM policies to control Key access.
- But if we do have the default KMS Policy, for example, then we look at IAM.
- Then we look at whether or not the Key is in the same account as the caller.
- But if the Key is not in the same accounts as the caller, then we look at whether or not there was a Grant created by the caller's accounts to allow the caller's action to perform the action.
- Again, just remember the concepts of Grants, Key Policies, Default Key Policies that would delegate actions to IAM.
- So, okay, just remember Key, Key Grants, IAM Policies, SCPs, and VPC Endpoint Policies are included.
- We have the default KMS Key Policy to grant access to an accounts.
- First is you categorize it for the use authorization and then the Key trust.

##### Polished Architect Notes
- Transcript signals that i want to show you the KMS Key Authorization Process, how is a KMS Key usage evaluated for yes or no.
- Transcript signals that we start and we look at whether or not there's a DENY statement in the KMS Key Policy or anywhere.
- Transcript signals that is there a VPC Endpoint Policy that allows access to KMS?
- Transcript signals that if you're accessing the KMS service privately.
- Transcript signals that next, we are go into the KMS specific stuff.
- Transcript signals that is the Key Policy allowing the caller to perform the action?
- Transcript signals that remember, we have the Key Policy.
- Transcript signals that even if the Key Policy doesn't contain things, a Grant may still allow the caller to perform the action.
- Transcript signals that then we look at the Key Policy.
- Transcript signals that then we look at the Key Policy and we say, "Well, do we allow the accounts to use IAM policies to control Key access?" which is the default KMS Key Policy that we saw before.
- Transcript signals that if it doesn't exist, we look at whether there's a Grant that allows the caller's accounts to use IAM policies to control Key access.
- Transcript signals that if we do have the default KMS Policy, for example, then we look at IAM.

##### Architect Synthesis (Transcript-Derived)
- Treat Data Security Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Key Management Lifecycle as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Access Control Enforcement as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Encryption Fundamentals as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Cross-Account and Multi-Region Security as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: i want to show you the KMS Key Authorization Process, how is a KMS Key usage evaluated for yes or no.
- Design implication: we start and we look at whether or not there's a DENY statement in the KMS Key Policy or anywhere.
- Design implication: is there a VPC Endpoint Policy that allows access to KMS?
### Phase 2 - Core Services

#### AWS KMS
- Service-integrated encryption across storage, database, and secrets workflows.
- Key policy model controls administrators and key users explicitly.
- API-level operations are auditable and must be treated as high-value security events.

#### Key Types and Lifecycle
- AWS-managed vs customer-managed key operational trade-offs.
- Rotation strategies by key type and ownership model.
- Cross-region and cross-account encryption workflows require deliberate key design.

#### CloudHSM and Specialized Crypto Controls
- Use hardware-backed key custody patterns when control or compliance requirements exceed managed defaults.
- Expect higher operational complexity with increased custody control.

### Phase 3 - Advanced Patterns

#### Pattern 1: Envelope Encryption at Scale
- Use data keys for bulk encryption, protect data keys with KMS keys.
- Reduces cryptographic bottlenecks while preserving central key governance.

#### Pattern 2: Multi-Account Key Governance
- Separate key administration from key usage roles.
- Use scoped key policies and grants for cross-account workflows.

#### Pattern 3: Cross-Region Secure Data Mobility
- Replication and snapshot-copy flows require explicit regional key strategy.
- Plan re-encryption boundaries before migration projects.

### Phase 4 - System Design (Production)

#### Reference Crypto Architecture
- Central key governance model with workload-specific consumption paths.
- Standardized aliases and policy templates across environments.
- Continuous audit of key usage and policy drift.

#### Scaling Considerations
- Key sprawl and naming inconsistency.
- Permission complexity from grants and cross-account dependencies.
- Rotation and deletion governance for long-lived systems.

#### Cost Considerations
- Key count and API operation volume drive KMS economics.
- Operational costs increase with fragmented key ownership models.

### Cross-Cloud Concept Mapping (KMS and Cryptography)

#### Underlying Concept: Managed Key Service
- AWS: KMS
- Azure: Key Vault keys and Managed HSM models
- GCP: Cloud KMS and Cloud HSM models
- Trade-off: custody control vs operational simplicity differs across offerings.

#### Underlying Concept: Hardware-Backed Custody
- AWS: CloudHSM
- Azure: Managed HSM or dedicated HSM pathways
- GCP: Cloud HSM
- Trade-off: stronger custody usually means higher operational and integration burden.

### Real-World Use Cases from Transcript Signals
- Encrypt storage snapshots and replicated datasets with controlled key ownership.
- Implement cross-account encrypted sharing with explicit trust and policy boundaries.
- Standardize key rotation and audit processes for regulated workloads.

### Constraints and Exam-Relevant Traps Captured
- Keys are region-scoped in many workflows and impact migration design.
- Default encryption does not replace policy review and key governance.
- Key policy misconfiguration can block production recovery operations.
## Step 1 — Line-by-Line Extraction

Every non-empty line from every source transcript is preserved below with extraction fields.

### File: outputs/aws-solutions-architect-professional/04_Security/018_KMS.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Okay, so now let's talk about AWS KMS, which is the Key Management Service.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 2:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So, anytime you hear encryption in AWS, you have to think about KMS, obviously.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 3:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And it's a way to easily control access to our data, and it also manages the encryption keys for us.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's fully integrated with IAM for authorization, and it has seamless integration into all the AWS services, pretty much.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Storage Data Protection
- Services: Amazon EBS, Amazon RDS, Amazon S3
- Key Insights: So, EBS, S3, Redshift, RDS, SSM, et cetera, et cetera.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: You should know and remember that KMS keys are regional and they can only be used in the region they're created in.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Cryptographic control signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And that can come up in the exam a lot.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So, in KMS you have two types of key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You have the symmetric keys and the asymmetric keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So, the symmetric keys were the first offering of KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 11:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: It's a single encryption key that will be used to encrypt and decrypt information.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And then all the services that are integrated with AWS KMS use symmetric KMS keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 13:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: It's necessary if you want to do envelope encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 14:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And you never actually get access to the KMS key itself unencrypted.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 15:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: You must just send data into KMS with a KMS API call to use it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, the asymmetric keys are new, and they can allow you to have two kind of public keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's a key pair, so it's a public Key and a private Key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 18:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: The public key will be used to encrypt, and the private key will be used to decrypt.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 19:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Now, this is very helpful when you want to have encrypt, decrypt or sign/verify operations.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And you can download the public key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That means that you can encrypt stuff from anywhere with a public key, and you can send the public key to people that you don't trust in untrusted environments.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 22:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: But once the data is encrypted with the public key, only the private key has the power to decrypt your information.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You still cannot use the private key unencrypted, though.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: You have to use the KMS API calls.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 25:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So the use case for an asymmetric key is to have encryptions outside of AWS by users who cannot directly call the KMS API for whatever reason.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Now, you have different types of KMS keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 27:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: The first type is a customer managed key, and this is a key you create directly in KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So you can create, manage, and use them.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You can enable, disable them.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: You can enable a rotation policy to rotate the key every year while the old key is still preserved, of course.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 31:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: And you can add a key policy, which is a resource policy for KMS keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And you can audit the key usage in CloudTrail.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 33:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: This is the kind of keys you will leverage for envelope encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, these are the kind of keys that you manage yourself, therefore, they're called customer managed keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But a second kind of key is the AWS managed keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 36:
- Concepts: Storage Data Protection
- Services: Amazon EBS, Amazon S3
- Key Insights: So, these ones are used exclusively by AWS services, such as AWS/S3, AWS/EBS, and so on.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this is what you see in the UI when you use the AWS managed keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, they are managed by AWS and they're automatically rotated every year.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Access Control Enforcement, Encryption Fundamentals, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: You can view the key policy and you can audit in CloudTrail, but you cannot leverage them for your own encryption operations.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And finally, you have AWS owned keys, and these are created and managed by AWS, used by some services to protect your resources, and they can be used across multiple AWS accounts, but they're not in your accounts.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: They're used by AWS internally.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And you cannot view, use, track or audit these keys.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 43:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But AWS tells you that these keys actually exist.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 44:
- Concepts: Key Management Lifecycle
- Services: AWS KMS
- Key Insights: Okay, so now if we want to have a summary of the different types of KMS keys, for the customer managed keys, you can manage metadata, you can view metadata, and you can manage it, and you can also use for your accounts, and you can have an automatic rotation every one year.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The AWS managed key can be used in your accounts, okay, but you cannot manage them, and they're required to be rotated every one year.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 46:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is automatic.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 47:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then the owned keys, you just know they exist, but you cannot use them or see them.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 48:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Okay, now how do you create a KMS key?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 49:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, you have what's called a key material origin.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 50:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And it cannot be changed after creation, so you have to define it at creation time.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 51:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So, you have the KMS, which is the AWS_KMS key material, which means that you are going to have KMS automatically create, generate, and manage the key in its own key store to see what happens when you go into KMS and start to create a key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 52:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But you have a second option called external.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 53:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: In that case, while you import the key material directly into the KMS key and you are responsible for securing and managing this key material outside of AWS, okay?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 54:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So, maybe you just want to create it outside and then import it into AWS KMS and then be done and delete it on your end.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 55:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Or you just want to keep a copy in KMS, and therefore you're responsible, obviously, for the copy outside of KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 56:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, the last option is to use a custom key store called AWS_CLOUDHSM, and this allows you to create the key material directly within your HSM cluster and manage the key material there.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 57:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: So, let's consider how it works when you have a custom key store which is backed by CloudHSM.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 58:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM, AWS KMS
- Key Insights: So you create your CloudHSM cluster as a custom key store, and there is a dart integration with KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 59:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: That means that when KMS creates key, well, the key materials are going to be stored in your HSM cluster that you own and manage.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 60:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That means that the keys live within your HSM cluster.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 61:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: They are only managed by KMS and used by KMS.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 62:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And all the cryptographic operations will be directly performed in the HSMs.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 63:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 64:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, this is the architecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 65:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM, AWS KMS
- Key Insights: You have your CloudHSM cluster with two AZs, and it is directly connected to KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 66:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So once you have at least two HSMs for high availability, then you can integrate with KMS, and then the users can still use the KMS API to view, create, and manage keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 67:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM, AWS KMS
- Key Insights: But behind the scenes, you know for sure that KMS will be using your CloudHSM cluster for all the cryptographic operations and for storing and retrieving these keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 68:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, why would you do this?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 69:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Well, the use case is that you need to have direct control over the HSMs for higher security, or for security requirements at least, or you have a requirement to store the KMS keys in a dedicated HSM environment.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 70:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Now, if you choose to have an external KMS key source, then you can bring your own key using your own key material, and you are really going to be responsible for the key material security, availability, and durability outside of AWS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 71:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, it must be a 256-bit symmetric key, so you cannot import asymmetric material for now, and it cannot be used with custom key store.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Cryptographic control signal.

Line 72:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It has to be used on its own.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 73:
- Concepts: Key Management Lifecycle
- Services: AWS KMS
- Key Insights: For this, if you want to have KMS key rotation, of course, because the key source is external, then you have to rotate it on your own.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 74:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So, automatic rotation is not supported.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 75:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, how does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 76:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Well, the user will create a KMS key in KMS and say that it's a symmetric type of key, and that the source is external.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 77:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, the key envelope is created, but the key material is not.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 78:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So, then you download the public key and an import token, and you're going to use the public key with your externally generated key material to create an encryption thanks to the public key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 79:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Now, this private key that has been encrypted can be sent back to the KMS service using also the import token.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 80:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And then KMS will use some decryption mechanism to get the key material and store it in your KMS key in there.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 81:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So, this is the process to import external keys in KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 82:
- Concepts: Cross-Account and Multi-Region Security
- Services: AWS KMS
- Key Insights: Okay, lastly, so you need to know about KMS multi-region keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 83:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it's possible for you to create a key, for example, in US East 1, and have it replicated across multiple regions.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 84:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, they will have the same key material and actually the same key ID, but they will be in different regions.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 85:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So, the use cases are amazing because thanks to this, well, you have the same key in multiple regions, and that means that you can encrypt in one region and decrypt in the other regions using the same KMS key ID.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 86:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, you don't need to re-encrypt data or make cross-region API calls.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 87:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So they will have the same key ID, the same key material, the same automatic rotation, and so on.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 88:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But these keys are not global keys, okay?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 89:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's this principle that there is a primary key in one region, and all the others are replicas.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 90:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Each key can be managed independently, and although you can only have one primary key at a time, it's possible for you to promote one replica into their own primary key.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 91:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So, the use cases for multi-region keys is going to be disaster recovery, global data management, for example, for DynamoDB global tables, active-active applications that span multiple regions, or distributing signing applications, and so on.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 92:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 93:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/aws-solutions-architect-professional/04_Security/024_CloudHSM.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: So now let's talk about CloudHSM.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 2:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And the best way to start is to talk about KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 3:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So when we have KMS, AWS manages the software for encryption and the encryption keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Encryption Fundamentals
- Services: AWS CloudHSM
- Key Insights: But with CloudHSM, AWS will only provision us the encryption hardware.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: It's going to be dedicated hardware and HSM stands for Hardware Security Module, hence the name CloudHSM.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And your responsibility is going to manage your own encryption keys entirely, not AWS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 7:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: The idea is that you are entirely responsible for the security, the maintenance, and the backup of these encryption keys, not AWS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the HSM device is going to be tamper resistant.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It has some kind of compliance, and so that means that if anyone on site tries to open up your HSM device, there's going to be a flip and it's going to be seen.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Certificate and TLS Security, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So it supports both symmetric and asymmetric encryption which is really helpful if you want to do something called TLS or SSL offloading.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And there's no free tier available.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: For you to use CloudHSM, you need to use the CloudHSM Client Software.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's not something that is done through API calls.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Encryption Fundamentals
- Services: AWS CloudHSM, AWS KMS
- Key Insights: And you have some integration with CloudHSM, for example, with Redshift that supports CloudHSM for database encryption and key management.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 15:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: AWS CloudHSM, Amazon S3
- Key Insights: So in case you want to use SSE-C type of encryption for your S3 objects, which is when you provide your own encryption key to S3 and then there will be server-side encryption happening, then a good way to generate that encryption key would be to use CloudHSM.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's a very common pattern.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's have a look at a diagram.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: AWS will manage the hardware for us, but then we will be provided with a CloudHSM device and it's dedicated to us and then that's all AWS does for us.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So if we lose the encryption keys, if we lose anything, AWS cannot recover the device for us.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's really our own responsibility, so use with caution.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: And to manage these keys and everything, you need to have CloudHSM clients which will access your CloudHSM device and you manage your keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 22:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: They will have encrypted connection between your CloudHSM clients and your CloudHSM device, of course, to encrypt and share a secure information.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But it's your responsibility to manage everything within your device.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: AWS cannot help you once it has provided you with the hardware you need.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: In terms of IAM permissions, therefore, the only thing AWS can do in terms of IAM is helping you create, describe, and delete your CloudHSM cluster.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: But anything within your CloudHSM cluster, it's your own responsibility.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: So using the CloudHSM software, you can manage the keys, that means create, read, update, delete keys, and also manage the users that have access to these keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's very similar to say a database where AWS will give you the database itself and you have to manage the users within it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: It's not exactly the case, not exactly similar as CloudHSM, but you get the idea.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You have to manage all the security within your device and AWS cannot help you with that.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 31:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: Okay, another very important thing is to set up CloudHSM with high availability.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 32:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: And for this, you need to create a CloudHSM cluster that will be spread across multiple AZ.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's going to be great to enhance one more time the availability, but also the durability of your data.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: So we have this very classic architecture where we have two AZ, two CloudHSM devices that are going to be paired up in a cluster and your CloudHSM clients.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the idea here is that if we lose one AZ, well, we'll still have access to the second AZ, and our data is safe, highly available, and durable.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But important to see it once to know that it's possible to do it, going into the exam, it can be very handy.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: So for CloudHSM, you have a single-tenant device.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Whereas for KMS, it's multi-tenant.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 39:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM, AWS KMS
- Key Insights: For Standard, both KMS and CloudHSM are FIPS 140-2 Level 3.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: In terms of the master keys, you have different kinds.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 41:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: On KMS, you have the AWS Owned Keys, the AWS Managed Keys, as well as the Customer Managed KMS Keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 42:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: Whereas on CloudHSM, you just have one thing.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's Customer Managed CMK.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 44:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, for the key type, well, you have similar ones.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 45:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: You have symmetric, asymmetric, digital signing, and CloudHSM gives you also hashing.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 46:
- Concepts: Cross-Account and Multi-Region Security
- Services: AWS KMS
- Key Insights: For key accessibility, KMS keys are scoped per region, although you can do KMS key replication.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 47:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: And CloudHSM, well, they're deployed and managed in specific VPC.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 48:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And they can be shared across different VPC by using VPC peering, for example.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 49:
- Concepts: Certificate and TLS Security
- Services: AWS CloudHSM
- Key Insights: CloudHSM has cryptographic acceleration for SSL and TLS and Oracle TDE.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 50:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM, AWS KMS
- Key Insights: In terms of access and authorization, KMS is using IAM, whereas CloudHSM is using their own users and you have to manage your own permissions from within the CloudHSM device itself.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 51:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: For high availability, well, this is embedded in the KMS service.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 52:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: But for CloudHSM, you need to have multiple HSM device over different availability zones.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 53:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For audit capability, you have CloudTrail and CloudWatch.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 54:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: But on top of it, CloudHSM has multifactor authentication support.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 55:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM, AWS KMS
- Key Insights: And finally, there's a free tier for KMS whereas there's no free tier for CloudHSM.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 56:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 57:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/169_[SAA_DVA_SOA] Encryption 101.txt

Line 1:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Okay, so in this lecture, if you're not too familiar with how encryption works, I want to give you a little bit of details on how it works at a high level.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 2:
- Concepts: Certificate and TLS Security, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So, first let's talk about encryption in flight, which is going to be referred as TLS or SSL.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 3:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: TLS is the newest version of SSL.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So what we have is that the data is going to be encrypted before sending the data.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then it will be decrypted after receiving it.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is for communication between a client and a server over a network.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And so what's going to be happening is that for encrypting the data TLS certificates are going to be used.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 8:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And this is what you see when you go onto websites and it says HTTPS, that means that the connection between you and the server is going to be encrypted using TLS certificates.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 9:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Why do we want encryption in flight?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, because we're sending data over a network and sometimes a public network and the data goes around many different servers.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We don't want to be having a man in the middle attacks where a middle server receives the data and just observes the packages we're sending to the server.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Certificate and TLS Security, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And so what we want to have HTTPS or TLS, or SSL, this is when we know that only the target server can decrypt the encrypted data we're sending.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal; Secret/certificate lifecycle signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We have a client and a server and we want to be able to securely login into the server by providing our username and password.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But we only want the target server to be able to receive it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 16:
- Concepts: Certificate and TLS Security, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So we're going to have the username and password and then we're going to apply TLS encryption on the client side automatically.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The data is going to be encrypted and sent over the network.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 18:
- Concepts: Certificate and TLS Security, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So as you can see, no between server can decrypt the data and only the target server can use the TLS decryption mechanism to decrypt that package and then see that we've sent the username and password.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal; Secret/certificate lifecycle signal.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And therefore say that we're securely logged in.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So that's for encryption in flight.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 21:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: The next one is around the server side encryption at rest.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The idea is that the data will be encrypted after being received by the server so that it's stored securely.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then it will be decrypted before being sent back to our clients.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It will be stored in an encrypted form thanks to a key, and that key is usually a data key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 25:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And so the whole idea of managing these keys for encryption and decryption is that the management must happen somewhere and the server must have access to these keys.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 26:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So let's take a service, for example, Amazon S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 27:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: (none explicit)
- Key Insights: We're sending an object over HTTP, maybe even HTTPS for inflight encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 28:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: And so the service receives our object, but it is decrypted.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 29:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: (none explicit)
- Key Insights: So the service can use a data key, and using the data key and the decrypted objects, we can have encryption of that object at rest.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 30:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: (none explicit)
- Key Insights: And then when it comes to sending back that object to the clients, the encrypted objects and the data key will be used together to decrypt.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 31:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: We'll have a decrypted form of object, and then that object will be sent over HTTPS back to the clients.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 32:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: So we received the decrypted object as is.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 33:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: As we can see in this case, there is a server side encryption because all the encryption and decryption happens on the server.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 34:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So finally let's talk about client-side encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that this time the data is encrypted and decrypted at the client side.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 36:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And the server should never be able to decrypt the data because we don't trust a server in that case.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 37:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So for this, we could leverage encryption for this mechanism.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's have an example.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: The client has an object and the data key this time is client side.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 40:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: (none explicit)
- Key Insights: And after encryption, we get an encrypted object.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 41:
- Concepts: Storage Data Protection
- Services: Amazon EBS, Amazon S3
- Key Insights: That encrypted object can be sent then securely to any storage service available, an FTP server, Amazon S3, EBS volumes, et cetera.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And they will be stored in encrypted form.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 43:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So the entire server can not even decrypt the data contents.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 44:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: When we retrieve the contents, we retrieve the encrypted object directly.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if we still have access to the data key client-site, then we're able to perform the decryption mechanism and get the decrypted objects back.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 46:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So that's it for the three encryption mechanisms we can see in the Cloud.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 47:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 48:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/170_CloudHSM.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: So now let's talk about CloudHSM.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 2:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And the best way to start is to talk about KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 3:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So when we have KMS, AWS manages the software for encryption and the encryption keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Encryption Fundamentals
- Services: AWS CloudHSM
- Key Insights: But with CloudHSM, AWS will only provision us the encryption hardware.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: It's going to be dedicated hardware and HSM stands for Hardware Security Module, hence the name CloudHSM.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And your responsibility is going to manage your own encryption keys entirely, not AWS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 7:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: The idea is that you are entirely responsible for the security, the maintenance, and the backup of these encryption keys, not AWS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the HSM device is going to be tamper resistant.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It has some kind of compliance, and so that means that if anyone on site tries to open up your HSM device, there's going to be a flip and it's going to be seen.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Certificate and TLS Security, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So it supports both symmetric and asymmetric encryption which is really helpful if you want to do something called TLS or SSL offloading.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And there's no free tier available.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: For you to use CloudHSM, you need to use the CloudHSM Client Software.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's not something that is done through API calls.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Encryption Fundamentals
- Services: AWS CloudHSM, AWS KMS
- Key Insights: And you have some integration with CloudHSM, for example, with Redshift that supports CloudHSM for database encryption and key management.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 15:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: AWS CloudHSM, Amazon S3
- Key Insights: So in case you want to use SSE-C type of encryption for your S3 objects, which is when you provide your own encryption key to S3 and then there will be server-side encryption happening, then a good way to generate that encryption key would be to use CloudHSM.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's a very common pattern.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's have a look at a diagram.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: AWS will manage the hardware for us, but then we will be provided with a CloudHSM device and it's dedicated to us and then that's all AWS does for us.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So if we lose the encryption keys, if we lose anything, AWS cannot recover the device for us.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's really our own responsibility, so use with caution.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: And to manage these keys and everything, you need to have CloudHSM clients which will access your CloudHSM device and you manage your keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 22:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: They will have encrypted connection between your CloudHSM clients and your CloudHSM device, of course, to encrypt and share a secure information.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But it's your responsibility to manage everything within your device.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: AWS cannot help you once it has provided you with the hardware you need.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: In terms of IAM permissions, therefore, the only thing AWS can do in terms of IAM is helping you create, describe, and delete your CloudHSM cluster.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: But anything within your CloudHSM cluster, it's your own responsibility.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 27:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: So using the CloudHSM software, you can manage the keys, that means create, read, update, delete keys, and also manage the users that have access to these keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's very similar to say a database where AWS will give you the database itself and you have to manage the users within it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: It's not exactly the case, not exactly similar as CloudHSM, but you get the idea.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You have to manage all the security within your device and AWS cannot help you with that.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 31:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: Okay, another very important thing is to set up CloudHSM with high availability.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 32:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: And for this, you need to create a CloudHSM cluster that will be spread across multiple AZ.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's going to be great to enhance one more time the availability, but also the durability of your data.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: So we have this very classic architecture where we have two AZ, two CloudHSM devices that are going to be paired up in a cluster and your CloudHSM clients.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the idea here is that if we lose one AZ, well, we'll still have access to the second AZ, and our data is safe, highly available, and durable.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But important to see it once to know that it's possible to do it, going into the exam, it can be very handy.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: So for CloudHSM, you have a single-tenant device.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Whereas for KMS, it's multi-tenant.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 39:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM, AWS KMS
- Key Insights: For Standard, both KMS and CloudHSM are FIPS 140-2 Level 3.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: In terms of the master keys, you have different kinds.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 41:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: On KMS, you have the AWS Owned Keys, the AWS Managed Keys, as well as the Customer Managed KMS Keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 42:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: Whereas on CloudHSM, you just have one thing.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's Customer Managed CMK.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 44:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, for the key type, well, you have similar ones.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 45:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: You have symmetric, asymmetric, digital signing, and CloudHSM gives you also hashing.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 46:
- Concepts: Cross-Account and Multi-Region Security
- Services: AWS KMS
- Key Insights: For key accessibility, KMS keys are scoped per region, although you can do KMS key replication.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 47:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: And CloudHSM, well, they're deployed and managed in specific VPC.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 48:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And they can be shared across different VPC by using VPC peering, for example.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 49:
- Concepts: Certificate and TLS Security
- Services: AWS CloudHSM
- Key Insights: CloudHSM has cryptographic acceleration for SSL and TLS and Oracle TDE.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 50:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM, AWS KMS
- Key Insights: In terms of access and authorization, KMS is using IAM, whereas CloudHSM is using their own users and you have to manage your own permissions from within the CloudHSM device itself.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 51:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: For high availability, well, this is embedded in the KMS service.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 52:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: But for CloudHSM, you need to have multiple HSM device over different availability zones.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 53:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For audit capability, you have CloudTrail and CloudWatch.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 54:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: But on top of it, CloudHSM has multifactor authentication support.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 55:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM, AWS KMS
- Key Insights: And finally, there's a free tier for KMS whereas there's no free tier for CloudHSM.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 56:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 57:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/171_CloudHSM - Advanced.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: So let's talk about some advanced features of CloudHSM.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 2:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: The first one is that you have integrations with AWS Services by basically going through KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM, AWS KMS
- Key Insights: So when you go through KMS, you configure a KMS Custom Key Store, and this Key Store is going to be backed by CloudHSM.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Storage Data Protection
- Services: AWS CloudHSM, Amazon EBS, Amazon RDS, Amazon S3
- Key Insights: And this is how the CloudHSM can be used by doing integrations, for example, with EBS volumes, or encrypting S3 objects, or RDS database, et cetera, et cetera.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: AWS KMS, Amazon RDS
- Key Insights: On top of it, you can also support RDS Oracle TDE through KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the diagram looks like this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: We create an HSM cluster, and we connect it to AWS KMS through a custom key store.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 8:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: AWS CloudHSM, AWS KMS, Amazon EBS, Amazon RDS
- Key Insights: And then whenever you want to integrate a key with RDS, for example, or an EBS volume, you just set up KMS encryption, and then automatically, your data will be encrypted with CloudHSM.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And the benefit of doing this is that any API calls made in KMS is going to be logged in CloudTrail.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: And because this key is backed by CloudHSM, we effectively have created a key usage log of CloudHSM through CloudTrail.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 11:
- Concepts: Certificate and TLS Security
- Services: AWS CloudHSM
- Key Insights: You also have integration with third-party services with CloudHSM, so you can create and store keys in CloudHSM, and then you can perform SSL or TLS offload, Windows Server Certificate Authority, Oracle TDE, Microsoft SignTool, Java Keytool, and so on.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: Another thing you need to know is how to share a CloudHSM cluster across accounts.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: You can actually share the private subnets your CloudHSM cluster resides in using RAM, but you cannot share the CloudHSM cluster itself.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So if you look at a diagram, this is what you have.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: You'll have a private subnet which contains your CloudHSM cluster, and then several accounts that want to access your CloudHSM cluster.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: What you'll do is that you share the subnets themselves within your organization, for example, or specific OUs or specific accounts.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: And then these accounts, because they have network connectivity into your subnets, because they can deploy stuff within your subnets, they will have access to your CloudHSM cluster.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then, of course, you need to make sure that your security groups allow traffic from clients that are in different accounts.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: But you cannot share a CloudHSM cluster using RAM, you must share the underlying subnet instead.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/172_KMS.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Okay, so now let's talk about AWS KMS, which is the Key Management Service.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 2:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So, anytime you hear encryption in AWS, you have to think about KMS, obviously.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 3:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And it's a way to easily control access to our data, and it also manages the encryption keys for us.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's fully integrated with IAM for authorization, and it has seamless integration into all the AWS services, pretty much.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Storage Data Protection
- Services: Amazon EBS, Amazon RDS, Amazon S3
- Key Insights: So, EBS, S3, Redshift, RDS, SSM, et cetera, et cetera.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: You should know and remember that KMS keys are regional and they can only be used in the region they're created in.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Cryptographic control signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And that can come up in the exam a lot.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So, in KMS you have two types of key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You have the symmetric keys and the asymmetric keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So, the symmetric keys were the first offering of KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 11:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: It's a single encryption key that will be used to encrypt and decrypt information.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And then all the services that are integrated with AWS KMS use symmetric KMS keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 13:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: It's necessary if you want to do envelope encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 14:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And you never actually get access to the KMS key itself unencrypted.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 15:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: You must just send data into KMS with a KMS API call to use it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, the asymmetric keys are new, and they can allow you to have two kind of public keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's a key pair, so it's a public Key and a private Key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 18:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: The public key will be used to encrypt, and the private key will be used to decrypt.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 19:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Now, this is very helpful when you want to have encrypt, decrypt or sign/verify operations.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And you can download the public key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That means that you can encrypt stuff from anywhere with a public key, and you can send the public key to people that you don't trust in untrusted environments.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 22:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: But once the data is encrypted with the public key, only the private key has the power to decrypt your information.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You still cannot use the private key unencrypted, though.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: You have to use the KMS API calls.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 25:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So the use case for an asymmetric key is to have encryptions outside of AWS by users who cannot directly call the KMS API for whatever reason.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Now, you have different types of KMS keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 27:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: The first type is a customer managed key, and this is a key you create directly in KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So you can create, manage, and use them.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You can enable, disable them.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: You can enable a rotation policy to rotate the key every year while the old key is still preserved, of course.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 31:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: And you can add a key policy, which is a resource policy for KMS keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And you can audit the key usage in CloudTrail.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 33:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: This is the kind of keys you will leverage for envelope encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, these are the kind of keys that you manage yourself, therefore, they're called customer managed keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But a second kind of key is the AWS managed keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 36:
- Concepts: Storage Data Protection
- Services: Amazon EBS, Amazon S3
- Key Insights: So, these ones are used exclusively by AWS services, such as AWS/S3, AWS/EBS, and so on.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this is what you see in the UI when you use the AWS managed keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, they are managed by AWS and they're automatically rotated every year.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Access Control Enforcement, Encryption Fundamentals, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: You can view the key policy and you can audit in CloudTrail, but you cannot leverage them for your own encryption operations.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And finally, you have AWS owned keys, and these are created and managed by AWS, used by some services to protect your resources, and they can be used across multiple AWS accounts, but they're not in your accounts.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: They're used by AWS internally.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And you cannot view, use, track or audit these keys.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 43:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But AWS tells you that these keys actually exist.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 44:
- Concepts: Key Management Lifecycle
- Services: AWS KMS
- Key Insights: Okay, so now if we want to have a summary of the different types of KMS keys, for the customer managed keys, you can manage metadata, you can view metadata, and you can manage it, and you can also use for your accounts, and you can have an automatic rotation every one year.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The AWS managed key can be used in your accounts, okay, but you cannot manage them, and they're required to be rotated every one year.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 46:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is automatic.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 47:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then the owned keys, you just know they exist, but you cannot use them or see them.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 48:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Okay, now how do you create a KMS key?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 49:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, you have what's called a key material origin.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 50:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And it cannot be changed after creation, so you have to define it at creation time.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 51:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So, you have the KMS, which is the AWS_KMS key material, which means that you are going to have KMS automatically create, generate, and manage the key in its own key store to see what happens when you go into KMS and start to create a key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 52:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But you have a second option called external.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 53:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: In that case, while you import the key material directly into the KMS key and you are responsible for securing and managing this key material outside of AWS, okay?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 54:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So, maybe you just want to create it outside and then import it into AWS KMS and then be done and delete it on your end.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 55:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Or you just want to keep a copy in KMS, and therefore you're responsible, obviously, for the copy outside of KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 56:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, the last option is to use a custom key store called AWS_CLOUDHSM, and this allows you to create the key material directly within your HSM cluster and manage the key material there.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 57:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: So, let's consider how it works when you have a custom key store which is backed by CloudHSM.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 58:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM, AWS KMS
- Key Insights: So you create your CloudHSM cluster as a custom key store, and there is a dart integration with KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 59:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: That means that when KMS creates key, well, the key materials are going to be stored in your HSM cluster that you own and manage.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 60:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That means that the keys live within your HSM cluster.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 61:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: They are only managed by KMS and used by KMS.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 62:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And all the cryptographic operations will be directly performed in the HSMs.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 63:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 64:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, this is the architecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 65:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM, AWS KMS
- Key Insights: You have your CloudHSM cluster with two AZs, and it is directly connected to KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 66:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So once you have at least two HSMs for high availability, then you can integrate with KMS, and then the users can still use the KMS API to view, create, and manage keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 67:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM, AWS KMS
- Key Insights: But behind the scenes, you know for sure that KMS will be using your CloudHSM cluster for all the cryptographic operations and for storing and retrieving these keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 68:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, why would you do this?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 69:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Well, the use case is that you need to have direct control over the HSMs for higher security, or for security requirements at least, or you have a requirement to store the KMS keys in a dedicated HSM environment.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 70:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Now, if you choose to have an external KMS key source, then you can bring your own key using your own key material, and you are really going to be responsible for the key material security, availability, and durability outside of AWS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 71:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, it must be a 256-bit symmetric key, so you cannot import asymmetric material for now, and it cannot be used with custom key store.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Cryptographic control signal.

Line 72:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It has to be used on its own.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 73:
- Concepts: Key Management Lifecycle
- Services: AWS KMS
- Key Insights: For this, if you want to have KMS key rotation, of course, because the key source is external, then you have to rotate it on your own.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 74:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So, automatic rotation is not supported.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 75:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, how does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 76:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Well, the user will create a KMS key in KMS and say that it's a symmetric type of key, and that the source is external.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 77:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now, the key envelope is created, but the key material is not.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 78:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So, then you download the public key and an import token, and you're going to use the public key with your externally generated key material to create an encryption thanks to the public key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 79:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Now, this private key that has been encrypted can be sent back to the KMS service using also the import token.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 80:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And then KMS will use some decryption mechanism to get the key material and store it in your KMS key in there.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 81:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So, this is the process to import external keys in KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 82:
- Concepts: Cross-Account and Multi-Region Security
- Services: AWS KMS
- Key Insights: Okay, lastly, so you need to know about KMS multi-region keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 83:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it's possible for you to create a key, for example, in US East 1, and have it replicated across multiple regions.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 84:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, they will have the same key material and actually the same key ID, but they will be in different regions.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 85:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So, the use cases are amazing because thanks to this, well, you have the same key in multiple regions, and that means that you can encrypt in one region and decrypt in the other regions using the same KMS key ID.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 86:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, you don't need to re-encrypt data or make cross-region API calls.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 87:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So they will have the same key ID, the same key material, the same automatic rotation, and so on.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 88:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But these keys are not global keys, okay?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 89:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's this principle that there is a primary key in one region, and all the others are replicas.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 90:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Each key can be managed independently, and although you can only have one primary key at a time, it's possible for you to promote one replica into their own primary key.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 91:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So, the use cases for multi-region keys is going to be disaster recovery, global data management, for example, for DynamoDB global tables, active-active applications that span multiple regions, or distributing signing applications, and so on.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 92:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 93:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/173_[SAA] KMS Multi Region Key.txt

Line 1:
- Concepts: Cross-Account and Multi-Region Security
- Services: AWS KMS
- Key Insights: So, now let's talk about KMS Multi-Region keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 2:
- Concepts: Cross-Account and Multi-Region Security
- Services: AWS KMS
- Key Insights: So, we have KMS and we can actually have a Multi-Region key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That means that you're going to have your primary key in one selected Region, such as for example, us-east-1.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then, that key is going to be replicated to other Regions.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For example, us-west-2, eu-west-1 and ap-southeast-2.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so the similarity is that the key material is going to be replicated.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The same key is going to be in other Regions.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the key ID is going to be the exact same.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So as you can see the key ID slash mrk and then whatever is the same across all Regions.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 10:
- Concepts: Cross-Account and Multi-Region Security
- Services: AWS KMS
- Key Insights: And this is the principle behind the KMS Multi-Region keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, what would you use them?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Well, it's a set of KMS keys that you can use in different AWS Regions and they can be used interchangeably.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 13:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So that means that you can encrypt in one Region and then decrypt in another Region.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 14:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And Multi-Region keys they're possible because they have the same key ID, the same key material.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 15:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: And if you have automatic rotation enabled for the primary key, and it actually rotates it's going to be also replicated to the other Regions.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 16:
- Concepts: Cross-Account and Multi-Region Security, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So the idea with that, with the Multi-Region key, you can encrypt in one Region and decrypt in another Region, and you don't need therefore to re-encrypt your data when moving from one Region to the next; or to make cross Region API calls.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 17:
- Concepts: Cross-Account and Multi-Region Security
- Services: AWS KMS
- Key Insights: So something to understand though is that KMS Multi-Region keys are not global.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You have your Primary and your Replicas.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Access Control Enforcement, Cross-Account and Multi-Region Security, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: And each Multi-Region key is going to be managed independently with its own key policy and so on.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 21:
- Concepts: Cross-Account and Multi-Region Security
- Services: AWS KMS
- Key Insights: So it's not recommended to use Multi-Region key, except in very specific use cases because KMS likes to have the fact that a key is bounded to a single Region.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 22:
- Concepts: Cross-Account and Multi-Region Security, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And so the use cases for using Multi-Region keys is if you want to have a global client-side encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 23:
- Concepts: Encryption Fundamentals
- Services: Amazon RDS
- Key Insights: So to be able to encrypt client-side in one Region and to decrypt client-side in another Region. or to do encryption on Global DynamoDB tables or on Global Aurora.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we'll see this in a second.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Cross-Account and Multi-Region Security, Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So how does it work when you use Global Tables in DynamoDB and KMS Multi-Region key with client side encryption?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 26:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So the idea is that you want to encrypt not just the whole table because this is just at risk encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You want to encrypt actual attributes on your table.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so that they're only available to specific clients.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Not even to database administrators.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: For this we're going to use the Amazon DynamoDB Encryption Clients.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example where we have us-east-1 and ap-southeast-2.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 32:
- Concepts: Cross-Account and Multi-Region Security
- Services: AWS KMS
- Key Insights: So the KMS service is having a Multi-Region key which is replicated to another Region.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The Region ap-southeast-2.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the client application wants to insert data into a DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So first is going to encrypt the attribute that it needs to be encrypted with the primary Multi-Region key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 36:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that the DynamoDB table, most of the fields will not be encrypted client-side.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But then one of them, for example the Social Security number is going to be encrypted.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 39:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So this is great because well, your database administrators that have accessed your DynamoDB table, if they don't have access to the KMS key that we used to encrypt that one attribute, the Social Security number.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then they will not be able to access it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it gives you a protection even against the database administrators.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So if this DynamoDB table happens to be a Global Table then this data is going to be replicated to another Region.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so this is now in ap-southeast-2.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 44:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And thankfully we've decided to encrypt our data, the attributes, with a Multi-Region key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 45:
- Concepts: Cross-Account and Multi-Region Security, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And therefore, a client's application in the ap-southeast-2 Region can retrieve the row, see that one attribute is encrypted and then perform an API call to actually decrypt the attribute with the replica Multi-Region key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 46:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And this is why we are doing Multi-Region key this instance.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 47:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: Is it so that client applications in the ap-southeast-2 can do a local API call to KMS to decrypt that one attribute.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 48:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So using this client-side encryption technique we can protect specific fields or attributes on our data and only guarantee decryption when our client has access to an API key.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 49:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And thanks to Global Tables we can make sure the data and the encryption keys are also replicated together.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 50:
- Concepts: Data Security Operational Context
- Services: Amazon RDS
- Key Insights: So the same concept can be applied to Global Aurora.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 51:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I will go a bit faster.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 52:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And this time we're going to use the AWS Encryption SDK.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 53:
- Concepts: Cross-Account and Multi-Region Security
- Services: AWS KMS
- Key Insights: So we have two Regions and we have a Multi-Region key in KMS replicated across these two Regions.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 54:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so the client application wants to encrypt a column yet to get it is my SSN column.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 55:
- Concepts: Data Security Operational Context
- Services: Amazon RDS
- Key Insights: And this time we put the data into an Amazon Aurora database with a table.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 56:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And so all the data is unencrypted on this one row, except that one column, which is the SSN, which is encrypted actually with the, mrk, the Multi-Region key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 57:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now this is a Global Database.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 58:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that means that the tables are going to be replicated globally.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 59:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And therefore the same data is going to happen to be in the ap-southeast-2.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 60:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And because we have clients in the ap-southeast-2 they're going to get this encrypted data from your table.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 61:
- Concepts: Cross-Account and Multi-Region Security, Encryption Fundamentals
- Services: AWS KMS
- Key Insights: And because we are using a Multi-Region key they can do a local API call to KMS to decrypt this attribute.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 62:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And therefore we have achieved lower latency.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 63:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So we've seen that using client-side encryption, we can also protect this data even from database administrators.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 64:
- Concepts: Data Security Operational Context
- Services: Amazon RDS
- Key Insights: So if you have a database admin that accesses your Amazon Aurora database and wants to access that one column, the Social Security number.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 65:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Unless they have access to the KMS key they will not be able to read this data which is very helpful.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 66:
- Concepts: Cross-Account and Multi-Region Security
- Services: AWS KMS
- Key Insights: So that's it for KMS Multi-Region keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 67:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 68:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/174_[DVA] KMS Envelope Encryption.txt

Line 1:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So now let's do a deep dive into how KMS really works for the encrypt and decrypt APIs as well as for envelope encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 2:
- Concepts: Secrets Management
- Services: AWS KMS
- Key Insights: So what we did is that we had a secret, for example, a password, and it was less than four kilobytes, because this is a limit for KMS, and we sent it into the KMS service.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal; Secret/certificate lifecycle signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So we use the encrypt API using an SDK or the CLI, and then we specified the CMK we wanted to use in KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And then KMS was checking with IAM if we had the right permissions.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 5:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And if we did, then it would perform encryption for us.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 6:
- Concepts: Secrets Management
- Services: AWS KMS
- Key Insights: What KMS will send us back would be the entirely encrypted secret.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that will be the encrypted data.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 8:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Then we need to decrypt it.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 9:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So we use the CLI or the SDK to do a decrypt API.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 10:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: And then we would, KMS would automatically actually, understand which CMK was used for encryption and look at it for performing decryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It would first check with IAM to make sure that we have the correct permissions to perform the decryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 12:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: And if we do, then it would send us via decrypted secret in plain-text.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 13:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So this is the encrypt and the decrypt API and these are pretty easy.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 14:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So as we can see though there is a problem, we are limited by the size of the secret to four kilobytes.
- Hidden/Implicit Meaning: Constraint or limitation signal; Secret/certificate lifecycle signal.

Line 15:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So for this we have a loop encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So if you want to encrypt over four kilobytes, then there's this technique where you encrypt using an envelope.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the main API you have to remember for us to encrypt a large number, large amount of data is to use the GenerateDataKey API.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 18:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So from an exam perspective, if you want it to just stop here in this lecture, anything over four kilobytes of data has to be encrypted using the envelope encryption technique, which corresponds to the KMS GeneratDataKey API.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now I want you to go over the exam.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I want to explain to you how this API works and I think this could be valuable, but rest assured this is a little bit difficult.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So if you don't follow, don't worry too much.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So we're going to go into envelope encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 23:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So we have the KMS service, and this time we want to encrypt a very big file.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Maybe it is up to 10 megabytes, but it could be as big as you want, really.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So we're going to use the SDK, and call the GenerateDataKey API, and we'll specify a CMK, and so KMS will check again the IAM permission, making sure we can generate a data key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And if we can, then KMS will generate this data key for us, and will send us back a plain-text version of it.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 27:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So we have a plain-text data key encryption, data ecryption key, which is DEK.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 28:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So now we have this data encryption key, but why do we have it?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, because now we can do something client side.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We can encrypt the big file client side using our own CPU with this DEK.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this gives us an encrypted file.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then, actually, we're going to build an envelope around it, which is the final file.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we will build an envelope and what do we put in this envelope?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Then we'll put an encrypted version of the DEK, and actually KMS will also send us this.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So when we call the GenerateDataKey API, it sends us both the plain-text DEK and the encrypted DEK.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 36:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so we store these two things into one final file.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 37:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And this is why it's called envelope encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Because there is a wrapper around your encrypted file with the encrypted DEK.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 39:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So as we can see in this example, from KMS the only thing we got was an encryption key, a data key and a data key that was encrypted.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 40:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And all the work for the encryption of that file happened client side.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 41:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So now how do we decrypt that envelope?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So to do so we come back from this envelope file, which contains the encrypted DEK and the encrypted file.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 43:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And we're going to leverage KMS obviously one more time.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 44:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So this time we're going to call the decrypt API.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 45:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So with a decrypt API we can only pass up to four kilobytes of data.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 46:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So what we're going to decrypt in this instance is going to be the data encryption key, so the DEK.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 47:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So I'll pass through KMS, we'll check the IAM permissions.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 48:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: And if everything is good with KMS, we're able to decrypt that DEK.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 49:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now we get the plain-text DEK.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 50:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And with this plain-text DEK, we can look at the encrypted file and the plain-text DEK and decrypt it together, client side.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 51:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And here we go, we have a decrypted big file.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 52:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So the whole purpose of this envelope encryption technique is to use KMS for what it's good at, which is to generate keys, and then the whole encryption and decryption happens client side.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 53:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So this is complicated to implement, and so as such, AWS has implemented envelope encryption for us.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 54:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And for this we can leverage the AWS encryption SDK.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 55:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this also exists as a CLI tool that we can install.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 56:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And there are SDK implementation for Java, Python, C and JavaScript.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 57:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And so on top of implementing this encryption pattern that I just showed you, this encryption SDK has a feature called data key caching.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 58:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: So in this example, instead of recreating a new data key every time we want to encrypt an object, we can reuse them instead.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 59:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And so the idea with reusing data keys is that you have less calls into KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 60:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So you are doing less API calls and it's less expensive.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 61:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: But there is a security trade-off because now you're using the same data key encryption, data encryption key for many different files.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 62:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it's a trade-off between your security and your API calls.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 63:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But in practice this is still used.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 64:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So if you're using data key caching, then you would use something called a LocalCryptoMaterialsCache, which has a long name, to indicate how big the cache of this data key should be.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 65:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And it could be that you define the max age of your key, the max number of bytes that it should encrypt, or the max number of messages that should be encrypted by this DEK before moving on to the next DEK.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 66:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So this encryption SDK is extremely helpful.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 67:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now from an exam perspective, what do we need to remember?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 68:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We need to remember the name of the symmetric APIs.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 69:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So the first one is encrypt, to encrypt up to four kilobytes of data through KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 70:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The second one is GenerateDataKey, and this will generate a unique symmetric data key or DEK, and this API will do two things, it will return to us a plain-text copy of the data key and it will return to us an encrypted version of the data key with the CMK that we specify.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 71:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And this is what we've used during the envelope encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 72:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: There's another API called GenerateDataKeyWithoutPlaintext and this time it's to generate again a GEK, but not to use right now, it's to use at some point in the future.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 73:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so as such, this DEK is the same, it's also encrypted using this CMK we specify, but if you use it, we must decrypted afterwards, which is one extra step.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 74:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So the exam will try to trick you to perform envelope encryption right now, you need to use GenerateDataKey API not GenerateDataKeyWithoutPlaintext.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 75:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And then to decrypt anything, you need to use the decrypt API.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 76:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So to decrypt up to four kilobytes of data, including an envelope encryption to decrypt the data key, the data encryption key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 77:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And finally, if you want it to generate a random number, then you have the API called GenerateRandom that will return a random byte string.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 78:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 79:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope that was helpful to you and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/175_[SOA] KMS Key Rotation.txt

Line 1:
- Concepts: Key Management Lifecycle
- Services: AWS KMS
- Key Insights: So let's talk about KMS key rotation.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 2:
- Concepts: Key Management Lifecycle
- Services: AWS KMS
- Key Insights: So first of all, you can have automatic rotation for any KMS keys that is managed by AWS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: They are automatically rotated every one year.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Key Management Lifecycle
- Services: AWS KMS
- Key Insights: If you have your own customer-managed symmetric KMS key, then you can enable automatic key rotation, but this is optional.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 5:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: And then you need to set the rotation period any time between 90 and 2,560 days.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But by default, it is also one year.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Encryption Fundamentals, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: And when you enable the key rotation, of course the previous key is kept active so you can decrypt all data.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: The new key will have the same KMS key ID, so only the backing key is changed.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: For example, here is the backing key, and we have a KMS key ID.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 10:
- Concepts: Key Management Lifecycle
- Services: AWS KMS
- Key Insights: We're going to have automatic key rotation, and the backing key is changing, but the KMS key ID is not changing.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And behind the scenes, well now, you have the current backing key and also the saved backing key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 12:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So on top of automatic key rotation, we have on-demand key rotation.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So this is for your customer managed symmetric KMS keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So not for the CMK that are managed by AWS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: And this does not require automatic key rotation to be enabled.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 16:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: It also does not change any existing automatic rotation schedule.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 17:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: And you have a limit to how many times you can trigger an on-demand key rotation.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 18:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So same idea, you have a backing key, you're going to trigger an on-demand key rotation, and then at the end, you're going to get a new backing key and a saved backing key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 19:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: But the KMS key ID will not have changed.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 20:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: Next, we have manual key rotation.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is very much an edge case now, I would say.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: This is when you want to rotate key, for example, every month, and this is not supported by KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then you have to create a new key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And the new key will have a different KMS key ID.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 25:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And you're going to have to keep the previous key active so you can decrypt your old data.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: In this case, to have your application function seamlessly, it's better to use aliases to hide the change of key for the application.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 27:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So it's a good solution to rotate KMS keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 28:
- Concepts: Key Management Lifecycle
- Services: AWS KMS
- Key Insights: For keys that are not eligible for automatic rotation, for example, the asymmetric KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how does it work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Well, let's say our client is talking to a KMS key ID, and it has an alias called MyCustomKey.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we're going to rotate the key manually.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 32:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So that means we're going to create a new key that's going to have a new KMS key ID, and we're going to update the alias so that now, my custom key is pointing into that key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the previous key is still going to be kept.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 34:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: And so therefore, we'll have performed a manual key rotation because our application is going to seamlessly talk to the new key while having the old one preserved for any kind of decryption and operation.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how does it work to update the alias?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, you update the alias to hide, again, the change to your application.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So your application only interacts from an API perspective with your key alias, MyAppKey.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 38:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: And then the old key of the key alias is the one you had before rotation.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 39:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: And after rotation, you're going to create a new key, and you're going to issue an UpdateAlias API call.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this added alias will have the alias point to the new key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And therefore, from an application perspective, the change will not be detected, it will just be transparent, okay?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So what you need to remember from an exam perspective is that if you want to have automatic key rotation, the period is one year.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 43:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: But if you want to have manual key rotation, then you can go to 90 days or 180 days based on the requirements.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 44:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And all the extra information I gave you is just to show you how this would work in real life, but the exam will not test you on the details as far as I know, okay?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 46:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/176_KMS Key Deletion.txt

Line 1:
- Concepts: Key Management Lifecycle
- Services: AWS KMS
- Key Insights: Now let's talk about KMS key deletion.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 2:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So you can delete the generated keys, they are keys created from within KMS in which case these keys, when you create them, they have no expiration dates and you cannot immediately delete them.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Instead, you need to delete and then they will have a seven to 30 days waiting period for your key to be deleted.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Encryption Fundamentals, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: During this waiting period, you can cancel the key deletion at any time and during the waiting period if you try to use the KMS key for encrypt or decrypt operation, you're going to get a failure.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: At the end of the waiting period, everything is going to be deleted, so the KMS key and the key material.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Instead of deleting the key, you may choose to disable it as well and when you disable it, it just happens immediately but you can re-enable the key later on.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: If you have imported keys from outside the KMS, then you may set an expiration period on the key so that automatically it will expire.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Then if you do do that then KMS will delete the key material or if you choose to do so you can delete the key material on demand.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: What's going to happen is that even if you delete the key material, then the metadata is going to be kept and you can reimport the key material in the future.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You may also choose to disable the key entirely and schedule for deletion, which is going to delete both the key metadata and the key material.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Finally, for the AWS managed keys or the AWS owned keys, they cannot be deleted.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how can we detect if a key being deleted is actually being used?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 13:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: Well, with a combination of CloudTrail, CloudWatch Logs, CloudWatch Alarms and SNS, you can be notified when there is someone tries to use a KMS key that's in the pending deletion state for any cryptographic operations such as encrypt or decrypt.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: How does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Well, we have a KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 16:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: It's pending deletion, and then a user will try to do encrypt or decrypt.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Of course, this API call will not work because we are in the pending deletion state, but this API call is still going to be logged by CloudTrail.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then it will be denied in CloudTrail, and we can from CloudTrail send all the API calls to CloudWatch Logs where we can set up a metric filter to look for is pending deletion.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then this will transform into a CloudWatch Alarm and this CloudWatch Alarm, if it has a positive value, can send an alert into an Amazon SNS topic.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So there's another way to get notifications of keys being deleted or disabled, this is to use CloudTrail and EventBridge.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the use case is a little bit different.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Key Management Lifecycle
- Services: AWS KMS
- Key Insights: This time, we want to know whenever a user is going to do the API call to either disable a key or schedule a key deletion because this may be very bad actions if then KMS cannot be used and if they're not done properly.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Cryptographic control signal.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So whenever we are doing such an API call through CloudTrail integration we have an event of that API call in Amazon EventBridge.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 24:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So we will trigger, for example an SNS topic to send an email to administrator, or if we wanted to completely disable this we may want to revert the disabled key operation or the schedule key deletion operation.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 25:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: Thanks to systems manager automation, you should run a AWS config remediation, cancel key deletion so that's the key is back to normal.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: This is when you know that you're for sure never want to delete any KMS keys.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 27:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Now, in case of a KMS multi region key, how does that work?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, first you need to delete the replica keys which is less risky because it can always be recreated from the primary key and you must also, for these keys, schedule your deletions so seven to 30 day waiting period.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then when this waiting period is over, then you can delete the primary key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the primary key can only be deleted if all the replicas have been deleted.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then if you prefer to delete the primary but keep a replica, what you must do first is to take one of these replicas and then you're going to promote it as primary, and then you delete the old primary.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And again, deleting the primary key must be scheduled and takes, again, seven to 30 days so if you delete first replicas and then you delete the primary key, you have a minimum waiting period of 14 days in total.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/177_KMS Key Policies Deep Dive.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So now let's talk about KMS Key Policies in depth.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 2:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: So KMS Key Policies allow us to control access to KMS keys and they are very similar to S3 bucket policies.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 3:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: The difference is that if you don't set up an S3 bucket policy, you can still access your S3 bucket.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 4:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: But if you don't set up a KMS key policy, you cannot access your KMS key.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So you must create one.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: So when you go through the console and you create a KMS key, the console makes it very easy on you and it will create by default a KMS key policy called the Default KMS Key Policy, and this is going to give access to any user in your accounts.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it gives the root user, but that means your entire account.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And, of course, that doesn't mean that anyone can access the key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That means they must still have the proper IAM permissions to get access to the key.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But this just delegates the administration of these rights to IAM.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: If you create a Custom Key Policy, then you can define directly here the users, the roles that can access the KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You can also define who can administer the key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And this is extremely helpful when you have cross-account access of your KMS key, and you want to define who in the targeted accounts can access your key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 14:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: So if we look at the Default KMS Key Policy, it looks like this.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 15:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: It says "Allow", "kms:*", "Resource": "*", and the principal is the root user of your account.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: But it actually gives the account itself full access to the KMS key, but it does not give permission to the account or any of the users.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: You still must use IAM policies to access the KMS key.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Hopefully that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So if we have a look at KMS key policies, we have the Owned Key, the AWS Managed Keys, and the AWS Customer Managed Keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 20:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So for the AWS Owned Keys, we cannot view and we cannot change the Key Policy because it's owned by AWS.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 21:
- Concepts: Access Control Enforcement, Key Management Lifecycle, Storage Data Protection
- Services: Amazon EBS
- Key Insights: For the AWS Managed Keys, for example, when you see a key, aws/ebs, you can view the Key Policy but you cannot change the Key Policy.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: If you were able to change it, then you could break the way AWS is working for you.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Access Control Enforcement, Key Management Lifecycle, Storage Data Protection
- Services: Amazon EBS
- Key Insights: And so this is what the key policy looks like for the AWS EBS key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 24:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So, as you can see, the first part of this allows you to do encrypt, decrypt for any service within your accounts.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then the last one is to allow metadata access within the accounts with "Describe", "Get*".
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: So this is not something you have to remember, but it's an interesting KMS Key Policy to look at just for practice.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And for your AWS Customer Managed Key, you can, of course, view your Key Policies and you can edit them so you have full control.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 28:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: So, if we have a look at Custom KMS Key Policy, this one allows administrators.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 29:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So these key administrators will have the permission to manage the KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 30:
- Concepts: Access Control Enforcement
- Services: AWS KMS
- Key Insights: And in this instance of this policy, we can look at the principal part and we see that we have a user called KMSAdminUser and a role named KMSAdminRole, which both have access to pretty much many API calls on the KMS key to administrate.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 31:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: But as you can see, encrypt and decrypt are not there.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that makes it a key administrator but not a key user.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That's the difference.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And you can add any kind of IAM users or roles as key administrators.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then you also have users of the key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 36:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: So this is what the policy would look like.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You can define a user, a role, or, again, a target account if you wanted to have cross-accounts.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And here the actions you would look at, for example.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: You would look at the encrypt, decrypt, re-encrypt, generate data key, and describe key type of API calls.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, here we have authorized ExampleUser and ExampleRole.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 41:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: And because they've been explicitly outlined in the KMS Key Policy, then they are authorized to use this key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 42:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: They don't need an IAM policy to do so.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: The alternative, of course, is to use the Default KMS Key that we saw before, and then define IAM permissions from within IAM so that your users and your roles may be able to use the keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 44:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Hopefully that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/178_KMS Grants.txt

Line 1:
- Concepts: Key Management Lifecycle
- Services: AWS KMS
- Key Insights: So let's talk about a concept that you may not be familiar with called the KMS key grants.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 2:
- Concepts: Key Management Lifecycle
- Services: AWS KMS
- Key Insights: So KMS key grants allow you to grant access to specific KMS keys that you own to other accounts or IAM users or roles within your accounts.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 3:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: So you may say, well, why don't you use a KMS key policy?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, there is a reason.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's often used for temporary permissions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Encryption Fundamentals, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So you can be creating a grant for a variety of operations such as encrypt, decrypt, sign, verify, as well as even creating more grants.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 7:
- Concepts: Key Management Lifecycle
- Services: AWS KMS
- Key Insights: So these grants are for one KMS key only and one or more IAM Principal.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 8:
- Concepts: Key Management Lifecycle
- Services: AWS KMS
- Key Insights: So you say, hey, I grant this KMS key to these three users.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 9:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: And once granted, a principle can perform any operation as specified in the grant.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 10:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: So it's like your key permissions are definitely ruled by your KMS key policy and also any KMS key grant you may have defined on top.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 11:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: These grants that do not expire automatically, you must delete them manually.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 12:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: But the benefit of using a grant is that you do not need to change your KMS key policy or the IAM policy, you just define the grant and you're good to go.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 13:
- Concepts: Key Management Lifecycle
- Services: AWS KMS
- Key Insights: So how do you go about creating a KMS key grant while you use the CLI for this?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this is the kind of CLI command you need to use.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Don't remember it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 16:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: But as you can see, the key grant is applying to a specific key ID.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then we define a grantee principle.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So who can use it?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: What is the operations that are allowed as part of this grant?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then what are the constraints?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 21:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So after you're done using a key grant, you must delete it so that, of course, people don't have lingering permissions.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 22:
- Concepts: Key Management Lifecycle
- Services: AWS KMS
- Key Insights: For now, as far as I know, there's no support of KMS key grants in the console, so API calls only.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 23:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So why do we have key grants in the first place where it seems like it's kind of duplicating the role of, well, key policies?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 24:
- Concepts: Key Management Lifecycle
- Services: AWS KMS
- Key Insights: Well, it turns out that AWS is using key grants all the time and you may have seen grants sometimes in your KMS key policies.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So why?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Key Management Lifecycle
- Services: AWS KMS
- Key Insights: Well, we grant AWS services the right to use the KMS key to encrypt your own data at rest.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 27:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: And so the service that will use the key will create a grant on behalf of a user, and then it will leverage your permissions and retire the grant as soon as that is complete.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 28:
- Concepts: Key Management Lifecycle
- Services: AWS KMS
- Key Insights: So this is how services are allowed to use your KMS key is because you create a grant behind the scene and your service has the right to use your key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 29:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So to allow a service to use your KMS key, you must have the CreateGrant IAM permissions.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 30:
- Concepts: Encryption Fundamentals, Key Management Lifecycle, Storage Data Protection
- Services: Amazon EBS
- Key Insights: So when you start at EC2 instance and its Route EBS volume is encrypted, behind the scenes what's going to happen is that Amazon EBS is going to create a grant, and then thanks to this grant, is going to be able to decrypt the Root EBS volume and to encrypt it as well.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 31:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So this is the behind the scene usage of KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 32:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: So let's have a look at a custom KMS key policy.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So if we look at it, we have CreateGrant, ListGrants and RevokeGrant.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that is granted to a user.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 35:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: And this user has a condition, it can do only these API calls if you grant an AWS resource true.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 36:
- Concepts: Encryption Fundamentals, Key Management Lifecycle, Storage Data Protection
- Services: AWS KMS, Amazon EBS
- Key Insights: So that means that the user can create a grant only for an AWS service, therefore allowing a service such as Amazon EBS or Amazon EC2 to do encryption, for example, to attach an encrypted EBS volume to an EC2 instance, or Redshift to launch an encrypted cluster, or any service that integrates with KMS and that uses grants to create, manage, or encrypt resources within.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So hopefully, that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon EBS
- Key Insights: So if you have an EC2 instance and it has an encrypted EBS volume and you cannot start it, the reason that that it may fail is, number one, while the KMS key might be disabled or deleted, second, the EBS service might not have the permission required to use the KMS key.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 39:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So the resolution is, of course, make sure the KMS key exists.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 40:
- Concepts: Key Management Lifecycle, Storage Data Protection
- Services: AWS KMS, Amazon EBS
- Key Insights: And number two, make sure the EBS service has the required permission to create KMS key grants on top on behalf of the specified principle.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is the kind of permission we'd be looking at.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Encryption Fundamentals, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: And then this condition, kms:GrantIsForAWSResource, will allow the services to get these grants and to perform their encryption operations.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 43:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So hopefully that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 44:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/179_KMS Condition Keys.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So while using KMS, we get access to a few condition keys and the first one is kms:ViaService.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 2:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So kms:ViaService ensures that your KMS key is going to be only used by the specified AWS service.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 3:
- Concepts: Key Management Lifecycle, Storage Data Protection
- Services: AWS KMS, Amazon EBS, Amazon RDS
- Key Insights: So here if I create a key, and I said the action is for the user to create a grant, and KMS is via service EC2 or RDS, that means that this user can only use this key through Amazon EC2, so EBS volumes or RDS to encrypt RDS databases.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it's very helpful to limit scope and to make sure a key cannot be used outside of certain services.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 5:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So the IAM user, of course, then must be authorized to use the key to grant it to the AWS service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this is something you'll see when you have AWS-managed key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You will find this via service condition in them.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Access Control Enforcement, Key Management Lifecycle, Storage Data Protection
- Services: AWS KMS, Amazon EBS
- Key Insights: So have a look at, for example, the KMS key policy of AWS/EBS and you will find something similar.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: The second thing is kms:CallerAccount.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So you can allow or deny access to all identities, IAM users, and roles in specific accounts.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: So this is an example for the KMS key policy.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Here we have principal star for AWS, which means everything within AWS as long as the condition came as CallerAccount corresponds to your account ID of your key meaning that anything within this account can use this key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So these two condition keys can come up at the exam.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it's good for you to have seen them once.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you like this lecture and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/180_KMS Key Policies Evaluation Process.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this lecture is going to be a little bit complicated, can be quite heavy.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It almost seems very complicated.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You don't have to remember everything.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You just need to remember the main idea behind it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Just a little disclaimer because this next diagram can be a little intense.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: But I want to show you the KMS Key Authorization Process, how is a KMS Key usage evaluated for yes or no.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So get ready.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: First, the theory, then a few examples.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: So we start and we look at whether or not there's a DENY statement in the KMS Key Policy or anywhere.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: If there is, this is the same as anywhere in AWS, the request is just going to be denied.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: If no, then we look at whether or not the SCP of your organization ALLOW the access.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Again, if it doesn't, DENY.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Or if it doesn't exist, it's going to be ignored.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Access Control Enforcement
- Services: AWS KMS
- Key Insights: Then is there a VPC Endpoint Policy that allows access to KMS?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 15:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So if you're accessing the KMS service privately.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Again, no, DENY.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Yes, move on.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And, of course, if it doesn't exist, you just pass that step.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Next, we are go into the KMS specific stuff.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 20:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So is the Key Policy allowing the caller to perform the action?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 21:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: No, then we look at a Grant.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 22:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So remember, we have the Key Policy.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 23:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: But even if the Key Policy doesn't contain things, a Grant may still allow the caller to perform the action.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 24:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: And then we look at the Key Policy.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then we look at whether or not, so before it was authorizing the caller itself, so the user or the AIM role directly.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: But then we look at the Key Policy and we say, "Well, do we allow the accounts to use IAM policies to control Key access?" which is the default KMS Key Policy that we saw before.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So here, we would delegate access to IAM.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 28:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: If it doesn't exist, we look at whether there's a Grant that allows the caller's accounts to use IAM policies to control Key access.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if it doesn't exist, no.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Access Control Enforcement
- Services: AWS KMS
- Key Insights: But if we do have the default KMS Policy, for example, then we look at IAM.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And is IAM allowing the action, yes or no?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 32:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: Then, of course, if we have a Grant allowing this, again we look at IAM.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then we look at whether or not the Key is in the same account as the caller.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 34:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So because we have cross account concerns.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: If it is in the same accounts, we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And again, we can draw this yes lines from the two from before.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 37:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: But if the Key is not in the same accounts as the caller, then we look at whether or not there was a Grant created by the caller's accounts to allow the caller's action to perform the action.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: If yes, we're good.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: If not, we look at the IAM Policy in the cross accounts, and then we are good.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is a complicated schema, but hopefully, because I've covered all the concepts of these before, you should feel somewhat familiar with it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But I wouldn't blame you if you don't remember this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: Again, just remember the concepts of Grants, Key Policies, Default Key Policies that would delegate actions to IAM.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 43:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And for cross account access, I'll have a simplified slide in the next lecture, so don't worry too much.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 44:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So, okay, just remember Key, Key Grants, IAM Policies, SCPs, and VPC Endpoint Policies are included.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's take this example.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 46:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: We have the default KMS Key Policy to grant access to an accounts.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 47:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And Alice makes API calls within the same accounts.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 48:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So here, we have all this path that could be relevant and so we go one by one for all the steps.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 49:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Those the same boxes have just been reordered.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 50:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: First is you categorize it for the use authorization and then the Key trust.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 51:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So is there a denying statement?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 52:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: No.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 53:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: Then is the Key Policy allowing the action for the caller?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 54:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: No, because we use the default KMS Key Policy.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 55:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So there's no Key Policy, there's no Grant.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 56:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: Then we use the Key Policy and it's the Default Key Policy.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 57:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Therefore, yes, this one is a box for yes.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 58:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: Then we look at the IAM Policy and is Alice having the proper IAM permissions?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 59:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, yes or no?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 60:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: If it doesn't have it, then it's gonna be denied.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 61:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But if it has it, then you go into the Key trust, it's in the same account, and it would be allowed.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 62:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So hopefully this path makes sense.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 63:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's the most common one you see when you use AWS.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 64:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's take a look at another example.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 65:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: This time is for cross account access.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 66:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's look at the Key Authorization Process.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 67:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: So we have a KMS Key Policy in Account 2 that allows for all the Principals in Accounts 1.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 68:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: And then because it's cross accounts, we must make sure we have also an IAM Policy in Account 1 authorizing things.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 69:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's go through this diagram again.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 70:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Is there a DENY statement?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 71:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: No.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 72:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: Is the Key Policy allowing the caller to perform the action?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 73:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: No, because we authorize an entire accounts.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 74:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So no Key Policy, no Grants.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 75:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then we have this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 76:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: Does the Key Policy allow the caller's accounts to use IAM policy to control Key access?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 77:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Yes.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 78:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we are going in here.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 79:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: And then does the IAM Policy ALLOW the caller to perform the action?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 80:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The answer is yes.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 81:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Is the same Key in the same account as well as the caller?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 82:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: No, because we're doing cross accounts.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 83:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: Is there a Grant?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 84:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: No, there is no Grants.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 85:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: So then we look at the IAM Policy of the caller to perform the action.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 86:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: And if the caller has the proper policy in this account, then, yes, we're good to go and we have an ALLOW.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 87:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 88:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Hopefully that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 89:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 90:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/181_KMS Key Cross-Account Access.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So let's have a look at now cross-account access for your KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 2:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So let's say we have an account, it has a KMS key, and we have another account with IAM users or IAM roles and they want to access our KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 3:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: So we have to create a KMS key policy on the account A.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, underneath the principle, we authorize route of account 123456, which is the accounts B.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And by route, we mean the entire account itself.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Key Management Lifecycle
- Services: AWS KMS
- Key Insights: So this grants access to account B for this KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: But now, of course, you still have access to your KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Accounts B has to have its own security mechanism.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Access Control Enforcement, Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So your IAM user or your IAM role will have an attached policy, and this policy should have all the KMS APIs needed such as encrypt, decrypt, and so on.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And the resource should be the KMS key ARN of the accounts A.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 11:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Then we can encrypt and decrypt files.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it's very simple.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That makes sense.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It's similar to what we've seen for many cross-account stuff.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: Now, what if you want to allow not the users to just encrypt and decrypt but the services of the cross-account to access our KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Bit more complicated.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 17:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon EBS
- Key Insights: So this time, we want, for example, to have an EBS volume that's going to be encrypted with a KMS key belonging in another account.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it's similar.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: We need to have a KMS key policy, but this time, if you notice it's a little bit bigger because we have the grants.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 20:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we have CreateGrants, ListGrants and RevokedGrants.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: Well, these grants are necessary because they allow us to pass permissions to an annual service to use this key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 23:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So thanks to these grants.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 24:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: Then in the IAM policy of the IAM user and role, we need to also have the matching conditions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Encryption Fundamentals, Key Management Lifecycle, Storage Data Protection
- Services: Amazon EBS
- Key Insights: So CreateGrants, ListGrants and RevokedGrants, But thank these grants, for example, in the IAM user, we can create a grant internally in the backend for the EBS service to encrypt and decrypt volumes.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 26:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: And that's the magic of grants right here.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 27:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So let's think of a last way to use a KMS key in a cross-account manner.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That's through assuming an IAM role.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So let's say account A has a KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 30:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: Well, we just have a very simple KMS key policy, that's a default KMS key policy, allowing anything within the same account to access the key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 31:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: And let's say we create an IAM role that has the proper IAM role policy to access this one key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Perfect.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then, of course, the role can access the key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is not a cross-accounts type of setting, but, of course, this role can be assumed by user in another accounts.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: So there can be a trust policy.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And then the IAM user can access the KMS key of accounts A by assuming this IAM role.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So we've really seen like the different ways that it's possible for us to do cross-account access for KMS keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 38:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS, Amazon RDS
- Key Insights: And so when you're sharing a KMS encrypted RDS DB snapshots across accounts, you make sure that you first share the KMS key associated with the target accounts using a key policy.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 39:
- Concepts: Storage Data Protection
- Services: Amazon RDS
- Key Insights: So we have account A in RDS snapshot that's encrypted with your key A.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 40:
- Concepts: Access Control Enforcement
- Services: (none explicit)
- Key Insights: And then we're going to attach a policy again that I just showed you before that allows access to the targets accounts to this key, so we can share the encrypted snapshots.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 41:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: It can be then accessed and then decrypted and will have the DB instance that could be running from a snapshot in another accounts.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/182_KMS Asymmetric Encryption.txt

Line 1:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So now let's talk about asymmetric encryption and how it relates to KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 2:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So we know that we have symmetric encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 3:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: That's when we use the same key to encrypt and decrypt.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: But asymmetric encryption is a little bit different because now we have what's called a key pair.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 5:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And this key pair we've seen before when we were doing for example, SSH, we have a public key and a private key to encrypt and decrypt data.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And it turns out that this public key, it can be shared.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is something you see, for example, with SSH.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 8:
- Concepts: Certificate and TLS Security, Secrets Management
- Services: (none explicit)
- Key Insights: When we want to trust a specific key, we use the public key or when we want to verify SSL certificates, when we go on the website, again, the public key is shared but the private key is always kept secret as its name indicates.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal; Secret/certificate lifecycle signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how does it work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: What's the process?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, let's say Bob creates a private key and a public key and he wants to communicate with Alice securely.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: What is Bob going to do?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, Bob is going to send the public key to Alice and this is a safe operation because the public key is public.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Alice is going to take a file and is going to encrypt it using the public key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 15:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So now the file is encrypted using this public key and it turns out that this public key cannot decrypt the file.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The only thing the public key can do is encrypt it.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That's why it's called asymmetric.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this file encrypted will be sent to Bob and Bob will receive it.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 19:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And the only way for Bob to decrypt this file is to use the private key and then the file is decrypted.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 20:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And this is why it's called asymmetric encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 21:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So KMS supports three types of asymmetric KMS keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 22:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: We have the RSA KMS keys for encryption and decryption or signing verification.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 23:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: We have the ECC KMS keys for signing and verification.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 24:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: We have the SM2 KMS key, that's for China only, to do signing and verification or encryption and decryption.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You don't have to remember the details but just so you know, just general knowledge.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 26:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: The private keys, when you create a KMS asymmetric key, they never leave AWS KMS unencrypted so you don't have access to it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 27:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Now, how do we do digital signing with KMS asymmetric?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, digital signing will help you verify the integrity of messages or files sent across systems.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So what it means by verify the integrity?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, we want to make sure that the file has not been tamped with in transit, so no one has included bad data or modified it for whatever reason.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, the public key is used to verify the signature while the private key is used in the signing process.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Well, we have KMS and KMS has a private key and it has a public key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 35:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And with our application and we want to securely send a file, but of course, we cannot send this entire file into KMS, that would be too much.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 36:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Remember, KMS cannot encrypt a lot of data.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But what we can do is that we can create a digest of our file.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is a hashing mechanism, which takes the file and returns a very long string that is kind of like the fingerprint of our file.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So this digest is small enough to be sent to KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 40:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So we'll use the sign API call in KMS to do a digest signing, and then when we get back from it is a signature and this signature is sent back to our application.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so the file itself, and the signature, are sent to another application the application B, which takes the file, computes the digest on its own to verify whether or not the digest is the same.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then we use the verify API call.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: We pass in the signature we had from before and the digest and KMS will say whether or not the file has been tempered with or not.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 44:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: If the digest and the signature are equivalent, then we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the use cases for this is document, E-signing, secure messaging, authentication and authorizations token, trusted source code, E-commerce transactions, and so on.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 46:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 47:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/183_KMS API Calls Limits and Data Key Caching.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So here is a short lecture on KMS API calls limits, and data key caching.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 2:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So when your application is making API calls to KMS, you have a service limit that you can hit.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And KMS is an expensive service.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So there's a number of requests per second limit and if you use KMS too much, you will be throttled.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how can you go around it?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Well, number one, you can increase this service limit, of course, but number two, you can do data key caching and data key caching is to reuse the data keys that you've created out of KMS to protect your data.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 7:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So instead of generating a new key every time, you are going to reuse the data key for encryption operations.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's turn and understand a use case.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we have a user, we're using something that already has the data key catching mechanism implemented but we could write it ourselves.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 10:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: But the AWS encryption SDK has this for us.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 11:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: The user makes one API call into KMS to get a data key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it's a generate data key API call and we're going to cache it.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That means we're going to keep it for a while so we can encrypt several files with it.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 14:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And then we can also use it to decrypt the files that were encrypted with the same data key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 15:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So instead of doing three or four API calls to KMS, we are doing one API call because we're reusing the data key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So the goal of this, of course, is to, for example, reduce latency because we don't do API calls to KMS all the time.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: We improve the throughput, we reduce the cost because we call KMS less and less and we stay within service limits.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 18:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So this is implemented in some SDK, such as the AWS encryption SDK.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But using this data key caching has a trade off, of course.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 20:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: It's discouraged to use it too much because, well, the whole principle behind encryption is the unicity of data keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is definitely a trade off of cost versus security but an option you need to know about.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you like this lecture and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/184_KMS Encryption Context.txt

Line 1:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So now let's talk about KMS Encryption Context.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 2:
- Concepts: Encryption Fundamentals, Secrets Management
- Services: AWS KMS
- Key Insights: So these are optional non-secret key value pairs that contain additional information about the data and KMS will use this Encryption Context as Additional Authenticated Data.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 3:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So anytime you see AAD in the exam, think KMS Encryption Context.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So the idea is that now instead of just encrypting a file with a KMS Key, you're going to add Encryption Context.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And say for example, that this file is for the department 10103.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the reason why we do so is that now the same context must be provided during the decryption.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 7:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Even if you're using the same encryption key, it's not enough.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 8:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: You must also provide the Encryption Context back.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, you must provide again that it was for department 10103.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is helpful to verify the integrity and the authenticity of the encrypted data.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 11:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And it's also helpful to prevent any applications bug, because now if you have something wrong in your application and you haven't updated the encryption context, then the decryption is going to fail and you know something is wrong in the way you've been handling the encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 12:
- Concepts: Encryption Fundamentals, Secrets Management
- Services: (none explicit)
- Key Insights: So this is not to store secret, it's not an additional security on top of encryption, it's not encrypted data.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 13:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So anyone can read the data, it's outside of your encryption file, but it's a really good way to contextualize your encryption data.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So do not store sensitive information on it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: From an exam perspective, this must be re-used to provide additional authenticated data within KMS service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: All right, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/185_KMS with EBS.txt

Line 1:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon EBS
- Key Insights: So let's have a deeper look at the integration between KMS and EBS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 2:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: AWS KMS, Amazon EBS
- Key Insights: So you cannot change the encryption keys used by an EBS volume, but you can create a snapshot and you create a new EBS volume and then you can specify a new KMS key.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 3:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: So the process is we create a snapshot, and then we create a new volume, and this is when the key is going to change.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon EBS
- Key Insights: So we can also automate cross-account EBS KMS-encrypted snapshot copies.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This was very complicated to say.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon EBS
- Key Insights: So we have account A and we have an EBS snapshot in here encrypted with the KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 7:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: What's going to do is that we're going to share this with a target accounts, and we need to make sure from an IAM permissions perspective that we have anything for grants, okay?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Because we're going to share this and it's going to be used by a service.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So then once this is done, we can copy to us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it's going to be to the new account.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So it's going to be decrypted by the first KMS key and it's going to be re-encrypt by the second KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 12:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: The KMS key policy in the target accounts is a bit special.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 13:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So you'll have this one, and we're saying, "Hey, we allow to create grants for both these keys, for AWS resources." That's the left part of this slide.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 14:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: And on the right-hand side, we're saying, "Hey, we can encrypt, decrypt, re-encrypt using the first data key, the first KMS key in the first account, and the second KMS key in the second account." So it should make sense by now, but I would like to repeat myself just to make things very clear.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 15:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon EBS
- Key Insights: So also for EBS encryption, there's an account level setting so that you make sure that every single EBS volume is going to be encrypted.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So if you enable this volume, but if you don't, of course, they're not encrypted by default.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So you need to enable this on the per-region setting.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon EBS
- Key Insights: You go to your EC2 Console, Settings and then you have EBS encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 19:
- Concepts: Storage Data Protection
- Services: Amazon EBS
- Key Insights: And here you can define a default EBS key to encrypt your volumes with.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 20:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon EBS
- Key Insights: So that's it for what you need to know between EBS and KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 21:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/186_EFS Encryption.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon EFS
- Key Insights: So here is a short lecture on how to encrypt an EFS file system that is unencrypted to start with.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 2:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon EFS
- Key Insights: So there's no option to just turn on encryption for your EFS file system.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 3:
- Concepts: Storage Data Protection
- Services: Amazon EFS
- Key Insights: What you must do instead is that you create a new EFS file system and then you will migrate the files and their permissions using AWS DataSync.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Storage Data Protection
- Services: Amazon EFS
- Key Insights: So to summarize, we have an unencrypted EFS file system and then we create an encrypted EFS file system that at first is empty, and then we'll use AWS DataSync to migrate from one to the other.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: When we're ready, then our applications can switch over from the unencrypted file system to the encrypted file system, and that's the process.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/187_KMS with ABAC.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So just something that can come up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 2:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: It's around attribute-based access control, so ABAC with KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So with this, you control access to your KMS keys, not based on IAM policies and so on, but based on tags and aliases.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Access Control Enforcement, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Well, a user will have an IAM policy, but we say that we can access any key for decrypt, encrypt and so on as long as the resource tag on that key is environment prod, meaning we have access to all the prod keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And in this KMS key, we'll just have a tag environment equals prod.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And this way our user will have allowed access into this KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is one way to have security at scale and one example that can come up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this was a very short lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/AWS Speciality/Security/07_Domain 5 - Data Protection/188_KMS with Parameter Store.txt

Line 1:
- Concepts: Secrets Management
- Services: AWS KMS, SSM Parameter Store
- Key Insights: Another very short lecture on how KMS is integrated with the SSM parameter store.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 2:
- Concepts: Encryption Fundamentals, Secrets Management
- Services: AWS KMS, SSM Parameter Store
- Key Insights: So we know we can use KMS keys to actually encrypt and decrypt the parameters in the parameter store of type secure string.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 3:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So here we pass in the parameter value.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 4:
- Concepts: Secrets Management
- Services: AWS KMS, SSM Parameter Store
- Key Insights: For example, the API Key, and the SSM parameter store will automatically call the KMS service to encrypt it and get back the encrypted value of that parameter.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 5:
- Concepts: Secrets Management
- Services: SSM Parameter Store
- Key Insights: Now, there are two types of secure string parameters in the SSM parameter store.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The first one is the standard.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Encryption Fundamentals, Secrets Management
- Services: AWS KMS
- Key Insights: And so all these parameters will be encrypted using the same KMS keys, but if you're using the advanced type of parameter, they can actually be bigger than what KMS allows for encryption.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 8:
- Concepts: Encryption Fundamentals, Secrets Management
- Services: (none explicit)
- Key Insights: And so therefore, each parameter is going to be encrypted thanks to encryption envelope.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 9:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So using a unique data key, and this is the concept of encryption for advanced type of parameters.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So to encrypt it, we simply specify the KMS key we wants, if it's a custom one, or we can use the AWS-managed key, the AWS SSM key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 11:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: It only works for symmetric KMS keys and all the encryption will happen within KMS.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 12:
- Concepts: Secrets Management
- Services: AWS KMS, SSM Parameter Store
- Key Insights: So to make sure that we can access a parameter in the parameter store that has been KMS encrypted, we must have access to both the KMS key and the SSM parameter from an IAM perspective.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal; Secret/certificate lifecycle signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/07_EC2 Instance Storage/065_EBS Encryption.txt

Line 1:
- Concepts: Storage Data Protection
- Services: Amazon EBS
- Key Insights: All right, finally, let's talk about the last operation, which is how do you encrypt an EBS volume?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 2:
- Concepts: Storage Data Protection
- Services: Amazon EBS
- Key Insights: So, when you created and encrypted EBS volume, right away you get the following, you get data at rest being encrypted inside your volume, all the data in flight between the instance and the volume is encrypted, all the snapshots will be encrypted, and all the volumes created from the snapshots are encrypted.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 3:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So, there's encryption all around the place, and the all encryption and decryption mechanism is handled transparently for you.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, you have nothing to do.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Storage Data Protection
- Services: Amazon EBS
- Key Insights: It's all handled by EC2 and EBS behind the scenes.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So, encryption overall, something you should use because it has a very, very minimal impact on latency, almost nothing, and it leverages keys from KMS, so AES-256, that's something that you should know.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 7:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: (none explicit)
- Key Insights: And so, when you copy an unencrypted snapshot, then you enable encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 8:
- Concepts: Storage Data Protection
- Services: Amazon EBS
- Key Insights: So, let's talk about a very important thing, which is how do you encrypt an unencrypted EBS volumes.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 9:
- Concepts: Storage Data Protection
- Services: Amazon EBS
- Key Insights: So, to encrypt an unencrypted EBS volumes, which is a very tough thing to say, you create an EBS snapshot of the volume.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 10:
- Concepts: Storage Data Protection
- Services: Amazon EBS
- Key Insights: Then you encrypt the EBS snapshot using the copy function.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 11:
- Concepts: Storage Data Protection
- Services: Amazon EBS
- Key Insights: Then we create a new EBS volume from the snapshots and that volume will also be encrypted, and now we can attach the encrypted volume to the original instance.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, let's go have a look at how we do this in the console.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon EBS
- Key Insights: Okay, so let's explore the different options with EBS volumes and encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 14:
- Concepts: Storage Data Protection
- Services: Amazon EBS
- Key Insights: So, let's create a one gigabytes EBS volume, and this one will not be encrypted.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 15:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So, I will leave this setting unchecked, and, therefore, when I create my volume and have a look at it, if we look at the state of encryption, it says not encrypted.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 16:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: (none explicit)
- Key Insights: Okay, so what's happening is that if we do take to create a snapshot from this volume, as we can see the encryption setting will be set to not encrypted.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 17:
- Concepts: Storage Data Protection
- Services: Amazon EBS
- Key Insights: So, any snapshots encrypted from a non-encrypted EBS volume, will be not encrypted.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, let's go ahead and create this snapshots, and let's go ahead to the snapshots page.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: And so, this snapshot, as we observe is not encrypted.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 20:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: (none explicit)
- Key Insights: And so, to create an encrypted snapshot, now, what you have to do is to do action and then create copy snapshot, excuse me, and when you copy the snapshots, you have the option right here to enable encryption into the same destination region.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 21:
- Concepts: Storage Data Protection
- Services: AWS KMS
- Key Insights: So, now, this snapshot is going to be encrypted and you can select the KMS key, right here.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, we'll copy this snapshots and we're good.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Next, what I have to do is from this encrypted snapshots that is now completed I can create a volume.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 24:
- Concepts: Storage Data Protection
- Services: Amazon EBS
- Key Insights: And if I do action, create volume from snapshots, as we can see, we can create a one gigabyte EBS volume.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: (none explicit)
- Key Insights: And here encryption is enabled for this volume because my underlying snapshot is encrypted.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 26:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And, therefore, if I click on create volume, and have a look at my volumes on the left hand side, this one who was created from a snapshots is now available and it says encryption, encrypted.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, that's good.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 28:
- Concepts: Storage Data Protection
- Services: Amazon EBS
- Key Insights: We saw how we can encrypt one EBS volume this way, by going through a snapshot copying and so on.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: There's a shortcut.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon EBS
- Key Insights: So, if you take your unencrypted snapshot, so this one is not encrypted, so if you take this snapshot and then you do action, create volumes from snapshot, zero shortcuts, you can actually on the fly enable encryption for the EBS volume directly from here, select an EBS key, and you would create an encrypted EBS volume this way through a unencrypted snapshots.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's say you've seen all the options.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Just to be finished make sure to delete your snapshots by typing deletes and then you would do the exact same thing on your volumes.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 33:
- Concepts: Storage Data Protection
- Services: Amazon EBS
- Key Insights: Just delete these EBS volumes.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/296_Encryption 101.txt

Line 1:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Okay, so in this lecture, if you're not too familiar with how encryption works, I want to give you a little bit of details on how it works at a high level.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 2:
- Concepts: Certificate and TLS Security, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So, first let's talk about encryption in flight, which is going to be referred as TLS or SSL.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 3:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: TLS is the newest version of SSL.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So what we have is that the data is going to be encrypted before sending the data.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then it will be decrypted after receiving it.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is for communication between a client and a server over a network.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And so what's going to be happening is that for encrypting the data TLS certificates are going to be used.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 8:
- Concepts: Certificate and TLS Security
- Services: (none explicit)
- Key Insights: And this is what you see when you go onto websites and it says HTTPS, that means that the connection between you and the server is going to be encrypted using TLS certificates.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 9:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: Why do we want encryption in flight?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, because we're sending data over a network and sometimes a public network and the data goes around many different servers.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We don't want to be having a man in the middle attacks where a middle server receives the data and just observes the packages we're sending to the server.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Certificate and TLS Security, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And so what we want to have HTTPS or TLS, or SSL, this is when we know that only the target server can decrypt the encrypted data we're sending.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal; Secret/certificate lifecycle signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We have a client and a server and we want to be able to securely login into the server by providing our username and password.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But we only want the target server to be able to receive it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 16:
- Concepts: Certificate and TLS Security, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So we're going to have the username and password and then we're going to apply TLS encryption on the client side automatically.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The data is going to be encrypted and sent over the network.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 18:
- Concepts: Certificate and TLS Security, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So as you can see, no between server can decrypt the data and only the target server can use the TLS decryption mechanism to decrypt that package and then see that we've sent the username and password.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal; Secret/certificate lifecycle signal.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And therefore say that we're securely logged in.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So that's for encryption in flight.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 21:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: The next one is around the server side encryption at rest.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 22:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The idea is that the data will be encrypted after being received by the server so that it's stored securely.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 23:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then it will be decrypted before being sent back to our clients.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It will be stored in an encrypted form thanks to a key, and that key is usually a data key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 25:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And so the whole idea of managing these keys for encryption and decryption is that the management must happen somewhere and the server must have access to these keys.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 26:
- Concepts: Storage Data Protection
- Services: Amazon S3
- Key Insights: So let's take a service, for example, Amazon S3.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 27:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: (none explicit)
- Key Insights: We're sending an object over HTTP, maybe even HTTPS for inflight encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 28:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: And so the service receives our object, but it is decrypted.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 29:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: (none explicit)
- Key Insights: So the service can use a data key, and using the data key and the decrypted objects, we can have encryption of that object at rest.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 30:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: (none explicit)
- Key Insights: And then when it comes to sending back that object to the clients, the encrypted objects and the data key will be used together to decrypt.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 31:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: We'll have a decrypted form of object, and then that object will be sent over HTTPS back to the clients.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 32:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: So we received the decrypted object as is.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 33:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: As we can see in this case, there is a server side encryption because all the encryption and decryption happens on the server.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 34:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So finally let's talk about client-side encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that this time the data is encrypted and decrypted at the client side.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 36:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And the server should never be able to decrypt the data because we don't trust a server in that case.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 37:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So for this, we could leverage encryption for this mechanism.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's have an example.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: The client has an object and the data key this time is client side.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 40:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: (none explicit)
- Key Insights: And after encryption, we get an encrypted object.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 41:
- Concepts: Storage Data Protection
- Services: Amazon EBS, Amazon S3
- Key Insights: That encrypted object can be sent then securely to any storage service available, an FTP server, Amazon S3, EBS volumes, et cetera.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And they will be stored in encrypted form.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 43:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So the entire server can not even decrypt the data contents.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 44:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: When we retrieve the contents, we retrieve the encrypted object directly.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if we still have access to the data key client-site, then we're able to perform the decryption mechanism and get the decrypted objects back.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 46:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So that's it for the three encryption mechanisms we can see in the Cloud.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 47:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 48:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/297_KMS Overview.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So now let's talk about AWS KMS, which is a key management service of AWS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 2:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So we've been using it a lot without knowing, but anytime you hear encryption when you have an AWS service, it's most likely going to be KMS encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 3:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: The aim is that with this KMS service, AWS is going to manage the encryption keys for us.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And that's great, because that means that we have less things to do.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So KMS is, of course, fully integrated with IAM for authorization, and it gives us very easy ways to control access to our data if it's encrypted with KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: The power of using AWS KMS is that you're able to audit every single API call made to use your keys through CloudTrail, which is something the exam may test you on.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So on top of it, KMS can be used seamlessly into most AWS services.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 8:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon EBS
- Key Insights: So for example, if you wanted to encrypt the data at rest in an EBS volume, just enable the KMS integration.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 9:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon RDS, Amazon S3
- Key Insights: Same for S3, same for RDS, same for SSM, and same for pretty much all the services that require encryption.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: The idea is that with KMS, you can also use it yourself.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if you have secrets data, you never ever store them in plain text, that means just as is.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Secret/certificate lifecycle signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Especially in your code.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 13:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So if you want to use KMS, you can also use KMS through API calls.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You can use the AWS CLI or the SDK.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Secrets Management
- Services: AWS KMS
- Key Insights: And that means that you can encrypt whatever is a secret for you with a KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then these encrypted secrets can be, for example, stored in your code or in environment variables.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That is a much better pattern.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 18:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So now let's talk about the different types of KMS keys available to you.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 19:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So now it's called a KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 20:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: By the way, it used to be called the KMS customer master key, but it was confusing because there's also the customer managed keys as we'll see in a second.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 21:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So now, we just talk about KMS keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 22:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So we have two types of KMS keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 23:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: We have the symmetric KMS keys, and that means there's only one single encrypted key that is used to encrypt and decrypt data.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And so any service of AWS that is integrated with KMS will use symmetric keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 25:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: The idea is that when we create or use a KMS symmetric key, then we never get access to the key itself, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: All we do is that we use the KMS API calls to leverage and use that key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 27:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: The second kind of key available on KMS are called asymmetric keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That means that you have two keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 29:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: You have a public key that's used to encrypt data, and a private key used to decrypt data.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 30:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So this is used when you have encrypt/decrypt, or sign/verify type of operations.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 31:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And in that case, you can download the public key out of KMS, but you can use access the private key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You can only use API calls against to access the private key.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 33:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So the use cases for an asymmetric type of key is when you want the encryption to be done outside of your AWS cloud by users who cannot or don't have access to the KMS API key.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: In which case they will use the public key to encrypt the data.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 35:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Send it over to you.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 36:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And you within your account, you would use the private key of AWS to decrypt that data.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So within the world of KMS keys, you have different types of KMS keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The first one are AWS owned keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 39:
- Concepts: Encryption Fundamentals, Storage Data Protection
- Services: Amazon S3
- Key Insights: They're free, and this is the kind of key you would use when you use SSE-S3 type of encryption, or SSC DynamoDB, where you have the option, for example, that you choose a key owned by DynamoDB.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 40:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So these are not really KMS because you don't really see them, but they're types of encryption keys within AWS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then you have the AWS managed keys, and they're free, and you will recognize them because they start with AWS slash and then the service name.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 42:
- Concepts: Storage Data Protection
- Services: Amazon EBS, Amazon RDS
- Key Insights: For example, AWS/RDS or AWS/EBS, or in this example, AWS/DynamoDB.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: They're free and you can just use them as you please, but only from within the service that it's assigned to.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 44:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then you have your own customer managed keys and their custom keys, and they cost you $1 per month.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 45:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if you want to import them as well, you can import them, and they cost you $1 per month.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 46:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: KMS also has a pricing where you're going to pay for each API call made to the KMS service, which is about 3 cents per 10,000 API calls.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 47:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: You also have automatic key rotation.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 48:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So if it's an AWS managed KMS key, then it's automatic every one year.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 49:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: And if it's a customer managed key, you can enable automatic rotation and you set the period, and you can also have on-demand rotation of your key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 50:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And if it's imported KMS key, then you can only manually rotate it.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 51:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And for this, you need to leverage an alias.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 52:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So KMS keys are scoped per region.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 53:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon EBS
- Key Insights: That means that if you have an EBS volume encrypted with KMS key in a region, for example, EUS2, then if you want to copy that to a different region, we have to do several steps.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 54:
- Concepts: Storage Data Protection
- Services: Amazon EBS
- Key Insights: First of all, we have to take a snapshot of this EBS volume.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 55:
- Concepts: Storage Data Protection
- Services: AWS KMS
- Key Insights: And if we take a snapshot from an encrypted snapshot, then this snapshot itself will also be encrypted with the same KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 56:
- Concepts: Storage Data Protection
- Services: AWS KMS
- Key Insights: Then to copy the snapshot to another region, we need to re-encrypt the snapshot using a different KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 57:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this is something AWS will do for you.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 58:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: But the same KMS key cannot live in two regions.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 59:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon EBS
- Key Insights: So now we have an EBS snapshot, it's encrypted with KMS with a different key, and it lives in another region.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 60:
- Concepts: Storage Data Protection
- Services: AWS KMS, Amazon EBS
- Key Insights: Now, we restore the snapshot into its own EBS volume with KMS, and it's KMS key B into the region AP southeast two.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 61:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Now, the other thing we need to know about is KMS key policies.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 62:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So this is to control access to your KMS keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 63:
- Concepts: Access Control Enforcement, Storage Data Protection
- Services: Amazon S3
- Key Insights: It's similar to an S3 bucket policy.
- Hidden/Implicit Meaning: Storage access-hardening signal.

Line 64:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: With a difference that if you don't have the KMS key policy on your KMS key, then no one can access it.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 65:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So in that regards, we have two types of KMS key policies.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 66:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: We have the default one, and it's created if you don't provide a specific custom KMS key policy.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 67:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that the default allows everyone in your account to access this key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 68:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: That means that if you have an IAM policy allowing a user or role to access this key policy, you're good.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 69:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: But if you want to have more specific controls over it, you could use a KMS key policy that is custom.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 70:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: In which you define the users, the roles that can access your KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 71:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And you define who can administer the key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 72:
- Concepts: Cross-Account and Multi-Region Security
- Services: AWS KMS
- Key Insights: And this is especially helpful if you want to do cross account access for your KMS key, because we can authorize another account to use our KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 73:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So when do we use this?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 74:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Well, for example, if we wanted to copy an encrypted snapshots across accounts.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 75:
- Concepts: Storage Data Protection
- Services: AWS KMS
- Key Insights: So we create a snapshot encrypted with our own KMS key, and it's a customer managed key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 76:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: It must be that because we need to attach a custom key policy.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 77:
- Concepts: Access Control Enforcement, Cross-Account and Multi-Region Security, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: And then we attach a KMS key policy to authorize for cross account access.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 78:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It looks like this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 79:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: Then we share the encrypted snapshot with the target account.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 80:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: And then in the target account, we create a copy of the snapshot and we encrypt it with a different customer managed key in that target account.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 81:
- Concepts: Storage Data Protection
- Services: (none explicit)
- Key Insights: And then we can create a volume from the snapshot in the target account, and we're done.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 82:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So that's a lot of information by KMS, but let's go into hands-on to hopefully learn a bit more about it.
- Hidden/Implicit Meaning: Cryptographic control signal.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/298_KMS Hands On w_ CLI.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So let's have a look at the KMS service.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 2:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And first on the left hand side, I wanna look at the AWS managed keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 3:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: You can see if I've been using KMS encryption throughout this course, then these keys will appear right here.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Storage Data Protection
- Services: Amazon EBS
- Key Insights: So we can look for example at the AWS EBS, and this is an Else managed key because it belongs to the EBS service.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we can have a look here, how it's being used.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So there is a key policy, and this complex policy defines what can access this key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 7:
- Concepts: Storage Data Protection
- Services: Amazon EBS
- Key Insights: And of course, because this is an EBS AWS key, then you will look at all the actions, so it can come from anywhere, do some kind of actions.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 8:
- Concepts: Storage Data Protection
- Services: Amazon EBS
- Key Insights: But the condition is that the caller accounts has to be mine and the Via Service has to be the EC2 service, which is a service above the EBS service, okay?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 9:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: If I looked for example, at another AWS managed key, for example, the SQS one, and look at the key policy, here the Via Service as a condition to my KMS key policy is the SQS service, therefore allowing only access from SQS to this key.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 10:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: We can also look at the cryptographic configuration, which show that this key is symmetric of origin KMS and it's used to encrypt and decrypt data.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So that's for the KMS managed key by AWS, but then we have other kinds.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: We have the customer managed keys, as well as the custom key store.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 14:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: So the custom key store is when we wanna use CloudHSM, but this is out of scope for this exam.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we don't go over this, we're just gonna go over the customer managed key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 16:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So this is when we want to create our own keys within KMS and not use the ones managed by AWS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 17:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's create a key, but if we do so, remember this is going to cost you $1 per month.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So if you don't want to pay anything, then do not do this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So here for the key type, have multiple options, have the symmetric or asymmetric type of key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 20:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So if I use asymmetric, this could be used for encrypt and decrypt or sign and verify type of operations.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 21:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: But this is out of scope for this lecture, I'm going use the symmetric type of KMS key, and we'll use the encrypt and decrypt option.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 22:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Okay, this is the most basic one I want to show you For advanced options, the key origin is going to be KMS because we want KMS to create this key for us.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 23:
- Concepts: Data Security Operational Context
- Services: AWS CloudHSM
- Key Insights: If we wanted to import a key, this would be the external type of key origin or custom key store if we wanted to have CloudHSM, but again, this is out of scope.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So we'll use KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 25:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And here for regionality we have single region key and multi region key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 26:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And we're just going to consider single region key right now because this is the most, the oldest type of option and the most common for KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we'll use single region key, click on Next.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Next we have a key alias, so I'll just have it as tutorial.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Click on Next.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And here we can start define key administrators.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 31:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: So if I don't define one, then we're going to use the default KMS key policy, which is what I want.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 32:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But if you wanted to be very specific about who can use this key and who could administer it, this is where it would happen.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So right now I'm not going to take anything, and click on Next.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then you can say, who can use this key?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 35:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: So again, this is for your KMS key policy.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 36:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: To be more specific, right now I want to allow everyone to use it if they have the right IAM permissions.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 37:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: AWS KMS
- Key Insights: But if you wanted to also have some extra security, you could say, hey, only Stefan can use this key and this would create a custom KMS key policy.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But in this instance, I don't want this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 39:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And as you can see at the bottom, I can choose other AWS accounts to access my key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 40:
- Concepts: Storage Data Protection
- Services: Amazon EBS
- Key Insights: So this is if you had for example, the use case of sharing an encrypted snapshot, an EBS snapshot for example, you would add another account to allow access to your key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 41:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So we summarize everything, so we have a symmetric key, and then this is the key policy and this is what I call the default key policy.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 42:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: This is just to enable IAM user permission, so it allows anything to do any resource on KMS as long as they will have, of course, IAM permissions to do so.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 43:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's finish this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 44:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And now my key has been created and we can click on View Key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 45:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So now that my key is created, I can have a look at the key policy.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 46:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: And so the key policy is just like this, it's an IAM policy for your key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 47:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: But you can switch to the default view and you can see in a better summary, like who are the key administrators, is it allowed for key deletion?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 48:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Who are the key users?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 49:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And can other accounts access it?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 50:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I won't touch this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 51:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then you can have a look at the cryptographic configuration.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 52:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I won't touch this.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 53:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Tags not needed.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 54:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So for key rotation, we can enable automatic key rotation by editing here and saying yes, it's enabled, and we can set up the rotation period from 90 days to many more days, to 2,560 days.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 55:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So here this is one year, but you have the option to customize it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 56:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: If you enable this, then you know the next rotation dates.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 57:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: And also for example, you can initiate on demand key rotation by just clicking on this button.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 58:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: Whenever you rotate your key automatically or on demand, it's going to appear in the key rotation history.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 59:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So these options are available because we have created their key directly from KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 60:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And finally, see, finally what is the alias for my key?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 61:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: It is named tutorial, so I can refer to it with an alias ARN, which will be a little bit simpler for us.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 62:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: Finally, for key actions, you can disable it or schedule key deletion.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 63:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So we have our key, it's great, but now let's go use the CLI to encrypt and decrypt some data.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 64:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So under KMS I have kms-demo-cli.sh, which is going to show us how to use the encrypt and decrypt call of KMS with an example.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 65:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, first we have got to create a file, and I'm going to call it ExampleSecretFile.txt.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 66:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: And with it I'm going to say there is a super, secret, password, okay?
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 67:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is whatever you want in this text file.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 68:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: For me I just entered a password called SuperSecretPassword, and we're going to encrypt it and then decrypt it using KMS.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 69:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So the first thing that you do for KMS encryption is use the encrypt command.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 70:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we have to specify a key ID, for me it's alias/tutorial, so this corresponds to the key you have created in My Console.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 71:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And you could use the alias, you could use this key ID right here, or you could use the full ARN, it doesn't really matter, just use whatever you want.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 72:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then you need to pass in plain text the address of your file.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 73:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So for me it's ExampleSecretFile.txt.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 74:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: The output of the query, so you're querying for a Cipher text blog, which represents the encrypted contents, and you want the text as is.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 75:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And finally the region your key is in, so for me, mine is manage region eu-west-2.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 76:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: This is going to give us a base 64 file containing the encrypted content.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 77:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's copy this command right here and paste it, run it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 78:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And now I have a file called ExampleSecretFileEncrypted.base64.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 79:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And this represents my encrypted file, okay, in base 64, so just with letters and numbers that we can recognize.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 80:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now though, we're going to do a base 64 decode to get the binary encrypted value.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 81:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So if you're on Windows, the command is different.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 82:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So for Linux, I'm just going to run this one, but for Windows you can run the other one.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 83:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so the idea is that you're going to create a file called ExampleSecretFileEncrypted without a base 64.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 84:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let me copy this and paste it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 85:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And now I have a new file called ExampleSecretFileEncrypted.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 86:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And if I try to open it with my text editor, it's not going to work because it say it uses either binary or unsupported text encoding.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 87:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is indeed a binary file.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 88:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So this is the kind of secret file that you would share with someone.
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 89:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And so now I want to go and decrypt it.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 90:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is completely gibberish and we cannot get any information of it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 91:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Even this one, we cannot get any information.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 92:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: How do we know it's super secret password?
- Hidden/Implicit Meaning: Secret/certificate lifecycle signal.

Line 93:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So this is an encrypted file, but now we want to take this encrypted binary file, and decrypt it.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 94:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So for this we're going to run an KMS decrypt command.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 95:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this time we pass in the file that was encrypted.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 96:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is where we pass in the file in here.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 97:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then we query for the plain text value, so the decrypted value, and we write this to another file that is going to be base 64 encrypted, and we specify the region.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 98:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 99:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: KMS knows automatically which key to use for the description because it is included in the blob of encrypted value.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 100:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let me enter this, and so this has succeeded.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 101:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So now if I go to my Example File decrypted base 64, it is here, it's a much shorter thing, and now we're going to base 64 decode this to get my text value.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 102:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So we'll have a different command again, if you're on Windows or if you're on Mac, so I'm on Mac, so I'm going to use this one.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 103:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I'm copying this command, pasting it, and now we have done a base 64 decoding of our file.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 104:
- Concepts: Secrets Management
- Services: (none explicit)
- Key Insights: So if we go back to Example File decrypted.txt, we find back our super secret password.
- Hidden/Implicit Meaning: Cryptographic control signal; Secret/certificate lifecycle signal.

Line 105:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So we have shown the encryption and it's reverse operation, the decryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 106:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: Obviously these are low level commands, the SDK will abstract some of that for us, but this shows you the full example of how you can use the encrypt and decrypt command of KMS with your own customer master key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 107:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that's it, super simple.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 108:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope that was helpful, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/299_KMS - Multi-Region Keys.txt

Line 1:
- Concepts: Cross-Account and Multi-Region Security
- Services: AWS KMS
- Key Insights: So, now let's talk about KMS Multi-Region keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 2:
- Concepts: Cross-Account and Multi-Region Security
- Services: AWS KMS
- Key Insights: So, we have KMS and we can actually have a Multi-Region key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: That means that you're going to have your primary key in one selected Region, such as for example, us-east-1.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And then, that key is going to be replicated to other Regions.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: For example, us-west-2, eu-west-1 and ap-southeast-2.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so the similarity is that the key material is going to be replicated.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The same key is going to be in other Regions.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the key ID is going to be the exact same.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 9:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So as you can see the key ID slash mrk and then whatever is the same across all Regions.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 10:
- Concepts: Cross-Account and Multi-Region Security
- Services: AWS KMS
- Key Insights: And this is the principle behind the KMS Multi-Region keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 11:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So, what would you use them?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 12:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Well, it's a set of KMS keys that you can use in different AWS Regions and they can be used interchangeably.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 13:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So that means that you can encrypt in one Region and then decrypt in another Region.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 14:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And Multi-Region keys they're possible because they have the same key ID, the same key material.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 15:
- Concepts: Key Management Lifecycle
- Services: (none explicit)
- Key Insights: And if you have automatic rotation enabled for the primary key, and it actually rotates it's going to be also replicated to the other Regions.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 16:
- Concepts: Cross-Account and Multi-Region Security, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So the idea with that, with the Multi-Region key, you can encrypt in one Region and decrypt in another Region, and you don't need therefore to re-encrypt your data when moving from one Region to the next; or to make cross Region API calls.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 17:
- Concepts: Cross-Account and Multi-Region Security
- Services: AWS KMS
- Key Insights: So something to understand though is that KMS Multi-Region keys are not global.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 18:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 19:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You have your Primary and your Replicas.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 20:
- Concepts: Access Control Enforcement, Cross-Account and Multi-Region Security, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: And each Multi-Region key is going to be managed independently with its own key policy and so on.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 21:
- Concepts: Cross-Account and Multi-Region Security
- Services: AWS KMS
- Key Insights: So it's not recommended to use Multi-Region key, except in very specific use cases because KMS likes to have the fact that a key is bounded to a single Region.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 22:
- Concepts: Cross-Account and Multi-Region Security, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And so the use cases for using Multi-Region keys is if you want to have a global client-side encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 23:
- Concepts: Encryption Fundamentals
- Services: Amazon RDS
- Key Insights: So to be able to encrypt client-side in one Region and to decrypt client-side in another Region. or to do encryption on Global DynamoDB tables or on Global Aurora.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 24:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And we'll see this in a second.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 25:
- Concepts: Cross-Account and Multi-Region Security, Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So how does it work when you use Global Tables in DynamoDB and KMS Multi-Region key with client side encryption?
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 26:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So the idea is that you want to encrypt not just the whole table because this is just at risk encryption.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 27:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You want to encrypt actual attributes on your table.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 28:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so that they're only available to specific clients.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 29:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Not even to database administrators.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 30:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: For this we're going to use the Amazon DynamoDB Encryption Clients.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 31:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example where we have us-east-1 and ap-southeast-2.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 32:
- Concepts: Cross-Account and Multi-Region Security
- Services: AWS KMS
- Key Insights: So the KMS service is having a Multi-Region key which is replicated to another Region.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 33:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: The Region ap-southeast-2.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 34:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And the client application wants to insert data into a DynamoDB table.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 35:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: So first is going to encrypt the attribute that it needs to be encrypted with the primary Multi-Region key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 36:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that the DynamoDB table, most of the fields will not be encrypted client-side.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 37:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 38:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But then one of them, for example the Social Security number is going to be encrypted.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 39:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So this is great because well, your database administrators that have accessed your DynamoDB table, if they don't have access to the KMS key that we used to encrypt that one attribute, the Social Security number.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 40:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Then they will not be able to access it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 41:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So it gives you a protection even against the database administrators.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 42:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So if this DynamoDB table happens to be a Global Table then this data is going to be replicated to another Region.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 43:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so this is now in ap-southeast-2.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 44:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And thankfully we've decided to encrypt our data, the attributes, with a Multi-Region key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 45:
- Concepts: Cross-Account and Multi-Region Security, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And therefore, a client's application in the ap-southeast-2 Region can retrieve the row, see that one attribute is encrypted and then perform an API call to actually decrypt the attribute with the replica Multi-Region key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 46:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And this is why we are doing Multi-Region key this instance.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 47:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: Is it so that client applications in the ap-southeast-2 can do a local API call to KMS to decrypt that one attribute.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 48:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So using this client-side encryption technique we can protect specific fields or attributes on our data and only guarantee decryption when our client has access to an API key.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cryptographic control signal.

Line 49:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And thanks to Global Tables we can make sure the data and the encryption keys are also replicated together.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 50:
- Concepts: Data Security Operational Context
- Services: Amazon RDS
- Key Insights: So the same concept can be applied to Global Aurora.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 51:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So I will go a bit faster.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 52:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And this time we're going to use the AWS Encryption SDK.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 53:
- Concepts: Cross-Account and Multi-Region Security
- Services: AWS KMS
- Key Insights: So we have two Regions and we have a Multi-Region key in KMS replicated across these two Regions.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 54:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so the client application wants to encrypt a column yet to get it is my SSN column.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 55:
- Concepts: Data Security Operational Context
- Services: Amazon RDS
- Key Insights: And this time we put the data into an Amazon Aurora database with a table.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 56:
- Concepts: Cross-Account and Multi-Region Security
- Services: (none explicit)
- Key Insights: And so all the data is unencrypted on this one row, except that one column, which is the SSN, which is encrypted actually with the, mrk, the Multi-Region key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 57:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: Now this is a Global Database.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 58:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So that means that the tables are going to be replicated globally.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 59:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And therefore the same data is going to happen to be in the ap-southeast-2.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 60:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And because we have clients in the ap-southeast-2 they're going to get this encrypted data from your table.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 61:
- Concepts: Cross-Account and Multi-Region Security, Encryption Fundamentals
- Services: AWS KMS
- Key Insights: And because we are using a Multi-Region key they can do a local API call to KMS to decrypt this attribute.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 62:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And therefore we have achieved lower latency.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 63:
- Concepts: Encryption Fundamentals
- Services: (none explicit)
- Key Insights: So we've seen that using client-side encryption, we can also protect this data even from database administrators.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 64:
- Concepts: Data Security Operational Context
- Services: Amazon RDS
- Key Insights: So if you have a database admin that accesses your Amazon Aurora database and wants to access that one column, the Social Security number.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 65:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Unless they have access to the KMS key they will not be able to read this data which is very helpful.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 66:
- Concepts: Cross-Account and Multi-Region Security
- Services: AWS KMS
- Key Insights: So that's it for KMS Multi-Region keys.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 67:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 68:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/300_S3 Replication with Encryption.txt

Line 1:
- Concepts: Cross-Account and Multi-Region Security, Storage Data Protection
- Services: Amazon S3
- Key Insights: So now let's talk about S3 Replication and its relation to encrypted objects.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 2:
- Concepts: Cross-Account and Multi-Region Security, Storage Data Protection
- Services: Amazon S3
- Key Insights: So if you enable S3 Replication from one bucket to another, then any unencrypted objects and objects encrypted with SSE-S3 will be replicated by default.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Objects that are also encrypted with SSE-C, with the customer provided key, can also be replicated, and then we have objects encrypted with SSE-KMS.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So by default, they're not replicated but we need to enable the option to actually replicate these objects.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Access Control Enforcement, Cross-Account and Multi-Region Security, Encryption Fundamentals, Key Management Lifecycle, Storage Data Protection
- Services: AWS KMS, Amazon S3
- Key Insights: And so we specify with which KMS Key we want to encrypt the objects within the target buckets, and then we adapt this KMS Key Policy for the target key and we create an IAM Role that is allowing the S3 Replication service to first decrypt the data in the source bucket and then re-encrypt the data in the target bucket with the target KMS Key.
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 6:
- Concepts: Cross-Account and Multi-Region Security, Encryption Fundamentals
- Services: (none explicit)
- Key Insights: And so when you do so, this enables replication because there is a lot of encryption and decryption happening.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 7:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: You may get KMS throttling errors, in which case you need to ask for a service quotas.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 8:
- Concepts: Cross-Account and Multi-Region Security, Storage Data Protection
- Services: Amazon S3
- Key Insights: So the question you may have is should I use multi-region key with S3 Replication?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal; Storage access-hardening signal.

Line 9:
- Concepts: Cross-Account and Multi-Region Security, Storage Data Protection
- Services: Amazon S3
- Key Insights: And the documentation says that you can use multi-region key for S3 Replication but currently they are treated as independent keys by the Amazon S3 service, and therefore the object is still going to be decrypted and then encrypted using the same key even though the key is a multi-region key, okay?
- Hidden/Implicit Meaning: Cryptographic control signal; Storage access-hardening signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So this is it for this lecture, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/26_AWS Security & Encryption_ KMS, SSM Parameter Store, Shield, WAF/301_Encrypted AMI Sharing Process.txt

Line 1:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So here is a question that can come up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 2:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: This is around the process to share an AMI with another account, and the AMI has been encrypted with a KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 3:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: So the AMI is in your source account, and it's encrypted with your KMS key.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 4:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So how do you launch an EC2 instance in account B from the AMI in account A?
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 5:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So first you must modify the AMI property with a launch permission, and the list launch permission allows account B to launch this AMI.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 6:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: So effectively, this is how you share an AMI.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 7:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: You must modify the launch permissions and add the specified target to its account ID.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Then you need to also share the KMS key for the accounts B to be able to use it.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 9:
- Concepts: Access Control Enforcement, Key Management Lifecycle
- Services: (none explicit)
- Key Insights: So this is done usually with a key policy.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 10:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: Then in account B, you would create an IAM role or IAM user with enough permissions to actually use both the KMS key and the AMI.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 11:
- Concepts: Encryption Fundamentals
- Services: AWS KMS
- Key Insights: So you must have it on the KMS side, access to the Describekey API call, the ReEncrypted API call, CreateGrant and Decrypt API calls.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cryptographic control signal.

Line 12:
- Concepts: Data Security Operational Context
- Services: AWS KMS
- Key Insights: And then once all of this is done, you can simply launch an EC2 instance from that AMI and optionally the target accounts can choose to re-encrypt everything with the KMS key that it's owned, that it owns in its own accounts, to re-encrypt the volumes.
- Hidden/Implicit Meaning: Cryptographic control signal.

Line 13:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: But there you go, you can launch an EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 14:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: And so if you understand this process you're good to go to maybe answer one question at the exam.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

Line 15:
- Concepts: Data Security Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes data-protection behavior detail.

## Step 2 — Consolidation

### 1. Concepts List
- Access Control Enforcement
- Certificate and TLS Security
- Cross-Account and Multi-Region Security
- Data Security Operational Context
- Encryption Fundamentals
- Key Management Lifecycle
- Secrets Management
- Storage Data Protection

### 2. Services List
- AWS CloudHSM
- AWS KMS
- Amazon EBS
- Amazon EFS
- Amazon RDS
- Amazon S3
- SSM Parameter Store

### 3. Features List
- asymmetric
- certificate
- envelope encryption
- grants
- key policy
- kms
- rotation
- symmetric

### 4. Use Cases
- 018_KMS.txt:11: It's a single encryption key that will be used to encrypt and decrypt information.
- 018_KMS.txt:18: The public key will be used to encrypt, and the private key will be used to decrypt.
- 018_KMS.txt:19: Now, this is very helpful when you want to have encrypt, decrypt or sign/verify operations.
- 018_KMS.txt:25: So the use case for an asymmetric key is to have encryptions outside of AWS by users who cannot directly call the KMS API for whatever reason.
- 018_KMS.txt:30: You can enable a rotation policy to rotate the key every year while the old key is still preserved, of course.
- 018_KMS.txt:37: And this is what you see in the UI when you use the AWS managed keys.
- 018_KMS.txt:40: And finally, you have AWS owned keys, and these are created and managed by AWS, used by some services to protect your resources, and they can be used across multiple AWS accounts, but they're not in your accounts.
- 018_KMS.txt:51: So, you have the KMS, which is the AWS_KMS key material, which means that you are going to have KMS automatically create, generate, and manage the key in its own key store to see what happens when you go into KMS and start to create a key.
- 018_KMS.txt:57: So, let's consider how it works when you have a custom key store which is backed by CloudHSM.
- 018_KMS.txt:59: That means that when KMS creates key, well, the key materials are going to be stored in your HSM cluster that you own and manage.
- 018_KMS.txt:69: Well, the use case is that you need to have direct control over the HSMs for higher security, or for security requirements at least, or you have a requirement to store the KMS keys in a dedicated HSM environment.
- 018_KMS.txt:73: For this, if you want to have KMS key rotation, of course, because the key source is external, then you have to rotate it on your own.
- 018_KMS.txt:83: So it's possible for you to create a key, for example, in US East 1, and have it replicated across multiple regions.
- 018_KMS.txt:85: So, the use cases are amazing because thanks to this, well, you have the same key in multiple regions, and that means that you can encrypt in one region and decrypt in the other regions using the same KMS key ID.
- 018_KMS.txt:91: So, the use cases for multi-region keys is going to be disaster recovery, global data management, for example, for DynamoDB global tables, active-active applications that span multiple regions, or distributing signing applications, and so on.
- 024_CloudHSM.txt:3: So when we have KMS, AWS manages the software for encryption and the encryption keys.
- 024_CloudHSM.txt:14: And you have some integration with CloudHSM, for example, with Redshift that supports CloudHSM for database encryption and key management.
- 024_CloudHSM.txt:15: So in case you want to use SSE-C type of encryption for your S3 objects, which is when you provide your own encryption key to S3 and then there will be server-side encryption happening, then a good way to generate that encryption key would be to use CloudHSM.
- 024_CloudHSM.txt:22: They will have encrypted connection between your CloudHSM clients and your CloudHSM device, of course, to encrypt and share a secure information.
- 024_CloudHSM.txt:48: And they can be shared across different VPC by using VPC peering, for example.
- 169_[SAA_DVA_SOA] Encryption 101.txt:8: And this is what you see when you go onto websites and it says HTTPS, that means that the connection between you and the server is going to be encrypted using TLS certificates.
- 169_[SAA_DVA_SOA] Encryption 101.txt:12: And so what we want to have HTTPS or TLS, or SSL, this is when we know that only the target server can decrypt the encrypted data we're sending.
- 169_[SAA_DVA_SOA] Encryption 101.txt:14: We have a client and a server and we want to be able to securely login into the server by providing our username and password.
- 169_[SAA_DVA_SOA] Encryption 101.txt:26: So let's take a service, for example, Amazon S3.
- 169_[SAA_DVA_SOA] Encryption 101.txt:30: And then when it comes to sending back that object to the clients, the encrypted objects and the data key will be used together to decrypt.
- 169_[SAA_DVA_SOA] Encryption 101.txt:44: When we retrieve the contents, we retrieve the encrypted object directly.
- 170_CloudHSM.txt:3: So when we have KMS, AWS manages the software for encryption and the encryption keys.
- 170_CloudHSM.txt:14: And you have some integration with CloudHSM, for example, with Redshift that supports CloudHSM for database encryption and key management.
- 170_CloudHSM.txt:15: So in case you want to use SSE-C type of encryption for your S3 objects, which is when you provide your own encryption key to S3 and then there will be server-side encryption happening, then a good way to generate that encryption key would be to use CloudHSM.
- 170_CloudHSM.txt:22: They will have encrypted connection between your CloudHSM clients and your CloudHSM device, of course, to encrypt and share a secure information.
- 170_CloudHSM.txt:48: And they can be shared across different VPC by using VPC peering, for example.
- 171_CloudHSM - Advanced.txt:3: So when you go through KMS, you configure a KMS Custom Key Store, and this Key Store is going to be backed by CloudHSM.
- 171_CloudHSM - Advanced.txt:4: And this is how the CloudHSM can be used by doing integrations, for example, with EBS volumes, or encrypting S3 objects, or RDS database, et cetera, et cetera.
- 171_CloudHSM - Advanced.txt:8: And then whenever you want to integrate a key with RDS, for example, or an EBS volume, you just set up KMS encryption, and then automatically, your data will be encrypted with CloudHSM.
- 171_CloudHSM - Advanced.txt:16: What you'll do is that you share the subnets themselves within your organization, for example, or specific OUs or specific accounts.
- 172_KMS.txt:11: It's a single encryption key that will be used to encrypt and decrypt information.
- 172_KMS.txt:18: The public key will be used to encrypt, and the private key will be used to decrypt.
- 172_KMS.txt:19: Now, this is very helpful when you want to have encrypt, decrypt or sign/verify operations.
- 172_KMS.txt:25: So the use case for an asymmetric key is to have encryptions outside of AWS by users who cannot directly call the KMS API for whatever reason.
- 172_KMS.txt:30: You can enable a rotation policy to rotate the key every year while the old key is still preserved, of course.
- 172_KMS.txt:37: And this is what you see in the UI when you use the AWS managed keys.
- 172_KMS.txt:40: And finally, you have AWS owned keys, and these are created and managed by AWS, used by some services to protect your resources, and they can be used across multiple AWS accounts, but they're not in your accounts.
- 172_KMS.txt:51: So, you have the KMS, which is the AWS_KMS key material, which means that you are going to have KMS automatically create, generate, and manage the key in its own key store to see what happens when you go into KMS and start to create a key.
- 172_KMS.txt:57: So, let's consider how it works when you have a custom key store which is backed by CloudHSM.
- 172_KMS.txt:59: That means that when KMS creates key, well, the key materials are going to be stored in your HSM cluster that you own and manage.
- 172_KMS.txt:69: Well, the use case is that you need to have direct control over the HSMs for higher security, or for security requirements at least, or you have a requirement to store the KMS keys in a dedicated HSM environment.
- 172_KMS.txt:73: For this, if you want to have KMS key rotation, of course, because the key source is external, then you have to rotate it on your own.
- 172_KMS.txt:83: So it's possible for you to create a key, for example, in US East 1, and have it replicated across multiple regions.
- 172_KMS.txt:85: So, the use cases are amazing because thanks to this, well, you have the same key in multiple regions, and that means that you can encrypt in one region and decrypt in the other regions using the same KMS key ID.
- 172_KMS.txt:91: So, the use cases for multi-region keys is going to be disaster recovery, global data management, for example, for DynamoDB global tables, active-active applications that span multiple regions, or distributing signing applications, and so on.
- 173_[SAA] KMS Multi Region Key.txt:3: That means that you're going to have your primary key in one selected Region, such as for example, us-east-1.
- 173_[SAA] KMS Multi Region Key.txt:5: For example, us-west-2, eu-west-1 and ap-southeast-2.
- 173_[SAA] KMS Multi Region Key.txt:16: So the idea with that, with the Multi-Region key, you can encrypt in one Region and decrypt in another Region, and you don't need therefore to re-encrypt your data when moving from one Region to the next; or to make cross Region API calls.
- 173_[SAA] KMS Multi Region Key.txt:21: So it's not recommended to use Multi-Region key, except in very specific use cases because KMS likes to have the fact that a key is bounded to a single Region.
- 173_[SAA] KMS Multi Region Key.txt:22: And so the use cases for using Multi-Region keys is if you want to have a global client-side encryption.
- 173_[SAA] KMS Multi Region Key.txt:23: So to be able to encrypt client-side in one Region and to decrypt client-side in another Region. or to do encryption on Global DynamoDB tables or on Global Aurora.
- 173_[SAA] KMS Multi Region Key.txt:25: So how does it work when you use Global Tables in DynamoDB and KMS Multi-Region key with client side encryption?
- 173_[SAA] KMS Multi Region Key.txt:26: So the idea is that you want to encrypt not just the whole table because this is just at risk encryption.
- 173_[SAA] KMS Multi Region Key.txt:27: You want to encrypt actual attributes on your table.
- 173_[SAA] KMS Multi Region Key.txt:35: So first is going to encrypt the attribute that it needs to be encrypted with the primary Multi-Region key.
- 173_[SAA] KMS Multi Region Key.txt:38: But then one of them, for example the Social Security number is going to be encrypted.
- 173_[SAA] KMS Multi Region Key.txt:39: So this is great because well, your database administrators that have accessed your DynamoDB table, if they don't have access to the KMS key that we used to encrypt that one attribute, the Social Security number.
- 173_[SAA] KMS Multi Region Key.txt:44: And thankfully we've decided to encrypt our data, the attributes, with a Multi-Region key.
- 173_[SAA] KMS Multi Region Key.txt:48: So using this client-side encryption technique we can protect specific fields or attributes on our data and only guarantee decryption when our client has access to an API key.
- 173_[SAA] KMS Multi Region Key.txt:54: And so the client application wants to encrypt a column yet to get it is my SSN column.
- 174_[DVA] KMS Envelope Encryption.txt:2: So what we did is that we had a secret, for example, a password, and it was less than four kilobytes, because this is a limit for KMS, and we sent it into the KMS service.
- 174_[DVA] KMS Envelope Encryption.txt:16: So if you want to encrypt over four kilobytes, then there's this technique where you encrypt using an envelope.
- 174_[DVA] KMS Envelope Encryption.txt:17: And the main API you have to remember for us to encrypt a large number, large amount of data is to use the GenerateDataKey API.
- 174_[DVA] KMS Envelope Encryption.txt:23: So we have the KMS service, and this time we want to encrypt a very big file.
- 174_[DVA] KMS Envelope Encryption.txt:35: So when we call the GenerateDataKey API, it sends us both the plain-text DEK and the encrypted DEK.
- 174_[DVA] KMS Envelope Encryption.txt:58: So in this example, instead of recreating a new data key every time we want to encrypt an object, we can reuse them instead.
- 174_[DVA] KMS Envelope Encryption.txt:69: So the first one is encrypt, to encrypt up to four kilobytes of data through KMS.
- 175_[SOA] KMS Key Rotation.txt:7: And when you enable the key rotation, of course the previous key is kept active so you can decrypt all data.
- 175_[SOA] KMS Key Rotation.txt:9: For example, here is the backing key, and we have a KMS key ID.
- 175_[SOA] KMS Key Rotation.txt:22: This is when you want to rotate key, for example, every month, and this is not supported by KMS.
- 175_[SOA] KMS Key Rotation.txt:27: So it's a good solution to rotate KMS keys.
- 175_[SOA] KMS Key Rotation.txt:28: For keys that are not eligible for automatic rotation, for example, the asymmetric KMS key.
- 175_[SOA] KMS Key Rotation.txt:31: And we're going to rotate the key manually.
- 176_KMS Key Deletion.txt:2: So you can delete the generated keys, they are keys created from within KMS in which case these keys, when you create them, they have no expiration dates and you cannot immediately delete them.
- 176_KMS Key Deletion.txt:6: Instead of deleting the key, you may choose to disable it as well and when you disable it, it just happens immediately but you can re-enable the key later on.
- 176_KMS Key Deletion.txt:13: Well, with a combination of CloudTrail, CloudWatch Logs, CloudWatch Alarms and SNS, you can be notified when there is someone tries to use a KMS key that's in the pending deletion state for any cryptographic operations such as encrypt or decrypt.
- 176_KMS Key Deletion.txt:21: So the use case is a little bit different.
- 176_KMS Key Deletion.txt:22: This time, we want to know whenever a user is going to do the API call to either disable a key or schedule a key deletion because this may be very bad actions if then KMS cannot be used and if they're not done properly.
- 176_KMS Key Deletion.txt:23: So whenever we are doing such an API call through CloudTrail integration we have an event of that API call in Amazon EventBridge.
- 176_KMS Key Deletion.txt:24: So we will trigger, for example an SNS topic to send an email to administrator, or if we wanted to completely disable this we may want to revert the disabled key operation or the schedule key deletion operation.
- 176_KMS Key Deletion.txt:26: This is when you know that you're for sure never want to delete any KMS keys.
- 176_KMS Key Deletion.txt:29: And then when this waiting period is over, then you can delete the primary key.
- 177_KMS Key Policies Deep Dive.txt:6: So when you go through the console and you create a KMS key, the console makes it very easy on you and it will create by default a KMS key policy called the Default KMS Key Policy, and this is going to give access to any user in your accounts.
- 177_KMS Key Policies Deep Dive.txt:13: And this is extremely helpful when you have cross-account access of your KMS key, and you want to define who in the targeted accounts can access your key.
- 177_KMS Key Policies Deep Dive.txt:21: For the AWS Managed Keys, for example, when you see a key, aws/ebs, you can view the Key Policy but you cannot change the Key Policy.
- 177_KMS Key Policies Deep Dive.txt:38: And here the actions you would look at, for example.
- 178_KMS Grants.txt:26: Well, we grant AWS services the right to use the KMS key to encrypt your own data at rest.
- 178_KMS Grants.txt:30: So when you start at EC2 instance and its Route EBS volume is encrypted, behind the scenes what's going to happen is that Amazon EBS is going to create a grant, and then thanks to this grant, is going to be able to decrypt the Root EBS volume and to encrypt it as well.
- 178_KMS Grants.txt:36: So that means that the user can create a grant only for an AWS service, therefore allowing a service such as Amazon EBS or Amazon EC2 to do encryption, for example, to attach an encrypted EBS volume to an EC2 instance, or Redshift to launch an encrypted cluster, or any service that integrates with KMS and that uses grants to create, manage, or encrypt resources within.
- 179_KMS Condition Keys.txt:3: So here if I create a key, and I said the action is for the user to create a grant, and KMS is via service EC2 or RDS, that means that this user can only use this key through Amazon EC2, so EBS volumes or RDS to encrypt RDS databases.
- 179_KMS Condition Keys.txt:6: And this is something you'll see when you have AWS-managed key.
- 179_KMS Condition Keys.txt:8: So have a look at, for example, the KMS key policy of AWS/EBS and you will find something similar.
- 180_KMS Key Policies Evaluation Process.txt:30: But if we do have the default KMS Policy, for example, then we look at IAM.
- 180_KMS Key Policies Evaluation Process.txt:63: It's the most common one you see when you use AWS.
- 181_KMS Key Cross-Account Access.txt:17: So this time, we want, for example, to have an EBS volume that's going to be encrypted with a KMS key belonging in another account.
- 181_KMS Key Cross-Account Access.txt:25: So CreateGrants, ListGrants and RevokedGrants, But thank these grants, for example, in the IAM user, we can create a grant internally in the backend for the EBS service to encrypt and decrypt volumes.
- 181_KMS Key Cross-Account Access.txt:38: And so when you're sharing a KMS encrypted RDS DB snapshots across accounts, you make sure that you first share the KMS key associated with the target accounts using a key policy.
- 182_KMS Asymmetric Encryption.txt:3: That's when we use the same key to encrypt and decrypt.
- 182_KMS Asymmetric Encryption.txt:5: And this key pair we've seen before when we were doing for example, SSH, we have a public key and a private key to encrypt and decrypt data.
- 182_KMS Asymmetric Encryption.txt:7: So this is something you see, for example, with SSH.
- 182_KMS Asymmetric Encryption.txt:8: When we want to trust a specific key, we use the public key or when we want to verify SSL certificates, when we go on the website, again, the public key is shared but the private key is always kept secret as its name indicates.
- 182_KMS Asymmetric Encryption.txt:14: Alice is going to take a file and is going to encrypt it using the public key.
- 182_KMS Asymmetric Encryption.txt:26: The private keys, when you create a KMS asymmetric key, they never leave AWS KMS unencrypted so you don't have access to it.
- 182_KMS Asymmetric Encryption.txt:35: And with our application and we want to securely send a file, but of course, we cannot send this entire file into KMS, that would be too much.
- 182_KMS Asymmetric Encryption.txt:40: So we'll use the sign API call in KMS to do a digest signing, and then when we get back from it is a signature and this signature is sent back to our application.
- 182_KMS Asymmetric Encryption.txt:45: So the use cases for this is document, E-signing, secure messaging, authentication and authorizations token, trusted source code, E-commerce transactions, and so on.
- 183_KMS API Calls Limits and Data Key Caching.txt:2: So when your application is making API calls to KMS, you have a service limit that you can hit.
- 183_KMS API Calls Limits and Data Key Caching.txt:6: Well, number one, you can increase this service limit, of course, but number two, you can do data key caching and data key caching is to reuse the data keys that you've created out of KMS to protect your data.
- 183_KMS API Calls Limits and Data Key Caching.txt:8: So let's turn and understand a use case.
- 183_KMS API Calls Limits and Data Key Caching.txt:16: So the goal of this, of course, is to, for example, reduce latency because we don't do API calls to KMS all the time.
- 184_KMS Encryption Context.txt:5: And say for example, that this file is for the department 10103.
- 185_KMS with EBS.txt:3: So the process is we create a snapshot, and then we create a new volume, and this is when the key is going to change.
- 185_KMS with EBS.txt:19: And here you can define a default EBS key to encrypt your volumes with.
- 186_EFS Encryption.txt:1: So here is a short lecture on how to encrypt an EFS file system that is unencrypted to start with.
- 186_EFS Encryption.txt:5: When we're ready, then our applications can switch over from the unencrypted file system to the encrypted file system, and that's the process.
- 188_KMS with Parameter Store.txt:4: For example, the API Key, and the SSM parameter store will automatically call the KMS service to encrypt it and get back the encrypted value of that parameter.
- 188_KMS with Parameter Store.txt:8: And so therefore, each parameter is going to be encrypted thanks to encryption envelope.
- 188_KMS with Parameter Store.txt:10: So to encrypt it, we simply specify the KMS key we wants, if it's a custom one, or we can use the AWS-managed key, the AWS SSM key.
- 065_EBS Encryption.txt:2: So, when you created and encrypted EBS volume, right away you get the following, you get data at rest being encrypted inside your volume, all the data in flight between the instance and the volume is encrypted, all the snapshots will be encrypted, and all the volumes created from the snapshots are encrypted.
- 065_EBS Encryption.txt:7: And so, when you copy an unencrypted snapshot, then you enable encryption.
- 065_EBS Encryption.txt:9: So, to encrypt an unencrypted EBS volumes, which is a very tough thing to say, you create an EBS snapshot of the volume.
- 065_EBS Encryption.txt:15: So, I will leave this setting unchecked, and, therefore, when I create my volume and have a look at it, if we look at the state of encryption, it says not encrypted.
- 065_EBS Encryption.txt:20: And so, to create an encrypted snapshot, now, what you have to do is to do action and then create copy snapshot, excuse me, and when you copy the snapshots, you have the option right here to enable encryption into the same destination region.
- 296_Encryption 101.txt:8: And this is what you see when you go onto websites and it says HTTPS, that means that the connection between you and the server is going to be encrypted using TLS certificates.
- 296_Encryption 101.txt:12: And so what we want to have HTTPS or TLS, or SSL, this is when we know that only the target server can decrypt the encrypted data we're sending.
- 296_Encryption 101.txt:14: We have a client and a server and we want to be able to securely login into the server by providing our username and password.
- 296_Encryption 101.txt:26: So let's take a service, for example, Amazon S3.
- 296_Encryption 101.txt:30: And then when it comes to sending back that object to the clients, the encrypted objects and the data key will be used together to decrypt.
- 296_Encryption 101.txt:44: When we retrieve the contents, we retrieve the encrypted object directly.
- 297_KMS Overview.txt:2: So we've been using it a lot without knowing, but anytime you hear encryption when you have an AWS service, it's most likely going to be KMS encryption.
- 297_KMS Overview.txt:8: So for example, if you wanted to encrypt the data at rest in an EBS volume, just enable the KMS integration.
- 297_KMS Overview.txt:16: And then these encrypted secrets can be, for example, stored in your code or in environment variables.
- 297_KMS Overview.txt:23: We have the symmetric KMS keys, and that means there's only one single encrypted key that is used to encrypt and decrypt data.
- 297_KMS Overview.txt:25: The idea is that when we create or use a KMS symmetric key, then we never get access to the key itself, okay?
- 297_KMS Overview.txt:29: You have a public key that's used to encrypt data, and a private key used to decrypt data.
- 297_KMS Overview.txt:30: So this is used when you have encrypt/decrypt, or sign/verify type of operations.
- 297_KMS Overview.txt:33: So the use cases for an asymmetric type of key is when you want the encryption to be done outside of your AWS cloud by users who cannot or don't have access to the KMS API key.
- 297_KMS Overview.txt:34: In which case they will use the public key to encrypt the data.
- 297_KMS Overview.txt:39: They're free, and this is the kind of key you would use when you use SSE-S3 type of encryption, or SSC DynamoDB, where you have the option, for example, that you choose a key owned by DynamoDB.
- 297_KMS Overview.txt:42: For example, AWS/RDS or AWS/EBS, or in this example, AWS/DynamoDB.
- 297_KMS Overview.txt:53: That means that if you have an EBS volume encrypted with KMS key in a region, for example, EUS2, then if you want to copy that to a different region, we have to do several steps.
- 297_KMS Overview.txt:73: So when do we use this?
- 297_KMS Overview.txt:74: Well, for example, if we wanted to copy an encrypted snapshots across accounts.
- 298_KMS Hands On w_ CLI.txt:4: So we can look for example at the AWS EBS, and this is an Else managed key because it belongs to the EBS service.
- 298_KMS Hands On w_ CLI.txt:9: If I looked for example, at another AWS managed key, for example, the SQS one, and look at the key policy, here the Via Service as a condition to my KMS key policy is the SQS service, therefore allowing only access from SQS to this key.
- 298_KMS Hands On w_ CLI.txt:10: We can also look at the cryptographic configuration, which show that this key is symmetric of origin KMS and it's used to encrypt and decrypt data.
- 298_KMS Hands On w_ CLI.txt:14: So the custom key store is when we wanna use CloudHSM, but this is out of scope for this exam.
- 298_KMS Hands On w_ CLI.txt:16: So this is when we want to create our own keys within KMS and not use the ones managed by AWS.
- 298_KMS Hands On w_ CLI.txt:40: So this is if you had for example, the use case of sharing an encrypted snapshot, an EBS snapshot for example, you would add another account to allow access to your key.
- 298_KMS Hands On w_ CLI.txt:57: And also for example, you can initiate on demand key rotation by just clicking on this button.
- 298_KMS Hands On w_ CLI.txt:58: Whenever you rotate your key automatically or on demand, it's going to appear in the key rotation history.
- 298_KMS Hands On w_ CLI.txt:63: So we have our key, it's great, but now let's go use the CLI to encrypt and decrypt some data.
- 298_KMS Hands On w_ CLI.txt:68: For me I just entered a password called SuperSecretPassword, and we're going to encrypt it and then decrypt it using KMS.
- 299_KMS - Multi-Region Keys.txt:3: That means that you're going to have your primary key in one selected Region, such as for example, us-east-1.
- 299_KMS - Multi-Region Keys.txt:5: For example, us-west-2, eu-west-1 and ap-southeast-2.
- 299_KMS - Multi-Region Keys.txt:16: So the idea with that, with the Multi-Region key, you can encrypt in one Region and decrypt in another Region, and you don't need therefore to re-encrypt your data when moving from one Region to the next; or to make cross Region API calls.
- 299_KMS - Multi-Region Keys.txt:21: So it's not recommended to use Multi-Region key, except in very specific use cases because KMS likes to have the fact that a key is bounded to a single Region.
- 299_KMS - Multi-Region Keys.txt:22: And so the use cases for using Multi-Region keys is if you want to have a global client-side encryption.
- 299_KMS - Multi-Region Keys.txt:23: So to be able to encrypt client-side in one Region and to decrypt client-side in another Region. or to do encryption on Global DynamoDB tables or on Global Aurora.
- 299_KMS - Multi-Region Keys.txt:25: So how does it work when you use Global Tables in DynamoDB and KMS Multi-Region key with client side encryption?
- 299_KMS - Multi-Region Keys.txt:26: So the idea is that you want to encrypt not just the whole table because this is just at risk encryption.
- 299_KMS - Multi-Region Keys.txt:27: You want to encrypt actual attributes on your table.
- 299_KMS - Multi-Region Keys.txt:35: So first is going to encrypt the attribute that it needs to be encrypted with the primary Multi-Region key.
- 299_KMS - Multi-Region Keys.txt:38: But then one of them, for example the Social Security number is going to be encrypted.
- 299_KMS - Multi-Region Keys.txt:39: So this is great because well, your database administrators that have accessed your DynamoDB table, if they don't have access to the KMS key that we used to encrypt that one attribute, the Social Security number.
- 299_KMS - Multi-Region Keys.txt:44: And thankfully we've decided to encrypt our data, the attributes, with a Multi-Region key.
- 299_KMS - Multi-Region Keys.txt:48: So using this client-side encryption technique we can protect specific fields or attributes on our data and only guarantee decryption when our client has access to an API key.
- 299_KMS - Multi-Region Keys.txt:54: And so the client application wants to encrypt a column yet to get it is my SSN column.
- 300_S3 Replication with Encryption.txt:1: So now let's talk about S3 Replication and its relation to encrypted objects.
- 300_S3 Replication with Encryption.txt:5: And so we specify with which KMS Key we want to encrypt the objects within the target buckets, and then we adapt this KMS Key Policy for the target key and we create an IAM Role that is allowing the S3 Replication service to first decrypt the data in the source bucket and then re-encrypt the data in the target bucket with the target KMS Key.
- 300_S3 Replication with Encryption.txt:6: And so when you do so, this enables replication because there is a lot of encryption and decryption happening.

### 5. Constraints / Limitations
- 018_KMS.txt:6: You should know and remember that KMS keys are regional and they can only be used in the region they're created in.
- 018_KMS.txt:15: You must just send data into KMS with a KMS API call to use it.
- 018_KMS.txt:22: But once the data is encrypted with the public key, only the private key has the power to decrypt your information.
- 018_KMS.txt:23: You still cannot use the private key unencrypted, though.
- 018_KMS.txt:25: So the use case for an asymmetric key is to have encryptions outside of AWS by users who cannot directly call the KMS API for whatever reason.
- 018_KMS.txt:39: You can view the key policy and you can audit in CloudTrail, but you cannot leverage them for your own encryption operations.
- 018_KMS.txt:42: And you cannot view, use, track or audit these keys.
- 018_KMS.txt:45: The AWS managed key can be used in your accounts, okay, but you cannot manage them, and they're required to be rotated every one year.
- 018_KMS.txt:47: And then the owned keys, you just know they exist, but you cannot use them or see them.
- 018_KMS.txt:50: And it cannot be changed after creation, so you have to define it at creation time.
- 018_KMS.txt:61: They are only managed by KMS and used by KMS.
- 018_KMS.txt:71: So, it must be a 256-bit symmetric key, so you cannot import asymmetric material for now, and it cannot be used with custom key store.
- 018_KMS.txt:90: Each key can be managed independently, and although you can only have one primary key at a time, it's possible for you to promote one replica into their own primary key.
- 024_CloudHSM.txt:4: But with CloudHSM, AWS will only provision us the encryption hardware.
- 024_CloudHSM.txt:19: So if we lose the encryption keys, if we lose anything, AWS cannot recover the device for us.
- 024_CloudHSM.txt:24: AWS cannot help you once it has provided you with the hardware you need.
- 024_CloudHSM.txt:25: In terms of IAM permissions, therefore, the only thing AWS can do in terms of IAM is helping you create, describe, and delete your CloudHSM cluster.
- 024_CloudHSM.txt:30: You have to manage all the security within your device and AWS cannot help you with that.
- 024_CloudHSM.txt:31: Okay, another very important thing is to set up CloudHSM with high availability.
- 024_CloudHSM.txt:36: But important to see it once to know that it's possible to do it, going into the exam, it can be very handy.
- 169_[SAA_DVA_SOA] Encryption 101.txt:12: And so what we want to have HTTPS or TLS, or SSL, this is when we know that only the target server can decrypt the encrypted data we're sending.
- 169_[SAA_DVA_SOA] Encryption 101.txt:15: But we only want the target server to be able to receive it.
- 169_[SAA_DVA_SOA] Encryption 101.txt:18: So as you can see, no between server can decrypt the data and only the target server can use the TLS decryption mechanism to decrypt that package and then see that we've sent the username and password.
- 169_[SAA_DVA_SOA] Encryption 101.txt:25: And so the whole idea of managing these keys for encryption and decryption is that the management must happen somewhere and the server must have access to these keys.
- 169_[SAA_DVA_SOA] Encryption 101.txt:36: And the server should never be able to decrypt the data because we don't trust a server in that case.
- 170_CloudHSM.txt:4: But with CloudHSM, AWS will only provision us the encryption hardware.
- 170_CloudHSM.txt:19: So if we lose the encryption keys, if we lose anything, AWS cannot recover the device for us.
- 170_CloudHSM.txt:24: AWS cannot help you once it has provided you with the hardware you need.
- 170_CloudHSM.txt:25: In terms of IAM permissions, therefore, the only thing AWS can do in terms of IAM is helping you create, describe, and delete your CloudHSM cluster.
- 170_CloudHSM.txt:30: You have to manage all the security within your device and AWS cannot help you with that.
- 170_CloudHSM.txt:31: Okay, another very important thing is to set up CloudHSM with high availability.
- 170_CloudHSM.txt:36: But important to see it once to know that it's possible to do it, going into the exam, it can be very handy.
- 171_CloudHSM - Advanced.txt:13: You can actually share the private subnets your CloudHSM cluster resides in using RAM, but you cannot share the CloudHSM cluster itself.
- 171_CloudHSM - Advanced.txt:19: But you cannot share a CloudHSM cluster using RAM, you must share the underlying subnet instead.
- 172_KMS.txt:6: You should know and remember that KMS keys are regional and they can only be used in the region they're created in.
- 172_KMS.txt:15: You must just send data into KMS with a KMS API call to use it.
- 172_KMS.txt:22: But once the data is encrypted with the public key, only the private key has the power to decrypt your information.
- 172_KMS.txt:23: You still cannot use the private key unencrypted, though.
- 172_KMS.txt:25: So the use case for an asymmetric key is to have encryptions outside of AWS by users who cannot directly call the KMS API for whatever reason.
- 172_KMS.txt:39: You can view the key policy and you can audit in CloudTrail, but you cannot leverage them for your own encryption operations.
- 172_KMS.txt:42: And you cannot view, use, track or audit these keys.
- 172_KMS.txt:45: The AWS managed key can be used in your accounts, okay, but you cannot manage them, and they're required to be rotated every one year.
- 172_KMS.txt:47: And then the owned keys, you just know they exist, but you cannot use them or see them.
- 172_KMS.txt:50: And it cannot be changed after creation, so you have to define it at creation time.
- 172_KMS.txt:61: They are only managed by KMS and used by KMS.
- 172_KMS.txt:71: So, it must be a 256-bit symmetric key, so you cannot import asymmetric material for now, and it cannot be used with custom key store.
- 172_KMS.txt:90: Each key can be managed independently, and although you can only have one primary key at a time, it's possible for you to promote one replica into their own primary key.
- 173_[SAA] KMS Multi Region Key.txt:28: And so that they're only available to specific clients.
- 173_[SAA] KMS Multi Region Key.txt:48: So using this client-side encryption technique we can protect specific fields or attributes on our data and only guarantee decryption when our client has access to an API key.
- 174_[DVA] KMS Envelope Encryption.txt:2: So what we did is that we had a secret, for example, a password, and it was less than four kilobytes, because this is a limit for KMS, and we sent it into the KMS service.
- 174_[DVA] KMS Envelope Encryption.txt:14: So as we can see though there is a problem, we are limited by the size of the secret to four kilobytes.
- 174_[DVA] KMS Envelope Encryption.txt:39: So as we can see in this example, from KMS the only thing we got was an encryption key, a data key and a data key that was encrypted.
- 174_[DVA] KMS Envelope Encryption.txt:45: So with a decrypt API we can only pass up to four kilobytes of data.
- 174_[DVA] KMS Envelope Encryption.txt:64: So if you're using data key caching, then you would use something called a LocalCryptoMaterialsCache, which has a long name, to indicate how big the cache of this data key should be.
- 174_[DVA] KMS Envelope Encryption.txt:65: And it could be that you define the max age of your key, the max number of bytes that it should encrypt, or the max number of messages that should be encrypted by this DEK before moving on to the next DEK.
- 174_[DVA] KMS Envelope Encryption.txt:73: And so as such, this DEK is the same, it's also encrypted using this CMK we specify, but if you use it, we must decrypted afterwards, which is one extra step.
- 175_[SOA] KMS Key Rotation.txt:8: The new key will have the same KMS key ID, so only the backing key is changed.
- 175_[SOA] KMS Key Rotation.txt:17: And you have a limit to how many times you can trigger an on-demand key rotation.
- 175_[SOA] KMS Key Rotation.txt:37: So your application only interacts from an API perspective with your key alias, MyAppKey.
- 176_KMS Key Deletion.txt:2: So you can delete the generated keys, they are keys created from within KMS in which case these keys, when you create them, they have no expiration dates and you cannot immediately delete them.
- 176_KMS Key Deletion.txt:11: Finally, for the AWS managed keys or the AWS owned keys, they cannot be deleted.
- 176_KMS Key Deletion.txt:22: This time, we want to know whenever a user is going to do the API call to either disable a key or schedule a key deletion because this may be very bad actions if then KMS cannot be used and if they're not done properly.
- 176_KMS Key Deletion.txt:25: Thanks to systems manager automation, you should run a AWS config remediation, cancel key deletion so that's the key is back to normal.
- 176_KMS Key Deletion.txt:28: Well, first you need to delete the replica keys which is less risky because it can always be recreated from the primary key and you must also, for these keys, schedule your deletions so seven to 30 day waiting period.
- 176_KMS Key Deletion.txt:30: So the primary key can only be deleted if all the replicas have been deleted.
- 176_KMS Key Deletion.txt:31: And then if you prefer to delete the primary but keep a replica, what you must do first is to take one of these replicas and then you're going to promote it as primary, and then you delete the old primary.
- 176_KMS Key Deletion.txt:32: And again, deleting the primary key must be scheduled and takes, again, seven to 30 days so if you delete first replicas and then you delete the primary key, you have a minimum waiting period of 14 days in total.
- 177_KMS Key Policies Deep Dive.txt:4: But if you don't set up a KMS key policy, you cannot access your KMS key.
- 177_KMS Key Policies Deep Dive.txt:5: So you must create one.
- 177_KMS Key Policies Deep Dive.txt:9: That means they must still have the proper IAM permissions to get access to the key.
- 177_KMS Key Policies Deep Dive.txt:17: You still must use IAM policies to access the KMS key.
- 177_KMS Key Policies Deep Dive.txt:20: So for the AWS Owned Keys, we cannot view and we cannot change the Key Policy because it's owned by AWS.
- 177_KMS Key Policies Deep Dive.txt:21: For the AWS Managed Keys, for example, when you see a key, aws/ebs, you can view the Key Policy but you cannot change the Key Policy.
- 178_KMS Grants.txt:7: So these grants are for one KMS key only and one or more IAM Principal.
- 178_KMS Grants.txt:11: These grants that do not expire automatically, you must delete them manually.
- 178_KMS Grants.txt:21: So after you're done using a key grant, you must delete it so that, of course, people don't have lingering permissions.
- 178_KMS Grants.txt:22: For now, as far as I know, there's no support of KMS key grants in the console, so API calls only.
- 178_KMS Grants.txt:29: So to allow a service to use your KMS key, you must have the CreateGrant IAM permissions.
- 178_KMS Grants.txt:35: And this user has a condition, it can do only these API calls if you grant an AWS resource true.
- 178_KMS Grants.txt:36: So that means that the user can create a grant only for an AWS service, therefore allowing a service such as Amazon EBS or Amazon EC2 to do encryption, for example, to attach an encrypted EBS volume to an EC2 instance, or Redshift to launch an encrypted cluster, or any service that integrates with KMS and that uses grants to create, manage, or encrypt resources within.
- 178_KMS Grants.txt:38: So if you have an EC2 instance and it has an encrypted EBS volume and you cannot start it, the reason that that it may fail is, number one, while the KMS key might be disabled or deleted, second, the EBS service might not have the permission required to use the KMS key.
- 178_KMS Grants.txt:40: And number two, make sure the EBS service has the required permission to create KMS key grants on top on behalf of the specified principle.
- 179_KMS Condition Keys.txt:2: So kms:ViaService ensures that your KMS key is going to be only used by the specified AWS service.
- 179_KMS Condition Keys.txt:3: So here if I create a key, and I said the action is for the user to create a grant, and KMS is via service EC2 or RDS, that means that this user can only use this key through Amazon EC2, so EBS volumes or RDS to encrypt RDS databases.
- 179_KMS Condition Keys.txt:4: So it's very helpful to limit scope and to make sure a key cannot be used outside of certain services.
- 179_KMS Condition Keys.txt:5: So the IAM user, of course, then must be authorized to use the key to grant it to the AWS service.
- 180_KMS Key Policies Evaluation Process.txt:40: So this is a complicated schema, but hopefully, because I've covered all the concepts of these before, you should feel somewhat familiar with it.
- 180_KMS Key Policies Evaluation Process.txt:68: And then because it's cross accounts, we must make sure we have also an IAM Policy in Account 1 authorizing things.
- 181_KMS Key Cross-Account Access.txt:9: So your IAM user or your IAM role will have an attached policy, and this policy should have all the KMS APIs needed such as encrypt, decrypt, and so on.
- 181_KMS Key Cross-Account Access.txt:10: And the resource should be the KMS key ARN of the accounts A.
- 182_KMS Asymmetric Encryption.txt:15: So now the file is encrypted using this public key and it turns out that this public key cannot decrypt the file.
- 182_KMS Asymmetric Encryption.txt:16: The only thing the public key can do is encrypt it.
- 182_KMS Asymmetric Encryption.txt:19: And the only way for Bob to decrypt this file is to use the private key and then the file is decrypted.
- 182_KMS Asymmetric Encryption.txt:24: We have the SM2 KMS key, that's for China only, to do signing and verification or encryption and decryption.
- 182_KMS Asymmetric Encryption.txt:35: And with our application and we want to securely send a file, but of course, we cannot send this entire file into KMS, that would be too much.
- 182_KMS Asymmetric Encryption.txt:36: Remember, KMS cannot encrypt a lot of data.
- 183_KMS API Calls Limits and Data Key Caching.txt:1: So here is a short lecture on KMS API calls limits, and data key caching.
- 183_KMS API Calls Limits and Data Key Caching.txt:2: So when your application is making API calls to KMS, you have a service limit that you can hit.
- 183_KMS API Calls Limits and Data Key Caching.txt:4: So there's a number of requests per second limit and if you use KMS too much, you will be throttled.
- 183_KMS API Calls Limits and Data Key Caching.txt:6: Well, number one, you can increase this service limit, of course, but number two, you can do data key caching and data key caching is to reuse the data keys that you've created out of KMS to protect your data.
- 183_KMS API Calls Limits and Data Key Caching.txt:17: We improve the throughput, we reduce the cost because we call KMS less and less and we stay within service limits.
- 184_KMS Encryption Context.txt:6: And the reason why we do so is that now the same context must be provided during the decryption.
- 184_KMS Encryption Context.txt:8: You must also provide the Encryption Context back.
- 184_KMS Encryption Context.txt:9: So, you must provide again that it was for department 10103.
- 184_KMS Encryption Context.txt:15: From an exam perspective, this must be re-used to provide additional authenticated data within KMS service.
- 185_KMS with EBS.txt:2: So you cannot change the encryption keys used by an EBS volume, but you can create a snapshot and you create a new EBS volume and then you can specify a new KMS key.
- 185_KMS with EBS.txt:14: And on the right-hand side, we're saying, "Hey, we can encrypt, decrypt, re-encrypt using the first data key, the first KMS key in the first account, and the second KMS key in the second account." So it should make sense by now, but I would like to repeat myself just to make things very clear.
- 186_EFS Encryption.txt:3: What you must do instead is that you create a new EFS file system and then you will migrate the files and their permissions using AWS DataSync.
- 188_KMS with Parameter Store.txt:11: It only works for symmetric KMS keys and all the encryption will happen within KMS.
- 188_KMS with Parameter Store.txt:12: So to make sure that we can access a parameter in the parameter store that has been KMS encrypted, we must have access to both the KMS key and the SSM parameter from an IAM perspective.
- 065_EBS Encryption.txt:6: So, encryption overall, something you should use because it has a very, very minimal impact on latency, almost nothing, and it leverages keys from KMS, so AES-256, that's something that you should know.
- 065_EBS Encryption.txt:8: So, let's talk about a very important thing, which is how do you encrypt an unencrypted EBS volumes.
- 296_Encryption 101.txt:12: And so what we want to have HTTPS or TLS, or SSL, this is when we know that only the target server can decrypt the encrypted data we're sending.
- 296_Encryption 101.txt:15: But we only want the target server to be able to receive it.
- 296_Encryption 101.txt:18: So as you can see, no between server can decrypt the data and only the target server can use the TLS decryption mechanism to decrypt that package and then see that we've sent the username and password.
- 296_Encryption 101.txt:25: And so the whole idea of managing these keys for encryption and decryption is that the management must happen somewhere and the server must have access to these keys.
- 296_Encryption 101.txt:36: And the server should never be able to decrypt the data because we don't trust a server in that case.
- 297_KMS Overview.txt:23: We have the symmetric KMS keys, and that means there's only one single encrypted key that is used to encrypt and decrypt data.
- 297_KMS Overview.txt:32: You can only use API calls against to access the private key.
- 297_KMS Overview.txt:33: So the use cases for an asymmetric type of key is when you want the encryption to be done outside of your AWS cloud by users who cannot or don't have access to the KMS API key.
- 297_KMS Overview.txt:43: They're free and you can just use them as you please, but only from within the service that it's assigned to.
- 297_KMS Overview.txt:50: And if it's imported KMS key, then you can only manually rotate it.
- 297_KMS Overview.txt:58: But the same KMS key cannot live in two regions.
- 297_KMS Overview.txt:76: It must be that because we need to attach a custom key policy.
- 298_KMS Hands On w_ CLI.txt:9: If I looked for example, at another AWS managed key, for example, the SQS one, and look at the key policy, here the Via Service as a condition to my KMS key policy is the SQS service, therefore allowing only access from SQS to this key.
- 298_KMS Hands On w_ CLI.txt:37: But if you wanted to also have some extra security, you could say, hey, only Stefan can use this key and this would create a custom KMS key policy.
- 298_KMS Hands On w_ CLI.txt:90: So this is completely gibberish and we cannot get any information of it.
- 298_KMS Hands On w_ CLI.txt:91: Even this one, we cannot get any information.
- 299_KMS - Multi-Region Keys.txt:28: And so that they're only available to specific clients.
- 299_KMS - Multi-Region Keys.txt:48: So using this client-side encryption technique we can protect specific fields or attributes on our data and only guarantee decryption when our client has access to an API key.
- 300_S3 Replication with Encryption.txt:8: So the question you may have is should I use multi-region key with S3 Replication?
- 301_Encrypted AMI Sharing Process.txt:5: So first you must modify the AMI property with a launch permission, and the list launch permission allows account B to launch this AMI.
- 301_Encrypted AMI Sharing Process.txt:7: You must modify the launch permissions and add the specified target to its account ID.
- 301_Encrypted AMI Sharing Process.txt:11: So you must have it on the KMS side, access to the Describekey API call, the ReEncrypted API call, CreateGrant and Decrypt API calls.

### 6. Patterns / Architectures
- 018_KMS.txt:4: It's fully integrated with IAM for authorization, and it has seamless integration into all the AWS services, pretty much.
- 018_KMS.txt:58: So you create your CloudHSM cluster as a custom key store, and there is a dart integration with KMS.
- 018_KMS.txt:64: So, this is the architecture.
- 018_KMS.txt:82: Okay, lastly, so you need to know about KMS multi-region keys.
- 018_KMS.txt:91: So, the use cases for multi-region keys is going to be disaster recovery, global data management, for example, for DynamoDB global tables, active-active applications that span multiple regions, or distributing signing applications, and so on.
- 024_CloudHSM.txt:14: And you have some integration with CloudHSM, for example, with Redshift that supports CloudHSM for database encryption and key management.
- 024_CloudHSM.txt:34: So we have this very classic architecture where we have two AZ, two CloudHSM devices that are going to be paired up in a cluster and your CloudHSM clients.
- 024_CloudHSM.txt:46: For key accessibility, KMS keys are scoped per region, although you can do KMS key replication.
- 170_CloudHSM.txt:14: And you have some integration with CloudHSM, for example, with Redshift that supports CloudHSM for database encryption and key management.
- 170_CloudHSM.txt:34: So we have this very classic architecture where we have two AZ, two CloudHSM devices that are going to be paired up in a cluster and your CloudHSM clients.
- 170_CloudHSM.txt:46: For key accessibility, KMS keys are scoped per region, although you can do KMS key replication.
- 171_CloudHSM - Advanced.txt:2: The first one is that you have integrations with AWS Services by basically going through KMS.
- 171_CloudHSM - Advanced.txt:4: And this is how the CloudHSM can be used by doing integrations, for example, with EBS volumes, or encrypting S3 objects, or RDS database, et cetera, et cetera.
- 171_CloudHSM - Advanced.txt:11: You also have integration with third-party services with CloudHSM, so you can create and store keys in CloudHSM, and then you can perform SSL or TLS offload, Windows Server Certificate Authority, Oracle TDE, Microsoft SignTool, Java Keytool, and so on.
- 172_KMS.txt:4: It's fully integrated with IAM for authorization, and it has seamless integration into all the AWS services, pretty much.
- 172_KMS.txt:58: So you create your CloudHSM cluster as a custom key store, and there is a dart integration with KMS.
- 172_KMS.txt:64: So, this is the architecture.
- 172_KMS.txt:82: Okay, lastly, so you need to know about KMS multi-region keys.
- 172_KMS.txt:91: So, the use cases for multi-region keys is going to be disaster recovery, global data management, for example, for DynamoDB global tables, active-active applications that span multiple regions, or distributing signing applications, and so on.
- 173_[SAA] KMS Multi Region Key.txt:1: So, now let's talk about KMS Multi-Region keys.
- 173_[SAA] KMS Multi Region Key.txt:2: So, we have KMS and we can actually have a Multi-Region key.
- 173_[SAA] KMS Multi Region Key.txt:10: And this is the principle behind the KMS Multi-Region keys.
- 173_[SAA] KMS Multi Region Key.txt:14: And Multi-Region keys they're possible because they have the same key ID, the same key material.
- 173_[SAA] KMS Multi Region Key.txt:16: So the idea with that, with the Multi-Region key, you can encrypt in one Region and decrypt in another Region, and you don't need therefore to re-encrypt your data when moving from one Region to the next; or to make cross Region API calls.
- 173_[SAA] KMS Multi Region Key.txt:17: So something to understand though is that KMS Multi-Region keys are not global.
- 173_[SAA] KMS Multi Region Key.txt:20: And each Multi-Region key is going to be managed independently with its own key policy and so on.
- 173_[SAA] KMS Multi Region Key.txt:21: So it's not recommended to use Multi-Region key, except in very specific use cases because KMS likes to have the fact that a key is bounded to a single Region.
- 173_[SAA] KMS Multi Region Key.txt:22: And so the use cases for using Multi-Region keys is if you want to have a global client-side encryption.
- 173_[SAA] KMS Multi Region Key.txt:25: So how does it work when you use Global Tables in DynamoDB and KMS Multi-Region key with client side encryption?
- 173_[SAA] KMS Multi Region Key.txt:32: So the KMS service is having a Multi-Region key which is replicated to another Region.
- 173_[SAA] KMS Multi Region Key.txt:35: So first is going to encrypt the attribute that it needs to be encrypted with the primary Multi-Region key.
- 173_[SAA] KMS Multi Region Key.txt:44: And thankfully we've decided to encrypt our data, the attributes, with a Multi-Region key.
- 173_[SAA] KMS Multi Region Key.txt:45: And therefore, a client's application in the ap-southeast-2 Region can retrieve the row, see that one attribute is encrypted and then perform an API call to actually decrypt the attribute with the replica Multi-Region key.
- 173_[SAA] KMS Multi Region Key.txt:46: And this is why we are doing Multi-Region key this instance.
- 173_[SAA] KMS Multi Region Key.txt:53: So we have two Regions and we have a Multi-Region key in KMS replicated across these two Regions.
- 173_[SAA] KMS Multi Region Key.txt:56: And so all the data is unencrypted on this one row, except that one column, which is the SSN, which is encrypted actually with the, mrk, the Multi-Region key.
- 173_[SAA] KMS Multi Region Key.txt:61: And because we are using a Multi-Region key they can do a local API call to KMS to decrypt this attribute.
- 173_[SAA] KMS Multi Region Key.txt:66: So that's it for KMS Multi-Region keys.
- 176_KMS Key Deletion.txt:23: So whenever we are doing such an API call through CloudTrail integration we have an event of that API call in Amazon EventBridge.
- 177_KMS Key Policies Deep Dive.txt:13: And this is extremely helpful when you have cross-account access of your KMS key, and you want to define who in the targeted accounts can access your key.
- 177_KMS Key Policies Deep Dive.txt:37: You can define a user, a role, or, again, a target account if you wanted to have cross-accounts.
- 181_KMS Key Cross-Account Access.txt:1: So let's have a look at now cross-account access for your KMS key.
- 181_KMS Key Cross-Account Access.txt:14: It's similar to what we've seen for many cross-account stuff.
- 181_KMS Key Cross-Account Access.txt:15: Now, what if you want to allow not the users to just encrypt and decrypt but the services of the cross-account to access our KMS key.
- 181_KMS Key Cross-Account Access.txt:27: So let's think of a last way to use a KMS key in a cross-account manner.
- 181_KMS Key Cross-Account Access.txt:34: This is not a cross-accounts type of setting, but, of course, this role can be assumed by user in another accounts.
- 181_KMS Key Cross-Account Access.txt:37: So we've really seen like the different ways that it's possible for us to do cross-account access for KMS keys.
- 185_KMS with EBS.txt:1: So let's have a deeper look at the integration between KMS and EBS.
- 185_KMS with EBS.txt:4: So we can also automate cross-account EBS KMS-encrypted snapshot copies.
- 297_KMS Overview.txt:8: So for example, if you wanted to encrypt the data at rest in an EBS volume, just enable the KMS integration.
- 299_KMS - Multi-Region Keys.txt:1: So, now let's talk about KMS Multi-Region keys.
- 299_KMS - Multi-Region Keys.txt:2: So, we have KMS and we can actually have a Multi-Region key.
- 299_KMS - Multi-Region Keys.txt:10: And this is the principle behind the KMS Multi-Region keys.
- 299_KMS - Multi-Region Keys.txt:14: And Multi-Region keys they're possible because they have the same key ID, the same key material.
- 299_KMS - Multi-Region Keys.txt:16: So the idea with that, with the Multi-Region key, you can encrypt in one Region and decrypt in another Region, and you don't need therefore to re-encrypt your data when moving from one Region to the next; or to make cross Region API calls.
- 299_KMS - Multi-Region Keys.txt:17: So something to understand though is that KMS Multi-Region keys are not global.
- 299_KMS - Multi-Region Keys.txt:20: And each Multi-Region key is going to be managed independently with its own key policy and so on.
- 299_KMS - Multi-Region Keys.txt:21: So it's not recommended to use Multi-Region key, except in very specific use cases because KMS likes to have the fact that a key is bounded to a single Region.
- 299_KMS - Multi-Region Keys.txt:22: And so the use cases for using Multi-Region keys is if you want to have a global client-side encryption.
- 299_KMS - Multi-Region Keys.txt:25: So how does it work when you use Global Tables in DynamoDB and KMS Multi-Region key with client side encryption?
- 299_KMS - Multi-Region Keys.txt:32: So the KMS service is having a Multi-Region key which is replicated to another Region.
- 299_KMS - Multi-Region Keys.txt:35: So first is going to encrypt the attribute that it needs to be encrypted with the primary Multi-Region key.
- 299_KMS - Multi-Region Keys.txt:44: And thankfully we've decided to encrypt our data, the attributes, with a Multi-Region key.
- 299_KMS - Multi-Region Keys.txt:45: And therefore, a client's application in the ap-southeast-2 Region can retrieve the row, see that one attribute is encrypted and then perform an API call to actually decrypt the attribute with the replica Multi-Region key.
- 299_KMS - Multi-Region Keys.txt:46: And this is why we are doing Multi-Region key this instance.
- 299_KMS - Multi-Region Keys.txt:53: So we have two Regions and we have a Multi-Region key in KMS replicated across these two Regions.
- 299_KMS - Multi-Region Keys.txt:56: And so all the data is unencrypted on this one row, except that one column, which is the SSN, which is encrypted actually with the, mrk, the Multi-Region key.
- 299_KMS - Multi-Region Keys.txt:61: And because we are using a Multi-Region key they can do a local API call to KMS to decrypt this attribute.
- 299_KMS - Multi-Region Keys.txt:66: So that's it for KMS Multi-Region keys.
- 300_S3 Replication with Encryption.txt:1: So now let's talk about S3 Replication and its relation to encrypted objects.
- 300_S3 Replication with Encryption.txt:2: So if you enable S3 Replication from one bucket to another, then any unencrypted objects and objects encrypted with SSE-S3 will be replicated by default.
- 300_S3 Replication with Encryption.txt:5: And so we specify with which KMS Key we want to encrypt the objects within the target buckets, and then we adapt this KMS Key Policy for the target key and we create an IAM Role that is allowing the S3 Replication service to first decrypt the data in the source bucket and then re-encrypt the data in the target bucket with the target KMS Key.
- 300_S3 Replication with Encryption.txt:6: And so when you do so, this enables replication because there is a lot of encryption and decryption happening.
- 300_S3 Replication with Encryption.txt:8: So the question you may have is should I use multi-region key with S3 Replication?
- 300_S3 Replication with Encryption.txt:9: And the documentation says that you can use multi-region key for S3 Replication but currently they are treated as independent keys by the Amazon S3 service, and therefore the object is still going to be decrypted and then encrypted using the same key even though the key is a multi-region key, okay?

## Step 3 — Deep Expansion (Core Data Security Concepts)

### AWS KMS
- What it is: Managed cryptographic key service for encryption operations and key governance.
- Why it exists: Centralizes key lifecycle, policy controls, auditability, and service-integrated encryption.
- Internal working: API-based encrypt/decrypt/key generation with strict policy evaluation and CloudTrail audit events.
- Architecture: Data producer -> KMS key operation -> encrypted artifact -> controlled decrypt path.
- Key components: CMKs/keys, aliases, key policies, grants, rotation, multi-region keys, asymmetric keys.

### Secrets and Configuration Protection
- What it is: Managed storage for sensitive configuration values and credentials.
- Why it exists: Removes plaintext secrets from code and standardizes retrieval/rotation workflows.
- Internal working: Secrets stored encrypted at rest, access mediated by IAM/KMS policies.
- Architecture: Application identity -> secret retrieval API -> runtime secret consumption.
- Key components: Versioning, rotation workflows, access policies, integration SDK/CLI patterns.

### Amazon S3 Security
- What it is: Object storage security model combining encryption, identity/resource policies, and bucket-level controls.
- Why it exists: Secures data at scale while supporting granular access and lifecycle immutability needs.
- Internal working: Request authorization path evaluates IAM, bucket policies, ACL/public-block settings, and encryption defaults.
- Architecture: Client principal -> S3 policy evaluation -> object operation with encryption/retention enforcement.
- Key components: SSE options, bucket policies, Access Points, Object Lock, lifecycle and logging controls.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Cloud key management | KMS | Azure Key Vault (keys) + Managed HSM | Cloud KMS + Cloud HSM |
| Secret storage and retrieval | Secrets Manager / Parameter Store | Azure Key Vault (secrets) | Secret Manager |
| Certificate lifecycle management | ACM | Azure Key Vault Certificates + App Gateway/Front Door | Certificate Manager + CAS patterns |
| Object storage encryption and controls | S3 encryption + policies + Access Points | Blob Storage encryption + SAS + immutability policies | Cloud Storage CMEK + IAM + retention locks |
| Immutable retention controls | S3 Object Lock / Glacier Vault Lock | Immutable Blob (WORM) | Bucket lock/retention policies |

### Trade-offs and Decision Notes
- AWS KMS integrates deeply with most AWS data-plane services with low operational friction.
- Azure Key Vault unifies keys/secrets/certs in enterprise identity-centric operations.
- GCP offers strong CMEK integration and clean KMS + Secret Manager workflows for cloud-native systems.
- For regulated workloads, pair encryption controls with immutable retention and auditable key/secrets lifecycle operations.

## Phase-wise Architect-Level Organization

### Phase 1 — Foundations
- Cryptography and data-protection primitives for storage, secrets, and certificates.
- Access-control interplay with encryption and retrieval paths.

### Phase 2 — Core Services
- Implement key, secret, certificate, and object-level controls based on workload sensitivity.
- Enforce default encryption and least-privilege retrieval paths.

### Phase 3 — Advanced Patterns
- Multi-account, cross-region replication and key governance; immutable retention controls.
- Automated secret rotation and cert renewal with failure-safe rollback.

### Phase 4 — System Design
- Enterprise data protection architecture: key hierarchy, secret domains, and storage trust boundaries.
- Scaling considerations: key/secret sprawl, policy complexity, and operational blast radius.
- Cost considerations: API call volume, managed service pricing, and retention/replication spend.

## Deduped Consolidation Snapshot

This additive section keeps original extraction untouched and provides duplicate-clean views for faster review.

### Concepts (Deduped)
- Access Control Enforcement
- Certificate and TLS Security
- Cross-Account and Multi-Region Security
- Data Security Operational Context
- Encryption Fundamentals
- Key Management Lifecycle
- Secrets Management
- Storage Data Protection

### Services (Deduped)
- AWS CloudHSM
- AWS KMS
- Amazon EBS
- Amazon EFS
- Amazon RDS
- Amazon S3
- SSM Parameter Store

### Features (Deduped)
- asymmetric
- certificate
- envelope encryption
- grants
- key policy
- kms
- rotation
- symmetric

### Use Cases (Deduped)
- 018_KMS.txt:11: It's a single encryption key that will be used to encrypt and decrypt information.
- 018_KMS.txt:18: The public key will be used to encrypt, and the private key will be used to decrypt.
- 018_KMS.txt:19: Now, this is very helpful when you want to have encrypt, decrypt or sign/verify operations.
- 018_KMS.txt:25: So the use case for an asymmetric key is to have encryptions outside of AWS by users who cannot directly call the KMS API for whatever reason.
- 018_KMS.txt:30: You can enable a rotation policy to rotate the key every year while the old key is still preserved, of course.
- 018_KMS.txt:37: And this is what you see in the UI when you use the AWS managed keys.
- 018_KMS.txt:40: And finally, you have AWS owned keys, and these are created and managed by AWS, used by some services to protect your resources, and they can be used across multiple AWS accounts, but they're not in your accounts.
- 018_KMS.txt:51: So, you have the KMS, which is the AWS_KMS key material, which means that you are going to have KMS automatically create, generate, and manage the key in its own key store to see what happens when you go into KMS and start to create a key.
- 018_KMS.txt:57: So, let's consider how it works when you have a custom key store which is backed by CloudHSM.
- 018_KMS.txt:59: That means that when KMS creates key, well, the key materials are going to be stored in your HSM cluster that you own and manage.
- 018_KMS.txt:69: Well, the use case is that you need to have direct control over the HSMs for higher security, or for security requirements at least, or you have a requirement to store the KMS keys in a dedicated HSM environment.
- 018_KMS.txt:73: For this, if you want to have KMS key rotation, of course, because the key source is external, then you have to rotate it on your own.
- 018_KMS.txt:83: So it's possible for you to create a key, for example, in US East 1, and have it replicated across multiple regions.
- 018_KMS.txt:85: So, the use cases are amazing because thanks to this, well, you have the same key in multiple regions, and that means that you can encrypt in one region and decrypt in the other regions using the same KMS key ID.
- 018_KMS.txt:91: So, the use cases for multi-region keys is going to be disaster recovery, global data management, for example, for DynamoDB global tables, active-active applications that span multiple regions, or distributing signing applications, and so on.
- 024_CloudHSM.txt:3: So when we have KMS, AWS manages the software for encryption and the encryption keys.
- 024_CloudHSM.txt:14: And you have some integration with CloudHSM, for example, with Redshift that supports CloudHSM for database encryption and key management.
- 024_CloudHSM.txt:15: So in case you want to use SSE-C type of encryption for your S3 objects, which is when you provide your own encryption key to S3 and then there will be server-side encryption happening, then a good way to generate that encryption key would be to use CloudHSM.
- 024_CloudHSM.txt:22: They will have encrypted connection between your CloudHSM clients and your CloudHSM device, of course, to encrypt and share a secure information.
- 024_CloudHSM.txt:48: And they can be shared across different VPC by using VPC peering, for example.
- 169_[SAA_DVA_SOA] Encryption 101.txt:8: And this is what you see when you go onto websites and it says HTTPS, that means that the connection between you and the server is going to be encrypted using TLS certificates.
- 169_[SAA_DVA_SOA] Encryption 101.txt:12: And so what we want to have HTTPS or TLS, or SSL, this is when we know that only the target server can decrypt the encrypted data we're sending.
- 169_[SAA_DVA_SOA] Encryption 101.txt:14: We have a client and a server and we want to be able to securely login into the server by providing our username and password.
- 169_[SAA_DVA_SOA] Encryption 101.txt:26: So let's take a service, for example, Amazon S3.
- 169_[SAA_DVA_SOA] Encryption 101.txt:30: And then when it comes to sending back that object to the clients, the encrypted objects and the data key will be used together to decrypt.
- 169_[SAA_DVA_SOA] Encryption 101.txt:44: When we retrieve the contents, we retrieve the encrypted object directly.
- 170_CloudHSM.txt:3: So when we have KMS, AWS manages the software for encryption and the encryption keys.
- 170_CloudHSM.txt:14: And you have some integration with CloudHSM, for example, with Redshift that supports CloudHSM for database encryption and key management.
- 170_CloudHSM.txt:15: So in case you want to use SSE-C type of encryption for your S3 objects, which is when you provide your own encryption key to S3 and then there will be server-side encryption happening, then a good way to generate that encryption key would be to use CloudHSM.
- 170_CloudHSM.txt:22: They will have encrypted connection between your CloudHSM clients and your CloudHSM device, of course, to encrypt and share a secure information.
- 170_CloudHSM.txt:48: And they can be shared across different VPC by using VPC peering, for example.
- 171_CloudHSM - Advanced.txt:3: So when you go through KMS, you configure a KMS Custom Key Store, and this Key Store is going to be backed by CloudHSM.
- 171_CloudHSM - Advanced.txt:4: And this is how the CloudHSM can be used by doing integrations, for example, with EBS volumes, or encrypting S3 objects, or RDS database, et cetera, et cetera.
- 171_CloudHSM - Advanced.txt:8: And then whenever you want to integrate a key with RDS, for example, or an EBS volume, you just set up KMS encryption, and then automatically, your data will be encrypted with CloudHSM.
- 171_CloudHSM - Advanced.txt:16: What you'll do is that you share the subnets themselves within your organization, for example, or specific OUs or specific accounts.
- 172_KMS.txt:11: It's a single encryption key that will be used to encrypt and decrypt information.
- 172_KMS.txt:18: The public key will be used to encrypt, and the private key will be used to decrypt.
- 172_KMS.txt:19: Now, this is very helpful when you want to have encrypt, decrypt or sign/verify operations.
- 172_KMS.txt:25: So the use case for an asymmetric key is to have encryptions outside of AWS by users who cannot directly call the KMS API for whatever reason.
- 172_KMS.txt:30: You can enable a rotation policy to rotate the key every year while the old key is still preserved, of course.
- 172_KMS.txt:37: And this is what you see in the UI when you use the AWS managed keys.
- 172_KMS.txt:40: And finally, you have AWS owned keys, and these are created and managed by AWS, used by some services to protect your resources, and they can be used across multiple AWS accounts, but they're not in your accounts.
- 172_KMS.txt:51: So, you have the KMS, which is the AWS_KMS key material, which means that you are going to have KMS automatically create, generate, and manage the key in its own key store to see what happens when you go into KMS and start to create a key.
- 172_KMS.txt:57: So, let's consider how it works when you have a custom key store which is backed by CloudHSM.
- 172_KMS.txt:59: That means that when KMS creates key, well, the key materials are going to be stored in your HSM cluster that you own and manage.
- 172_KMS.txt:69: Well, the use case is that you need to have direct control over the HSMs for higher security, or for security requirements at least, or you have a requirement to store the KMS keys in a dedicated HSM environment.
- 172_KMS.txt:73: For this, if you want to have KMS key rotation, of course, because the key source is external, then you have to rotate it on your own.
- 172_KMS.txt:83: So it's possible for you to create a key, for example, in US East 1, and have it replicated across multiple regions.
- 172_KMS.txt:85: So, the use cases are amazing because thanks to this, well, you have the same key in multiple regions, and that means that you can encrypt in one region and decrypt in the other regions using the same KMS key ID.
- 172_KMS.txt:91: So, the use cases for multi-region keys is going to be disaster recovery, global data management, for example, for DynamoDB global tables, active-active applications that span multiple regions, or distributing signing applications, and so on.
- 173_[SAA] KMS Multi Region Key.txt:3: That means that you're going to have your primary key in one selected Region, such as for example, us-east-1.
- 173_[SAA] KMS Multi Region Key.txt:5: For example, us-west-2, eu-west-1 and ap-southeast-2.
- 173_[SAA] KMS Multi Region Key.txt:16: So the idea with that, with the Multi-Region key, you can encrypt in one Region and decrypt in another Region, and you don't need therefore to re-encrypt your data when moving from one Region to the next; or to make cross Region API calls.
- 173_[SAA] KMS Multi Region Key.txt:21: So it's not recommended to use Multi-Region key, except in very specific use cases because KMS likes to have the fact that a key is bounded to a single Region.
- 173_[SAA] KMS Multi Region Key.txt:22: And so the use cases for using Multi-Region keys is if you want to have a global client-side encryption.
- 173_[SAA] KMS Multi Region Key.txt:23: So to be able to encrypt client-side in one Region and to decrypt client-side in another Region. or to do encryption on Global DynamoDB tables or on Global Aurora.
- 173_[SAA] KMS Multi Region Key.txt:25: So how does it work when you use Global Tables in DynamoDB and KMS Multi-Region key with client side encryption?
- 173_[SAA] KMS Multi Region Key.txt:26: So the idea is that you want to encrypt not just the whole table because this is just at risk encryption.
- 173_[SAA] KMS Multi Region Key.txt:27: You want to encrypt actual attributes on your table.
- 173_[SAA] KMS Multi Region Key.txt:35: So first is going to encrypt the attribute that it needs to be encrypted with the primary Multi-Region key.
- 173_[SAA] KMS Multi Region Key.txt:38: But then one of them, for example the Social Security number is going to be encrypted.
- 173_[SAA] KMS Multi Region Key.txt:39: So this is great because well, your database administrators that have accessed your DynamoDB table, if they don't have access to the KMS key that we used to encrypt that one attribute, the Social Security number.
- 173_[SAA] KMS Multi Region Key.txt:44: And thankfully we've decided to encrypt our data, the attributes, with a Multi-Region key.
- 173_[SAA] KMS Multi Region Key.txt:48: So using this client-side encryption technique we can protect specific fields or attributes on our data and only guarantee decryption when our client has access to an API key.
- 173_[SAA] KMS Multi Region Key.txt:54: And so the client application wants to encrypt a column yet to get it is my SSN column.
- 174_[DVA] KMS Envelope Encryption.txt:2: So what we did is that we had a secret, for example, a password, and it was less than four kilobytes, because this is a limit for KMS, and we sent it into the KMS service.
- 174_[DVA] KMS Envelope Encryption.txt:16: So if you want to encrypt over four kilobytes, then there's this technique where you encrypt using an envelope.
- 174_[DVA] KMS Envelope Encryption.txt:17: And the main API you have to remember for us to encrypt a large number, large amount of data is to use the GenerateDataKey API.
- 174_[DVA] KMS Envelope Encryption.txt:23: So we have the KMS service, and this time we want to encrypt a very big file.
- 174_[DVA] KMS Envelope Encryption.txt:35: So when we call the GenerateDataKey API, it sends us both the plain-text DEK and the encrypted DEK.
- 174_[DVA] KMS Envelope Encryption.txt:58: So in this example, instead of recreating a new data key every time we want to encrypt an object, we can reuse them instead.
- 174_[DVA] KMS Envelope Encryption.txt:69: So the first one is encrypt, to encrypt up to four kilobytes of data through KMS.
- 175_[SOA] KMS Key Rotation.txt:7: And when you enable the key rotation, of course the previous key is kept active so you can decrypt all data.
- 175_[SOA] KMS Key Rotation.txt:9: For example, here is the backing key, and we have a KMS key ID.
- 175_[SOA] KMS Key Rotation.txt:22: This is when you want to rotate key, for example, every month, and this is not supported by KMS.
- 175_[SOA] KMS Key Rotation.txt:27: So it's a good solution to rotate KMS keys.
- 175_[SOA] KMS Key Rotation.txt:28: For keys that are not eligible for automatic rotation, for example, the asymmetric KMS key.
- 175_[SOA] KMS Key Rotation.txt:31: And we're going to rotate the key manually.
- 176_KMS Key Deletion.txt:2: So you can delete the generated keys, they are keys created from within KMS in which case these keys, when you create them, they have no expiration dates and you cannot immediately delete them.
- 176_KMS Key Deletion.txt:6: Instead of deleting the key, you may choose to disable it as well and when you disable it, it just happens immediately but you can re-enable the key later on.
- 176_KMS Key Deletion.txt:13: Well, with a combination of CloudTrail, CloudWatch Logs, CloudWatch Alarms and SNS, you can be notified when there is someone tries to use a KMS key that's in the pending deletion state for any cryptographic operations such as encrypt or decrypt.
- 176_KMS Key Deletion.txt:21: So the use case is a little bit different.
- 176_KMS Key Deletion.txt:22: This time, we want to know whenever a user is going to do the API call to either disable a key or schedule a key deletion because this may be very bad actions if then KMS cannot be used and if they're not done properly.
- 176_KMS Key Deletion.txt:23: So whenever we are doing such an API call through CloudTrail integration we have an event of that API call in Amazon EventBridge.
- 176_KMS Key Deletion.txt:24: So we will trigger, for example an SNS topic to send an email to administrator, or if we wanted to completely disable this we may want to revert the disabled key operation or the schedule key deletion operation.
- 176_KMS Key Deletion.txt:26: This is when you know that you're for sure never want to delete any KMS keys.
- 176_KMS Key Deletion.txt:29: And then when this waiting period is over, then you can delete the primary key.
- 177_KMS Key Policies Deep Dive.txt:6: So when you go through the console and you create a KMS key, the console makes it very easy on you and it will create by default a KMS key policy called the Default KMS Key Policy, and this is going to give access to any user in your accounts.
- 177_KMS Key Policies Deep Dive.txt:13: And this is extremely helpful when you have cross-account access of your KMS key, and you want to define who in the targeted accounts can access your key.
- 177_KMS Key Policies Deep Dive.txt:21: For the AWS Managed Keys, for example, when you see a key, aws/ebs, you can view the Key Policy but you cannot change the Key Policy.
- 177_KMS Key Policies Deep Dive.txt:38: And here the actions you would look at, for example.
- 178_KMS Grants.txt:26: Well, we grant AWS services the right to use the KMS key to encrypt your own data at rest.
- 178_KMS Grants.txt:30: So when you start at EC2 instance and its Route EBS volume is encrypted, behind the scenes what's going to happen is that Amazon EBS is going to create a grant, and then thanks to this grant, is going to be able to decrypt the Root EBS volume and to encrypt it as well.
- 178_KMS Grants.txt:36: So that means that the user can create a grant only for an AWS service, therefore allowing a service such as Amazon EBS or Amazon EC2 to do encryption, for example, to attach an encrypted EBS volume to an EC2 instance, or Redshift to launch an encrypted cluster, or any service that integrates with KMS and that uses grants to create, manage, or encrypt resources within.
- 179_KMS Condition Keys.txt:3: So here if I create a key, and I said the action is for the user to create a grant, and KMS is via service EC2 or RDS, that means that this user can only use this key through Amazon EC2, so EBS volumes or RDS to encrypt RDS databases.
- 179_KMS Condition Keys.txt:6: And this is something you'll see when you have AWS-managed key.
- 179_KMS Condition Keys.txt:8: So have a look at, for example, the KMS key policy of AWS/EBS and you will find something similar.
- 180_KMS Key Policies Evaluation Process.txt:30: But if we do have the default KMS Policy, for example, then we look at IAM.
- 180_KMS Key Policies Evaluation Process.txt:63: It's the most common one you see when you use AWS.
- 181_KMS Key Cross-Account Access.txt:17: So this time, we want, for example, to have an EBS volume that's going to be encrypted with a KMS key belonging in another account.
- 181_KMS Key Cross-Account Access.txt:25: So CreateGrants, ListGrants and RevokedGrants, But thank these grants, for example, in the IAM user, we can create a grant internally in the backend for the EBS service to encrypt and decrypt volumes.
- 181_KMS Key Cross-Account Access.txt:38: And so when you're sharing a KMS encrypted RDS DB snapshots across accounts, you make sure that you first share the KMS key associated with the target accounts using a key policy.
- 182_KMS Asymmetric Encryption.txt:3: That's when we use the same key to encrypt and decrypt.
- 182_KMS Asymmetric Encryption.txt:5: And this key pair we've seen before when we were doing for example, SSH, we have a public key and a private key to encrypt and decrypt data.
- 182_KMS Asymmetric Encryption.txt:7: So this is something you see, for example, with SSH.
- 182_KMS Asymmetric Encryption.txt:8: When we want to trust a specific key, we use the public key or when we want to verify SSL certificates, when we go on the website, again, the public key is shared but the private key is always kept secret as its name indicates.
- 182_KMS Asymmetric Encryption.txt:14: Alice is going to take a file and is going to encrypt it using the public key.
- 182_KMS Asymmetric Encryption.txt:26: The private keys, when you create a KMS asymmetric key, they never leave AWS KMS unencrypted so you don't have access to it.
- 182_KMS Asymmetric Encryption.txt:35: And with our application and we want to securely send a file, but of course, we cannot send this entire file into KMS, that would be too much.
- 182_KMS Asymmetric Encryption.txt:40: So we'll use the sign API call in KMS to do a digest signing, and then when we get back from it is a signature and this signature is sent back to our application.
- 182_KMS Asymmetric Encryption.txt:45: So the use cases for this is document, E-signing, secure messaging, authentication and authorizations token, trusted source code, E-commerce transactions, and so on.
- 183_KMS API Calls Limits and Data Key Caching.txt:2: So when your application is making API calls to KMS, you have a service limit that you can hit.
- 183_KMS API Calls Limits and Data Key Caching.txt:6: Well, number one, you can increase this service limit, of course, but number two, you can do data key caching and data key caching is to reuse the data keys that you've created out of KMS to protect your data.
- 183_KMS API Calls Limits and Data Key Caching.txt:8: So let's turn and understand a use case.
- 183_KMS API Calls Limits and Data Key Caching.txt:16: So the goal of this, of course, is to, for example, reduce latency because we don't do API calls to KMS all the time.
- 184_KMS Encryption Context.txt:5: And say for example, that this file is for the department 10103.
- 185_KMS with EBS.txt:3: So the process is we create a snapshot, and then we create a new volume, and this is when the key is going to change.
- 185_KMS with EBS.txt:19: And here you can define a default EBS key to encrypt your volumes with.
- 186_EFS Encryption.txt:1: So here is a short lecture on how to encrypt an EFS file system that is unencrypted to start with.
- 186_EFS Encryption.txt:5: When we're ready, then our applications can switch over from the unencrypted file system to the encrypted file system, and that's the process.
- 188_KMS with Parameter Store.txt:4: For example, the API Key, and the SSM parameter store will automatically call the KMS service to encrypt it and get back the encrypted value of that parameter.
- 188_KMS with Parameter Store.txt:8: And so therefore, each parameter is going to be encrypted thanks to encryption envelope.
- 188_KMS with Parameter Store.txt:10: So to encrypt it, we simply specify the KMS key we wants, if it's a custom one, or we can use the AWS-managed key, the AWS SSM key.
- 065_EBS Encryption.txt:2: So, when you created and encrypted EBS volume, right away you get the following, you get data at rest being encrypted inside your volume, all the data in flight between the instance and the volume is encrypted, all the snapshots will be encrypted, and all the volumes created from the snapshots are encrypted.
- 065_EBS Encryption.txt:7: And so, when you copy an unencrypted snapshot, then you enable encryption.
- 065_EBS Encryption.txt:9: So, to encrypt an unencrypted EBS volumes, which is a very tough thing to say, you create an EBS snapshot of the volume.
- 065_EBS Encryption.txt:15: So, I will leave this setting unchecked, and, therefore, when I create my volume and have a look at it, if we look at the state of encryption, it says not encrypted.
- 065_EBS Encryption.txt:20: And so, to create an encrypted snapshot, now, what you have to do is to do action and then create copy snapshot, excuse me, and when you copy the snapshots, you have the option right here to enable encryption into the same destination region.
- 296_Encryption 101.txt:8: And this is what you see when you go onto websites and it says HTTPS, that means that the connection between you and the server is going to be encrypted using TLS certificates.
- 296_Encryption 101.txt:12: And so what we want to have HTTPS or TLS, or SSL, this is when we know that only the target server can decrypt the encrypted data we're sending.
- 296_Encryption 101.txt:14: We have a client and a server and we want to be able to securely login into the server by providing our username and password.
- 296_Encryption 101.txt:26: So let's take a service, for example, Amazon S3.
- 296_Encryption 101.txt:30: And then when it comes to sending back that object to the clients, the encrypted objects and the data key will be used together to decrypt.
- 296_Encryption 101.txt:44: When we retrieve the contents, we retrieve the encrypted object directly.
- 297_KMS Overview.txt:2: So we've been using it a lot without knowing, but anytime you hear encryption when you have an AWS service, it's most likely going to be KMS encryption.
- 297_KMS Overview.txt:8: So for example, if you wanted to encrypt the data at rest in an EBS volume, just enable the KMS integration.
- 297_KMS Overview.txt:16: And then these encrypted secrets can be, for example, stored in your code or in environment variables.
- 297_KMS Overview.txt:23: We have the symmetric KMS keys, and that means there's only one single encrypted key that is used to encrypt and decrypt data.
- 297_KMS Overview.txt:25: The idea is that when we create or use a KMS symmetric key, then we never get access to the key itself, okay?
- 297_KMS Overview.txt:29: You have a public key that's used to encrypt data, and a private key used to decrypt data.
- 297_KMS Overview.txt:30: So this is used when you have encrypt/decrypt, or sign/verify type of operations.
- 297_KMS Overview.txt:33: So the use cases for an asymmetric type of key is when you want the encryption to be done outside of your AWS cloud by users who cannot or don't have access to the KMS API key.
- 297_KMS Overview.txt:34: In which case they will use the public key to encrypt the data.
- 297_KMS Overview.txt:39: They're free, and this is the kind of key you would use when you use SSE-S3 type of encryption, or SSC DynamoDB, where you have the option, for example, that you choose a key owned by DynamoDB.
- 297_KMS Overview.txt:42: For example, AWS/RDS or AWS/EBS, or in this example, AWS/DynamoDB.
- 297_KMS Overview.txt:53: That means that if you have an EBS volume encrypted with KMS key in a region, for example, EUS2, then if you want to copy that to a different region, we have to do several steps.
- 297_KMS Overview.txt:73: So when do we use this?
- 297_KMS Overview.txt:74: Well, for example, if we wanted to copy an encrypted snapshots across accounts.
- 298_KMS Hands On w_ CLI.txt:4: So we can look for example at the AWS EBS, and this is an Else managed key because it belongs to the EBS service.
- 298_KMS Hands On w_ CLI.txt:9: If I looked for example, at another AWS managed key, for example, the SQS one, and look at the key policy, here the Via Service as a condition to my KMS key policy is the SQS service, therefore allowing only access from SQS to this key.
- 298_KMS Hands On w_ CLI.txt:10: We can also look at the cryptographic configuration, which show that this key is symmetric of origin KMS and it's used to encrypt and decrypt data.
- 298_KMS Hands On w_ CLI.txt:14: So the custom key store is when we wanna use CloudHSM, but this is out of scope for this exam.
- 298_KMS Hands On w_ CLI.txt:16: So this is when we want to create our own keys within KMS and not use the ones managed by AWS.
- 298_KMS Hands On w_ CLI.txt:40: So this is if you had for example, the use case of sharing an encrypted snapshot, an EBS snapshot for example, you would add another account to allow access to your key.
- 298_KMS Hands On w_ CLI.txt:57: And also for example, you can initiate on demand key rotation by just clicking on this button.
- 298_KMS Hands On w_ CLI.txt:58: Whenever you rotate your key automatically or on demand, it's going to appear in the key rotation history.
- 298_KMS Hands On w_ CLI.txt:63: So we have our key, it's great, but now let's go use the CLI to encrypt and decrypt some data.
- 298_KMS Hands On w_ CLI.txt:68: For me I just entered a password called SuperSecretPassword, and we're going to encrypt it and then decrypt it using KMS.
- 299_KMS - Multi-Region Keys.txt:3: That means that you're going to have your primary key in one selected Region, such as for example, us-east-1.
- 299_KMS - Multi-Region Keys.txt:5: For example, us-west-2, eu-west-1 and ap-southeast-2.
- 299_KMS - Multi-Region Keys.txt:16: So the idea with that, with the Multi-Region key, you can encrypt in one Region and decrypt in another Region, and you don't need therefore to re-encrypt your data when moving from one Region to the next; or to make cross Region API calls.
- 299_KMS - Multi-Region Keys.txt:21: So it's not recommended to use Multi-Region key, except in very specific use cases because KMS likes to have the fact that a key is bounded to a single Region.
- 299_KMS - Multi-Region Keys.txt:22: And so the use cases for using Multi-Region keys is if you want to have a global client-side encryption.
- 299_KMS - Multi-Region Keys.txt:23: So to be able to encrypt client-side in one Region and to decrypt client-side in another Region. or to do encryption on Global DynamoDB tables or on Global Aurora.
- 299_KMS - Multi-Region Keys.txt:25: So how does it work when you use Global Tables in DynamoDB and KMS Multi-Region key with client side encryption?
- 299_KMS - Multi-Region Keys.txt:26: So the idea is that you want to encrypt not just the whole table because this is just at risk encryption.
- 299_KMS - Multi-Region Keys.txt:27: You want to encrypt actual attributes on your table.
- 299_KMS - Multi-Region Keys.txt:35: So first is going to encrypt the attribute that it needs to be encrypted with the primary Multi-Region key.
- 299_KMS - Multi-Region Keys.txt:38: But then one of them, for example the Social Security number is going to be encrypted.
- 299_KMS - Multi-Region Keys.txt:39: So this is great because well, your database administrators that have accessed your DynamoDB table, if they don't have access to the KMS key that we used to encrypt that one attribute, the Social Security number.
- 299_KMS - Multi-Region Keys.txt:44: And thankfully we've decided to encrypt our data, the attributes, with a Multi-Region key.
- 299_KMS - Multi-Region Keys.txt:48: So using this client-side encryption technique we can protect specific fields or attributes on our data and only guarantee decryption when our client has access to an API key.
- 299_KMS - Multi-Region Keys.txt:54: And so the client application wants to encrypt a column yet to get it is my SSN column.
- 300_S3 Replication with Encryption.txt:1: So now let's talk about S3 Replication and its relation to encrypted objects.
- 300_S3 Replication with Encryption.txt:5: And so we specify with which KMS Key we want to encrypt the objects within the target buckets, and then we adapt this KMS Key Policy for the target key and we create an IAM Role that is allowing the S3 Replication service to first decrypt the data in the source bucket and then re-encrypt the data in the target bucket with the target KMS Key.
- 300_S3 Replication with Encryption.txt:6: And so when you do so, this enables replication because there is a lot of encryption and decryption happening.

### Constraints / Limitations (Deduped)
- 018_KMS.txt:6: You should know and remember that KMS keys are regional and they can only be used in the region they're created in.
- 018_KMS.txt:15: You must just send data into KMS with a KMS API call to use it.
- 018_KMS.txt:22: But once the data is encrypted with the public key, only the private key has the power to decrypt your information.
- 018_KMS.txt:23: You still cannot use the private key unencrypted, though.
- 018_KMS.txt:25: So the use case for an asymmetric key is to have encryptions outside of AWS by users who cannot directly call the KMS API for whatever reason.
- 018_KMS.txt:39: You can view the key policy and you can audit in CloudTrail, but you cannot leverage them for your own encryption operations.
- 018_KMS.txt:42: And you cannot view, use, track or audit these keys.
- 018_KMS.txt:45: The AWS managed key can be used in your accounts, okay, but you cannot manage them, and they're required to be rotated every one year.
- 018_KMS.txt:47: And then the owned keys, you just know they exist, but you cannot use them or see them.
- 018_KMS.txt:50: And it cannot be changed after creation, so you have to define it at creation time.
- 018_KMS.txt:61: They are only managed by KMS and used by KMS.
- 018_KMS.txt:71: So, it must be a 256-bit symmetric key, so you cannot import asymmetric material for now, and it cannot be used with custom key store.
- 018_KMS.txt:90: Each key can be managed independently, and although you can only have one primary key at a time, it's possible for you to promote one replica into their own primary key.
- 024_CloudHSM.txt:4: But with CloudHSM, AWS will only provision us the encryption hardware.
- 024_CloudHSM.txt:19: So if we lose the encryption keys, if we lose anything, AWS cannot recover the device for us.
- 024_CloudHSM.txt:24: AWS cannot help you once it has provided you with the hardware you need.
- 024_CloudHSM.txt:25: In terms of IAM permissions, therefore, the only thing AWS can do in terms of IAM is helping you create, describe, and delete your CloudHSM cluster.
- 024_CloudHSM.txt:30: You have to manage all the security within your device and AWS cannot help you with that.
- 024_CloudHSM.txt:31: Okay, another very important thing is to set up CloudHSM with high availability.
- 024_CloudHSM.txt:36: But important to see it once to know that it's possible to do it, going into the exam, it can be very handy.
- 169_[SAA_DVA_SOA] Encryption 101.txt:12: And so what we want to have HTTPS or TLS, or SSL, this is when we know that only the target server can decrypt the encrypted data we're sending.
- 169_[SAA_DVA_SOA] Encryption 101.txt:15: But we only want the target server to be able to receive it.
- 169_[SAA_DVA_SOA] Encryption 101.txt:18: So as you can see, no between server can decrypt the data and only the target server can use the TLS decryption mechanism to decrypt that package and then see that we've sent the username and password.
- 169_[SAA_DVA_SOA] Encryption 101.txt:25: And so the whole idea of managing these keys for encryption and decryption is that the management must happen somewhere and the server must have access to these keys.
- 169_[SAA_DVA_SOA] Encryption 101.txt:36: And the server should never be able to decrypt the data because we don't trust a server in that case.
- 170_CloudHSM.txt:4: But with CloudHSM, AWS will only provision us the encryption hardware.
- 170_CloudHSM.txt:19: So if we lose the encryption keys, if we lose anything, AWS cannot recover the device for us.
- 170_CloudHSM.txt:24: AWS cannot help you once it has provided you with the hardware you need.
- 170_CloudHSM.txt:25: In terms of IAM permissions, therefore, the only thing AWS can do in terms of IAM is helping you create, describe, and delete your CloudHSM cluster.
- 170_CloudHSM.txt:30: You have to manage all the security within your device and AWS cannot help you with that.
- 170_CloudHSM.txt:31: Okay, another very important thing is to set up CloudHSM with high availability.
- 170_CloudHSM.txt:36: But important to see it once to know that it's possible to do it, going into the exam, it can be very handy.
- 171_CloudHSM - Advanced.txt:13: You can actually share the private subnets your CloudHSM cluster resides in using RAM, but you cannot share the CloudHSM cluster itself.
- 171_CloudHSM - Advanced.txt:19: But you cannot share a CloudHSM cluster using RAM, you must share the underlying subnet instead.
- 172_KMS.txt:6: You should know and remember that KMS keys are regional and they can only be used in the region they're created in.
- 172_KMS.txt:15: You must just send data into KMS with a KMS API call to use it.
- 172_KMS.txt:22: But once the data is encrypted with the public key, only the private key has the power to decrypt your information.
- 172_KMS.txt:23: You still cannot use the private key unencrypted, though.
- 172_KMS.txt:25: So the use case for an asymmetric key is to have encryptions outside of AWS by users who cannot directly call the KMS API for whatever reason.
- 172_KMS.txt:39: You can view the key policy and you can audit in CloudTrail, but you cannot leverage them for your own encryption operations.
- 172_KMS.txt:42: And you cannot view, use, track or audit these keys.
- 172_KMS.txt:45: The AWS managed key can be used in your accounts, okay, but you cannot manage them, and they're required to be rotated every one year.
- 172_KMS.txt:47: And then the owned keys, you just know they exist, but you cannot use them or see them.
- 172_KMS.txt:50: And it cannot be changed after creation, so you have to define it at creation time.
- 172_KMS.txt:61: They are only managed by KMS and used by KMS.
- 172_KMS.txt:71: So, it must be a 256-bit symmetric key, so you cannot import asymmetric material for now, and it cannot be used with custom key store.
- 172_KMS.txt:90: Each key can be managed independently, and although you can only have one primary key at a time, it's possible for you to promote one replica into their own primary key.
- 173_[SAA] KMS Multi Region Key.txt:28: And so that they're only available to specific clients.
- 173_[SAA] KMS Multi Region Key.txt:48: So using this client-side encryption technique we can protect specific fields or attributes on our data and only guarantee decryption when our client has access to an API key.
- 174_[DVA] KMS Envelope Encryption.txt:2: So what we did is that we had a secret, for example, a password, and it was less than four kilobytes, because this is a limit for KMS, and we sent it into the KMS service.
- 174_[DVA] KMS Envelope Encryption.txt:14: So as we can see though there is a problem, we are limited by the size of the secret to four kilobytes.
- 174_[DVA] KMS Envelope Encryption.txt:39: So as we can see in this example, from KMS the only thing we got was an encryption key, a data key and a data key that was encrypted.
- 174_[DVA] KMS Envelope Encryption.txt:45: So with a decrypt API we can only pass up to four kilobytes of data.
- 174_[DVA] KMS Envelope Encryption.txt:64: So if you're using data key caching, then you would use something called a LocalCryptoMaterialsCache, which has a long name, to indicate how big the cache of this data key should be.
- 174_[DVA] KMS Envelope Encryption.txt:65: And it could be that you define the max age of your key, the max number of bytes that it should encrypt, or the max number of messages that should be encrypted by this DEK before moving on to the next DEK.
- 174_[DVA] KMS Envelope Encryption.txt:73: And so as such, this DEK is the same, it's also encrypted using this CMK we specify, but if you use it, we must decrypted afterwards, which is one extra step.
- 175_[SOA] KMS Key Rotation.txt:8: The new key will have the same KMS key ID, so only the backing key is changed.
- 175_[SOA] KMS Key Rotation.txt:17: And you have a limit to how many times you can trigger an on-demand key rotation.
- 175_[SOA] KMS Key Rotation.txt:37: So your application only interacts from an API perspective with your key alias, MyAppKey.
- 176_KMS Key Deletion.txt:2: So you can delete the generated keys, they are keys created from within KMS in which case these keys, when you create them, they have no expiration dates and you cannot immediately delete them.
- 176_KMS Key Deletion.txt:11: Finally, for the AWS managed keys or the AWS owned keys, they cannot be deleted.
- 176_KMS Key Deletion.txt:22: This time, we want to know whenever a user is going to do the API call to either disable a key or schedule a key deletion because this may be very bad actions if then KMS cannot be used and if they're not done properly.
- 176_KMS Key Deletion.txt:25: Thanks to systems manager automation, you should run a AWS config remediation, cancel key deletion so that's the key is back to normal.
- 176_KMS Key Deletion.txt:28: Well, first you need to delete the replica keys which is less risky because it can always be recreated from the primary key and you must also, for these keys, schedule your deletions so seven to 30 day waiting period.
- 176_KMS Key Deletion.txt:30: So the primary key can only be deleted if all the replicas have been deleted.
- 176_KMS Key Deletion.txt:31: And then if you prefer to delete the primary but keep a replica, what you must do first is to take one of these replicas and then you're going to promote it as primary, and then you delete the old primary.
- 176_KMS Key Deletion.txt:32: And again, deleting the primary key must be scheduled and takes, again, seven to 30 days so if you delete first replicas and then you delete the primary key, you have a minimum waiting period of 14 days in total.
- 177_KMS Key Policies Deep Dive.txt:4: But if you don't set up a KMS key policy, you cannot access your KMS key.
- 177_KMS Key Policies Deep Dive.txt:5: So you must create one.
- 177_KMS Key Policies Deep Dive.txt:9: That means they must still have the proper IAM permissions to get access to the key.
- 177_KMS Key Policies Deep Dive.txt:17: You still must use IAM policies to access the KMS key.
- 177_KMS Key Policies Deep Dive.txt:20: So for the AWS Owned Keys, we cannot view and we cannot change the Key Policy because it's owned by AWS.
- 177_KMS Key Policies Deep Dive.txt:21: For the AWS Managed Keys, for example, when you see a key, aws/ebs, you can view the Key Policy but you cannot change the Key Policy.
- 178_KMS Grants.txt:7: So these grants are for one KMS key only and one or more IAM Principal.
- 178_KMS Grants.txt:11: These grants that do not expire automatically, you must delete them manually.
- 178_KMS Grants.txt:21: So after you're done using a key grant, you must delete it so that, of course, people don't have lingering permissions.
- 178_KMS Grants.txt:22: For now, as far as I know, there's no support of KMS key grants in the console, so API calls only.
- 178_KMS Grants.txt:29: So to allow a service to use your KMS key, you must have the CreateGrant IAM permissions.
- 178_KMS Grants.txt:35: And this user has a condition, it can do only these API calls if you grant an AWS resource true.
- 178_KMS Grants.txt:36: So that means that the user can create a grant only for an AWS service, therefore allowing a service such as Amazon EBS or Amazon EC2 to do encryption, for example, to attach an encrypted EBS volume to an EC2 instance, or Redshift to launch an encrypted cluster, or any service that integrates with KMS and that uses grants to create, manage, or encrypt resources within.
- 178_KMS Grants.txt:38: So if you have an EC2 instance and it has an encrypted EBS volume and you cannot start it, the reason that that it may fail is, number one, while the KMS key might be disabled or deleted, second, the EBS service might not have the permission required to use the KMS key.
- 178_KMS Grants.txt:40: And number two, make sure the EBS service has the required permission to create KMS key grants on top on behalf of the specified principle.
- 179_KMS Condition Keys.txt:2: So kms:ViaService ensures that your KMS key is going to be only used by the specified AWS service.
- 179_KMS Condition Keys.txt:3: So here if I create a key, and I said the action is for the user to create a grant, and KMS is via service EC2 or RDS, that means that this user can only use this key through Amazon EC2, so EBS volumes or RDS to encrypt RDS databases.
- 179_KMS Condition Keys.txt:4: So it's very helpful to limit scope and to make sure a key cannot be used outside of certain services.
- 179_KMS Condition Keys.txt:5: So the IAM user, of course, then must be authorized to use the key to grant it to the AWS service.
- 180_KMS Key Policies Evaluation Process.txt:40: So this is a complicated schema, but hopefully, because I've covered all the concepts of these before, you should feel somewhat familiar with it.
- 180_KMS Key Policies Evaluation Process.txt:68: And then because it's cross accounts, we must make sure we have also an IAM Policy in Account 1 authorizing things.
- 181_KMS Key Cross-Account Access.txt:9: So your IAM user or your IAM role will have an attached policy, and this policy should have all the KMS APIs needed such as encrypt, decrypt, and so on.
- 181_KMS Key Cross-Account Access.txt:10: And the resource should be the KMS key ARN of the accounts A.
- 182_KMS Asymmetric Encryption.txt:15: So now the file is encrypted using this public key and it turns out that this public key cannot decrypt the file.
- 182_KMS Asymmetric Encryption.txt:16: The only thing the public key can do is encrypt it.
- 182_KMS Asymmetric Encryption.txt:19: And the only way for Bob to decrypt this file is to use the private key and then the file is decrypted.
- 182_KMS Asymmetric Encryption.txt:24: We have the SM2 KMS key, that's for China only, to do signing and verification or encryption and decryption.
- 182_KMS Asymmetric Encryption.txt:35: And with our application and we want to securely send a file, but of course, we cannot send this entire file into KMS, that would be too much.
- 182_KMS Asymmetric Encryption.txt:36: Remember, KMS cannot encrypt a lot of data.
- 183_KMS API Calls Limits and Data Key Caching.txt:1: So here is a short lecture on KMS API calls limits, and data key caching.
- 183_KMS API Calls Limits and Data Key Caching.txt:2: So when your application is making API calls to KMS, you have a service limit that you can hit.
- 183_KMS API Calls Limits and Data Key Caching.txt:4: So there's a number of requests per second limit and if you use KMS too much, you will be throttled.
- 183_KMS API Calls Limits and Data Key Caching.txt:6: Well, number one, you can increase this service limit, of course, but number two, you can do data key caching and data key caching is to reuse the data keys that you've created out of KMS to protect your data.
- 183_KMS API Calls Limits and Data Key Caching.txt:17: We improve the throughput, we reduce the cost because we call KMS less and less and we stay within service limits.
- 184_KMS Encryption Context.txt:6: And the reason why we do so is that now the same context must be provided during the decryption.
- 184_KMS Encryption Context.txt:8: You must also provide the Encryption Context back.
- 184_KMS Encryption Context.txt:9: So, you must provide again that it was for department 10103.
- 184_KMS Encryption Context.txt:15: From an exam perspective, this must be re-used to provide additional authenticated data within KMS service.
- 185_KMS with EBS.txt:2: So you cannot change the encryption keys used by an EBS volume, but you can create a snapshot and you create a new EBS volume and then you can specify a new KMS key.
- 185_KMS with EBS.txt:14: And on the right-hand side, we're saying, "Hey, we can encrypt, decrypt, re-encrypt using the first data key, the first KMS key in the first account, and the second KMS key in the second account." So it should make sense by now, but I would like to repeat myself just to make things very clear.
- 186_EFS Encryption.txt:3: What you must do instead is that you create a new EFS file system and then you will migrate the files and their permissions using AWS DataSync.
- 188_KMS with Parameter Store.txt:11: It only works for symmetric KMS keys and all the encryption will happen within KMS.
- 188_KMS with Parameter Store.txt:12: So to make sure that we can access a parameter in the parameter store that has been KMS encrypted, we must have access to both the KMS key and the SSM parameter from an IAM perspective.
- 065_EBS Encryption.txt:6: So, encryption overall, something you should use because it has a very, very minimal impact on latency, almost nothing, and it leverages keys from KMS, so AES-256, that's something that you should know.
- 065_EBS Encryption.txt:8: So, let's talk about a very important thing, which is how do you encrypt an unencrypted EBS volumes.
- 296_Encryption 101.txt:12: And so what we want to have HTTPS or TLS, or SSL, this is when we know that only the target server can decrypt the encrypted data we're sending.
- 296_Encryption 101.txt:15: But we only want the target server to be able to receive it.
- 296_Encryption 101.txt:18: So as you can see, no between server can decrypt the data and only the target server can use the TLS decryption mechanism to decrypt that package and then see that we've sent the username and password.
- 296_Encryption 101.txt:25: And so the whole idea of managing these keys for encryption and decryption is that the management must happen somewhere and the server must have access to these keys.
- 296_Encryption 101.txt:36: And the server should never be able to decrypt the data because we don't trust a server in that case.
- 297_KMS Overview.txt:23: We have the symmetric KMS keys, and that means there's only one single encrypted key that is used to encrypt and decrypt data.
- 297_KMS Overview.txt:32: You can only use API calls against to access the private key.
- 297_KMS Overview.txt:33: So the use cases for an asymmetric type of key is when you want the encryption to be done outside of your AWS cloud by users who cannot or don't have access to the KMS API key.
- 297_KMS Overview.txt:43: They're free and you can just use them as you please, but only from within the service that it's assigned to.
- 297_KMS Overview.txt:50: And if it's imported KMS key, then you can only manually rotate it.
- 297_KMS Overview.txt:58: But the same KMS key cannot live in two regions.
- 297_KMS Overview.txt:76: It must be that because we need to attach a custom key policy.
- 298_KMS Hands On w_ CLI.txt:9: If I looked for example, at another AWS managed key, for example, the SQS one, and look at the key policy, here the Via Service as a condition to my KMS key policy is the SQS service, therefore allowing only access from SQS to this key.
- 298_KMS Hands On w_ CLI.txt:37: But if you wanted to also have some extra security, you could say, hey, only Stefan can use this key and this would create a custom KMS key policy.
- 298_KMS Hands On w_ CLI.txt:90: So this is completely gibberish and we cannot get any information of it.
- 298_KMS Hands On w_ CLI.txt:91: Even this one, we cannot get any information.
- 299_KMS - Multi-Region Keys.txt:28: And so that they're only available to specific clients.
- 299_KMS - Multi-Region Keys.txt:48: So using this client-side encryption technique we can protect specific fields or attributes on our data and only guarantee decryption when our client has access to an API key.
- 300_S3 Replication with Encryption.txt:8: So the question you may have is should I use multi-region key with S3 Replication?
- 301_Encrypted AMI Sharing Process.txt:5: So first you must modify the AMI property with a launch permission, and the list launch permission allows account B to launch this AMI.
- 301_Encrypted AMI Sharing Process.txt:7: You must modify the launch permissions and add the specified target to its account ID.
- 301_Encrypted AMI Sharing Process.txt:11: So you must have it on the KMS side, access to the Describekey API call, the ReEncrypted API call, CreateGrant and Decrypt API calls.

### Patterns / Architectures (Deduped)
- 018_KMS.txt:4: It's fully integrated with IAM for authorization, and it has seamless integration into all the AWS services, pretty much.
- 018_KMS.txt:58: So you create your CloudHSM cluster as a custom key store, and there is a dart integration with KMS.
- 018_KMS.txt:64: So, this is the architecture.
- 018_KMS.txt:82: Okay, lastly, so you need to know about KMS multi-region keys.
- 018_KMS.txt:91: So, the use cases for multi-region keys is going to be disaster recovery, global data management, for example, for DynamoDB global tables, active-active applications that span multiple regions, or distributing signing applications, and so on.
- 024_CloudHSM.txt:14: And you have some integration with CloudHSM, for example, with Redshift that supports CloudHSM for database encryption and key management.
- 024_CloudHSM.txt:34: So we have this very classic architecture where we have two AZ, two CloudHSM devices that are going to be paired up in a cluster and your CloudHSM clients.
- 024_CloudHSM.txt:46: For key accessibility, KMS keys are scoped per region, although you can do KMS key replication.
- 170_CloudHSM.txt:14: And you have some integration with CloudHSM, for example, with Redshift that supports CloudHSM for database encryption and key management.
- 170_CloudHSM.txt:34: So we have this very classic architecture where we have two AZ, two CloudHSM devices that are going to be paired up in a cluster and your CloudHSM clients.
- 170_CloudHSM.txt:46: For key accessibility, KMS keys are scoped per region, although you can do KMS key replication.
- 171_CloudHSM - Advanced.txt:2: The first one is that you have integrations with AWS Services by basically going through KMS.
- 171_CloudHSM - Advanced.txt:4: And this is how the CloudHSM can be used by doing integrations, for example, with EBS volumes, or encrypting S3 objects, or RDS database, et cetera, et cetera.
- 171_CloudHSM - Advanced.txt:11: You also have integration with third-party services with CloudHSM, so you can create and store keys in CloudHSM, and then you can perform SSL or TLS offload, Windows Server Certificate Authority, Oracle TDE, Microsoft SignTool, Java Keytool, and so on.
- 172_KMS.txt:4: It's fully integrated with IAM for authorization, and it has seamless integration into all the AWS services, pretty much.
- 172_KMS.txt:58: So you create your CloudHSM cluster as a custom key store, and there is a dart integration with KMS.
- 172_KMS.txt:64: So, this is the architecture.
- 172_KMS.txt:82: Okay, lastly, so you need to know about KMS multi-region keys.
- 172_KMS.txt:91: So, the use cases for multi-region keys is going to be disaster recovery, global data management, for example, for DynamoDB global tables, active-active applications that span multiple regions, or distributing signing applications, and so on.
- 173_[SAA] KMS Multi Region Key.txt:1: So, now let's talk about KMS Multi-Region keys.
- 173_[SAA] KMS Multi Region Key.txt:2: So, we have KMS and we can actually have a Multi-Region key.
- 173_[SAA] KMS Multi Region Key.txt:10: And this is the principle behind the KMS Multi-Region keys.
- 173_[SAA] KMS Multi Region Key.txt:14: And Multi-Region keys they're possible because they have the same key ID, the same key material.
- 173_[SAA] KMS Multi Region Key.txt:16: So the idea with that, with the Multi-Region key, you can encrypt in one Region and decrypt in another Region, and you don't need therefore to re-encrypt your data when moving from one Region to the next; or to make cross Region API calls.
- 173_[SAA] KMS Multi Region Key.txt:17: So something to understand though is that KMS Multi-Region keys are not global.
- 173_[SAA] KMS Multi Region Key.txt:20: And each Multi-Region key is going to be managed independently with its own key policy and so on.
- 173_[SAA] KMS Multi Region Key.txt:21: So it's not recommended to use Multi-Region key, except in very specific use cases because KMS likes to have the fact that a key is bounded to a single Region.
- 173_[SAA] KMS Multi Region Key.txt:22: And so the use cases for using Multi-Region keys is if you want to have a global client-side encryption.
- 173_[SAA] KMS Multi Region Key.txt:25: So how does it work when you use Global Tables in DynamoDB and KMS Multi-Region key with client side encryption?
- 173_[SAA] KMS Multi Region Key.txt:32: So the KMS service is having a Multi-Region key which is replicated to another Region.
- 173_[SAA] KMS Multi Region Key.txt:35: So first is going to encrypt the attribute that it needs to be encrypted with the primary Multi-Region key.
- 173_[SAA] KMS Multi Region Key.txt:44: And thankfully we've decided to encrypt our data, the attributes, with a Multi-Region key.
- 173_[SAA] KMS Multi Region Key.txt:45: And therefore, a client's application in the ap-southeast-2 Region can retrieve the row, see that one attribute is encrypted and then perform an API call to actually decrypt the attribute with the replica Multi-Region key.
- 173_[SAA] KMS Multi Region Key.txt:46: And this is why we are doing Multi-Region key this instance.
- 173_[SAA] KMS Multi Region Key.txt:53: So we have two Regions and we have a Multi-Region key in KMS replicated across these two Regions.
- 173_[SAA] KMS Multi Region Key.txt:56: And so all the data is unencrypted on this one row, except that one column, which is the SSN, which is encrypted actually with the, mrk, the Multi-Region key.
- 173_[SAA] KMS Multi Region Key.txt:61: And because we are using a Multi-Region key they can do a local API call to KMS to decrypt this attribute.
- 173_[SAA] KMS Multi Region Key.txt:66: So that's it for KMS Multi-Region keys.
- 176_KMS Key Deletion.txt:23: So whenever we are doing such an API call through CloudTrail integration we have an event of that API call in Amazon EventBridge.
- 177_KMS Key Policies Deep Dive.txt:13: And this is extremely helpful when you have cross-account access of your KMS key, and you want to define who in the targeted accounts can access your key.
- 177_KMS Key Policies Deep Dive.txt:37: You can define a user, a role, or, again, a target account if you wanted to have cross-accounts.
- 181_KMS Key Cross-Account Access.txt:1: So let's have a look at now cross-account access for your KMS key.
- 181_KMS Key Cross-Account Access.txt:14: It's similar to what we've seen for many cross-account stuff.
- 181_KMS Key Cross-Account Access.txt:15: Now, what if you want to allow not the users to just encrypt and decrypt but the services of the cross-account to access our KMS key.
- 181_KMS Key Cross-Account Access.txt:27: So let's think of a last way to use a KMS key in a cross-account manner.
- 181_KMS Key Cross-Account Access.txt:34: This is not a cross-accounts type of setting, but, of course, this role can be assumed by user in another accounts.
- 181_KMS Key Cross-Account Access.txt:37: So we've really seen like the different ways that it's possible for us to do cross-account access for KMS keys.
- 185_KMS with EBS.txt:1: So let's have a deeper look at the integration between KMS and EBS.
- 185_KMS with EBS.txt:4: So we can also automate cross-account EBS KMS-encrypted snapshot copies.
- 297_KMS Overview.txt:8: So for example, if you wanted to encrypt the data at rest in an EBS volume, just enable the KMS integration.
- 299_KMS - Multi-Region Keys.txt:1: So, now let's talk about KMS Multi-Region keys.
- 299_KMS - Multi-Region Keys.txt:2: So, we have KMS and we can actually have a Multi-Region key.
- 299_KMS - Multi-Region Keys.txt:10: And this is the principle behind the KMS Multi-Region keys.
- 299_KMS - Multi-Region Keys.txt:14: And Multi-Region keys they're possible because they have the same key ID, the same key material.
- 299_KMS - Multi-Region Keys.txt:16: So the idea with that, with the Multi-Region key, you can encrypt in one Region and decrypt in another Region, and you don't need therefore to re-encrypt your data when moving from one Region to the next; or to make cross Region API calls.
- 299_KMS - Multi-Region Keys.txt:17: So something to understand though is that KMS Multi-Region keys are not global.
- 299_KMS - Multi-Region Keys.txt:20: And each Multi-Region key is going to be managed independently with its own key policy and so on.
- 299_KMS - Multi-Region Keys.txt:21: So it's not recommended to use Multi-Region key, except in very specific use cases because KMS likes to have the fact that a key is bounded to a single Region.
- 299_KMS - Multi-Region Keys.txt:22: And so the use cases for using Multi-Region keys is if you want to have a global client-side encryption.
- 299_KMS - Multi-Region Keys.txt:25: So how does it work when you use Global Tables in DynamoDB and KMS Multi-Region key with client side encryption?
- 299_KMS - Multi-Region Keys.txt:32: So the KMS service is having a Multi-Region key which is replicated to another Region.
- 299_KMS - Multi-Region Keys.txt:35: So first is going to encrypt the attribute that it needs to be encrypted with the primary Multi-Region key.
- 299_KMS - Multi-Region Keys.txt:44: And thankfully we've decided to encrypt our data, the attributes, with a Multi-Region key.
- 299_KMS - Multi-Region Keys.txt:45: And therefore, a client's application in the ap-southeast-2 Region can retrieve the row, see that one attribute is encrypted and then perform an API call to actually decrypt the attribute with the replica Multi-Region key.
- 299_KMS - Multi-Region Keys.txt:46: And this is why we are doing Multi-Region key this instance.
- 299_KMS - Multi-Region Keys.txt:53: So we have two Regions and we have a Multi-Region key in KMS replicated across these two Regions.
- 299_KMS - Multi-Region Keys.txt:56: And so all the data is unencrypted on this one row, except that one column, which is the SSN, which is encrypted actually with the, mrk, the Multi-Region key.
- 299_KMS - Multi-Region Keys.txt:61: And because we are using a Multi-Region key they can do a local API call to KMS to decrypt this attribute.
- 299_KMS - Multi-Region Keys.txt:66: So that's it for KMS Multi-Region keys.
- 300_S3 Replication with Encryption.txt:1: So now let's talk about S3 Replication and its relation to encrypted objects.
- 300_S3 Replication with Encryption.txt:2: So if you enable S3 Replication from one bucket to another, then any unencrypted objects and objects encrypted with SSE-S3 will be replicated by default.
- 300_S3 Replication with Encryption.txt:5: And so we specify with which KMS Key we want to encrypt the objects within the target buckets, and then we adapt this KMS Key Policy for the target key and we create an IAM Role that is allowing the S3 Replication service to first decrypt the data in the source bucket and then re-encrypt the data in the target bucket with the target KMS Key.
- 300_S3 Replication with Encryption.txt:6: And so when you do so, this enables replication because there is a lot of encryption and decryption happening.
- 300_S3 Replication with Encryption.txt:8: So the question you may have is should I use multi-region key with S3 Replication?
- 300_S3 Replication with Encryption.txt:9: And the documentation says that you can use multi-region key for S3 Replication but currently they are treated as independent keys by the Amazon S3 service, and therefore the object is still going to be decrypted and then encrypted using the same key even though the key is a multi-region key, okay?

## Deduped Consolidation Snapshot End

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: The first type is a customer managed key, and this is a key you create directly in KMS.
- Signal 2: Okay, now how do you create a KMS key?
- Signal 3: So, you have the KMS, which is the AWS_KMS key material, which means that you are going to have KMS automatically create, generate, and manage the key in its own key store to see what happens when you go into KMS and...
- Signal 4: Transcript signals that the first type is a customer managed key, and this is a key you create directly in KMS.
- Signal 5: So this is when we want to create our own keys within KMS and not use the ones managed by AWS.
- Signal 6: Key Insights: The first type is a customer managed key, and this is a key you create directly in KMS.
- Signal 7: Key Insights: So you can create, manage, and use them.
- Signal 8: Key Insights: Okay, now how do you create a KMS key?
- Signal 9: Key Insights: So, you have the KMS, which is the AWS_KMS key material, which means that you are going to have KMS automatically create, generate, and manage the key in its own key store to see what happens when you go into KMS and start to create a key.
- Signal 10: Key Insights: So, maybe you just want to create it outside and then import it into AWS KMS and then be done and delete it on your end.

### Service-Specific Lab Paths
### Activity 1: IAM Lab for KMS, key lifecycle, key policy model, asymmetric/symmetric, CloudHSM, encryption fundamentals
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

### Activity 2: Amazon S3 Lab for KMS, key lifecycle, key policy model, asymmetric/symmetric, CloudHSM, encryption fundamentals
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

### Activity 3: Amazon VPC Lab for KMS, key lifecycle, key policy model, asymmetric/symmetric, CloudHSM, encryption fundamentals
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

### Activity 4: Amazon CloudWatch Lab for KMS, key lifecycle, key policy model, asymmetric/symmetric, CloudHSM, encryption fundamentals
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

Use this lens to study KMS, key lifecycle, key policy model, asymmetric/symmetric, CloudHSM, encryption fundamentals in a cloud-agnostic way: focus on capability first, provider name second.

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

